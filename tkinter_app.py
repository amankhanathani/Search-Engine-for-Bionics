import tkinter as tk
import sphinxapi as spx
import math 

res_d = None
match_str = None
n = 1
sp = spx.SphinxClient()
sp.SetServer('localhost',9312)

class ResultBox(tk.Frame):
    def __init__(self,parent,*args,**kwargs):
        super().__init__(parent,*args,**kwargs)  
        self.title_text = tk.Text(self,fg='blue',border=0,height=1,font=("DefaultFont",14))
        self.content_text = tk.Text(self,border=0,wrap=tk.WORD,height=5,font=("DefaultFont",12))
        self.book_text = tk.Text(self,border=0,height=1,width=15,font=("DefaultFont",12))
        self.author_text = tk.Text(self,border=0,height=1,width=15,font=("DefaultFont",12))
        self.pg_text = tk.Text(self,border=0,height=1,width=10,font=("DefaultFont",12))

        self.title_text.grid(row=0,column=0,columnspan=3,sticky='nsew')
        self.content_text.grid(row=1,column=0,columnspan=3,sticky="nsew")
        
        self.book_text.grid(row=2,column=0,sticky='nsew')
        self.author_text.grid(row=2,column=1,sticky='nsew')
        self.pg_text.grid(row=2,column=2,sticky='nsew')
        self.rowconfigure(1,weight=1)
        self.columnconfigure(0,weight=1)
        self.columnconfigure(1,weight=1)

    def update_vals(self,ttl,ctnt,bk,athr,pno):
        #remove old values
        self.title_text.delete(1.0,"end")
        self.content_text.delete(1.0,"end")
        self.book_text.delete(1.0,"end")
        self.author_text.delete(1.0,"end")
        self.pg_text.delete(1.0,"end")

        #put new values
        self.title_text.insert(1.0,ttl)
        self.content_text.insert(1.0,ctnt)
        self.book_text.insert(1.0,bk)
        self.author_text.insert(1.0,athr)
        self.pg_text.insert(1.0,pno)

class SearhFrame(tk.LabelFrame):
    current_page = 1
    def __init__(self,parent,*args,**kwargs):
        super().__init__(parent,*args,**kwargs)

        global res_d, sp,match_str,n
        #search container
        self.search_text = tk.StringVar()
        self.search_text.set("Enter here..")
        search_entry = tk.Entry(self,textvariable=self.search_text,font=('DefaultFont',10))
        search_bt = tk.Button(self,text="Search",command=self.on_search)

        search_entry.grid(row=0,column=0,columnspan=4,sticky=(tk.W + tk.E))
        search_bt.grid(row=0,column=4,sticky=tk.E)
        self.columnconfigure(3,weight=1)
        self.rowconfigure(3,weight=1)

        self.land_val = tk.BooleanVar()
        self.air_val = tk.BooleanVar()
        self.water_val = tk.BooleanVar()
        checkbox_land = tk.Checkbutton(self,text="Land",variable=self.land_val,)
        checkbox_air = tk.Checkbutton(self,text="Air",variable=self.air_val)
        checkbox_water = tk.Checkbutton(self,text="Water",variable=self.water_val)

        checkbox_land.grid(row=1,column=0,sticky=tk.W)
        checkbox_air.grid(row=1,column=1,sticky=tk.W)
        checkbox_water.grid(row=1,column=2,sticky=tk.W)
        
        #status container
        self.status_box = tk.Text(self,height=1,font=("DefaultFont",10))
        self.status_box.grid(row=2,column=0,columnspan=5,sticky="nsew")
        self.status_box.insert(1.0,"No result found")

        #control buttons
        left_bt = tk.Button(self,text="<",command=self.on_left)
        right_bt = tk.Button(self,text=">",command=self.on_right)
        left_bt.grid(row=4,column=0,sticky="nsew")
        right_bt.grid(row=4,column=1,sticky="nsew")

        #result container
        result_frame= tk.Frame(self,bg="white")
        result_frame.grid(row=3,column=0,columnspan=5,sticky=(tk.W + tk.E + tk.N + tk.S))
        
        self.box1 = ResultBox(result_frame)
        self.box2 = ResultBox(result_frame)
        self.box3 = ResultBox(result_frame)
        self.box1.grid(row=0,column=0,sticky="nsew",pady=8)
        self.box2.grid(row=1,column=0,sticky="nsew",pady=8)
        self.box3.grid(row=2,column=0,sticky="nsew",pady=8)
        
        result_frame.rowconfigure(0,weight=1)
        result_frame.rowconfigure(1,weight=1)
        result_frame.rowconfigure(2,weight=1)
        result_frame.columnconfigure(0,weight=1)
        
    def on_search(self):
        global res_d, sp,match_str,n
        if self.search_text.get().strip():
            match_str = self.search_text.get().replace(" ","|")
            if self.land_val.get():
                match_str += ' @land 1'
            if self.air_val.get():
                match_str += ' @air 1'
            if self.water_val.get():
                match_str += ' @water 1'
        else:
            match_str=''   
        res_d = sp.Query(match_str)
        self.update_results()
    
    def update_results(self):
        global res_d, sp,match_str,n
        
        self.box1.update_vals(" "," "," "," "," ")
        self.box2.update_vals(" "," "," "," "," ")
        self.box3.update_vals(" "," "," "," "," ")
        
        if  res_d:
            n = res_d['total']
            self.status_box.delete(1.0,"end")
            self.status_box.insert(1.0,f'{n} documents found')
            
            i = (self.current_page-1)*3

            if(i < n):
                self.box1.update_vals(res_d['matches'][i]['attrs']['title'],res_d['matches'][i]['attrs']['content'].replace("\n"," "),
                res_d['matches'][i]['attrs']['book'],res_d['matches'][i]['attrs']['author'],res_d['matches'][i]['attrs']['pgno'])
            if(i+1 < n):    
                self.box2.update_vals(res_d['matches'][i+1]['attrs']['title'],res_d['matches'][i+1]['attrs']['content'].replace("\n"," "),
                res_d['matches'][i+1]['attrs']['book'],res_d['matches'][i+1]['attrs']['author'],res_d['matches'][i+1]['attrs']['pgno'])
            if(i+2 < n):
                self.box3.update_vals(res_d['matches'][i+2]['attrs']['title'],res_d['matches'][i+2]['attrs']['content'].replace("\n"," "),
                res_d['matches'][i+2]['attrs']['book'],res_d['matches'][i+2]['attrs']['author'],res_d['matches'][i+2]['attrs']['pgno'])
        else:
            self.status_box.delete(1.0,"end")
            self.status_box.insert(1.0,f'No results found')     

    def on_left(self):
        if self.current_page > 1:
            self.current_page -= 1
        else:
            self.current_page = 1    
        self.update_results()

    def on_right(self):
        global n
        if self.current_page < math.ceil(n/3):
            self.current_page += 1   
            self.update_results()

class MyApplication(tk.Tk):
    def __init__(self,*args,**kwargs):
        super().__init__(*args,**kwargs)  #Tk itself is root so no parent needed
        self.title("Search Box")
        self.geometry("860x620")
        self.resizable(width=True,height=True)
        SearhFrame(self,text="Search Box",bg='white').grid(row=0,column=0,sticky=(tk.E  + tk.W + tk.N + tk.S))
        self.columnconfigure(0,weight=1)
        self.rowconfigure(0,weight=1)

if __name__ == '__main__':
    app = MyApplication()
    app.mainloop()