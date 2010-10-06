clear all, close all, clc

format long, format compact

global GAMMA


func = @StateDerivatives
yn = [0.153389567222146; 0.306779134444292; -0.156080149468399; -0.007287197800659];
tn = 0;
h = 0.001;
GAMMA = 0.004;

% [ynew,f1,f2,f3,f4,f5,f6,f7] = RungeKutta45(func, yn, tn, h, GAMMA)
[ynew] = RungeKutta45(func, yn, tn, h, GAMMA)

