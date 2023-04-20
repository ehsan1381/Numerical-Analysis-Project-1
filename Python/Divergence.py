# A test to see if a sequence in divergant or not


# GLOBAL VARIABLES
_ITERATION_BOUND = 1000


# DEFINE SEQUENCE AS A PYTHON FUNCTION
def Sequence(n : int):
    sum = 0
    for i in range(1, n+1):
        sum = sum + (1/i^2)
    return sum


# Divergence test
def Divergence(Index : int, Alpha: float):
    State = False
    n = Index + 1
    Minimum_Difference = abs(Sequence(n) - Alpha)
    Minimum_Difference_Index = n
    
    
    while n<=_ITERATION_BOUND:
        Diffrence = abs(Sequence(n) - Alpha)
        
        if Diffrence < Minimum_Difference:
            Minimum_Difference = Diffrence
            Minimum_Difference_Index = n
        
        print(n, Diffrence)
        n +=1

    
    return Minimum_Difference_Index, Minimum_Difference


if __name__ == '__main__':
    print(f"{'*' * 25}  Divergence Test  {'*' * 25}")
    
    Alpha = float(input('Enter Alpha (Real): '))
    Index = int(input('Enter Index (Natural): '))
    index, diff = Divergence(Index, Alpha)
    
    print("{:d}, {:e}".format(index - 1,abs(Sequence(index - 1) - Alpha)))
    print("{:d}, {:e}, {:e}".format(index,Sequence(index), diff))
    print("{:d}, {:e}".format(index + 1,abs(Sequence(index + 1) - Alpha)))
    