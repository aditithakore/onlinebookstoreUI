package bookstore;

import org.json.JSONException;
import org.json.JSONObject;


public class Publisher {
    private int id;
    private String name;
    private String location;

    // Constructor, getters, and setters
    // Constructor
    public Publisher(int id, String name, String location) {
        this.id = id;
        this.name = name;
        this.location = location;
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

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }
    
    public static Publisher fromJSON(JSONObject jsonObject) throws JSONException {
        int id = jsonObject.getInt("id");
        String name = jsonObject.getString("name");
        String location = jsonObject.getString("location");

        return new Publisher(id, name, location);
    }
    
    public JSONObject toJSON() throws JSONException {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("id", id);
        jsonObject.put("name", name);
        jsonObject.put("location", location);

        return jsonObject;
    }
}
