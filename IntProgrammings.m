%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Created by Mustafa Cagatay Sahin - 04.06.2018 - Istanbul Technical Uni. %
% Different Integer Programming methods to obtain best result for data    %
% Data => Robust Flight Crew                                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;clear
%% Reading Data From Mat file
% oldfolder = cd();
% cd 'Mat Files'
load('Amatt.mat');
load('Bmat.mat');
load('Cmat.mat');
Amatrix = double(Amatrix);
Bmatrix = double(Bmatrix);
Cmatrix = double(Cmatrix);
%% Using Cplex Functions with our Data
% cd(oldfolder)
% cd 'CPLEX'
% Information for Programming
Aineq = Amatrix;
bineq = Bmatrix;
x0    = [];
Aeq   = [];
Beq   = [];
options = cplexoptimset;
options.Display = 'on';
[x, fval, exitflag, output] = cplexbilp(Cmatrix, Aineq, bineq, Aeq, Beq, x0, options);
disp(x)