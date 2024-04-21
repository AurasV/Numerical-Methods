% PROBLEM DATA: a parachutist performs a hollow jump from a high altitude.

clear all

m=68.1; % kg-mass in kg of the parachutist

c=12.5; % kg/s drag coefficient

g=9.81; % m/s2-gravity

tf=30; % sec. the time interval initially estimated

% ANALYTICAL SOLUTION "a"

ta=0:0.05:tf; % the time

va=m*g/c*(1-exp(-c/m*ta)); % velocity

plot(ta, va,'r.')

hold on; grid on

disp('press any key')

pause

% NUMERICAL SOLUTION "n"

h=4; % sec. step time

tn=0:h:tf; % de the length of the vector tn (no. of % elements in vector vn)

l=length(tn);



vn(1)=0; % m/s-initial speed

  for i=1:(l-1),

    vn(i+1)=vn(i)+(g-c/m*vn(i))*h;

  end

plot(tn, vn, 'bo',tn, vn, 'b')

disp('press any key')

pause

%------------------resume the numerical solution with another step of time------

h=2; % sec.

tn=0:h:tf;

l=length(tn);

vn(1)=0; % m/s

  for i=1:(l-1),

    vn(i+1)=vn(i)+(g-c/m*vn(i))*h;

  end

plot(tn, vn, 'go',tn, vn,'g')

disp('press any key')

pause

%------------------resume the numerical solution with another step of time------


h=1; % sec.

tn=0:h:tf;

I=length(tn);

vn(1)=0; % m/s

