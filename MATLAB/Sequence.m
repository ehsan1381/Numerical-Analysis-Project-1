% Sequence definition function
function [Sum] = Sequence(x) 
	% generating inputs
	index = 1:1:x;
	Sum = 0;
	
	% calculate series value from 1 to x
	for i = index
		% change i^2 to i to change sequences
		Sum = Sum + 1/i^2;
	end
end 