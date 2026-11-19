package murach.data;

import murach.business.Product;

public class ProductIO {

    public static Product getProduct(String productCode) {
        Product p = new Product();
        p.setCode(productCode);
        if (productCode == null) {
            return p;
        }

        if (productCode.equalsIgnoreCase("8601")) {
            p.setDescription("86 (the band) - True Life Songs and Pictures");
            p.setPrice(14.95);
        } else if (productCode.equalsIgnoreCase("pf01")) {
            p.setDescription("Paddlefoot - The First CD");
            p.setPrice(12.95);
        } else if (productCode.equalsIgnoreCase("pf02")) {
            p.setDescription("Paddlefoot - The Second CD");
            p.setPrice(14.95);
        } else if (productCode.equalsIgnoreCase("jr01")) {
            p.setDescription("Joe Rut - Genuine Wood Grained Finish");
            p.setPrice(14.95);
        }
        return p;
    }

    // Nạp chồng (overload) để ai gọi 2 tham số cũng chạy được
    public static Product getProduct(String productCode, String filepath) {
        return getProduct(productCode);
    }
}
