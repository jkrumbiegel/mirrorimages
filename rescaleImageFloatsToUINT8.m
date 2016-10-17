function out = rescaleImageFloatsToUINT8(im)

if ndims(im) == 2
    maximum = max(max(im));
    minimum = min(min(im));
    out = uint8(((im-minimum)./maximum).*255);
elseif ndims(im) == 3
    out = uint8(zeros(size(im)));
    for i=1:size(im,3)
        maximum = max(max(im(:,:,i)));
        minimum = min(min(im(:,:,i)));
        out(:,:,i) = uint8(((im(:,:,i)-minimum)./maximum).*255);
    end
end

