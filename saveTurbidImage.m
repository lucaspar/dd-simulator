function saveTurbidImage(turbidImage,groundTruth,transmission,basePath,databaseName,baseImageIndex,TurbidImageIndex)
    databaseFullPath=strcat(basePath,databaseName);
    if mod(baseImageIndex,100) == 9
        imwrite(turbidImage,sprintf('%s/Validation/%d.png',databaseFullPath,TurbidImageIndex ));
        imwrite(groundTruth,sprintf('%s/ValidationGroundTruth/%d.png',databaseFullPath,TurbidImageIndex ));
        imwrite(transmission,sprintf('%s/ValidationTransmission/%d.png',databaseFullPath,TurbidImageIndex ));

    elseif mod(baseImageIndex,100) == 8
        imwrite(turbidImage,sprintf('%s/Test/%d.png',databaseFullPath,TurbidImageIndex ));
        imwrite(groundTruth,sprintf('%s/TestGroundTruth/%d.png',databaseFullPath,TurbidImageIndex ));   
        imwrite(transmission,sprintf('%s/TestTransmission/%d.png',databaseFullPath,TurbidImageIndex ));
    else
        imwrite(turbidImage,sprintf('%s/Training/%d.png',databaseFullPath,TurbidImageIndex ));
        imwrite(groundTruth,sprintf('%s/GroundTruth/%d.png',databaseFullPath,TurbidImageIndex ));    
        imwrite(transmission,sprintf('%s/Transmission/%d.png',databaseFullPath,TurbidImageIndex ));
    end
end