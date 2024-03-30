def  SimplifyFraction (a, b):
    A = a
    B = b
    while A != B:
        
        if A > B:
            aux = A
            A = B
            B = aux 
              
        B = B - A
        
    a = a/B
    b = b/B
    
    print (a)
    print (b)
    

     
    
        
    
            
