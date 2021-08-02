function plotDEM()
    clc;
    close all;
    clear all;
    filename = 'mergedDEM.tif';
    
    [data, R1] = geotiffread(filename); % Bottom-left 
   
    AOICrop = data(2125:6955,3300:8300);
    clear data;
    figure, 
    colormap hsv;
    imagesc(AOICrop);
    
    figure,
    plot(AOICrop(:,2500));
    
    figure,
    colormap hot;
    [x,y] = meshgrid(1:201,1:1200);
    surf(x,y,double(AOICrop(1:1200, 1200:1400 )));
    grid off;
    axis([1 201 1 1200]);
    %%imagesc(AOICrop); 
    %[X, Y] = meshgrid(1:size(AOICrop,2), 1:size(AOICrop,1));
    %surf(X,Y,uint8(AOICrop), gradient(AOICrop));
    

end