/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package todoapp.model;

public class Todo {

   
    private String title;
    private String username;
    private String description;

    protected Todo() {

    }

    public Todo(long id, String title, String username, String description) {       
       
        this.title = title;
        this.username = username;
        this.description = description;
       
    }

    public Todo(String title, String username, String description) {
   
        this.title = title;
        this.username = username;
        this.description = description;
        
    }

   

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }


}