function [result] = isFitter(candidate1, candidate2)

% The first individual is fitter
if candidate1(Constants.NumberOfSpecies + Constants.NumberOfExtraParamsForSpecie) < candidate2(Constants.NumberOfSpecies + Constants.NumberOfExtraParamsForSpecie)
    result = 1;
else 
    result = 0;
end

end