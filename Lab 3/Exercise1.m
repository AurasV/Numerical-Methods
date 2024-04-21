clear all

% Consider the polynomial function f (x) defined on the interval [0+1]

x=0:0.01:1

m=length(x);

f=-0.1*x.^4-0.15*x.^3-0.5*x.^2-0.25*x+1.2;

% The approximation of f(x) by zero-order Taylor series:

f0=f(1)*ones(size(x));

%The approximation of f(x) by first-order Taylor series:

f1=1.2-0.25*(x-0) ;

% The approximation of f(x) by second-order Taylor series:

f2=f1-0.5*(x-0).^2;

% The approximation of f(x) by Third-order Taylor series:

f3=f2-0.15*(x-0).^3

% The fourth-order approximation (Taylor series):

f4=f3-0.10*(x-0).^4;

%The exact function and the five approximations are represented graphically:

plot(x, f, 'r*',x, f0, 'yo', x, f1, 'bo', x, f2, 'mo',x, f3, 'co',x, f4, 'go')
axis([-0.1 1.1 0 1.5])
grid

%Calculate the error of the function in x=1 associated with
%each approximation:

eroarea_absoluta=f(m)-[f0(m) f1(m) f2(m) f3(m) f4(m)]
