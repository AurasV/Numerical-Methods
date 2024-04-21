clear all

% We consider the ecuation: f(x)=exp(-x)-x
% The function f (x) is graphically represented to identify approximate values

x=-2:0.01:5;
y=exp(-x)-x;
plot(x,y)
grid

%Initial values to start the iterations
xi1=0;
xi2=1;
error_adm=0.0001; %
error=10; %arbitrary value to start the iteration cycle
l=0; %counter

while error>error_adm,
  f_xi1=exp(-xi1)-xi1;
  f_xi2=exp(-xi2)-xi2;
    xi3=xi2-f_xi2*(xi1-xi2)/(f_xi1-f_xi2);
    l=l+1;
  error=abs((xi3-xi2)/xi3)*100;
  xi1=xi2; xi2=xi3;
end

disp('Méthode de la sécante: x0 erreur*e5 N')
disp('-------------------------------------')
[xi3 error*1e5 l]
