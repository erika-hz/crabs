 function crab = getCrab (size )

  % This function stores and returns the crab at the origin with zero heading in the form of a matirx.
  % Each colunm represents one point on the crab.

  %body
  crabPt1 = [ size/2; size; 1];
  crabPt2 = [ -size/2; size; 1];
  crabPt3 = [ -size/2; -size; 1];
  crabPt4 = [ size/2; -size; 1];

  %claws
  crabPt5 = [ 2*size; size/4; 1];
  crabPt6 = [ 2*size; -size/4; 1];

  %legs
  crabPt7 = [0; 1.5*size; 1];
  crabPt8 = [-size; 1.5*size; 1];
  crabPt9 = [0; -1.5*size; 1];
  crabPt10 = [-size; -1.5*size; 1];
  crab = [ crabPt1, crabPt2, crabPt3, crabPt4, crabPt5, crabPt6, crabPt7, crabPt8, crabPt9, crabPt10];

endfunction

