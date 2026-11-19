package murach.business;

import java.io.Serializable;
import java.text.NumberFormat;
import java.util.Locale;

public class LineItem implements Serializable {
    private Product product;
    private int quantity;

    public LineItem() {
        this.product = new Product();
        this.quantity = 0;
    }

    public LineItem(Product product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }

    public void setProduct(Product p) {
        this.product = p;
    }

    public Product getProduct() {
        return product;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getQuantity() {
        return quantity;
    }

    public double getTotal() {
        if (product != null) {
            return product.getPrice() * quantity;
        }
        return 0.0;
    }

    public String getFormattedTotal() {
        NumberFormat currency = NumberFormat.getCurrencyInstance(Locale.US);
        return currency.format(getTotal());
    }
}
