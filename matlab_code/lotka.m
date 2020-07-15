function LotkaVolterra_JA
clear 
clc
clf
a=2;
c=1.5;
alpha=0.5;
gamma=0.25;
initialPrey = 10;
initialPredator = 3;
initialSecPredator=2;
beta=0.7;
b=1.3;
delta=0.1;
deqs=@(t,x) [x(1)*(a -alpha*x(2)); x(2)*(-c +gamma*x(1) -delta*x(3));x(3)*(-b+beta*x(2));];
[t,sol] = ode45(deqs,[0 4],[initialPrey initialPredator initialSecPredator]);
title('Lotka Volterra Model');
subplot(2,2,1)
    plot(t(:,1),sol(:,1),'b')
    xlabel('time')
    ylabel('Prey Population')
    ymax=max(max(sol(:,1)),max(max(sol(:,2)),max(sol(:,3))))+1;
    axis([min(t(:,1)) max(t(:,1)) 0 max(sol(:,1))])
subplot(2,2,2)
    plot(t(:,1),sol(:,2),'r')
    xlabel('time')
    ylabel('Predator Population')
    axis([min(t(:,1)) max(t(:,1)) 0 ymax])
subplot(2,1,2)
    plot(t(:,1),sol(:,1),'b',t(:,1),sol(:,2),'r',t(:,1),sol(:,3),'g')
    legend('Prey','Predator','Secondary Predator')
    xlabel('time')
    ylabel('Prey and Predator Population')
    axis([min(t(:,1)) max(t(:,1)) 0 ymax])
    disp(min(sol(:,2)))
    disp(max(sol(:,2)))
end