function [resultingIndividual] = runSimulationAndGetPeakData(individual)

resultingIndividual = individual;

% Get the concentrations for ERKPP
[time, erkPPConcentrations] = runSimulationAndGetERKPPData(individual);

% Get the index of the first point in which the maximum concentration is
% reached (considering that two points are equal if abs(point1_peak -
% point2_peak) < Constants.ComparisonThreshold
index = getIndexOfVisiblePeak(erkPPConcentrations(1, :));

% Set the height and time of the peak
resultingIndividual(Constants.NumberOfSpecies + 1) = erkPPConcentrations(index);
resultingIndividual(Constants.NumberOfSpecies + 2) = time(index, 1);

end