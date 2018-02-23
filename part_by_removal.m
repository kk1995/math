function parted_data = part_by_removal(data,remove_ind)
%UNTITLED2 Summary of this function goes here
%   data = 1D data
%   remove_ind = indices that will be removed

saved_ind = 1:numel(data); % the indices of data that will be kept
saved_ind(remove_ind) = [];
% get parts' indices
part_end_ind = saved_ind(diff(saved_ind) ~=1);
part_end_ind = [part_end_ind saved_ind(end)];
part_start_ind = remove_ind(diff(remove_ind) ~=1)+1;
if ~isempty(part_start_ind)
    if part_start_ind(1) ~=saved_ind(1)
        part_start_ind = [saved_ind(1) part_start_ind];
    end
else
    part_start_ind = [saved_ind(1) part_start_ind];
end
if remove_ind(end) ~= numel(data)
    part_start_ind = [part_start_ind remove_ind(end)+1];
end


parted_data = cell(numel(part_start_ind),1);
for cell_ind = 1:numel(part_start_ind)
    parted_data{cell_ind} = data(part_start_ind(cell_ind):part_end_ind(cell_ind));
end

end

