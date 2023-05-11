function Ciphertext=Enc_caesar(Plaintext,k)
  
    if k>25 || k<1
         disp('Key must be in range from 1 to 25');
    
    else
    
        for i= 1:length(Plaintext)
            
            if (Plaintext(i)==32)
                continue;
            end
    
         
            Ciphertext(i)=Plaintext(i)+k;
            
            if Ciphertext(i) >122
               Ciphertext(i)=Ciphertext(i)-26;
            end
    
        end
        Ciphertext=upper(char(Ciphertext));
        
    end
   
end