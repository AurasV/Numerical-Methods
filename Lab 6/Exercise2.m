clear all

% We consider the equation f(x) = exp(- x) - x
% The function f (x) is graphically represented to identify approximate values

x=-2:0.01:5;
y=exp(-x)-x;
plot(x,y)
grid

%f_prim=-exp(-x)-1
%iniţial guess
xi=0;
error_adm=0.0001;%
error=10; %arbitrary value to start the iteration cycle
l=0; %counter

while error>error_adm,
  xi_new=xi-(exp(-xi)-xi)/(-exp(-xi)-1);
  error=abs((xi_new-xi)/xi_new)*100;
  xi=xi_new;
  l=l+1;
end

disp('Méthode de Newton-Raphson: x0 erreur*e5 N')
disp('-----------------------------------------')
[xi error*1e5 l]
