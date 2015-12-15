% harmonographRotary.m

% Demonstrates how to create a rotary (3-pendulum) harmonograph in Matlab

% See Ashton, A. (2003), Harmonograph: A Visual Guide to the Mathematics of
% Music, Wooden Books, p. 19

clear all, close all;

N = 250;

%harmonograph parameters

fig = '1';

if fig == '1'
    f1 = 3.001;      % holds frequency of first pendulum
    f2 = 2;      % holds frequency of second pendulum
    f3 = 3;
    f4 = 2;

    % damping:
    d1 = 0.004;
    d2 = 0.0065;
    d3 = 0.008;
    d4 = 0.019;

    % phases:
    p1 = 0;
    p2 = 0;
    p3 = pi/2;
    p4 = 3*pi/2;    
elseif fig == '2'
    f1 = 10;      % holds frequency of first pendulum
    f2 = 3;      % holds frequency of second pendulum
    f3 = 1;
    f4 = 2;

    % damping:
    d1 = 0.039;
    d2 = 0.006;
    d3 = 0;
    d4 = 0.0045;

    % phases:
    p1 = 0;
    p2 = 0;
    p3 = pi/2;
    p4 = 0;    
elseif fig == '3'
    f1 = 2.01;      % holds frequency of first pendulum
    f2 = 3;      % holds frequency of second pendulum
    f3 = 3;
    f4 = 2;

    % damping:
    d1 = 0.0085;
    d2 = 0;
    d3 = 0.065;
    d4 = 0;

    % phases:
    p1 = 0;
    p2 = 7*pi/16;
    p3 = 0;
    p4 = 0; 
elseif fig == '4'
    f1 = 2;      % holds frequency of first pendulum
    f2 = 6;      % holds frequency of second pendulum
    f3 = 1.002;
    f4 = 3;

    % damping:
    d1 = 0.02;
    d2 = 0.0315;
    d3 = 0.02;
    d4 = 0.02;

    % phases:
    p1 = pi/16;
    p2 = 3*pi/2;
    p3 = 13*pi/16;
    p4 = pi;
elseif fig == '5'
    f1 = 1;      % holds frequency of first pendulum
    f2 = 3;      % holds frequency of second pendulum
    f3 = 1;
    f4 = 3;

    % damping:
    d1 = 0.02;
    d2 = 0.0315;
    d3 = 0.02;
    d4 = 0.02;

    % phases:
    p1 = pi/16;
    p2 = 3*pi/2;
    p3 = 13*pi/16;
    p4 = pi;
end
% amplitude
a1 = 23;     % holds swing of movement for pair of pendulums
                % (radius of first circle)
                
a2 = a1;  % holds swing of movement for third pendulum
                % (radius of second circle)

a3 = 23;
a4 = a3;



%friction = 0.0003 % how much energy is lost per iteration


density = 10000;                % higher for more detail
cycle = (2 * pi * density);     % steps to traverse a complete cycle
times = 4;                      % how many cycles to run

% timespace:
t = linspace(1,100,density);

% get x and y coordinates (run and rise)
x = (a1*sin(t*f1 +p1).*exp(-d1*t)) + (a2*sin(t*f2+p2).*exp(-d2*t));    % get run (same phase)
%x = cos(rotation * freq1) * amp;    % get run (opposite phase)
y = (a3*sin(t*f3+p3).*exp(-d3*t)) + (a4*sin(t*f4+p4).*exp(-d4*t));     % get rise

plot(x, y, 'g');
axis([-a1*2 a1*2 -a1*2 a1*2]);