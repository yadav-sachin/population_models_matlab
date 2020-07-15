clear
clc
clf
h = animatedline('Color','g','linewidth',2);
axis([0,6,0,800])
x = linspace(0.1,6,1000);
y=(exp(log(9) - ((21*x)/10)) +1)^(-1);
title('Populations Over Time')
xlabel('time')
ylabel('Population')
for k = 1:length(x)
    addpoints(h,x(k),y(k));
    drawnow
end