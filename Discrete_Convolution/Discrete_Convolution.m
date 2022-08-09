% input 
x = input('Enter elements of x[n]: ');
nx = input('Enter the Time Index sequence: ');
h = input('Enter elements of h[n]: ');
nh = input('Enter the Time Index sequence: ');

% variables
lx = length(x);
lh = length(h);
N = lx + lh - 1;
nybegin = nx(1) + nh(1);
nyend = nx(lx) + nh(lh);
ny = nybegin : nyend;

% Calculate Convolution
y = calconv(x, lx, h, lh, N);
w = conv(x, h);

% stem
figure;
stem(ny, y, 'Color', 'b', 'LineWidth', 2);
xlabel('Time');
ylabel('Amplitude');
title('Discrete Convolution1');
legend('y[n]');

hold on
figure;
stem(ny, w, 'Color', 'g', 'LineWidth', 2);
xlabel('Time');
ylabel('Amplitude');
title('Discrete Convolution2');
legend('w[n]');
hold off

fprintf('x[n]:');
disp(x);
fprintf('h[n]:');
disp(h);
fprintf('y[n]:');
disp(y);
fprintf('w[n]:');
disp(w);

% function
function [y] = calconv(x, lx, h, lh, N)
    
    for i = 1 : 1 : N
        y(i) = 0;
        for j = 1 : 1 : lx
            if(i - j + 1 >= 1 & i - j + 1 <= lh)
                y(i) = y(i) + x(j) * h(i - j + 1);
            end
        end
    end
end
