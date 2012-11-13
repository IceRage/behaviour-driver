function [best] = getBestFromPopulation(population)

% Get the value and index of the minimum fitness => Best chromosome
[values indexes] = min(population(:, Constants.NumberOfSpecies + Constants.NumberOfExtraParamsForSpecie));

best = population(indexes(1));

end