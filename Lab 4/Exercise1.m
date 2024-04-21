clear all

% DATA

m=68.1;

v=40;

g=9.8;

t=10;

epsi_adm=0.00005; % %

%BISECTION METHOD GRAPHIC VARIANT

%Analytical solution

c=0:1:20; l=length(c);

f=m*g.*c.^(-1).*(1-exp(-(c/m)*t))-v;

plot(c,f,'r')

grid

% axis([ 1) sau comanda "zoom"

%BISECTION METHOD INTERVAL HALF ALGORITHM

for i=1:(l-1),
  if f(i)*f(i+1)<=0,
    a=c(i);
    b=c(i+1);
  end
end

c_nou=(a+b)/2;
epsi=abs((a-b)/a)*100;
N=0;
while epsi>epsi_adm,
  fa=m*g.*a.^(-1).*(1-exp(-a/m*t))-v;
  fc_nou=m*g.*c_nou.^(-1).*(1-exp(-c_nou/m*t))-v;
  ff=fa*fc_nou;

if ff<0,
  b=c_nou;
else
  a=c_nou;
end
    N=N+1;
    c_vechi=c_nou;
    c_nou=(a+b)/2;
  epsi=abs((c_nou-c_vechi)/c_nou)*100;
end

disp('Bisection Method: x0 eroarea*e5 N')

disp('---------------------------------')

[c_nou epsi*1e5 N]

