// ignore_for_file: unused_import, avoid_unnecessary_containers

import 'package:fashion_store/checkoutone.dart';
import 'package:fashion_store/favorites.dart';
import 'package:fashion_store/home.dart';
import 'package:fashion_store/products.dart';
import 'package:fashion_store/profile.dart';
import 'package:flutter/material.dart';
import 'package:fashion_store/data.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  String colorName(int color) {
    if (color == 0xFF000000) return "Black";
    if (color == 0xFFFFFFFF) return "White";
    if (color == 0xFF808080) return "Gray";
    if (color == 0xFF4169E1) return "Blue";
    if (color == 0xFFB22222) return "Red";
    return "Unknown";
  }

  @override
  Widget build(BuildContext context) {
    num subtotal = 0;
    num total = 0;
    for (int i = 0; i < itemscart.length; i++) {
      subtotal += itemscart[i]['price'] * itemscart[i]['quantity'];
    }
    total = subtotal + 50;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Your Cart"),
        titleTextStyle: TextStyle(
          fontSize: 25,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                setState(() {
                  itemscart.clear();
                });
              },
              icon: Icon(Icons.delete),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        onTap: (value) {
          if (value == 0) {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => Home()));
          }
          if (value == 1) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Products(category: "all"),
              ),
            );
          }

          if (value == 2) {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => Favorites()));
          }
          if (value == 4) {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => Profile()));
          }
        },
        currentIndex: 3,
        type: BottomNavigationBarType.fixed,

        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inventory_2),
            label: "Products",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: "Profile",
          ),
        ],
      ),
      body: itemscart.isEmpty
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "No Items yet",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 60,
                  width: double.infinity,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 50,
                    minWidth: double.infinity,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Products(category: "all"),
                        ),
                      );
                    },
                    color: Colors.blue,
                    child: Text(
                      "Browse Products",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisExtent: 215,
                    ),
                    itemCount: itemscart.length,
                    itemBuilder: (context, i) {
                      return Column(
                        children: [
                          Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 200,
                                  width: 150,
                                  margin: EdgeInsets.only(left: 15),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Image.asset(
                                    itemscart[i]['photo'],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                left: 10,
                                              ),
                                              child: Text(
                                                itemscart[i]['name'],
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17,
                                                ),
                                              ),
                                            ),
                                          ),

                                          IconButton(
                                            onPressed: () {
                                              setState(() {
                                                itemscart.remove(itemscart[i]);
                                              });
                                            },
                                            icon: Icon(Icons.close),
                                            iconSize: 20,
                                            visualDensity:
                                                VisualDensity.compact,
                                          ),
                                        ],
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          "Size: ${itemscart[i]['size']} | ${colorName(itemscart[i]['color'])}",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                          left: 10,
                                          top: 2,
                                        ),
                                        child: Text(
                                          "${itemscart[i]['price']}\$",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                          left: 10,
                                          top: 5,
                                        ),
                                        child: Row(
                                          children: [
                                            MaterialButton(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadiusGeometry.circular(
                                                      10,
                                                    ),
                                              ),
                                              color: Colors.grey[100],
                                              minWidth: 40,
                                              onPressed: () {
                                                setState(() {
                                                  itemscart[i]['quantity']++;
                                                });
                                              },
                                              child: Icon(Icons.add),
                                            ),
                                            SizedBox(width: 2),
                                            Container(
                                              alignment: Alignment.center,
                                              height: 38,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                color: Colors.grey[100],
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Text(
                                                itemscart[i]['quantity']
                                                    .toString(),
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 2),
                                            MaterialButton(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadiusGeometry.circular(
                                                      10,
                                                    ),
                                              ),
                                              color: Colors.grey[100],
                                              minWidth: 40,
                                              onPressed: () {
                                                setState(() {
                                                  if (itemscart[i]['quantity'] >
                                                      1) {
                                                    itemscart[i]['quantity']--;
                                                  }
                                                });
                                              },
                                              child: Icon(Icons.remove),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Subtotal",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(right: 15),
                          child: Text(
                            "$subtotal\$",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Shipping",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(right: 15),
                          child: Text(
                            "50\$",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                    Divider(),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Total",
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(right: 15),
                          child: Text(
                            "$total\$",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.only(left: 15, right: 15),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 50,
                    minWidth: double.infinity,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Checkoutone(
                            items: itemscart.length,
                            itemsprice: subtotal,
                          ),
                        ),
                      );
                    },
                    color: Colors.black,
                    child: Container(
                      child: Text(
                        "Checkout",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
