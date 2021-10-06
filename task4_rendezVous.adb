with ada.text_io ; use ada.text_io ;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Numerics.Discrete_Random;

procedure Task4_Rendezvous is

   --Intint--

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


   -- task area ---


   task MaxElementInRow is
      entry findMax(rowIndex : integer; max : out Integer);
   end MaxElementInRow;

   task body MaxElementInRow is
      --max : Integer := 0;
      i : Integer;
   begin
      accept findMax(rowIndex : integer; max : out Integer)  do
         max :=0;
         i := rowIndex;
         for j in 0..m loop
            if Matr(i,j) > max
               then max := Matr(i,j);
            end if;
         end loop;
         --put(max);
      end findMax;
   end MaxElementInRow;






   task ListOfRows is
      entry showMax;
   end ListOfRows;

   task body ListOfRows is
      max : integer;
   begin
      accept showMax  do
         MaxElementInRow.findMax(3,max);
         put("this is tha max : ");
         put(max);

      end showMax;
   end ListOfRows;


   -- main begin--

begin

   --Matrix implementation--
   Reset(G);
   for i in 0..n loop
      New_Line;
      for j in 0..m loop
         X := random(G);
         Matr(i,j):= X;
      end loop;
   end loop ;

   --test area--



   --instruction area--
   affichageMatrice;
   New_Line;
   ListOfRows.showMax;

end Task4_Rendezvous;
