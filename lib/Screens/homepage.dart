import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/utils/cartmodal.dart';
import 'package:provider/provider.dart';

import '../utils/grocery_tile.dart';
import 'cartpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const CartPage();
        })),
        backgroundColor: Colors.black,
        child: Icon(
          Icons.shopping_bag,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Good Morning",
                  style: GoogleFonts.notoSerif(fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Let's order fresh item for you",
                  style: GoogleFonts.notoSerif(fontSize: 40),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                thickness: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Fresh items",
                  style: GoogleFonts.notoSerif(fontSize: 15),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(child: Consumer<Cart_Modal>(
              builder: (context, value, child) {
                return GridView.builder(
                  itemCount: value.Shopitem.length,
                  padding: const EdgeInsets.all(12),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1 / 1.3),
                  itemBuilder: (context, index) {
                    return GroceryItemsTile(
                      itemName: value.Shopitem[index][0],
                      itemPrice: value.Shopitem[index][1],
                      imagepath: value.Shopitem[index][2],
                      color: value.Shopitem[index][3],
                      onPressed: () {
                        Provider.of<Cart_Modal>(context, listen: false)
                            .addItemToCart(index);
                      },
                    );
                  },
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
