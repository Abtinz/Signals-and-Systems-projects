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
## @deftypefn {} {@var{retval} =} SS-HW1-Part2 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: ABTIN <ABTIN@HMD>
## Created: 2022-03-03

function retval = SS_HW1_Part2 ()
  
  figure;
  
  #-----------------------------------------------------------------------------
  #x8
  t1 = (-pi:0.01:pi);
  t1 = t1 + 3;
  t1 = t1/2;
  X1 = sin(t1);
  subplot(3,1,1) ;
  plot( t1 , X1);
  title "sin(t) :";
  ylabel "X8";
  xlabel "t";
  
    #-----------------------------------------------------------------------------
  #x10
  t10 = (-pi-3:0.01:pi-3);
  t10 = t10*-1;
  X10 = sin(t10);
  subplot(3,1,2) ;
  plot( t10 , X10);
  title "sin(t) :";
  ylabel "X10";
  xlabel "t";


  #x3
  
  t5 = (2:17);
  index = 1;
  secondIndex = 1;
  t3 = [];
  while index < length(t5) +1
    if rem(t5(index),5) == 0
         t3(secondIndex) = -t5(index)/5;
         secondIndex +=1;
    endif
    index++;
  endwhile
  
  index = 1;
  X3 = [];
  

  
  while index < length(t3) +1
       if t3(index) >= -2 
         if t3(index) == 0 
           X3(index) = power(2.71828,t3(index)/3) + 2;

         else 
           X3(index) = power(2.71828,t3(index)/3);

         end
       else
           X3(index) = 0;

       end

   index -=-1;
  
  endwhile
  
  X3 = X3*(-2);
  subplot(3,1,3);
  stem( t3 , X3);
  title "Exp and Step function";
  ylabel "X9";
  xlabel "t";
endfunction
