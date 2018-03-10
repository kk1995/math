function angle = point2angle(P1,P2,P3)
%UNTITLED3 gets angle between three points
%   second input is the vertex

P12 = sqrt((P1(1) - P2(1))^2 + (P1(2) - P2(2))^2);
P23 = sqrt((P2(1) - P3(1))^2 + (P2(2) - P3(2))^2);
P13 = sqrt((P1(1) - P3(1))^2 + (P1(2) - P3(2))^2);
angle = acos((P12^2 + P23^2 - P13^2) / (2 * P12 * P23));
end

