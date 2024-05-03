package bookstore;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ApiFetch {
	public static String fetchDataFromAPI(String apiUrl) {
        try {
            URL url = new URL(apiUrl);
            HttpURLConnection con = (HttpURLConnection) url.openConnection();
            con.setRequestMethod("GET");

            int responseCode = con.getResponseCode();
            if (responseCode == HttpURLConnection.HTTP_OK) {
                BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
                String inputLine;
                StringBuilder response = new StringBuilder();
                while ((inputLine = in.readLine()) != null) {
                    response.append(inputLine);
                }
                in.close();
                return response.toString();
            } else {
                // Handle API call error
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
	public static String postReq(String apiUrl, Map<String, String> data) {
        try {
            URL url = new URL(apiUrl);
            HttpURLConnection con = (HttpURLConnection) url.openConnection();
            con.setRequestMethod("POST");
            for(String s : data.keySet()) {
            	con.addRequestProperty(s, data.get(s));
            }

            int responseCode = con.getResponseCode();
            if (responseCode == HttpURLConnection.HTTP_OK) {
                BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
                String inputLine;
                StringBuilder response = new StringBuilder();
                while ((inputLine = in.readLine()) != null) {
                    response.append(inputLine);
                }
                in.close();
                return response.toString();
            } else {
                // Handle API call error
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
//	public static List<Books> getBooksFromJSON(String jsonResponse) throws JSONException {
//        List<Books> books = new ArrayList<>();
//        
//        // Parse the JSON response
//        JSONArray jsonArray = new JSONArray(jsonResponse);
//        
//        // Iterate over the JSON array and create Book objects
//        for (int i = 0; i < jsonArray.length(); i++) {
//            JSONObject jsonObject = jsonArray.getJSONObject(i);
//            Books book = Books.fromJSON(jsonObject.toString());
//            books.add(book);
//        }
//        
//        return books;
//    }
}
