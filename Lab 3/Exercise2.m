clear all

clf

% Approximate the function f (x)=xm with the Taylor series of
% order 1, on the interval [1; 2]:

x=1:0.05:2;

l=length(x);

% Consider m 1, 2, 3 or 4 and step h=2-1=1

m=1;

f1=x.^m; %exact function

fal=f1(1)+m*1^(m-1)*(x-1); % approximate function in x=2

figure (1)
plot(x, f1, 'r', x, fal, 'ro')
xlabel('x')
ylabel ('f(x)')
grid
text (1.8,1.5, 'm=1')
hold on

%-------------------------------------------------------------------------------

m=2
f2=x.^m;
fa2=f2(1)+m*1^(m-1)*(x-1);
plot(x, f2, 'g',x, fa2, 'go')
text (1.9, 3.5, 'm=2')

%-------------------------------------------------------------------------------

m=3
f3=x.^m;
fa3=f3(1)+m*1^(m-1)*(x-1);
plot(x, f3, 'b',x, fa3, 'bo')
text (1.8,5.5,'m=3')

%-------------------------------------------------------------------------------

m=4;
f4=x.^m;
fa4=f4(1)+m*1^(m-1)*(x-1);
plot (x, f4, 'c', x, fa4, 'co')
text (1.7,7.5, 'm=4')

%Calculate the error associated in each case with the calculation
%in x=2

eroarea_absoluta=[f1(1)-fal(1) f2(1)-fa2(1) f3(1)-fa3(1) f4(1)- fa4 (1)]

%Calculates the error associated with changing h, for m=4:
%-------------------------------------------------------------------------------

h=1:-0.1:0;
R=6*h.^2+4*h.^3+h.^4;

figure (2)
plot(h, R, '*')
xlabel('h')
ylabel('eroarea absoluta')
grid
