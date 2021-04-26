clear;clc;
a=6378137.0;          % earth semimajor axis (WGS84) (m) 长半轴
f=1.0/298.257223563;  % earth flattening (WGS84)扁率
e2=2*f-f*f;           % squre of the first eccentricity of reference ellipsoid 第一偏心率平方

x=input("X:");
y=input("Y:");
z=input("Z:");
p=(x^2+y^2)^0.5;
L=atan(y/x);
B0=atan(a*z/(b*p));
N0=a/W0;
on = true;
while 1:
    W=(1-e2^(sin(B0)^2));
    N=a/W;
    h=p/cos(B0)-N;
    B=atan(z/p*((1-e2*N/(N+h))^-1));
    B0=B;
    if abs(B0-B)<10^-6
        break;
    end
end
