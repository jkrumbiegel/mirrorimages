function out = rescaleImageFloatsToUINT8(im)

if size(im) == 2
    maximum = max(max(im));
    minimum = min(min(im));
elseif size(im) == 3
    maximum = max(max(max(im)));
    minimum = min(min(min(im)));
end

out = uint8(((im-minimum)./maximum).*255);