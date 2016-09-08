function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

% Find the indexes in the y vector where a student
% was either accepted or rejected
accepted = find(y == 1); 
rejected = find(y == 0);

% Now plot data
plot(X(accepted, 1), X(accepted, 2), 'k+', 'LineWidth', 2, 'MarkerSize', 7);
plot(X(rejected, 1), X(rejected, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);


% =========================================================================



hold off;

end
