package bookstore;

import org.json.JSONException;
import org.json.JSONObject;

public class Books {
    private int id;
    private String title;
    private Author author;
    private String isbn;
    private boolean isTrending;
    private boolean onHero;
    private Publisher publisher;
    private Category category;
    private String description;
    private double price;
    private int stock;
    private String publicationDate;
    private String coverImage;
    private boolean dealOfTheDay;

    // Constructor, getters, and setters
    // Constructor
    public Books(int id, String title, Author author, String isbn, boolean isTrending, boolean onHero, Publisher publisher, Category category, String description, double price, int stock, String publicationDate, String coverImage, boolean dealOfTheDay) {
        this.id = id;
        this.title = title;
        this.author = author;
        this.isbn = isbn;
        this.isTrending = isTrending;
        this.onHero = onHero;
        this.publisher = publisher;
        this.category = category;
        this.description = description;
        this.price = price;
        this.stock = stock;
        this.publicationDate = publicationDate;
        this.coverImage = coverImage;
        this.dealOfTheDay = dealOfTheDay;
    }

    // Getters and setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Author getAuthor() {
        return author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public boolean isTrending() {
        return isTrending;
    }

    public void setTrending(boolean trending) {
        isTrending = trending;
    }

    public boolean isOnHero() {
        return onHero;
    }

    public void setOnHero(boolean onHero) {
        this.onHero = onHero;
    }

    public Publisher getPublisher() {
        return publisher;
    }

    public void setPublisher(Publisher publisher) {
        this.publisher = publisher;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getPublicationDate() {
        return publicationDate;
    }

    public void setPublicationDate(String publicationDate) {
        this.publicationDate = publicationDate;
    }

    public String getCoverImage() {
        return coverImage;
    }

    public void setCoverImage(String coverImage) {
        this.coverImage = coverImage;
    }

    public boolean isDealOfTheDay() {
        return dealOfTheDay;
    }

    public void setDealOfTheDay(boolean dealOfTheDay) {
        this.dealOfTheDay = dealOfTheDay;
    }
    public static Books fromJSON(JSONObject jsonObject) throws JSONException {
        int id = jsonObject.getInt("id");
        String title = jsonObject.getString("title");
        Author author = Author.fromJSON(jsonObject.getJSONObject("author"));
        String isbn = jsonObject.getString("isbn");
        boolean isTrending = jsonObject.getBoolean("isTrending");
        boolean onHero = jsonObject.getBoolean("onHero");
        Publisher publisher = Publisher.fromJSON(jsonObject.getJSONObject("publisher"));
        Category category = Category.fromJSON(jsonObject.getJSONObject("category"));
        String description = jsonObject.getString("description");
        double price = jsonObject.getDouble("price");
        int stock = jsonObject.getInt("stock");
        String publicationDate = jsonObject.getString("publicationDate");
        String coverImage = jsonObject.getString("coverImage");
        boolean dealOfTheDay = jsonObject.getBoolean("dealOfTheDay");

        return new Books(id, title, author, isbn, isTrending, onHero, publisher, category, description, price, stock, publicationDate, coverImage, dealOfTheDay);
    }
    public JSONObject toJSON() throws JSONException {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("id", id);
        jsonObject.put("title", title);
        jsonObject.put("author", author.toJSON());
        jsonObject.put("isbn", isbn);
        jsonObject.put("isTrending", isTrending);
        jsonObject.put("onHero", onHero);
        jsonObject.put("publisher", publisher.toJSON());
        jsonObject.put("category", category.toJSON());
        jsonObject.put("description", description);
        jsonObject.put("price", price);
        jsonObject.put("stock", stock);
        jsonObject.put("publicationDate", publicationDate);
        jsonObject.put("coverImage", coverImage);
        jsonObject.put("dealOfTheDay", dealOfTheDay);

        return jsonObject;
    }
}
