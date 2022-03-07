## Copyright (C) 2022 ABTIN
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} SSHW1 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: ABTIN <ABTIN@HMD>
## Created: 2022-03-01

function retval = SSHW1 ()
  
  figure;
  
  #-----------------------------------------------------------------------------
  #x1
  t1 = (-pi:0.01:pi);
  X1 = sin(t1);
  subplot(4,2,1) ;
  plot( t1 , X1);
  title "sin(t)";
  ylabel "X1";
  xlabel "t";
  
  #-----------------------------------------------------------------------------
  #x2
  t2 = (-5:5);
  index = 1;
  X2 = [];
  while index < length(t2) +1
  
     if t2(index) < 0 
       X2(index) = -t2(index)-1;
     else
     X2(index) = t2(index);

     end
   index -=-1;
  
  endwhile
      
  
  subplot(4,2,2);
  stem( t2 , X2);
  title "Multi-Criteria-Function";
  ylabel "X2";
  xlabel "t";
  
  #-----------------------------------------------------------------------------
  #-----------------------------------------------------------------------------
  #x3
  t3 = (-5:11);
  index = 1;
  X3 = [];
  X3_Plot = [];
  while index < length(t3) +1
  
       if t3(index) >= -2 
         if t3(index) == 0 
           X3(index) = power(2.71828,t3(index)*3) + 2;
           X3_Plot(index) = t3(index);
         else 
           X3(index) = power(2.71828,t3(index)*3);
           X3_Plot(index) = t3(index);
         end
       else
           X3(index) = 0;
           X3_Plot(index) = t3(index);
       end
   index -=-1;
  
  endwhile
      
  
  subplot(4,2,3);
  stem( X3_Plot , X3);
  title "Exp and Step function";
  ylabel "X3";
  xlabel "t";
  
  #-----------------------------------------------------------------------------
  #x4
  t4 = (-5:0.01:5);
  index = 1;
  X4 = (-5:0.01:5) *0;
  while index < length(t4) +1
  
     if t4(index) < 2 && t4(index) >= -2 
       X4(index) = -1;
       
     end
   index -=-1;
  
endwhile

  subplot(4,2,4);
  plot( t4 , X4);
  title "Step function";
  ylabel "X4";
  xlabel "t";
  
  #-----------------------------------------------------------------------------
  
  #-----------------------------------------------------------------------------
  #x5
  t5 = (-10:10);
  index = 1;
  X5 = [];
  t5_plot = []
  while index < length(t5) +1
 
       X5(index) = cos(t5(index)*3);
       t5_plot(index) = t5(index);
   index -=-1;
  
  endwhile
      
  
  subplot(4,2,5);
  stem( t5_plot , X5);
  title "cos(3n)";
  ylabel "X5";
  xlabel "t";
  
  #-----------------------------------------------------------------------------
  #x7
  t7 = (-10:10);
  index = 1;
  X7 = [];
  t7_plot = []
  while index < length(t7) +1

       X7(index) = cos(t7(index)*3*pi);
       t7_plot(index) = t7(index);

   index -=-1;
  
  endwhile
      
  
  subplot(4,2,6);
  stem( t7_plot , X7);
  title "cos(3pin)";
  ylabel "X7";
  xlabel "t";

endfunction
