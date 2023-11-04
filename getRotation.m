function rotatedMatrix = getRotation (theta)

rotatedMatrix = [ cos(theta), -sin(theta), 0 ; sin(theta), cos(theta), 0; 0, 0, 1 ];

endfunction
