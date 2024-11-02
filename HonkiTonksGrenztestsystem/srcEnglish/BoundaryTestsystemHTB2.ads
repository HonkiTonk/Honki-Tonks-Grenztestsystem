package BoundaryTestsystemHTB2 is
   pragma Pure;

   generic type WholeNumber is range <>;
   
   function AdditionSubtraction
     (BaseValueExternal : in WholeNumber;
      AddedValueExternal : in WholeNumber)
      return WholeNumber;

   generic type WholeNumber is range <>;
   
   function AdditionSubtractionNatural
     (BaseValueExternal : in WholeNumber;
      AddedValueExternal : in WholeNumber)
      return WholeNumber;

   generic type WholeNumber is range <>;
   
   function AdditionSubtractionPositive
     (BaseValueExternal : in WholeNumber;
      AddedValueExternal : in WholeNumber)
      return WholeNumber;

   generic type WholeNumber is range <>;
   
   function Multiplication
     (BaseValueExternal : in WholeNumber;
      MultiplierExternal : in WholeNumber)
      return WholeNumber;
   
   generic type DecimalPointNumber is digits <>;

   function DecimalPointNumberMultiplication
     (BaseValueExternal : in DecimalPointNumber;
      MultiplierExternal : in DecimalPointNumber)
      return DecimalPointNumber;
   
end BoundaryTestsystemHTB2;
