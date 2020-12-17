%scr7 - for Lab6
clear all
N = 100;
kr = 10;
a = 0;
b = 1;

sh = (b-a)/kr;
xx = a + sh/2:sh:b-sh/2;
fx = f47(xx);
fm = max(fx);

for k = 1:N
    xrn(k) = gen47(a,b,fm);
end

figure(1)
hist(xrn,kr);
title('histOfNeiman');

% verojatnosti
figure(2)
[v,xv]=hist(xrn, kr)
vyb=v/N;
%v-theor=???*sh
plot(xv,vyb,'r*')
title('*- vyborka, — theor')
hold on

v_theor=fx*sh;
plot(xv,v_theor)