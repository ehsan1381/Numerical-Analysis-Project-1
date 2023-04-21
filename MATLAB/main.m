% THIS CODE RUNS PERFECTLY WITH NO ERRORS AND WARNINGS IN MATLAB R2016B

Random_Alpha_Count = 5000
Sequence_Bound = 50000


% Index which search for epsilon starts at
index = 1;

% Start timer to track performance
tic;

% An array of zeros to store outputs and alpha values
Arr = zeros(10, 3);

% An array of zeros to store sequence values
SeqArr = zeros(Sequence_Bound,1);

% for loop to calculate sequence values and store in SeqArr
% this loop eliminates the need for calculating all sequence values
% for each alpha. The bound of loop determines how much of the sequence
% values do we have at hand to work with. If it is set lower precision
% of logical reasoning decreases. 50000 is chosen because of low-end computer.
for i = 1:Sequence_Bound
    SeqArr(i) = Sequence(i);
end

% for loop to search for alpha and index values
% and store outputs in Arr
% In this configuration 5000 random alpha values are
% generated and tested. This number can be changed 
% with no problem raising.
for i =1:Random_Alpha_Count
    alpha = rand * 10;
    an = Divergence(index, alpha, SeqArr);
    Arr(i,:) = [alpha, an(1)  ,an(2)];
end

% stop timer
toc;