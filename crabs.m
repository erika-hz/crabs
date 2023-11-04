function crabs ()
% Crabs is a kids computer game where a fisherman,  called the captain,
% hunts for a very clever and powerful crab.

 % Draw the game map and initialize map dimensions.
   [mapHeight , mapWidth] = drawMap( "BGImage.png" );

  % Initialize captain location,  heading and size
    xCapt   = 1000;
    yCapt  = 800;
    thetaCapt  = pi/2;
    sizeCapt  =  50;

  % Initialize crab location, heading and size
    xCrab = 1000;
    yCrab = 1200;
    thetaCrab = 2*pi;
    sizeCrab = 25;

  %initialize jellyfish
    xJelly = rand*mapWidth;
    yJelly = 0;
    thetaJelly = -pi/2;
    sizeJelly = 25;

  %initialize penguin
    xPeng = 1000;
    yPeng = 1000;
    thetaPeng = pi/2;
    sizePeng = 25;

    level = 1;


  % Draw the captain and initialize graphics handles
%*********************************************************
  % Put your call to  drawCapt() here ….. You must give drawCapt its
   % input and output arguments.

   captGraphics = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt);
   crabGraphics = drawCrab (xCrab , yCrab , thetaCrab , sizeCrab);
   jellyGraphics = drawJelly(xJelly,yJelly,thetaJelly,sizeJelly);
   pengGraphics = drawPeng(xPeng, yPeng, thetaPeng, sizePeng);

%*******************************************************


%     MAIN LOOP      %


 while (1) % While not quit, read keyboard and respond


   % Jelly fish stuff here
   % erase old jellyfish
    for j=1:length(jellyGraphics)
      delete(jellyGraphics(j));
    endfor

  % move jellyfish
    [xJelly,yJelly,thetaJelly] = moveJelly(level, xJelly, yJelly,thetaJelly, sizeJelly, mapHeight,mapWidth);

  % draw jellyfish
    jellyGraphics = drawJelly(xJelly,yJelly,thetaJelly,sizeJelly);


    % erases penguin
    for p=1:length(pengGraphics)
      delete(pengGraphics(p));
    endfor

     %move Penguin
    [xPeng,yPeng,thetaPeng] = movePeng(xPeng, yPeng, thetaPeng, sizePeng, mapHeight,mapWidth);

    % draws Penguin
    pengGraphics = drawPeng(xPeng,yPeng,thetaPeng,sizePeng);


    cmd = kbhit(1); % Read the keyboard.
  if (cmd == 'Q')
    break;
  endif


  if( cmd == "w" || cmd == "a" || cmd == "d" ) %Captain has moved. Respond.
  % erase old captain
    for k=1:length(captGraphics)
      delete(captGraphics(k));
    endfor
  % move capt
  [xCapt, yCapt, thetaCapt] = moveCapt(cmd, xCapt, yCapt, thetaCapt);

  % draw new capt
  captGraphics = drawCapt( xCapt, yCapt, thetaCapt, sizeCapt);


   elseif (cmd == "i" || cmd == "j" || cmd == "k" || cmd == "l" || cmd ==",") % respond crab moved
  %erase old crab
    for i=1:length(crabGraphics)
     delete(crabGraphics(i));
    endfor

    %move crab
    [xCrab,yCrab,thetaCrab] = moveCrab(cmd,xCrab,yCrab,thetaCrab,sizeCrab, mapHeight, mapWidth);

   %draw new crab
    crabGraphics = drawCrab(xCrab,yCrab,thetaCrab,sizeCrab);

  endif

fflush(stdout);
pause(0.1)

endwhile

  close all
  clear

endfunction
