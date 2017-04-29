% gradientDescent.m
%
% Inputs: X, Y, theta, alpha, num_iterations
% Outputs: theta

function[theta] = gradientDescent(X, Y, theta, alpha, num_iterations)

for i = 1:num_iterations
    slope = (alpha/num_iterations) * (X * theta - Y)' * X(:,2); 
    theta = theta - slope;
end