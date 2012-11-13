classdef Constants   
 
    properties (Constant)
        
        % Genetic Algorithm
        NumberOfIndividuals = 200;
        NumberOfSpecies = 4; % EGF, ERK, MEK, RAF
        NumberOfExtraParamsForSpecie = 3; % Peak height, Peak time, Fitness
        TotalNumberOfSpecies = 103;
        NumberOfIterations = 400;
        ProbabilityCrossover = 0.7;
        ProbabilityMutation = 0.3;
                
        % Indexes
        IndexEGF = 1;
        IndexERK = 2;
        IndexMEK = 3;
        IndexRAF = 4;
        
        % Target behaviour
        TargetPeakTime = 10000;
        ThresholdPeakHeight = 2E6;
        ThresholdPeakTime = 1000;
        
        % Simulation
        SimulationTimeStart = 0;
        SimulationTimeEnd = 5500;
        SimulationNumberOfTimePoints = 11000;
        
        % Thresholds
        SpeciesThresholds = initialiseThresholds();
        ComparisonThreshold = 2E7;
        
    end
 
end

