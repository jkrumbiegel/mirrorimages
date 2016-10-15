function out = imageStackVariance(stack)
% The image stack needs to be a 4D array with dimensions x,y,color,n

if ~isfloat(stack)
    stack = double(stack);
end

nImages = size(stack,4);

% Calculate means of all color channels at each pixel over all images in
% the stack
means = mean(stack,4);

% Calculate the difference of each color value from its stack mean.
% Indexing out of bounds for the means array is equivalent to performing a
% slower repmat call
diffsFromMean = stack - means(:,:,:,ones(nImages,1));

% Square differences and take the mean, this is the variance
out = mean(diffsFromMean.^2,4);


    