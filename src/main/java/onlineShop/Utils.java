package onlineShop;

public class Utils {

    public static String generateSummary(String description) {
        return description.substring(13, 213) + "...";
    }
}
