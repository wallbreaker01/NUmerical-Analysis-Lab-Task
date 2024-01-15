function sowmik = task_102 ()

  function y=f(x)
    y=x.^3-2*x.^2-4;
  end
  a=0;
  b=3;
  e=0.000001;
  A=[];

  while(b-a)/2 >e
      c = (a+b)/2;
      A =[A;c];
      if f(c)==0
        break;
      elseif f(a)*f(c) < 0
        b = c;
      else f(b)*f(c) < 0
        a = c;
      end
    end
   fprintf('%f\n', A(end));

  x = linspace(1, 3, 50);
  y = f(x);
  plot(x, y,'r');
  grid on;
  hold on;
  plot(A, f(A), 'bp');
  xlabel('Values of x');
  ylabel('function values');
  title('Bisection Method');
  legend('function values ', 'Roots');


endfunction

