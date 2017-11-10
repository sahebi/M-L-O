disp('Random in Circle');

r     = (rand(1000, 1)).^.5;
theta = rand(1000, 1) .* (2*pi);

xy    = [r.*cos(theta) r.*sin(theta)];
plot(xy(:,1), xy(:,2), 'x');