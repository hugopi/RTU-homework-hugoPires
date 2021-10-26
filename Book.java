package com.company;

public class Book {

    private String title;
    private String autor;
    private int nbrOfPages;

    public Book (String title, String autor, int nbrOfPages){
        this.title = title;
        this.autor = autor;
        this.nbrOfPages = nbrOfPages;
    }


    public String getTitle() {
        return title;
    }

    public String getAutor() {
        return autor;
    }

    public int getNbrOfPages() {
        return nbrOfPages;
    }
}
