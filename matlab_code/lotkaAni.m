clear
clc
clf
h = animatedline('Color','b','linewidth',2);
i=animatedline('Color','r','linewidth',2);
axis([0,8,0,12])
x = linspace(0,8,20000);
y=7+ 4.7466*cos(sqrt(5)*x + 0.5685);
z=4+2.6695*sin(sqrt(5)*x +0.5240);
title('Variations of the prey and predator populations with time')
xlabel('time')
legend('Prey','Predator')
ylabel('Population')
a = tic;
for k = 1:length(x)
    addpoints(h,x(k),y(k));
    addpoints(i,x(k),z(k));
    b = toc(a); % check timer
    if b > (1/120)
        drawnow % update screen every 1/30 seconds
        a = tic; % reset timer after updating
    end
end
drawnow