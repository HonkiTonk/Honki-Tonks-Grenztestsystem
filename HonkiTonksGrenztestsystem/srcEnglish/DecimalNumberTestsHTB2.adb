package body DecimalNumberTestsHTB2 is
   
   function AdditionSubtraction
     (BaseValueExternal : in DecimalPointNumber;
      AddedValueExternal : in DecimalPointNumber)
      return DecimalPointNumber
   is begin
      
      if
        AddedValueExternal > 0.00
        and then
          BaseValueExternal > DecimalPointNumber'Last - AddedValueExternal
      then
         return DecimalPointNumber'Last;
         
      elsif
        AddedValueExternal < 0.00
        and then
          BaseValueExternal < DecimalPointNumber'First - AddedValueExternal
      then
         return DecimalPointNumber'First;
         
      else
         null;
      end if;
      
      return BaseValueExternal + AddedValueExternal;
      
   end AdditionSubtraction;
   
   
   
   function AdditionSubtractionNatural
     (BaseValueExternal : in DecimalPointNumber;
      AddedValueExternal : in DecimalPointNumber)
      return DecimalPointNumber
   is begin
      
      if
        AddedValueExternal > 0.00
      then
         if
           BaseValueExternal > DecimalPointNumber'Last - AddedValueExternal
         then
            return DecimalPointNumber'Last;
         
         elsif
           BaseValueExternal + AddedValueExternal < 0.00
         then
            return 0.00;
            
         else
            null;
         end if;
         
      elsif
        AddedValueExternal < 0.00
        and then
          BaseValueExternal < 0.00 - AddedValueExternal
      then
         return 0.00;
            
      else
         null;
      end if;
      
      return BaseValueExternal + AddedValueExternal;
      
   end AdditionSubtractionNatural;
   
   
   
   function AdditionSubtractionPositive
     (BaseValueExternal : in DecimalPointNumber;
      AddedValueExternal : in DecimalPointNumber)
      return DecimalPointNumber
   is begin
      
      if
        AddedValueExternal > 0.00
      then
         if
           BaseValueExternal > DecimalPointNumber'Last - AddedValueExternal
         then
            return DecimalPointNumber'Last;
         
         elsif
           BaseValueExternal + AddedValueExternal < 1.00
         then
            return 1.00;
            
         else
            null;
         end if;
         
      elsif
        AddedValueExternal < 0.00
        and then
          BaseValueExternal < 1.00 - AddedValueExternal
      then
         return 1.00;
         
      else
         null;
      end if;
      
      return BaseValueExternal + AddedValueExternal;
      
   end AdditionSubtractionPositive;
   
   

   function Multiplication
     (BaseValueExternal : in DecimalPointNumber;
      MultiplierExternal : in DecimalPointNumber)
      return DecimalPointNumber
   is begin
      
      if
        MultiplierExternal /= 0.00
      then
         if
           BaseValueExternal > DecimalPointNumber'Last / MultiplierExternal
         then
            return DecimalPointNumber'Last;
            
         elsif
           BaseValueExternal < DecimalPointNumber'First / MultiplierExternal
         then
            return DecimalPointNumber'First;
         
         else
            null;
         end if;
         
      else
         null;
      end if;
      
      return BaseValueExternal * MultiplierExternal;
      
   end Multiplication;

end DecimalNumberTestsHTB2;
