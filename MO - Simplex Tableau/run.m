%% Simplex Tabluea
%% Created by Mohammad Mahdi Sahebi
%% Created date: 2017/11/09
%%
clc;
clear;

P = [1 5 3 4];
A = [
       1  2  3  4
       5  6  7  8
       9 10 11 12
      13 14 15 16
    ];
b = [1; 5; 4; 1];


P = [6 3];
A = [
       2 4
       4 3
    ];
b = [40; 120];

tic
simplex(P, A, b); 
toc
return;
