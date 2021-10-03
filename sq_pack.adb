WITH Ada.Integer_Text_IO, Ada.Text_IO ;
USE Ada.Integer_Text_IO, Ada.Text_IO ;

PACKAGE BODY SQ_Pack IS

   PROCEDURE print ( a : in integer) IS
   BEGIN

      for j in 1..a loop
         for i in 1..a loop
            put("#");
            put(" ");
         end loop;
         New_Line;
      end loop;


   END print ;

   PROCEDURE getArea ( a : in integer) IS
   BEGIN
      put("Area = ");
      put(a*a);
      New_Line;
   END getArea;

   PROCEDURE getPerimter ( a : in integer) IS
   BEGIN
      put("Perimeter  = ");
      put(4*a);
      New_Line;
   END getPerimter;

   PROCEDURE full_info ( a : in integer) IS
   BEGIN
      print(a);
      New_Line;
      getPerimter(a);
      New_Line;
      getArea(a);
      New_Line;

   END full_info;

END SQ_Pack ;
