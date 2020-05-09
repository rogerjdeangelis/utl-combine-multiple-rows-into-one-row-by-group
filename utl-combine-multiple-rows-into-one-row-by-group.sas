Combine multiple rows into one row by group                                                                                       
                                                                                                                                  
github                                                                                                                            
https://tinyurl.com/ydfth8a4                                                                                                      
https://github.com/rogerjdeangelis/utl-combine-multiple-rows-into-one-row-by-group                                                
                                                                                                                                  
SAS Forum                                                                                                                         
https://tinyurl.com/y9hsfrr5                                                                                                      
https://communities.sas.com/t5/SAS-Programming/Follow-up-information-by-number-of-months-since-joined-research/m-p/646357         
                                                                                                                                  
*_                   _                                                                                                            
(_)_ __  _ __  _   _| |_                                                                                                          
| | '_ \| '_ \| | | | __|                                                                                                         
| | | | | |_) | |_| | |_                                                                                                          
|_|_| |_| .__/ \__,_|\__|                                                                                                         
        |_|                                                                                                                       
;                                                                                                                                 
                                                                                                                                  
data have;                                                                                                                        
 input VAR1 VAR2 VAR3;                                                                                                            
cards4;                                                                                                                           
1 2 3                                                                                                                             
4 5 6                                                                                                                             
7 8 9                                                                                                                             
10 11 12                                                                                                                          
13 14 15                                                                                                                          
16 17 18                                                                                                                          
;;;;                                                                                                                              
run;quit;                                                                                                                         
                                                                                                                                  
                                                                                                                                  
WORK.HAVE total obs=6                                                                                                             
                                                                                                                                  
 VAR1    VAR2    VAR3                                                                                                             
                                                                                                                                  
   1       2       3                                                                                                              
   4       5       6                                                                                                              
   7       8       9                                                                                                              
  10      11      12                                                                                                              
  13      14      15                                                                                                              
  16      17      18                                                                                                              
                                                                                                                                  
*            _               _                                                                                                    
  ___  _   _| |_ _ __  _   _| |_                                                                                                  
 / _ \| | | | __| '_ \| | | | __|                                                                                                 
| (_) | |_| | |_| |_) | |_| | |_                                                                                                  
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                                                 
                |_|                                                                                                               
;                                                                                                                                 
                                                                                                                                  
WORK.WANT total obs=3                                                                                                             
                                                                                                                                  
   FROM ODD ROWS            FROM EVEN ROWS                                                                                        
   =============            ==============                                                                                        
  VAR1    VAR2    VAR3    VAR4    VAR5    VAR6                                                                                    
                                                                                                                                  
    1       2       3       4       5       6                                                                                     
    7       8       9      10      11      12                                                                                     
   13      14      15      16      17      18                                                                                     
                                                                                                                                  
*                                                                                                                                 
 _ __  _ __ ___   ___ ___  ___ ___                                                                                                
| '_ \| '__/ _ \ / __/ _ \/ __/ __|                                                                                               
| |_) | | | (_) | (_|  __/\__ \__ \                                                                                               
| .__/|_|  \___/ \___\___||___/___/                                                                                               
|_|                                                                                                                               
;                                                                                                                                 
                                                                                                                                  
data want;                                                                                                                        
   merge  have have(firstobs=2 rename=var1-var3=var4-var6);                                                                       
   if mod(_n_,2)=1;                                                                                                               
run;quit;                                                                                                                         
                                                                                                                                  
                                                                                                                                  
