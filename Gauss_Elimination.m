A = input('Enter your co-efficient matrix: ')
b = input('source value: ')
N = length(b)
x = zeros(N,1)
Aug = [A b]
for j=1:N-1
  for i=j+1:N
    m = Aug(i,j)/Aug(j,j)
      Aug(i,:) = Aug(i,:) - m*Aug(j,:)
  end
end
Aug
x(N)=Aug(N,N+1)/Aug(N,N)
for k = N-1 : -1 : 1
  x(k) = Aug(k,N+1) - Aug(k,k+1:N)*x(k+1:N)/Aug(k,k)
end

