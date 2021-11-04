%Convert from RGB(c,r,d) to Binary(0,1)  (rgb -> gray -> binary)
function [binary_img] = RGBtoBINARY (RGB,option,threshold)

%Start with converting from rgb to gray
[H W L]=size(RGB);
gray_img = zeros(H,W);
gray_img = double(gray_img);
for i=1:H
    for j=1:W
        if option == 1
        gray_img(i,j)=(RGB(i,j,1)+RGB(i,j,2)+RGB(i,j,3))/3;
        end
        
         if option == 2
        gray_img(i,j)=RGB(i,j,1)*0.2+RGB(i,j,2)*0.7+RGB(i,j,3)*0.1;
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
gray_img = uint8(gray_img);

%convert gray to binary
binary_img = zeros(H,W);
for i=1:H
    for j=1:W
         if gray_img(i,j) >= threshold
             binary_img(i,j)= 1;
         end
         if gray_img(i,j) < threshold
             binary_img(i,j)= 0;
         end
    end
end
end
