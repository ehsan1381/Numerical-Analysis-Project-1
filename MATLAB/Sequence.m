function [Sum] = Sequence(x) 
	index = 1:1:x;
	Sum = 0;
	for i = index
		Sum = Sum + 1/i^2;
	end
end 