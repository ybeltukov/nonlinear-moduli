effectiveModuli[K0_,mu0_,l0_,m0_,n0_,K1_,mu1_,l1_,m1_,n1_,c_]:=Module[{
a=3 K0+4 mu0,
b=3 K1+4 mu0,
d=mu0-mu1,
e=mu0 (9 K0+8 mu0)+6 (K0+2 mu0) mu1,
p0,p1,q,
Keff,mueff,leff,meff,neff
},

p0[1,1]:=-(3/b) (a-b)-1-p0[3,1]/9;
p0[1,2]:=2/b^2 (a-b)^2-p0[3,2]/9;
p0[1,3]:=-(a^3/(9b^3))-p0[3,3]/9;
p0[2,1]:=(120 mu0^2 d^2)/(7 e^3) (7 e-10 mu0 d);
p0[2,2]:=-((2 d)/(7  e^3))(7 a^2 e(3 mu0+7 mu1)-2 mu0^2 d (534e-mu0(145a-474d))+a^2 mu0 (11 mu0+9 mu1) (27 mu0+43 mu1))+(20 mu0 a d)/(b e^2)  (a (mu0+mu1)-3 mu0 d)-a/b;
p0[2,3]:=(5 a^2 (5a mu0^2-d^2 (a+b)))/(6b e^2)+p0[3,3]/6;
p0[3,1]:=-((7200 mu0^3 d^3)/(7 e^3));
p0[3,2]:=(180 mu0 (d^2) )/(7 e^3) (a(a+4mu0)(11 mu0+9 mu1)-76 mu0^2 d);
p0[3,3]:=-((25 a^2)/(7 e^3)) (3 mu0 d^3+a (20 mu0^3+24 mu0^2 mu1-3 mu0 mu1^2-6 mu1^3));

p1[1,1]=a^3/b^3;
p1[1,2]=p1[2,1]=p1[3,1]=p1[3,2]=0;
p1[1,3]=a^3/9 (1/b^3-(125 mu0^3)/e^3);
p1[2,2]=(25 mu0^2 a^3)/(b e^2);
p1[2,3]=(25 mu0^2 a^3 (5 b mu0-e))/(6 b e^3); 
p1[3,3]=(125 mu0^3 a^3)/e^3;

q[1]:=(a-b)^2/(2 b^3) (a b-2mu0(a+b))-q[3]/9;
q[2]:=(2 d)/(21 e^3) (1854 d^2 mu0^4+3 a d mu0^3 (-373 mu0+798 mu1)+a^2 mu0^2 (433 mu0^2-1706 mu0 mu1-827 mu1^2)+a^3 d (35 e+mu0 (-147 mu0+52 mu1)))-(2 mu0 a d)/(3 b e^2) ((13 a^2+57 mu0^2) d-6 a mu0 (3 mu0+7 mu1));
q[3]:=60 /(7 e^3) mu0 d^2 (10mu1 a^3-mu0 d(a^2-6mu0^2)+12 mu0^2 (3 mu0+7 mu1)a);

Keff=K0+c(K1-K0) (3K0+4mu0)/(3K1+4mu0);
mueff=mu0+c(mu1-mu0) (5mu0(3K0+4mu0))/(mu0(9K0+8mu0)+6mu1*(K0+2mu0));
{leff,meff,neff}={l0,m0,n0}+c(Array[p0,{3,3}].{l0,m0,n0}+Array[p1,{3,3}].{l1,m1,n1}+Array[q,3]);
{Keff,mueff,leff,meff,neff}
]
