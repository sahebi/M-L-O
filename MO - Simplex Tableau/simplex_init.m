%                       x5 x6 x7
%       x1  x2  x3  x4
%  P |  P1  P2  P3  P4    |  bP = 0
% ---|--------------------|--------
%  S5|  A11 A12 A13 A14   |  b1
%  S6|  A21 A22 A23 A24   |  b2
%  S7|  A31 A32 A33 A34   |  b3

function [P_, A_, b_, f_, S_] = simplex_init(P, A, b)
  disp("Simplex Tabluea");

  [P_row P_col] = size(P);
  [m     n    ] = size(A);
  [b_row b_col] = size(b);

  % check size of inputs are matched with together
  if P_col ~= n
    display("The size of the problem vector not equal by A columns");
    return;
  end;
  if b_row ~= m
    display("The size of the b vector not equal by A rows");
    return;
  end;
  
  PBase = zeros(1, m);
  ABase = eye(m);
  
  P_  = -[P PBase];   % [Problem | Base Zero    ]
  A_  = [A ABase];    % [Nonbase | Base Identit ]
  b_  = b;            % b
  f_  = 0;             % function value
  S_  = [n+1:n+m]'; 
end



