clear
clc
clf
h = animatedline('Color','b','linewidth',2);
axis([0,6,0,2000000])
x = linspace(0,6,1000);
y = 60*exp((21*x)/10);
title('Exponential Growth Model')
xlabel('time')
ylabel('Population')
for k = 1:length(x)
    addpoints(h,x(k),y(k));
    drawnow
    
end