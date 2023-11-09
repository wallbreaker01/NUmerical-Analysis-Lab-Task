
function sowmik = task_101 ()

   A = input("Matrix A : ");
   B = input("Matrix B : ");
   mx_A = max(max(A));
   fprintf("Maximum value of A : %d\n", mx_A);
   if size(A,2)==size(B,1)
      Mul = A * B;
      fprintf("Multiplication :\n");
      disp (Mul);
   else
      fprintf ("Matrix multiplication is not possible!\n");
   end

endfunction
