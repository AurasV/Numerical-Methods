clear all

% DATA

m=68.1; %kg
v=40; %m/s
g=9.8;
t=10;
epsi_adm=0.00005; % %

%Solutia analitica

c=0:1:20;

l=length(c);

f=m*g.*c.^(-1).*(1-exp(-(c/m)*t))-v;

plot(c,f,'r')

grid

%Linear interpolation method (REGULA FALSI)

for i=1:(l-1),
  if f(i)*f(i+1)<=0,
    a=c(i);
    fa=f(i);
    b=c(i+1);
    fb=f(i+1);
    end
  end

epsi=abs((a-b)/a)*100;
N=0;
c_nou=(a*fb-b*fa)/(fb-fa);

while epsi>epsi_adm,
  fc_nou=m*g.*c_nou.^(-1).*(1-exp(-c_nou/m*t))-v;
  ff=fa*fc_nou;

  if ff<0,
    b=c_nou;
  else
    a=c_nou;
  end

  N=N+1;
  c_vechi=c_nou;
  fa=m*g.*a.^(-1).*(1-exp(-a/m*t))-v;
  fb=m*g.*b.^(-1).*(1-exp(-b/m*t))-v;
  c_nou=(a*fb-b*fa)/(fb-fa);
  epsi=abs((c_nou-c_vechi)/c_nou)*100;
end

disp('Linear interpolation method: x0 eroarea e5 N')
disp('--------------------------------------------')

[c_nou epsi*1e5 N]
