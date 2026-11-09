import 'package:fashion_store/cart.dart';
import 'package:fashion_store/home.dart';
import 'package:fashion_store/productdetails.dart';
import 'package:fashion_store/products.dart';
import 'package:fashion_store/profile.dart';
import 'package:flutter/material.dart';
import 'package:fashion_store/data.dart';

class Favorites extends StatefulWidget {
  const Favorites({super.key});

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Favorites"),
        titleTextStyle: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                setState(() {
                  itemfav.clear();
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
          if (value == 3) {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => Cart()));
          }
          if (value == 4) {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => Profile()));
          }
        },
        currentIndex: 2,
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
      body: itemfav.isEmpty
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "No favorites yet",
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
          : SingleChildScrollView(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: itemfav.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 340,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, i) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Productdetails(
                            photo: "${itemfav[i]['photo']}",
                            name: "${itemfav[i]['name']}",
                            price: itemfav[i]['price'],
                            description: "${itemfav[i]['description']}",
                            rating: "${itemfav[i]['rating']}",
                            colors: List<int>.from(itemfav[i]['colors']),
                          ),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 250,
                          width: 180,
                          color: Colors.grey[200],
                          child: Stack(
                            children: [
                              Image.asset(
                                "${itemfav[i]['photo']}",
                                fit: BoxFit.cover,
                                height: 250,
                                width: double.infinity,
                              ),
                              Positioned(
                                right: 0,
                                top: 0,
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      itemfav.remove(itemfav[i]);
                                    });
                                  },
                                  icon: Icon(Icons.favorite),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 80,
                          width: 180,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 2),
                              Container(
                                padding: EdgeInsets.only(left: 15),
                                width: 180,
                                child: Text(
                                  "${itemfav[i]['name']}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              SizedBox(height: 1),
                              Container(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  "${itemfav[i]['price']}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(height: 1),
                              Container(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  "M, L, XL",
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
    );
  }
}
