function [populationCrossover] = selectionCrossover(population)

populationCrossover = population;

% Choose the individuals for crossover
for i = 1 : Constants.NumberOfIndividuals
    candidates = randi(Constants.NumberOfIndividuals, 2, 1);
    
    if isFitter(population(candidates(1), :), population(candidates(2), :)) == 1
        populationCrossover(i) = population(candidates(1));
    else
        populationCrossover(i) = population(candidates(2));
    end
end

end