function data = all_comb(vec1,vec2)
%all_comb When two vectors are provided, this outputs a nx2 matrix listing
%all the possible combinations of elements of vector 1 and vector 2
%   the order of the output is such that vec1's order is maintained, but
%   vec2 is repeated for each length of vec1

if size(vec1,1) == 1
    vec1 = vec1';
end
if size(vec2,1) == 1
    vec2 = vec2';
end

data = [];
for i = 1:numel(vec2)
    temp2 = vec2(i)*ones(numel(vec1),1);
    data = [data; [vec1 temp2]];   
end
end

