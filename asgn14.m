% asgn14.m
%
% Authors: Katie Phillips
%          Patrick Chadbourne
%          Evan Srock

learningRate = 0.0001;
num_iterations = 1000;

M = csvread('data.csv'); 

X = M(:,1);
Y = M(:,2);

% Add column of ones to X (1st column is now 1s, 2nd is the file data)
X = [ones(length(X),1) X]; 

plot(X(:,2),Y,'o') % Plot data from file as scatterplot
hold on

theta = zeros(2,1); % Initialize theta values
theta = gradientDescent(X,Y,theta,learningRate,num_iterations);

% Plot hTheta(X) where X is from data.csv
hThetaOutputs = X * theta;
plot(X(:,2),hThetaOutputs) 
