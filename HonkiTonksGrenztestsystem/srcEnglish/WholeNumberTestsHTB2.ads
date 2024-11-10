package WholeNumberTestsHTB2 is
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

end WholeNumberTestsHTB2;
