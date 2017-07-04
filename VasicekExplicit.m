function Out = VasicekExplicit( K, theta, sig, lambda0, T)

Bt = (1/K)*(1-exp(-K*T));
At = ((theta - ((sig^2)/(2*(K^2))))*(Bt-T)) - (((sig^2)/(4*K))*(Bt^2));
Out = exp(At-(Bt*lambda0));
