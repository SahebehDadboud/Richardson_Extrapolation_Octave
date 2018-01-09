%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Sahebeh Dadboud: 

% Explicit Euler methods and Richardson Extrapolation
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



Y0 = 1;
h = 0.1;
%h = 0.05;
%h = 0.025;
%h =  0.0125;
t = 0:h:1;
Y = zeros(1,length(t));
%t=1;
yexact =10./(1+(9*e.^-t));
Y(1) = Y0;

%explicit euler methods
for i=1:(length(t)-1)
    f = Y(i)-(Y(i).^2)/10;  % y'=y-y^2/10 
    Y(i+1) = Y(i) + f*h;
end 

figure(1);
plot(t,yexact,t,Y);
legend('Exact','Approximate');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Richardson extrapolation

%h = 0.1; 
h = 0.05;
%h = 0.025;
%h =  0.0125;
t = 0:h:1;
y = zeros(1,length(t));
%t=1;
yexact2 = 10./(1+(9*e.^-t));
y0 = 1;
y(1) = y0;
for i=1:(length(t)-1)
    f = (y(i)+h/2)-((y(i).^2)+h/2)/10;
    y(i+1) = y(i)+h/2 + f*h/2;  
end
   
figure(2);
plot(t,yexact2,t,y);
legend('Exact','Approximate');   

