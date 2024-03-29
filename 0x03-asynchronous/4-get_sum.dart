import '4-util.dart';
import 'dart:convert';

Future<String> calculateTotal() async {
    try {
        final userData = await fetchUserData();
        final userOrders = await fetchUserOrders(json.decode(userData)['id']);
        
        double totalPrice = 0;
        for (var product in json.decode(userOrders)) {
            final productPrice = await fetchProductPrice(product);
            totalPrice += double.parse(productPrice);
        }
        
        return totalPrice.toString();
    } catch (e) {
        return '-1';
    }
}
