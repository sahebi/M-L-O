function[] = simplex_print(P_, A_, b_, f_, S_)
  disp('---------------------------------------------------------------------------------------');

  [m n]    = size(A_);
  vHeader  = [NaN 1:n NaN];
  vFirst   = [NaN P_ f_];
  vData    = [S_ A_ b_];
  vDisplay = [vHeader; vFirst; vData];

  
  disp(vDisplay);
end










