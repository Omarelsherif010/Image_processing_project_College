function[new_imge]= stretching1(imge,old_min, old_max, new_min , new_max)
[H, W , L]= size(imge);
new_imge=zeros(H,W);
new_imge= double(new_imge);
%old_min=min(min(imge));
%old_max=max(max(imge));

for i=1:W
  for j=1:H
    new_imge(i,j)=((new_max-new_min)*(imge(i,j)-old_min))./(old_max-old_min)+new_min;
  end
end

new_imge= uint8(new_imge);

end

    
 