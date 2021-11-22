function [return_imge] = mylog(oldimge,index)
[H , W, L] = size(oldimge);
log_rgb = zeros(H ,W);
log_gray = zeros(H ,W);
oldimge = im2double(oldimge);
for i= 1:H
  for  j=1:W
    if index==1
    if L==3
        log_rgb(i,j,1)=log((oldimge(i,j,1))+1);
        log_rgb(i,j,2)=log((oldimge(i,j,2))+1);
        log_rgb(i,j,3)=log((oldimge(i,j,3))+1);
        
    else
         log_gray(i,j)=log((oldimge(i,j))+1);
    end
    end
    if index==2 
    if L==3
         log_rgb(i,j,1)=exp((oldimge(i,j,1)));
        log_rgb(i,j,2)=exp((oldimge(i,j,2)));
        log_rgb(i,j,3)=exp(oldimge(i,j,3));
      
    else
         log_gray(i,j)=log(oldimge(i,j));
   end
    end

  end
end

 log_rgb = im2uint8(log_rgb);
 log_gray= im2uint8(log_gray);
 
 if L==3
     return_imge=log_rgb;
 end
 if L==1
     return_imge=log_gray;
 end
end

