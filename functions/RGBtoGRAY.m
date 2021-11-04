% Convert from RGB(H,W,L) to Gray(H,W) using 5 different ways
function [ gray_img ] = RGBtoGRAY( RGB, option )
[H W L] = size(RGB); 
gray_img = zeros(H,W);
gray_img = double(gray_img); %casting image to save fractions when dividing
for i=1:H
    for j=1:W
        if option == 1
        gray_img(i,j)=(RGB(i,j,1)+RGB(i,j,2)+RGB(i,j,3))/3;
        end
        
         if option == 2
        gray_img(i,j)=RGB(i,j,1)*0.2+RGB(i,j,2)*0.7+RGB(i,j,3)*0.1; %Sum of ratios must equal 1
         end
        if option == 3
        gray_img(i,j)=RGB(i,j,1);
        end
        if option == 4
        gray_img(i,j)=RGB(i,j,2);
        end
        if option == 5
        gray_img(i,j)=RGB(i,j,3);
        end
        
    end
end
gray_img = uint8(gray_img); %convert back into uint8 
        
%imshow(gray_img);

end

