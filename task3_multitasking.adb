with ada.text_io ; use ada.text_io ;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Numerics.Discrete_Random;

procedure task3_multitasking is
   n : integer := 5;
   m : integer := 5;
   subtype hundred is integer range 1..100;

   Type T_Tableau is array(0..n,0..m) of hundred ;
   Matr : T_Tableau ;

   package Aleatoire is new Ada.Numerics.Discrete_Random(hundred);
   use Aleatoire;
   G : Generator;
   X : hundred;

   procedure affichageMatrice is
   begin
      for i in 0..n loop
         New_Line;
         for j in 0..m loop
            put(Matr(i,j));
         end loop;
      end loop;
   end affichageMatrice;
   
   task Task_sumOfEvenRow is
      entry show;
   end Task_sumOfEvenRow;
   
   task body Task_sumOfEvenRow is
      sum : integer :=0;
   begin
      accept show  do
         for i in 1..n loop
            for j in 0..m loop
               sum := sum + Matr(i,j);
            end loop;
            if i mod 2 = 0
              then  put ("Sum of elements in row ");
               put (i);
               put ("is : ");
               put (sum);
               New_Line;
            end if;
         end loop;
      end show;
   end Task_sumOfEvenRow;
   
   task Task_sumOfOddRow is
      entry show;
   end Task_sumOfOddRow;
   
   task body Task_sumOfOddRow is
      sum : integer :=0;
   begin
      accept show  do
         for i in 1..n loop
            for j in 0..m loop
               sum := sum + Matr(i,j);
            end loop;
            if i mod 2 /= 0
              then  put ("Sum of elements in row ");
               put (i);
               put ("is : ");
               put (sum);
               New_Line;
            end if;
         end loop;
      end show;
   end Task_sumOfOddRow;
begin
   Reset(G);
   put("Salut tout le monde !") ;
   new_Line;

   for i in 0..n loop
      New_Line;
      for j in 0..m loop
         X := random(G);
         Matr(i,j):= X;
      end loop;
   end loop ;
   
   affichageMatrice;
   New_Line;
   Task_sumOfOddRow.show;
   Task_sumOfEvenRow.show;
   
end task3_multitasking;
