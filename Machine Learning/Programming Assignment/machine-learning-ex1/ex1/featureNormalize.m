function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       
mu = mean(X);
sigma = std(X);

for i = 1:size(X,2)
	X_norm(:,i) = (X(:,i) - mu(i)) / sigma(i);
end

% say m = rows 
% say n = columns
%n = size(X,2);
%m = size(X,1);

%i=1;
%while(i<n+1)
	
%	mu(1,i) = sum(X(:,i)) / m ;				%Calculate mean
%	sigma(1,i) = max(X(:,i)) - min(X(:,i));			%Calculate standard deviation (max-mean)
%	i=i+1;
%end

%i=1;
%j=1;

%while(i<m+1)
%	while(j<n+1)
%		X_norm(i,j)= (X_norm(i,j)-mu(1,j))/sigma(1,j);
%		j=j+1;
%	end
%	i=i+1;
%end




% ============================================================

end
