function out = preProcess( in, flag )

%in = imresize(in,[128 128]);
ycbcr_img = rgb2ycbcr(in);
out = threshold(ycbcr_img);
if flag == 2
    out = medfilt2(out, [70 70]);
    figure, imshow(out);
else 
    out = medfilt2(out, [20 20]);
end

L = bwlabel(out);

L(L>=2)=0;
out = L;
col = any(out);
firstcol = find(col,1);
lastcol = find(col,1,'last');

row = any(out,2);
firstrow = find(row,1);
lastrow = find(row,1,'last');

out = out(firstrow:lastrow, firstcol:lastcol);
end