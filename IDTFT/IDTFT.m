figure;
n = -20:1:20;
x = (sin(n.*pi./3))./(n.*pi);
x(21) = 1/3;
stem(n, x);

% Larger WLarger x[n] ValuesMore WavesNarrower Waves

figure;
n = -20:1:20;
x = (sin(n.*pi./3))./(n.*pi);
x(21) = 1/3;
stem(n, x);

% Smaller WSmaller x[n]ValuesLess WavesWider Waves

figure;
n = -20:1:20;
x = (sin(n.*pi./6))./(n.*pi);
x(21) = 1/6;
stem(n, x);