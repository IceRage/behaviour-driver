function [population] = initialisePopulation

population = zeros(Constants.NumberOfIndividuals, Constants.NumberOfSpecies + Constants.NumberOfExtraParamsForSpecie);
population(:, 1:Constants.NumberOfSpecies) = bsxfun(@times, rand(Constants.NumberOfIndividuals, Constants.NumberOfSpecies), Constants.SpeciesThresholds);

end