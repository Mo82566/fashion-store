// ignore_for_file: unused_local_variable, avoid_unnecessary_containers

import 'package:fashion_store/cart.dart';
import 'package:fashion_store/data.dart';
import 'package:fashion_store/favorites.dart';
import 'package:fashion_store/home.dart';
import 'package:fashion_store/productdetails.dart';
import 'package:fashion_store/profile.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  final String? category;
  const Products({super.key, required this.category});

  @override
  State<Products> createState() => _ProductsState();
}

class Search extends SearchDelegate {
  final List<Map<String, dynamic>> items;
  Search({required this.items});
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: Icon(Icons.close),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final List result = items
        .where(
          (item) => item['name'].toLowerCase().contains(query.toLowerCase()),
        )
        .toList();
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: result.length,
        itemBuilder: (context, i) {
          return ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Productdetails(
                    photo: result[i]['photo'],
                    name: result[i]['name'],
                    price: result[i]['price'],
                    description: result[i]['description'],
                    rating: result[i]['rating'],
                    colors: List<int>.from(result[i]['colors']),
                  ),
                ),
              );
            },
            title: Text(result[i]['name']),
          );
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List result = items
        .where(
          (item) => item['name'].toLowerCase().contains(query.toLowerCase()),
        )
        .toList();
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: result.length,
        itemBuilder: (context, i) {
          return ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Productdetails(
                    photo: result[i]['photo'],
                    name: result[i]['name'],
                    price: result[i]['price'],
                    description: result[i]['description'],
                    rating: result[i]['rating'],
                    colors: List<int>.from(result[i]['colors']),
                  ),
                ),
              );
            },
            title: Text(result[i]['name']),
          );
        },
      ),
    );
  }
}

class _ProductsState extends State<Products> {
  @override
  void initState() {
    super.initState();

    if (widget.category == "all") {
      selected = 0;
    } else if (widget.category == "men") {
      selected = 1;
    } else if (widget.category == "women") {
      selected = 2;
    }
  }

  List<bool> favorites = List.filled(26, false);
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> filtereditems = [];
    if (selected == 0) {
      filtereditems.addAll(allitems);
    }
    if (selected == 1) {
      filtereditems.addAll(menItems);
    } else if (selected == 2) {
      filtereditems.addAll(womenItems);
    }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: Search(items: filtereditems),
                );
              },
              icon: Icon(Icons.search, fontWeight: FontWeight.bold),
            ),
          ),
        ],
        centerTitle: true,
        title: selected == 0
            ? Text(
                "All Products",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            : selected == 1
            ? Text(
                "Men Products",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            : selected == 2
            ? Text(
                "Women Products",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            : Text("Sale", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        onTap: (value) {
          if (value == 0) {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => Home()));
          }
          if (value == 2) {
            List<Map<String, dynamic>> fav = [];
            for (int i = 0; i < allitems.length; i++) {
              if (favorites[i] == true) {
                fav.add(allitems[i]);
              }
            }
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => Favorites()));
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
        currentIndex: 1,
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
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: selected == 0 ? Colors.black : Colors.grey[100],
                    onPressed: () {
                      setState(() {
                        selected = 0;
                      });
                    },
                    child: Text(
                      "All",
                      style: TextStyle(
                        color: selected == 0 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                  Spacer(),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: selected == 1 ? Colors.black : Colors.grey[100],
                    onPressed: () {
                      setState(() {
                        selected = 1;
                      });
                    },
                    child: Text(
                      "Men",
                      style: TextStyle(
                        color: selected == 1 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                  Spacer(),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: selected == 2 ? Colors.black : Colors.grey[100],
                    onPressed: () {
                      setState(() {
                        selected = 2;
                      });
                    },
                    child: Text(
                      "Women",
                      style: TextStyle(
                        color: selected == 2 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                  Spacer(),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: selected == 3 ? Colors.black : Colors.grey[100],
                    onPressed: () {
                      setState(() {
                        selected = 3;
                      });
                    },
                    child: Text(
                      "Sale",
                      style: TextStyle(
                        color: selected == 3 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              if (selected == 3)
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        "No sale currently",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              else
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: filtereditems.length,
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
                              photo: "${filtereditems[i]['photo']}",
                              name: "${filtereditems[i]['name']}",
                              price: filtereditems[i]['price'],
                              description: "${filtereditems[i]['description']}",
                              rating: "${filtereditems[i]['rating']}",
                              colors: List<int>.from(
                                filtereditems[i]['colors'],
                              ),
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
                                  "${filtereditems[i]['photo']}",
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
                                        if (favorites[i] == true) {
                                          itemfav.removeWhere(
                                            (item) =>
                                                item['name'] ==
                                                filtereditems[i]['name'],
                                          );
                                          favorites[i] = false;
                                        } else {
                                          itemfav.add({
                                            'photo': filtereditems[i]['photo'],
                                            'name': filtereditems[i]['name'],
                                            'price': filtereditems[i]['price'],
                                            'description':
                                                filtereditems[i]['description'],
                                            'rating':
                                                filtereditems[i]['rating'],
                                          });
                                          favorites[i] = true;
                                        }
                                      });
                                    },
                                    icon: favorites[i] == true
                                        ? Icon(Icons.favorite)
                                        : Icon(Icons.favorite_border_outlined),
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
                                    "${filtereditems[i]['name']}",
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
                                    "${filtereditems[i]['price']}",
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
            ],
          ),
        ),
      ),
    );
  }
}
