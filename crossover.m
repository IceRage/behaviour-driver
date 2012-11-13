function [newPopulation] = crossover(population)

newPopulation = population;

% Combine the individuals 2 by 2
for i = 1 : 2 : Constants.NumberOfIndividuals 
    
    % Cross the genes over
    for j = 1 : Constants.NumberOfSpecies
        
        % Take the gene from the first chromosome with a given probability
        if rand(1) < 0.5
            newPopulation(i, j) = population(i, j);
            newPopulation(i+1, j) = population(i+1, j);
        else
            newPopulation(i, j) = population(i+1, j);
            newPopulation(i+1, j) = population(i, j);
        end
        
    end
    
end

end