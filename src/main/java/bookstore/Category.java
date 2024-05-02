package bookstore;

import org.json.JSONException;
import org.json.JSONObject;


public class Category {
    private int id;
    private String name;

    // Constructor, getters, and setters
    // Constructor
    public Category(int id, String name) {
        this.id = id;
        this.name = name;
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
    
    public static Category fromJSON(JSONObject jsonObject) throws JSONException {
        int id = jsonObject.getInt("id");
        String name = jsonObject.getString("name");

        return new Category(id, name);
    }
    
    public JSONObject toJSON() throws JSONException {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("id", id);
        jsonObject.put("name", name);

        return jsonObject;
    }
}
