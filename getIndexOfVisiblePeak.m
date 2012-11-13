function [index] = getIndexOfVisiblePeak(erkPPConcentrations)

index = 1;

for i = 1 : length(erkPPConcentrations)
    if (erkPPConcentrations(i) - erkPPConcentrations(index)) > Constants.ComparisonThreshold
        index = i;
    end
end

end