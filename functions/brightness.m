function[new_imge]=brightness(imge,value,option)
[H , W, l]= size(imge);
new_imge= zeros(H,W);
imge=double(imge);
for i=1:H
    for j=1:W
          if option==1
              new_imge(i,j)=imge(i,j)+value;
          end
          if option==2
               new_imge(i,j)=imge(i,j)-value;
          end
          if option==3
               new_imge(i,j)=imge(i,j)*value;
          end
          if option==4
               new_imge(i,j)=imge(i,j)/value;
          end
          if option==5
               new_imge(i,j)=imge(i,j)^value; 
          end
          
    end
end
new_imge=uint8(new_imge);
end
          