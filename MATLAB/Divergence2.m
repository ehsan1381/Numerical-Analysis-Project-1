function [ answer ] = Divergence(index, Alpha)
    n = index + 1;
    
    Minimum_Distance_Index = n;
	Minimum_Distance = abs(Sequence(n) - Alpha);
	
    for n = 1:10000
		Distance = abs(Sequence(n) - Alpha);
		
        if Distance < Minimum_Distance
			Minimum_Distance = Distance;
			Minimum_Distance_Index = n;
        end
    end
    answer = [Minimum_Distance, Minimum_Distance_Index];
end