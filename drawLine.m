function lineHandle = drawLine (pointA, pointB, color)
% The function takes pointA, pointB, and draws a line between the points
% and color selects the color of the line

%extracts the x coordinates from the points
x = [pointA(1) ; pointB(1)];
y = [pointA(2) ; pointB(2)];

lineHandle = plot(x,y, color);
set(lineHandle, "LineWidth", 4)

endfunction
