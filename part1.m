clear
clc
n=(0:127);
x=zeros(1,128);
x(1:64)=3*sin((n(1:64)*pi)/8)+3;
figure(1)
plot(x)
title('x[n]')
z=x(1,1:64);
cos(n(1,1:64)*pi);
cos((n(1,1:64)*pi)/16);
z=7*cos((n(1,1:64)*pi)/16).*cos(n(1,1:64)*pi);
figure(2)
plot(z)
title('z[n]')
w=x(1:64)+z;
figure(3)
plot(w)
title('w[n]')
figure(4)
plot(x)
hold on
plot(w)
hold off
title('x[n]&w[n]')
h=zeros(1,128);
h(1:64) = 0.5*sinc(0.5*(n(1:64) - 31));
figure(5)
plot(h)
title('h[n]')
conv(w,h);
y=conv(w,h);
figure(6)
plot(y)
title('y[n]')
figure(7)
plot(x)
hold on
plot(y)
hold off
title('y[n]&x[n]')


