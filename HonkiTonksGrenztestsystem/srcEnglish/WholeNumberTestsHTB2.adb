package body WholeNumberTestsHTB2 is

   function AdditionSubtraction
     (BaseValueExternal : in WholeNumber;
      AddedValueExternal : in WholeNumber)
      return WholeNumber
   is begin
      
      if
        AddedValueExternal > 0
        and then
          BaseValueExternal > WholeNumber'Last - AddedValueExternal
      then
         return WholeNumber'Last;
         
      elsif
        AddedValueExternal < 0
        and then
          BaseValueExternal < WholeNumber'First - AddedValueExternal
      then
         return WholeNumber'First;
         
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
           BaseValueExternal + AddedValueExternal < 0
         then
            return 0;
            
         else
            null;
         end if;
         
      elsif
        AddedValueExternal < 0
        and then
          BaseValueExternal < 0 - AddedValueExternal
      then
         return 0;
            
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
           BaseValueExternal + AddedValueExternal < 1
         then
            return 1;
            
         else
            null;
         end if;
         
      elsif
        AddedValueExternal < 0
        and then
          BaseValueExternal < 1 - AddedValueExternal
      then
         return 1;
         
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
      
      case
        MultiplierExternal
      is
         when 0 =>
            null;
            
         when others =>
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
      end case;
      
      return BaseValueExternal * MultiplierExternal;
      
   end Multiplication;

end WholeNumberTestsHTB2;
