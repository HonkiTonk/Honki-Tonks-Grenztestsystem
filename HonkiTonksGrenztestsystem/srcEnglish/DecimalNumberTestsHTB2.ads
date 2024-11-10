package DecimalNumberTestsHTB2 is
   pragma Pure;
   
   generic type DecimalPointNumber is digits <>;
   
   function AdditionSubtraction
     (BaseValueExternal : in DecimalPointNumber;
      AddedValueExternal : in DecimalPointNumber)
      return DecimalPointNumber;

   generic type DecimalPointNumber is digits <>;
   
   function AdditionSubtractionNatural
     (BaseValueExternal : in DecimalPointNumber;
      AddedValueExternal : in DecimalPointNumber)
      return DecimalPointNumber;

   generic type DecimalPointNumber is digits <>;
   
   function AdditionSubtractionPositive
     (BaseValueExternal : in DecimalPointNumber;
      AddedValueExternal : in DecimalPointNumber)
      return DecimalPointNumber;

   generic type DecimalPointNumber is digits <>;

   function Multiplication
     (BaseValueExternal : in DecimalPointNumber;
      MultiplierExternal : in DecimalPointNumber)
      return DecimalPointNumber;

end DecimalNumberTestsHTB2;
