function [ answer ] = Divergence(index, Alpha)
    n = index + 1;
    
    Minimum_Distance_Index = n;
	Minimum_Distance = abs(Sequence(n) - Alpha);
	
    while n<=10000
		Distance = abs(Sequence(n) - Alpha);
		
		if Distance < Minimum_Distance
			Minimum_Distance = Distance;
			Minimum_Distance_Index = n;
			end
		n = n + 1;
    end
    answer = [Minimum_Distance, Minimum_Distance_Index];
end