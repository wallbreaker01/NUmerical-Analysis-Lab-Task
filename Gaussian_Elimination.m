clc;
t1 = input('Enter the time of first moment : ');
v1 = input('Enter the velocity of first moment : ');
t2 = input('Enter the time of second moment : ');
v2 = input('Enter the velocity of second moment : ');
t3 = input('Enter the time of third moment : ');
v3 = input('Enter the velocity of third moment  : ');
t12 = t1*t1;
t22 = t2*t2;
t32 = t3*t3;
Aug = [t12 t1 1 v1; t22 t2 1 v2; t32 t3 1 v3];

for i=1:2
  for j=i+1:3
   m = Aug(j,i)./Aug(i,i);
   Aug(j,:) = Aug(j,:) - m.*Aug(i,:);
  end
end

disp(Aug);
a3 = Aug(3,4)./Aug(3,3);
a2 = (Aug(2,4) - Aug(2,3).*a3)./Aug(2,2);
a1 = (Aug(1,4) - Aug(1,2).*a2 - Aug(1,3).*a3)/Aug(1,1);

fprintf('a1 = %0.2f\n a2 = %0.2f\n a3 = %0.2f\n',a1,a2,a3);
t = input('Enter the time to print velocity : ');
v = (t*t)*a1+t*a2+a3;
fprintf('The velocity for %d seconds is %0.4f\n',t,v);
