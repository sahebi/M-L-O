%  P |  P1  P2  P3  P4    |  bP = 0
% ---|--------------------|--------
%  S |  A11 A12 A13 A14   |  b1
%    |  A21 A22 A23 A24   |  b2
%    |  A31 A32 A33 A34   |  b3

function[P_, A_, b_, f_, S_] = simplex_solver(P_, A_, b_, f_, S_)
  [ans  n] = min(P_);
  [mA  nA] = size(A_);
  
  %[ans m] = min(b_ ./ A_(:, n));
  a  = A_(:, n);
  x  = (b_ ./ a) .* (b_>0) .* (a>0);
  x  = x .* sign(x);
  m  = find(x == min(x(x>0)));

  
  pivot_value  = A_(m,n);

  coef_p       = (-P_(1,n)/pivot_value).*A_(m,:);
  
  coef_        = -A_(:, n)/pivot_value;
  coef_(m, :)  = (1-pivot_value)/pivot_value;
  coef_a       = repmat(coef_, 1, nA) .* repmat(A_(m,:), mA, 1);

  coef_b       = coef_ .* repmat(b_(m,:), m, 1);
  
  coef_f       = b_(m) .* (1/pivot_value);

  P_           = P_ + coef_p;
  A_           = A_ + coef_a;
  b_           = b_ + coef_b;

  f_           = f_ + coef_f;
  
  S_(m)        = n;

  disp(sprintf('\nPivot index [%d %d], Pivot Value %0.3f\n', m,n, pivot_value));
end