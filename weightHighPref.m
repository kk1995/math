function weighted_values = weightHighPref(values,decay)
%weightHighPref sorts the values in descending order and weighs them
%differently. The highest values get the highest weights. decay value input
%determines how quickly weight decreases.
%   inputs:
%   values = the actual values
%   decay = decay rate. If 0.05, then weight(n+1) = weight(n)*0.95;
values = vector(values);
values = sort(values,'descend');

weights = ones(1,numel(values));
ind = 1:numel(weights); ind = ind - 1;
weights = (1-decay).^ind;
weighted_values = values.*weights;
end

