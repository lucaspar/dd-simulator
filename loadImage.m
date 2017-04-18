function im = loadImage(path, format, n)
   
    imgNames = dir(strcat(path,'/*.',format));
    
    filename = imgNames(n).name;
    disp(filename);
    im = imread(strcat(path,'/',filename));
end