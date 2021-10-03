with ada.text_io ; use ada.text_io ;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Numerics.Discrete_Random;

procedure Task1_Matrix is
   subtype hundred is integer range 1..100;
   type measurments_columns is ('a','b','c','d');
   type measurments_rows is ('e','f','g','h','i');

   Type T_Tableau is array(measurments_rows,measurments_columns) of hundred ;
   Results : T_Tableau ;

   package Aleatoire is new Ada.Numerics.Discrete_Random(hundred);
   use Aleatoire;
   G : Generator;
   H : hundred;

   procedure affichageMatrice is
   begin
      for i in measurments_rows loop
         New_Line;
         for j in measurments_columns loop
            put(Results(i,j));
         end loop;
      end loop;
   end affichageMatrice;

   procedure zeroExeption is
   begin
      for i in measurments_rows loop
         for j in measurments_columns loop
            if Results(i,j) = 0
            then put("there is a 0");
               exit;
            end if;
         end loop;
      end loop;
      put("everything is okay here");
   end zeroExeption;

   function Max (matrix : T_Tableau) return hundred is
      maximum : hundred:= matrix'First(1);
   begin
        for i in measurments_rows loop
         for j in measurments_columns loop
            if maximum < matrix(i,j+1)
            then maximum := matrix(i,j+1);
            end if;
         end loop;
      end loop ;
      return maximum;
   end Max;
begin
   Reset(G);
   put("Salut tout le monde !") ;
   new_Line;

   for i in measurments_rows loop
      New_Line;
      for j in measurments_columns loop
         H := random(G);
         Results(i,j):= H;

      end loop;
   end loop ;

   affichageMatrice;
   zeroExeption;
   put (Max(Results));
end Task1_Matrix;
