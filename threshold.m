function out = threshold(in)

    cb=in(:,:,2);
    cr=in(:,:,3);
    
    out=zeros(size(cb));
    
    % thresholding based on cb and cr color values
    out(cr>=133 & cr<=200)=1;
    out(cb>=184)=1;
end