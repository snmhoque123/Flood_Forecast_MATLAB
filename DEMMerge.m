
function DEMMerge()

       filename1 = '1.tif';
       filename2 = '2.tif';
       filename3 = '3.tif';
       filename4 = '4.tif';
       filename5 = '5.tif';
       filename6 = '6.tif';
       
       [X1, R1] = geotiffread(filename1); % Bottom-left
       
       [X1,~,~,bbox1] = geotiffread(filename1); % Bottom-left
       [X2,~,~,bbox2] = geotiffread(filename2); % Bottom-mid   
       [X3,~,~,bbox3] = geotiffread(filename3); % Bottom-right
       [X4,~,~,bbox4] = geotiffread(filename4); % top-left
       [X5,~,~,bbox5] = geotiffread(filename5); % top-mid
       [X6,~,~,bbox6] = geotiffread(filename6); % top-right
       
       mergedDEM = [X4 X5 X6; X1 X2 X3];
       [minLonLat] = min(bbox1);
       [maxLonLat] = max(bbox6);
       
       R1.RasterSize = size(mergedDEM);
       R1.LatitudeLimits = [minLonLat(2) maxLonLat(2)];
       R1.LongitudeLimits = [minLonLat(1) maxLonLat(1)];
       
       geotiffwrite('mergedDEM.tif',mergedDEM, R1);
end
