function out = imageStackVariance(stack)
% The image stack needs to be a 4D array with dimensions x,y,color,n

% Calculate means of all color channels at each pixel over all images in
% the stack and calculate the difference of each color value from its stack mean.
% Square differences and take the mean, this is the variance
out = mean(bsxfun(@minus,double(stack),mean(double(stack),4)).^2,4);



    