package body HTB2_BoundaryTestsystem is
         
   function AdditionSubtraction
     (BaseValueExternal : in WholeNumber;
      AddedValueExternal : in WholeNumber)
      return WholeNumber
   is begin
      
      if
        AddedValueExternal > 0
      then
         if
           BaseValueExternal > WholeNumber'Last - AddedValueExternal
         then
            return WholeNumber'Last;
         
         elsif
           BaseValueExternal < WholeNumber'First + AddedValueExternal
         then
            return WholeNumber'First;
            
         else
            null;
         end if;
         
      elsif
        AddedValueExternal < 0
      then
         if
           BaseValueExternal > WholeNumber'Last + AddedValueExternal
         then
            return WholeNumber'Last;
         
         elsif
           BaseValueExternal < WholeNumber'First - AddedValueExternal
         then
            return WholeNumber'First;
            
         else
            null;
         end if;
         
      else
         null;
      end if;
      
      return BaseValueExternal + AddedValueExternal;
      
   end AdditionSubtraction;
   
   
   
   function AdditionSubtractionNatural
     (BaseValueExternal : in WholeNumber;
      AddedValueExternal : in WholeNumber)
      return WholeNumber
   is begin
      
      if
        AddedValueExternal > 0
      then
         if
           BaseValueExternal > WholeNumber'Last - AddedValueExternal
         then
            return WholeNumber'Last;
         
         elsif
           BaseValueExternal < 0 + AddedValueExternal
         then
            return 0;
            
         else
            null;
         end if;
         
      elsif
        AddedValueExternal < 0
      then
         if
           BaseValueExternal > WholeNumber'Last + AddedValueExternal
         then
            return WholeNumber'Last;
         
         elsif
           BaseValueExternal < 0 - AddedValueExternal
         then
            return 0;
            
         else
            null;
         end if;
         
      else
         null;
      end if;
      
      return BaseValueExternal + AddedValueExternal;
      
   end AdditionSubtractionNatural;
   
   
   
   function AdditionSubtractionPositive
     (BaseValueExternal : in WholeNumber;
      AddedValueExternal : in WholeNumber)
      return WholeNumber
   is begin
      
      if
        AddedValueExternal > 0
      then
         if
           BaseValueExternal > WholeNumber'Last - AddedValueExternal
         then
            return WholeNumber'Last;
         
         elsif
           BaseValueExternal < 1 + AddedValueExternal
         then
            return 1;
            
         else
            null;
         end if;
         
      elsif
        AddedValueExternal < 0
      then
         if
           BaseValueExternal > WholeNumber'Last + AddedValueExternal
         then
            return WholeNumber'Last;
         
         elsif
           BaseValueExternal < 1 - AddedValueExternal
         then
            return 1;
            
         else
            null;
         end if;
         
      else
         null;
      end if;
      
      return BaseValueExternal + AddedValueExternal;
      
   end AdditionSubtractionPositive;
   
   
   
   function Multiplication
     (BaseValueExternal : in WholeNumber;
      MultiplierExternal : in WholeNumber)
      return WholeNumber
   is begin
      
      if
        MultiplierExternal /= 0
      then
         if
           BaseValueExternal > WholeNumber'Last / MultiplierExternal
         then
            return WholeNumber'Last;
            
         elsif
           BaseValueExternal < WholeNumber'First / MultiplierExternal
         then
            return WholeNumber'First;
         
         else
            null;
         end if;
         
      else
         null;
      end if;
      
      return BaseValueExternal * MultiplierExternal;
      
   end Multiplication;
   
   
   
   function DecimalPointNumberMultiplication
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
      
   end DecimalPointNumberMultiplication;

end HTB2_BoundaryTestsystem;
