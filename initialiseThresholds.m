function [thresholds] = initialiseThresholds()

thresholds = [
   5E6      % EGF
   2.21E10  % ERK
   2.1E10   % MEK
   4E7      % RAF
];

thresholds = transpose(thresholds);

end