function captainGraphics = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt)
% In the future, this function will draw the captain at the given
% position (xCapt ,  yCapt) , with heading thetaCapt.
% For now, it draws the captain at the (0, 0) with 0 heading.
% This function returns a vector of graphics handles called captainGrapics.
% The ith  vector entry contains the graphics handle of ith line of the captain.

% Use your code from last week to get the captain matrix
 % for a captain of dimension sizeCapt. Notice that
 % sizeCapt is a parameter passed into drawCapt.

            capt = getCapt(sizeCapt);


% TODO : Rotate captain from zero heading to heading thetaCapt
  R = getRotation(thetaCapt);
  captRotated = R*capt;

% TODO : Shift the captain from (0 , 0) to (xCapt ,  yCapt)


% shift Captain to new location
% this calls getTranslation and gives T the translation matrix
% then T multiplys by the capt and gives it a new location

  T = getTranslation(xCapt,yCapt);
  capt = T*captRotated;



 % Extract the captain points from the captain matrix capt.
        pt1=capt( : , 1);
        pt2=capt( : , 2);
        pt3=capt( : , 3);
        pt4=capt( : , 4);
        pt5=capt( : , 5);
        pt6=capt( : , 6);
        pt7=capt( : , 7);
        pt8=capt( : , 8);
        pt9=capt( : , 9);
        pt10=capt( : , 10);
        pt11=capt( : , 11);
        pt12=capt( : , 12);
        pt13=capt( : , 13);
        pt14=capt( : , 14);
        pt15=capt( : , 15);
        pt16=capt( : , 16);
        pt17=capt( : , 17);
        pt18=capt( : , 18);

  % Draw the captain and set the return vector of graphics handles.
          captainGraphics(1) = drawLine(pt1 , pt2 , "k");
          captainGraphics(2) = drawLine(pt2 , pt3 , "k");
          captainGraphics(3) = drawLine(pt2 , pt5 , "k");
          captainGraphics(4) = drawLine(pt4 , pt5 , "k");
          captainGraphics(5) = drawLine(pt5 , pt6 , "k");
          captainGraphics(6) = drawLine(pt6 , pt1 , "k");
          captainGraphics(7) = drawLine(pt7 , pt8 , "k");
          captainGraphics(8) = drawLine(pt8 , pt9 , "k");
          captainGraphics(9) = drawLine(pt9 , pt10 , "k");
          captainGraphics(10) = drawLine(pt1 , pt17 , "k");
          captainGraphics(11) = drawLine(pt6 , pt18 , "k");
          captainGraphics(12) = drawLine(pt17 , pt11 , "k");
          captainGraphics(13) = drawLine(pt18 , pt12 , "k");
          captainGraphics(14) = drawLine(pt13 , pt14 , "k");
          captainGraphics(15) = drawLine(pt15 , pt16 , "k");





endfunction

