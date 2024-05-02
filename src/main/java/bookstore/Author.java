package bookstore;

import org.json.JSONException;
import org.json.JSONObject;


public class Author {
    private int id;
    private String name;
    private String biography;

    // Constructor, getters, and setters
    // Constructor
    public Author(int id, String name, String biography) {
        this.id = id;
        this.name = name;
        this.biography = biography;
    }

    // Getters and setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBiography() {
        return biography;
    }

    public void setBiography(String biography) {
        this.biography = biography;
    }
    
    public static Author fromJSON(JSONObject jsonObject) throws JSONException {
        int id = jsonObject.getInt("id");
        String name = jsonObject.getString("name");
        String biography = jsonObject.getString("biography");

        return new Author(id, name, biography);
    }
    
    public JSONObject toJSON() throws JSONException {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("id", id);
        jsonObject.put("name", name);
        jsonObject.put("biography", biography);

        return jsonObject;
    }
}
