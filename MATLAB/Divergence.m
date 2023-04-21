% main function:
% this function takes index start : index_S
% as N to search for least epsilon for n > N
% takes alpha and array of sequence values
function [ answer ] = Divergence(index_S, Alpha, SeqArr)
    % set basic index
	n = index_S + 1;
    
	% define variables
    Minimum_Distance_Index = n;
	Minimum_Distance = abs(Sequence(n) - Alpha);
	
	% get size of SeqArr
	s = size(SeqArr);
	Bound = s(1);
	
	% This loop finds the least epsilon and stores it
    while n<=Bound
        
		Distance = abs(SeqArr(n) - Alpha);
		
        if Distance < Minimum_Distance
			Minimum_Distance = Distance;
			Minimum_Distance_Index = n;
        end;
        n=n+1;
    end
	% return epsilon and n
    answer = [Minimum_Distance, Minimum_Distance_Index];
end