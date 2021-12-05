FIS_kP = sugfis;

FIS_kP = addInput(FIS_kP,[-10 10],'Name','E');
FIS_kP = addMF(FIS_kP,'E','trimf',[-20 -10 0],'Name','Negative');
FIS_kP = addMF(FIS_kP,'E','trimf',[-10 0 10],'Name','Zero');
FIS_kP = addMF(FIS_kP,'E','trimf',[0 10 20],'Name','Positive');

% FIS_kp = addInput(FIS_kp,[-1 1],'Name','CE');
% FIS_kp = addMF(FIS_kp,'CE','gaussmf',[-10 7],'Name','Negative');
% FIS_kp = addMF(FIS_kp,'CE','gaussmf',[7 10],'Name','Positive');

FIS_kP = addOutput(FIS_kP,[-20 20],'Name','u');
FIS_kP = addMF(FIS_kP,'u','constant',30,'Name','LargeNegative');
FIS_kP = addMF(FIS_kP,'u','constant',40,'Name','SmallNegative');
FIS_kP = addMF(FIS_kP,'u','constant',50,'Name','Zero');
FIS_kP = addMF(FIS_kP,'u','constant',60,'Name','SmallPositive');
FIS_kP = addMF(FIS_kP,'u','constant',70,'Name','LargePositive');

ruleList = [1 2 1 1;   % Rule 1
%             1 2 2 1 1;   % Rule 2
%             1 3 3 1 1;   % Rule 3
            2 3 1 1;   % Rule 4
%             2 2 3 1 1;   % Rule 5
%             2 3 4 1 1;   % Rule 6
            3 4 1 1;   % Rule 7
%             3 2 4 1 1;   % Rule 8
%             3 3 5 1 1;  % Rule 9
             ];
FIS_kP = addRule(FIS_kP,ruleList);


gensurf(FIS_kp)