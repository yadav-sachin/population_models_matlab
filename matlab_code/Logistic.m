syms N(t)
r=2.1
K=600;
b2=r/K;
ode = diff(N,t) ==r*N-b*N*N;
cond2 = N(0) == 60;
cond3=N(0)==300;
cond1=N(0)==15;
ySol1(t) = dsolve(ode,cond1);
ySol2(t) = dsolve(ode,cond2);
ySol3(t) = dsolve(ode,cond3);
fplot(t,ySol1(t),'linewidth',1.5)
hold on
fplot(t,ySol2(t),'linewidth',1.5)
hold on
fplot(t,ySol3(t),'linewidth',1.5)
grid on
hold off
title('Logistic Growth Model')
legend('N1(0)=15','N2(0)=60','N3=300');
xlabel('time')
xlim([0 6]);
ylim([0 1100]);
ylabel('Population')

fprintf("The Solution of Differential equation is:\n ")
disp(ySol(t))