
package model;

public class Movies {
    private int movieID;
    private String title;
    private String studio;
    private int year;
    private String genre;
    private String lead;

    public Movies() {
        this.movieID = 0;
        this.title = "";
        this.studio = "";
        this.year = 0;
        this.genre = "";
        this.lead = "";
    }
    
    public Movies(int movieID, String title, String studio, int year, String genre, String lead) {
        this.movieID = movieID;
        this.title = title;
        this.studio = studio;
        this.year = year;
        this.genre = genre;
        this.lead = lead;
    }

    public int getMovieID() {
        return movieID;
    }

    public void setMovieID(int movieID) {
        this.movieID = movieID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getStudio() {
        return studio;
    }

    public void setStudio(String studio) {
        this.studio = studio;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getLead() {
        return lead;
    }

    public void setLead(String lead) {
        this.lead = lead;
    }

    @Override
    public String toString() {
        return "Movies{" + "movieID=" + movieID + ", title=" + title + ", studio=" + studio + ", year=" + year + ", genre=" + genre + ", lead=" + lead + '}';
    }
    
    
}
