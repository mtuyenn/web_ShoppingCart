package murach.business;

import java.io.Serializable;
import java.util.ArrayList;
import java.text.NumberFormat;
import java.util.Locale;

public class Cart implements Serializable {
    private ArrayList<LineItem> items;

    public Cart() {
        items = new ArrayList<LineItem>();
    }

    public ArrayList<LineItem> getItems() {
        return items;
    }

    public int getCount() {
        return items.size();
    }

    public void addItem(LineItem item) {
        String code = item.getProduct().getCode();
        int quantity = item.getQuantity();

        for (LineItem lineItem : items) {
            if (lineItem.getProduct().getCode().equalsIgnoreCase(code)) {
                lineItem.setQuantity(quantity);
                return;
            }
        }

        items.add(item);
    }

    public void removeItem(LineItem item) {
        String code = item.getProduct().getCode();
        for (LineItem lineItem : items) {
            if (lineItem.getProduct().getCode().equalsIgnoreCase(code)) {
                items.remove(lineItem);
                return;
            }
        }
    }

    public double getSubtotal() {
        double total = 0.0;
        for (LineItem item : items) {
            total += item.getTotal();
        }
        return total;
    }

    public String getFormattedSubtotal() {
        NumberFormat currency = NumberFormat.getCurrencyInstance(Locale.US);
        return currency.format(getSubtotal());
    }
}