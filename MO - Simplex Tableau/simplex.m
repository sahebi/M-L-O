function[] = simplex(P,A,b)
  simplex_print(P, A, b, 0, [1:size(b)]');

  [P_, A_, b_, f_, S_] = simplex_init(P, A, b);
  
  P = -P_;
  A = A_;
  b = b_;
  simplex_print(P_, A_, b_, f_, S_);

  for i = 1:100
    if(sum(P_<0)==0)
      disp("--- END on P ---");
      break;
    end
    
    [ans n] = min(P_);
    a       = A_(:, n);
    x       = (b_ ./ a) .* (b_>0) .* (a>0);
    x       = x .* sign(x);
    if sum(x>0)==0
      disp('---- END on b ----');
      break;
    end

    [P_, A_, b_, f_, S_] = simplex_solver(P_, A_, b_, f_, S_);
    simplex_print(P_, A_, b_, f_, S_);
  end
 
  display(sprintf("\nMin Z = %d", sum(b_'.*P(S_))));

  %[P_, A_, b_, f_, S_] = simplex_solver(P_, A_, b_, f_, S_);
  %simplex_print(P_, A_, b_, f_, S_);  
end