function [result] = computeFitnesses(population)

result = population;

% Get the peak data for each individual
parfor i = 1 : Constants.NumberOfIndividuals
    result(i, :) = runSimulationAndGetPeakData(population(i, :));   
end

% Compute the fitness for the population
result(:, Constants.NumberOfSpecies + Constants.NumberOfExtraParamsForSpecie) = abs(result(:, Constants.NumberOfSpecies + 2) - Constants.TargetPeakTime);

end