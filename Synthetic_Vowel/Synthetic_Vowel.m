fs = 20000;
t = 0:1/fs:0.04;
figure;
k = 2;
fk2 = 200;
ph2 = 1.508;
mag2 = 6113;
x2 = mag2*cos(2*pi*fk2.*t + ph2);
plot(t, x2);
xlabel('Time (msec)');
ylabel('Amplitude');

figure;
k = 4;
fk4 = 400;
ph4 = 1.877;
mag4 = 14708;
x4 = mag4*cos(2*pi*fk4.*t + ph4);
plot(t, x2+x4);
xlabel('Time (msec)');
ylabel('Amplitude');

figure;
k = 5;
fk5 = 500;
ph5 = -0.185;
mag5 = 24418;
x5 = mag5*cos(2*pi*fk5.*t + ph5);
plot(t, x2+x4+x5);
xlabel('Time (msec)');
ylabel('Amplitude');

figure;
k = 16;
fk16 = 1600;
ph16 = -1.449;
mag16 = 6811;
x16 = mag16*cos(2*pi*fk16.*t + ph16);
plot(t, x2+x4+x5+x16);
xlabel('Time (msec)');
ylabel('Amplitude');

figure;
k = 17;
fk17 = 1700;
ph17 = 0;
mag17 = 2362;
x17 = mag17*cos(2*pi*fk17.*t + ph17);
plot(t, x2+x4+x5+x16+x17);
xlabel('Time (msec)');
ylabel('Amplitude');
