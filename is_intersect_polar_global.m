function b = is_intersect_polar_global(polar, pose)

x = pose(1);
y = pose(2);

p = cross(line_polar2cart(polar), [y -x 0]);
p = p(1:2)/p(3);
xp = p(1);

% touch_1 = (xp-line.e1(1))*(xp-line.e2(1)) <= 0;
touch_2 = (xp)*(xp-x) <= 0;
% b = touch_1 && touch_2;

b = touch_2;

end