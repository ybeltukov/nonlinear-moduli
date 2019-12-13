effectiveModuli[K0_,mu0_,l0_,m0_,n0_,K1_,mu1_,l1_,m1_,n1_,c_] := Module[{
    a = 3 K0 + 4 mu0,
    b = 3 K1 + 4 mu0,
    d = mu0 - mu1,
    e = mu0 ((9 + 6 c) K0 + 4 (2 + 3 c) mu0) + 6 (1 - c) (K0 + 2 mu0) mu1,
    f = 3 c (K0 - K1) + 3 K1 + 4 mu0,
    p0, p1, lg, mg, ng,
    Keff, mueff, leff, meff, neff
},

p0[1,1] := -p0[3, 1]/9 - ((3 a - 2 b) b^2 + 3 (a - b)^2 b c + (a - b)^3 c^2)/f^3;
p0[1,2] := -p0[3, 2]/9 + (1 - c) (2 (a - b)^2 b)/f^3;
p0[1,3] := -p0[3, 3]/9 + ((1 - c) c (a - b)^3 - a^3)/(9 f^3);
p0[2,1] := (1 - c) (120 mu0^2 d^2)/e^2 (1 - (10 d mu0)/(7 e) - (c (a - b))/f);
p0[2,2] := p0[3, 2]/6 - p1[2, 2] - 6 p0[2, 3] - 6 p1[2, 3] + p0[3, 3] + p1[3, 3] + (1 - c) d/(f e^2) (4 (39 b - 19 a) mu0^2 d + a (a - b) (a + 4 mu0) (11 mu0 + 9 mu1));
p0[2,3] := (p0[3, 3] + p1[3, 3])/6 - p1[2, 3] - (1 - c) d^2/(6 f e^2) (5 a^2 (a + b) + 4 c (a - b) (a + 2 mu0)^2);
p0[3,1] := -(1 - c) (7200 mu0^3 d^3)/(7 e^3);
p0[3,2] := (1 - c) (180  mu0 d^2)/(7 e^3) (a (11 mu0 + 9 mu1) (a + 4 mu0) - 76 d mu0^2);
p0[3,3] := -p1[3, 3] + ((1 - c) d^2)/(7 e^3) (56 c (a + 2 mu0)^3 d - 75 a^2 ( mu0 d - a (5 mu0 + 2 mu1)));

p1[1,1] = a^3/f^3;
p1[1,2] = p1[2,1] = p1[3,1] = p1[3,2] = 0;
p1[1,3] = a^3/9 (1/f^3-(125 mu0^3)/e^3);
p1[2,2] = (25 a^3 mu0^2)/(f e^2);
p1[2,3] = (1 - c)(25 a^3 mu0^2 (5 b mu0 + 4 mu0 d - a (3 mu0 + 2 mu1)))/(6 f e^3);
p1[3,3] = (125 a^3 mu0^3)/e^3;

lg := -ng/9 + (1-c) (a-b)^2/(6 f^3) (3 a b - 6 (a + b) mu0 - 4 c (a - b) mu0);
mg := ng/6 - (1-c) (2 d)/(3 f e^2) (63 b mu0^3 d + 10 a (a - b) c mu0 (a + 2 mu0) d + 3 a mu0^2 (-4 b (mu0 - 6 mu1) + 19 mu0 d) + a^3 (-5 b + 13 mu0) d + a^2 mu0 (7 b d - 6 mu0 (3 mu0 + 7 mu1)));
ng := -(1 - c) (12  mu0 d^2)/(7 e^3) (7 c (3 a - 4 mu0) (a + 2 mu0)^2 d - 5 (6 mu0^3 d + 10 a^3 mu1 - a^2 mu0 d + 12 a mu0^2 (3 mu0 + 7 mu1)));

Keff = K0 + (c (K1 - K0) (3 K0 + 4 mu0))/(3 K1 + 4 mu0 - 3 c (K1 - K0));
mueff = mu0 + (5 c mu0 (mu1 - mu0) (3 K0 + 4 mu0) )/( mu0 ((9 + 6 c) K0 + 4 (2 + 3 c) mu0) + 6 (1 - c) (K0 + 2 mu0) mu1);
{leff, meff, neff} = {l0, m0, n0} + c(Array[p0, {3,3}].{l0, m0, n0} + Array[p1, {3,3}].{l1, m1, n1} + {lg, mg, ng});
{Keff, mueff, leff, meff, neff}
]
