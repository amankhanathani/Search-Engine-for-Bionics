create table book(
id  int(8) primary key not null,
land int(8) not null,
air int(8) not null,
water int(8) not null,
kwrds varchar(200),
title varchar(50),
content  varchar(800),
media varchar(20),
author varchar(40),
book  varchar(90),
pgno int(8)
);

insert into book values(1,1,0,0,'land locomotion neuro mechanics McGeer passive walk run spring stiff leg control steer','Properties of human leg during running',
'frontal movement is powered by the motor, the lateral movement is enabled by the steering movements of the driver.
Most walking machines are slow.This facilitates control.The point of operation of 
such a system is partly set by physical physiological conditions',
'none','Hiroshi,Kazuo & Akio','Adaptive motion of animals and machines',6);

insert into book values(2,1,0,0,'land locomotion neuro mechanics joint quasi elastic walk run spring unstable','Contribution of joints in running',
'Flexion in one joint is accompanied by extension in the other. The
joints are working against each other. In overextending joints torque changes
sign. Such a highly unstable situation would impose serious demands on any
control system.During running the knee joint in general reaches the point of
maximum bending slightly earlier than the ankle joint',
'none','Hiroshi,Kazuo & Akio','Adaptive motion of animals and machines',8);

insert into book values(3,1,0,0,'land locomotion neuro mechanics ankle joint knee flexion muscle tendon load spring antagonistic','Muscle properties in legs',
'Muscles have complicated nonlinear behaviour characterised
by the force-displacement and force-velocity characteristics.With shortening speed the muscle’s capabilities of force
generation diminish.The results of our calculations show that for a leg model consisting of two
massless segments and a knee extensor stabilisation is only possible if the
Hill-type muscle with a realistic force length curve is paralleled by a spring
and the joint is described realistically including a moving joint axis.',
'none','Hiroshi,Kazuo & Akio','Adaptive motion of animals and machines',11);

insert into book values(4,1,0,0,'land locomotion neuromechanics conservative joint quasi elastic bouncing accleration run static push stand static','Conservative Behaviours of Human legs',
'The human leg has to fulfil many different tasks such as static support during
standing, in a hammer like action during a kick, or as a compliant axial strut
during running.leg adapts to increasing loads by increasing the
distance of deceleration. This is achieved by extending the leg to a higher
degree at take up and push off.In the machine we could identify similar basic strategies as during hopping:
a) quasielastic bouncing b)compliant bouncing',
'none','Hiroshi,Kazuo & Akio','Adaptive motion of animals and machines',13);


insert into book values(5,1,0,0,'land locomotion walk stick insect decentralized control trivial stance swing running ','Walking : a non-trivial task',
'In most biological systems for motor control, particularly those concerned with
walking, the number of degrees of freedom is normally larger than that necessary
to perform the task.Because the environment may change drastically from one step to
the next, and even the geometrical properties of the body may change, the
control of walking is all but a trivial task.walking leg can be regarded as being in one of two states,
namely performing a swing movement or a stance movement. During stance,
the leg is on the ground, supports the body and, in the forward walking
animal, moves backwards with respect to the body',
'none','Hiroshi,Kazuo & Akio','Adaptive motion of animals and machines',17);

insert into book values(6,1,0,0,'land locomotion step leg movement run tripod tetrapod coupling swing position gait propulsion','Coordination between legs',
'The pattern of leg movement in insect walking is usually described as tripod
or tetrapod gait.Actually very different step patterns can be observed
e.g. after a brief disturbance of the movement of a single leg or when animals
start walking from different leg configurations.In all, six different coupling mechanisms have been found in behavioral
experiments with the stick insect.One mechanism serves to correct,errors in leg placement; another has to do with distributing propulsive force
among the legs. The end of the swing movement (AEP) in the animal is
modulated by a single, caudally directed influence depending on the position
of the next rostral leg.',
'none','Hiroshi,Kazuo & Akio','Adaptive motion of animals and machines',19);


insert into book values(7,1,0,0,'land locomotion step leg movement run swing control coupling coordinate position network propagate','Control of swing movement',
'A simple, two-layer feedforward net with three output units and six input
units can produce movements which closely resemble the swing movements observed in walking stick insects. The inputs correspond
to three coordinates defining the actual leg configuration and three
defining the target–the configuration desired at the end of the swing.Despite
its simplicity, the net not only reproduces the trained trajectories, it is
able to generalize over a considerable range of untrained situations, demonstrating
a further advantage of the network approach.',
'none','Hiroshi,Kazuo & Akio','Adaptive motion of animals and machines',19);

