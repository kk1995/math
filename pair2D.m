function output = pair2D(pair,actual_data)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
%   actual_data = 1st dim fits with "pair", but the rest is extra
%   dimensions

if ~isempty(actual_data)
    if size(pair,2) ~= 2
        pair = pair';
    end
    if size(actual_data,1) ~= size(pair,1)
        error('Dimension mismatch');
    end
    dim_size = numel(size(actual_data));
    
    row_num = unique(pair(:,1));
    actual_size = size(actual_data);
    actual_size(1) = [];
    output = nan([numel(row_num) size(pair,1)/numel(row_num) actual_size]);
    for row = 1:numel(row_num)
        if dim_size == 1
            row_data = actual_data(pair(:,1) == row_num(row));
            output(row,:) = row_data;
        elseif dim_size == 2
            row_data = actual_data(pair(:,1) == row_num(row),:);
            output(row,:,:) = row_data;
        elseif dim_size == 3
            row_data = actual_data(pair(:,1) == row_num(row),:,:);
            output(row,:,:,:) = row_data;
        elseif dim_size == 4
            row_data = actual_data(pair(:,1) == row_num(row),:,:,:);
            output(row,:,:,:,:) = row_data;
        end
        
    end
else
    output = [];
end
end

