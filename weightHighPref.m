function [outputArg1,outputArg2] = weightHighPref(values,decay)
%weightHighPref sorts the values in descending order and weighs them
%differently. The highest values get the highest weights. decay value input
%determines how quickly weight decreases.
%   inputs:
%   values = the actual values
%   decay = decay rate. If 0.05, then weight(n+1) = weight(n)*0.95;
values = sort(values);
weights = ones(numel(values));
end

