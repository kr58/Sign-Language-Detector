function savetemplates()

for i=1:9
    img = imread(strcat(strcat('Project/Training/',char(i+48)),'.jpg'));
    %img = imresize(img,[320 240]);
    out = preProcess(img,1);
    imwrite(out, strcat(strcat('Project/Templates/',char(i+48)),'.jpg'));
end

for i=10:35
    if((i+64-9)==68 || (i+64-9)==74)
    else
        img = imread(strcat(strcat('Project/Training/',char(i+64-9)),'.jpg'));
        %img = imresize(img,[4*80 3*80]);
        out = preProcess(img,1);
        imwrite(out, strcat(strcat('Project/Templates/',char(i+64-9)),'.jpg'));
    end
end

end

