package com.company;
import java.util.*;

public class Reader {


    private String name;
    private int numberOfBookRead;
    private int age;
    private List readingList;

    public Reader(String name, int numberOfBookRead, int age, List readingList){

        this.name = name;
        this.numberOfBookRead = numberOfBookRead;
        this.age = age;
        this.readingList = readingList;
    }


    public String getName() {
        return name;
    }

    public int getNumberOfBookRead() {
        return numberOfBookRead;
    }

    public int getAge() {
        return age;
    }

    public List getReadingList() {
        return readingList;
    }

    public void AddBook(Book newBook){
        readingList.add(newBook.getTitle());
        numberOfBookRead +=1;
    }
}
