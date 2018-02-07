function match_percent = match(img, template)
    C=normxcorr2(template,img);
    match_percent=max(C(:))*100;
end