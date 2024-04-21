%TO BE RESOLVED BY THE CRAMER RULE
%40.3 * 1 + 0.52 * 2 ++*3=-0.01
%0.5x1 * 2 + 1.9 * 3 = 0.67
% 1 * 1 + 0.3 * 2 + 0.5 * 3 = - 0.44

%The matrix of coefficients and the matrix associated with each unknown is constructed

A=[ 0.3, 0.52, 1; 0.5, 1, 1.9; 0.2, 0.3, 0.5]

A1=[ -0.01, 0.52, 1; 0.67, 1, 1.9; -0.44, 0.3, 0.5]

A2=[ 0.3, -0.01, 1; 0.5, 0.67, 1.9; 0.1, -0.44, 0.5]

A3=[ 0.3, 0.52, -0.01; 0.5, 1.9, 0.67; 0.1, 0.3, -0.44]

x1=det(A1)/det(A)
x2=det(A2)/det(A)
x3=det(A3)/det(A)

%RESOLVE GRAPHIC AND BY THE ELIMINATION OF UNKNOWN

x1=-10:10;
x2=9;
xx2=1;

plot(x1,x2,x1,xx2)
grid
zoom

% TO RESOLVE THE SYSTEM OF EQUATIONS FOR THE ELIMINATION OF GAUSS-IANA
%3x1-0.1x2-0.2 x3 = 7.85
%0.1x1+ 7x2-0.3 x3-19.3
%0.3 x1-0.2x2 + 10 x * 3 = 71.4

I1=[3 -0.1 -0.2 7.85];
I2=[0.1 7 -0.3 -19.3];
I3=[0.3 -0.2 10 71.4];
AC=[I1;I2;I3];
%pause

I2=I2-I1*I2(1)/I1(1);
I3=I3-I1*I3(1)/I1(1);
AC=[I1;I2;I3];
%pause

I3=I3-I2*I3(2)/I2(2);
AC=[I1;I2;I3];

x3=I3(4)/I3(3);
x2=(I2(4)-I2(3)*x3)/I2(2);
x1=(I1(4)-I1(3)*x3-I1(2)*x2)/I1(1);


