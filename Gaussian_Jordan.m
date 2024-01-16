A = input('Enter your co-efficient matrix: ')
b = input('source value: ')
N = length(b)
x = zeros(N,1)
Aug = [A b]
for j=1:N
  Aug(j,:) = Aug(j,:)/Aug(j,j)
  for i=1:N
    if i~=j
      m=Aug(i,j)
      Aug(i,:) = Aug(i,:) - m*Aug(j,:)
    end
  end
end
