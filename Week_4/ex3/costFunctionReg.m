function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

[j g] = costFunction(theta, X, y);

% We want the regularization to exclude the bias feature, so we can set theta(1) to zero. 
% Since we already calculated h, and theta is a local variable, we can modify theta(1)
% without causing any problems.
theta(1) = 0;

J = j + (lambda/(2*m))*sum(theta.^2);
grad = g + (lambda/m)*theta;
% =============================================================

end
