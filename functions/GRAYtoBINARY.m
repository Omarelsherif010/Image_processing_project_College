% Convert from gray (0:256) to binary (0,1) using (threshold) 
function [binary_img] = GRAYtoBINARY( Gray, threshold)
[H W] = size(Gray);
binary_img = zeros(H,W);
for i=1:H
    for j=1:W
         if Gray(i,j) >= threshold
             binary_img(i,j)= 1;
         end
         if Gray(i,j) < threshold
             binary_img(i,j)= 0;
         end
    end
end
end

        