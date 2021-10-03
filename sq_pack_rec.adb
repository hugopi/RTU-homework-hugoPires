WITH Ada.Integer_Text_IO, Ada.Text_IO ;
USE Ada.Integer_Text_IO, Ada.Text_IO ;

PACKAGE BODY SQ_Pack_rec IS

   PROCEDURE print ( a : in integer; b : in integer) IS
   BEGIN

      for j in 1..b loop
         for i in 1..a loop
            put("#");
            put(" ");
         end loop;
         New_Line;
      end loop;
   END print ;

   PROCEDURE getArea ( a : in integer ; b : in integer ) IS
   BEGIN
      put("Area = ");
      put(a*b);
      New_Line;
   END getArea;

   PROCEDURE getPerimter ( a : in integer ; b : in integer ) IS
   BEGIN
      put("Perimeter  = ");
      put(2*a+2*b);
      New_Line;
   END getPerimter;

   PROCEDURE full_info ( a : in integer; b : in integer) IS
   BEGIN
      print(a,b);
      New_Line;
      getPerimter(a,b);
      New_Line;
      getArea(a,b);
      New_Line;

   END full_info;

END SQ_Pack_rec ;