insert into book values(8,1,0,0,'land locomotion step leg movement run stance ground reaction slip network natural feedback propulsion','Control of stance movement',
'For the stance movement, simple solutions can be found for straight walking
on a flat surface.In machines, these problems can be solved using traditional, though computationally
costly, methods, which consider the ground reaction forces of all
legs in stance and seek to optimize some additional criteria, such as minimizing
the tension or compression exerted by the legs on the substrate.Further complexities arise in more complex, natural walking situations,
making solution difficult even with high computational power. These occur,
for example, when an animal or a machine walks on a slippery surface or on a
compliant substrate.we propose to replace a central controller with distributed control in the form of local
positive feedback',
'none','Hiroshi,Kazuo & Akio','Adaptive motion of animals and machines',24);

insert into book values(9,1,0,0,'land locomotion step leg movement radius run tripod coupling swing position gait propulsion','Curve Walking',
'The typical engineer’s solution is to determine
the curve radius and the center of the curve. With these values the trajectories
of the different legs are calculated and then, using inverse kinematics, the
trajectories for the joint angles are determined. In our case, too, a value is
required to determine the tightness of the curve. This, however, does not need
to quantitatively correspond to the curve radius. The value is only used as
an amplification factor for the positive feedback loop of front and hind legs.
This value can deliberately be changed from one moment to the next.',
'none','Hiroshi,Kazuo & Akio','Adaptive motion of animals and machines',27);

insert into book values(10,1,0,0,'Ecological animal live Niches specie','Where Animal Live and Have Lived',
'Large parts of animal ecology are devoted to studying the factors and mechanisms that determine where animals live,what determines their numbers, and what determines major features of 
their life histories.  Niches may be viewed mathematically as n-dimensional spaces. The dimensions are the large number of different properties
that characterize a particular species.' ,
'none','Malcolm S.Gordon,Reinhard & John','Animal Locomotion Physical Principles and Adaptations',15);

insert into book values(11,1,0,1,'Habitats Environment Ecosystems biotic forest river rocky locomotion rocky sea','Where Animal Live and Have Lived',
'On larger spatial scales, habitats are subtypes of environments. Environments include larger, usually more temporally persistent, places such as mountain ranges, rivers, plains, forests, deserts,
beaches, rocky coastlines, the open sea, and the deep sea.The arrays of species living within particular environments interact in complex ways with both the abiotic and biotic aspects of the environment
and with each other',
'none','Malcolm S.Gordon,Reinhard & John','Animal Locomotion Physical Principles and Adaptations',18);

insert into book values(12,1,0,0,'Evolutionary Process fitness genotype mutation migration genetic darwin wallace','Organic Evolution ',
'Classic Darwin–Wallace evolutionary process is based on natural selection. Biologists say that animals with higher fitness are selected for, and those with lower fitness are selected
against.The most important consequence of selection operating differentially on animals with different genotypes is change in gene frequencies within the population.
There are three ultimate sources for genotypic variation between individuals in metazoan
populations: mutation, migration, and genetic drift. ',
'none','Malcolm S.Gordon,Reinhard & John','Animal Locomotion Physical Principles and Adaptations',23);

insert into book values(13,0,0,1,'metazoan animals swim diversity aquatic environments buoyancy tension pressure hydro static','Evolutionary origin of Swimming',
"The wide variety of animals spend at least significant parts of their respective life histories moving through waters that can vary widely in
temperature, solute content, and hydrostatic pressure and therefore in density, viscosity, buoyancy, and surface tension.
There is no definitive evidence that establishes where the earliest metazoans lived, in fresh water, brackish water, the ocean, or some combination of these environments. 
Based on general considerations such as the relative sizes and scales of these broad category environments, the odds are favorable to marine origins",
'none','Malcolm S.Gordon,Reinhard & John','Animal Locomotion Physical Principles and Adaptations',29);


insert into book values(14,0,0,1,'Evolutionary origin Swimming thrust drag efficiency stationary balance stable',' Features of Aquatic metazoan anatomies',
'The features of aquatic metazoan anatomies that relate to swimming generally seem to represent evolutionary efforts to optimize performance (i.e., maximize thrust, minimize drag, maximize
energy efficiency, balance maneuverability and stability, automate and simplify control). , variation in body shapes, sizes, and levels of performance are among 
the most important factors . Very small animals with complex body shapes and multiple limbs (e.g., many planktonic crustaceans) often move slowly in short bursts and
are otherwise stationary. ',
'none','Malcolm S.Gordon,Reinhard & John','Animal Locomotion Physical Principles and Adaptations',32);

