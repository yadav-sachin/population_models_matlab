clear
clc
clf
syms y(t)
alpha=1;
ode = diff(y,t) ==alpha*y;
ySol(t) = dsolve(ode,cond);
fplot(t,ySol(t),'linewidth',1.5)
title('Exponential Growth Model')
xlabel('time')
xlim([0 6]);
ylabel('Population')

fprintf(2,"The Solution of Differential equation is:  ")
disp(ySol(t))