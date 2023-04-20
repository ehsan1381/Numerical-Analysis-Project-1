% Alpha = input('Alpha : ');
% Index = input('Index : ');
Output_arr = zeros(10, 2);
Index = 1;
li = [0.34811, 12.5465, 2.0543];
count = 1;

parfor Alpha = li
    output = Divergence(Index, Alpha);
    Output_arr(count, 1:2) = [output(1), output(2)];
    count = count + 1;
end