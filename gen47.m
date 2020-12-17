function x2 = gen47(a,b,fm)
%Neiman generator
x1 = unifrnd(a,b,1,1);
y1 = unifrnd(0,fm,1,1);
while y1 >= f47(x1)
x1 = unifrnd(a,b,1,1);
y1 = unifrnd(0,fm,1,1);
end
x2 = x1;
end