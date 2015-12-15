% harmonographLateral.m

% Demonstrates how to create a lateral (2-pendulum) harmonograph in Matlab

% See Ashton, A. (2003), Harmonograph: A Visual Guide to the Mathematics of
% Music, Wooden Books, p. 19

clear all, close all;

N = 250;

%harmonograph parameters
freq1 = 2;      % holds frequency of first pendulum
freq2 = 3;      % holds frequency of second pendulum
amp = N;       % the distance each pendulum swings

density = 1000;              % higher for more detail
cycle = (2 * pi * density); % steps to traverse a complete cycle
times = 1;                  % how many cycles to run

rotation = 0;

x_mat = zeros(N);
y_mat = zeros(N);

figure(1),

% go around the unit circle as many times as requested
for i = 1:(cycle*times)
    % get angular position on unit circle
    rotation = i / density;
    
    % get x and y coordinates (run and rise)
    x = sin(rotation * freq1) * amp;    % get run (same phase)
    %x = cos(rotation * freq1) * amp;    % get run (opposite phase)
    y = sin(rotation * freq2) * amp;    % get rise
    
    % draw this point
    x_mat(i) = x;
    y_mat(i) = y;
end

plot(x_mat, y_mat);
axis([-amp amp -amp amp]);