insert into book values(15,0,0,1,'Locomotor performance speed edurance all animals locomotion','Physiological properties of swimming animals ',
'Physiological properties of swimming animals play important roles in many contexts. One of the most significant is the connection between major
sources of metabolic energy and swimming performance.Locomotor performance of essentially all animals, whether aquatic or not, can be described
by two sets of mathematical relationships: the relationships between speed and endurance and
between speed and metabolic rates.',
'none','Malcolm S.Gordon,Reinhard & John','Animal Locomotion Physical Principles and Adaptations',34);

insert into book values(16,0,0,1,'Swimming Modes larvae metazoans jellufish octopus squid steady trajectory','Modes of swimming used by aquatic metazoans',
'There are so many different modes of swimming used by aquatic metazoans that there is little value to be gained by trying to list them.Several major classes in multiple phyla use 
ciliary propulsion as adults, not only as larvae. The ctenophore comb jellies and the urochordate salps have been mentioned previously. Ciliary propulsion is characterized by low,
 usually fairly steady speeds in usually rectilinear trajectories.Pulse jet propulsion is near universal among both the medusan cnidarian jellyfish and the
cephalopod octopuses and squid.',
'none','Malcolm S.Gordon,Reinhard & John','Animal Locomotion Physical Principles and Adaptations',35);

insert into book values(17,0,1,0,'Aerial air tail feather nature morphology thrust flight ',' Aerial locomotion of  Birds',
'The functional morphology of the flight apparatus of birds is best understood, although only a handful of species have extensively been studied. In birds lift, thrust, and flight control
 are provided by feathered front legs and an array of tail feathers. Wings consist of three functionally different parts: the arm section close to the body. Bats and pterosaurs 
fly with skin flaps mainly attached to the skeleton of the front legs. Despite this resemblance, details of the wing structures show that skinned wings were
 reinvented separately in each group',
'none','Malcolm S.Gordon,Reinhard & John','Animal Locomotion Physical Principles and Adaptations',93);

insert into book values(18,0,1,0,'Early wings prehistoric flight feather drawing drag force','History of Animal Flight and Research',
'Prehistoric art occasionally shows depictions of birds, whereas representations of insects are rare and those of bats nonexistent. Hand wings are important in generating
lift and drag forces at low speed (Videler 2006). The
arm wings, where the secondary flight feathers are connected to the skeleton of the upper and lower arm, are very short and kept close to the body. It is the oldest known drawing where 
the bastard wing or alula is depicted',
'none','Malcolm S.Gordon,Reinhard & John','Animal Locomotion Physical Principles and Adaptations',94);

insert into book values(19,0,1,0,'fly legs natural extension wings birds Aristotle Flight Research','Ancient Natural History',
'Aristotle’s ideas were accepted as truth for more than 20 centuries. He proposed that natural life is based on a hierarchy of three souls.In birds the arms or forelegs are replaced by
a pair of wings, and this is their distinctive character. For it is part of the substance of a bird that it shall be able to fly; and it is by the extension of wings that this is made
 possible. Moreover, birds cannot as a fact fly if their legs be removed, nor walk without their wings.',
'none','Malcolm S.Gordon,Reinhard & John','Animal Locomotion Physical Principles and Adaptations',95);

insert into book values(20,1,1,1,'signal behaviour response receiver warning reliability index vocalization individuals development stress','Alters the behaviour of other organisms',
'any act or structure which alters the behaviour of other organisms, which evolved
because of that effect, and which is effective because the receiver’s response has
also evolved. A cue, on the other hand, is defined as a feature
that can be used by an animal as a guide to future action. This
contrasts with signals, which evolve because of their effects on others',
'none','Duncan J.Irschick,Mark & Jeffrey','History effects, oxidative stress, and the evolution and expression of animal signals',12);

insert into book values(21,0,1,0,'striking butterflies colorful diversity development indicators brighter chromatic markings wing','PIERID BUTTERFLIES (SUBFAMILY COLIADINAE)',
"These creatures are, in fact, one of nature’s
most colorful animal groups, and their wings display an unrivalled diversity of
color-producing mechanisms. These displays have featured in the development of
theories relating to mate selection, speciation
, and aposematism and mimicry, but have not tended to feature in studies of mate quality indicators.
This is surprising because males in this group routinely display brighter",
'none','Duncan J.Irschick,Mark & Jeffrey','History effects, oxidative stress, and the evolution and expression of animal signals',122);

