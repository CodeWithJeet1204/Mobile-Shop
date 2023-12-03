import 'package:flutter/material.dart';
import 'package:mobile_shop/data.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeItemFromCart(Mobile mobile) {
    setState(() {
      cartItems.remove(mobile);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: cartItems.isEmpty
          ? Center(
              child: Text("No items added to cart"),
            )
          : ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: ((context, index) => Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    child: ListTile(
                      style: ListTileStyle.list,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      leading: CircleAvatar(
                        child: Image.asset(cartItems[index].image),
                        radius: 24,
                      ),
                      title: Text(cartItems[index].name),
                      subtitle: Text(cartItems[index].price),
                      trailing: IconButton(
                        onPressed: () {
                          removeItemFromCart(cartItems[index]);
                        },
                        icon: Icon(Icons.delete_forever_outlined),
                        color: Colors.red,
                      ),
                    ),
                  )),
            ),
    );
  }
}
