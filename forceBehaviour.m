function forceBehaviour

% Initialisation of the data
population = initialisePopulation;
population = computeFitnesses(population);

% Running the Genetic algorithm for the required number of iterations
for i = 1 : Constants.NumberOfIterations
    
    % Check if crossover should be performed
    if rand(1) < Constants.ProbabilityCrossover
        
        populationTemp = selectionCrossover(population);
        populationCrossover = crossover(populationTemp);
        
        % Create the new population using an elitist selection method
        % Get the best from the previous population and all except the last
        % offspring
        population(1) = getBestFromPopulation(population);
        population(2 : Constants.NumberOfIndividuals) = populationCrossover(1 : (Constants.NumberOfIndividuals - 1));
        
        % Check if mutation should be performed for each one of the
        % individuals and perform it for the ones which should be mutated
        population = mutation(population);
        
        population = computeFitnesses(population);
    end
    
end

printSolutionsSatisfyingConstraintsUnix(population);

end