function dXdt = StateDerivatives(X,t)

% GLOBAL VARIABLE DECLARATION
global GAMMA


%%%% STATE VECTOR = X = [theta; phi; thetadot; phidot];
%%%% d/dt(STATE VECTOR) = Xdot = [thetadot; phidot; thetaddot; phiddot];


%%%% TIME-DERIVATIVE OF STATE VECTOR (FOR SIMPLIFIED EOMS)
dXdt = zeros(4,1);
dXdt(1) = X(3);
dXdt(2) = X(4);
dXdt(3) = sin(X(1)-GAMMA);
dXdt(4) = dXdt(3)+X(3)^2*sin(X(2))-cos(X(1)-GAMMA)*sin(X(2));


end