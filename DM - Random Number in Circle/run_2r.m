clear;
R = 1;
n = 5;
temp= [0:0.01:2*pi ];
x = cos(temp)' * R;
y = sin(temp)' * R;
plot(x,y,'b')
axis equal
hold on

dots = rand(3,5000);

% t = 2*pi*random()
u = dots(1,: )+dots(2,: );
r = zeros(1, 5000);
for i = 1 : 5000
    if (u(i)>1)
        r(i) = 2-u(i);
    elseif (u(i) <= 1)
        r(i) = u(i);
    end
end
% [r*cos(t), r*sin(t)]
x_dot = r .* cos(2*pi*dots(3,: ));
y_dot = r .* sin(2*pi*dots(3,: ));
plot(x_dot , y_dot, 'or')