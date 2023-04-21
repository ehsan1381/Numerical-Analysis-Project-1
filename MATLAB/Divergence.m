function [ answer ] = Divergence(index_S, Alpha)
    n = index_S + 1;
    
    Minimum_Distance_Index = n;
	Minimum_Distance = abs(Sequence(n) - Alpha);
	
    while n<=8000
        
		Distance = abs(Sequence(n) - Alpha);
		
        if Distance < Minimum_Distance
			Minimum_Distance = Distance;
			Minimum_Distance_Index = n;
        end;
        n=n+1;
    end
    answer = [Minimum_Distance, Minimum_Distance_Index];
end