insert into book values(22,0,1,0,'evolutionary pigmentary photonic avian wing vertebrates coloration feathers development carotenoid variation','BIRDS',
'This group has contributed greatly to our understanding of color signal
evolution, and continues to provide highly original insights. Like butterflies
and fishes, birds have harnessed an impressive spread of pigmentary and photonic
mechanisms to generate color signals that span the entire visual spectrum.',
'none','Duncan J.Irschick,Mark & Jeffrey','History effects, oxidative stress, and the evolution and expression of animal signals',127);

insert into book values(23,1,1,1,'parental offspring social environment mating family behavioral maternal phenotype egg development fitness effects','SIGNALS EXPRESSED DURING DEVELOPMENT',
'In species that provide parental care, offspring are often reared together in broods,
so close relations provide the social environment in which growth and development
take place. Parents determine the initial social environment that offspring are
born or hatch out into, and often overproduce offspring, which creates a squeeze on
resources',
'none','Duncan J.Irschick,Mark & Jeffrey','History effects, oxidative stress, and the evolution and expression of animal signals',20);


insert into book values(24,1,1,1,'Variation development sexually environmental growth attractiveness defense immune genetic resistance ','SIGNALS EXPRESSED DURING ADULTHOOD',
'Variation in resources available during development can have profound effects
on the allocation of resources in adulthood, particularly in species with strongly
sexually selected traits. In stalk-eyed flies Cyrtodiopsis dalmanni, for example,
eyespan width in males is a sexually selected trait, with females preferring males
with wider eyespans',
'none','Duncan J.Irschick,Mark & Jeffrey','History effects, oxidative stress, and the evolution and expression of animal signals',25);

insert into book values(25,1,1,1,'image resource allocation growth development competitiveness individuals conspecifics Indirect genetic effects phenotype','COMPETITION-DEPENDENT SEXUAL SIGNALS',
'Early life-history effects are characterized by acquisition of scarce resources and
the trade-offs that subsequently occur in the allocation of these resources to traits
. Greater acquisition of resources reduces the
trade-off in resource allocation, but scarcity of resources leads to greater levels
of competition, so the competitiveness of individuals determines their resource
acquisition ability, which increases competitiveness, which in turn increases
resource acquisition ability, and so on, through a process of positive feedback',
'none','Duncan J.Irschick,Mark & Jeffrey','History effects, oxidative stress, and the evolution and expression of animal signals',32);


insert into book values(26,1,1,1,'Receiver independent conspecific receivers heterospecifics Developmental Dynamic behavioral phenotypic performance growth individuals','RECEIVER-INDEPENDENT COSTS',
'Receiver-independent costs are not enforced by intended conspecific receivers but
result from heterospecifics (predators or prey), or by processes internal to the signaler.
Here, we discuss three classes of receiver-independent costs: developmental
costs, production costs, and maintenance costs. In many cases, these three types of
costs may be non-mutually exclusive and a signal may have multiple types of costs.',
'none','Duncan J.Irschick,Mark & Jeffrey','History effects, oxidative stress, and the evolution and expression of animal signals',51);

insert into book values(27,1,1,1,'conspecific rivals vulnerability retaliation costs injury attack reliable indicators fighting natural interactions performance','Receiver-dependent costs',
'Receiver-dependent costs are imposed upon a signaler by conspecific rivals at the
time the signal is given and are not due to developing or maintaining the signal.
Thus, they are similar to production costs discussed above, but in the case of
receiver-dependent costs, the intended receiver is the one imposing the cost instead
of, for example, a predator',
'none','Duncan J.Irschick,Mark & Jeffrey','History effects, oxidative stress, and the evolution and expression of animal signals',55);

insert into book values(28,1,1,1,'integrated phenotype individuals exaggerated signals larger selection concomitant Compensation illusion performance enhances','COMPENSATORY TRAITS',
'Although many or most signals are almost certainly under the influence of sexual
selection, either through male–male competition or female choice, natural selection
works on the entire integrated phenotype of individuals,
there may also be concomitant selection on traits
that alleviate the negative effects of sexually selected traits, including signals',
'none','Duncan J.Irschick,Mark & Jeffrey','History effects, oxidative stress, and the evolution and expression of animal signals',59);

select title from book where id = 25;
