% -------------------------------------------------------------------
%  Generated by MATLAB on 29-Jan-2018 14:13:19
%  MATLAB version: 9.3.0.713579 (R2017b)
% -------------------------------------------------------------------
saveVarsMat = load('matlab.mat');

Fsl = 44100;

Fsm = 44100;

Fsw = 44100;

board = saveVarsMat.board; % <600x600x3 uint8> too many elements

check1 = 0;

check2 = 0;

die1 = 2;

die2 = 1;

ladder = saveVarsMat.ladder; % <32256x2 double> too many elements

move_piece_sound = saveVarsMat.move_piece_sound; % <26624x1 double> too many elements

playercolor1 = 1;

playercolor2 = 3;

playername1 = 'r';

playername2 = 'b';

pos1 = 13;

pos2 = 13;

win = saveVarsMat.win; % <49152x2 double> too many elements

winning = saveVarsMat.winning; % <196608x2 double> too many elements

clear saveVarsMat;
