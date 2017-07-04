function Out = CIRExplicit( K, theta, sig, lambda0, T)

gam = sqrt( (K^2) + (2*(sig^2)));
At1 = 2*gam*exp((K+gam)*T/2);
At2 = (2*gam)+((K+gam)*(exp(gam*T)-1));
At = (At1/At2)^((2*K*theta)/(sig^2));
Bt = (2*(exp(gam*T)-1))/(At2);
Out = At*exp(-(Bt*lambda0));

