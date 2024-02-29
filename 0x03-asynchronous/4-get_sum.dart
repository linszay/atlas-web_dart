import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
    try {
        final userData = await fetchUserData();
        final userOrders = await fetchUserOrders(json.decode(userData)['id']);
        
        double totalPrice = 0;
        for (var product in json.decode(userOrders)) {
            final productPrice = await fetchProductPrice(product);
            totalPrice += double.parse(productPrice);
        }
        
        return totalPrice;
    } catch (e) {
        return '-1';
    }
}
