function[]=histogram(imge)
histarr=zeros(256,1);
[H, W , L]= size(imge);
for i=1:H
  for  j=1:W
       histarr(imge(i,j)+1) = histarr(imge(i,j)+1)+1;
  end
end
bar(histarr);
end

    
