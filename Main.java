package com.company;

import java.util.ArrayList;
import java.util.Collections;

public class Main {

    public static void main(String[] args) {
	// write your code here
        System.out.println("hello world");

        Book mybook1 = new Book("les Misérables","Victor Hugo",1462);
        Book mybook2 = new Book("Le Petit Prince","Antoine de Saint-Exupéry",93);
        Book mybook3 = new Book("Les Fleurs du Mal","Charles Baudelaire",288);
        Reader reader1 = new Reader("hugo",0,21,new ArrayList());
        Reader reader2 = new Reader("Cassandre",0,21,new ArrayList());


        reader1.AddBook(mybook1);
        reader2.AddBook(mybook1);
        reader2.AddBook(mybook2);
        reader2.AddBook(mybook3);

        System.out.println(reader1.getName()+":"+reader1.getNumberOfBookRead()+","+reader1.getReadingList());
        System.out.println(reader2.getName()+":"+reader2.getNumberOfBookRead()+","+reader2.getReadingList());



    }
}
