function out = matching(in)
m=0;

for i=1:9
   img = imread(strcat(strcat('Project/Templates/',char(i+48)),'.jpg'));
   [R, C] = size(in);
   [r, c] = size(img);
   if R < r && C < c
       in = padarray(in, [(r-R), (c-C)], 0);
   elseif R < r
       in = padarray(in, [(r-R), 0], 0);
   elseif C < c
       in = padarray(in, [0,(c-C)],0); 
   end
       
   t = match(in, img)
   char(i+48)
   if t > m
       m = t;
       out = char(i+48);
   end
end 

for i=10:35
   if((i+64-9)==68 || (i+64-9)==74)
   else
       img = imread(strcat(strcat('Project/Templates/',char(i+64-9)),'.jpg'));
       [R, C] = size(in);
       [r, c] = size(img);
       if R < r && C < c
           in = padarray(in, [(r-R), (c-C)], 0);
       elseif R < r
           in = padarray(in, [(r-R), 0], 0);
       elseif C < c
           in = padarray(in, [0,(c-C)],0); 
       end
       t = match(in, img)
       char(i+64-9)
       if t > m
           m = t;
           out = char(i+64-9);
       end
   end
end

end