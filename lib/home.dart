// ignore_for_file: unused_local_variable, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:fashion_store/cart.dart';
import 'package:fashion_store/data.dart';
import 'package:fashion_store/favorites.dart';
import 'package:fashion_store/productdetails.dart';
import 'package:fashion_store/products.dart';
import 'package:fashion_store/profile.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class Search extends SearchDelegate {
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
    final List result = allitems
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
    final List result = allitems
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

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        onTap: (value) {
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
        currentIndex: 0,
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
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(height: 60),
              Row(
                children: [
                  Text(
                    "   F A S H I O N",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      showSearch(context: context, delegate: Search());
                    },
                    icon: Icon(Icons.search),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(
                        context,
                      ).push(MaterialPageRoute(builder: (context) => Cart()));
                    },
                    icon: Icon(Icons.shopping_bag_outlined),
                  ),
                ],
              ),
              Container(height: 10),
              Stack(
                children: [
                  Container(
                    height: 350,
                    color: Colors.grey[350],
                    width: double.infinity,
                    child: Image.asset("images/9.png", fit: BoxFit.cover),
                  ),
                  Positioned(
                    top: 170,
                    left: 30,
                    child: Text(
                      "NEW COLLECTION",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                  Positioned(
                    top: 190,
                    left: 30,
                    child: Text(
                      "TimeLess",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 213,
                    left: 30,
                    child: Text(
                      "Style",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 250,
                    left: 30,
                    child: Text(
                      "Classic pieces. Modern attitude.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 278,
                    left: 30,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(6),
                      ),
                      minWidth: 100,
                      color: Colors.white,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Products(category: "all"),
                          ),
                        );
                      },
                      child: Text(
                        "Shop Now",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 6),
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 6),
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 6),
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 6),
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    MaterialButton(
                      height: 40,
                      minWidth: 100,
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(30),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Products(category: "men"),
                          ),
                        );
                      },
                      child: Text(
                        "Men",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 50),
                    MaterialButton(
                      height: 40,
                      minWidth: 100,
                      color: Colors.grey[350],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(30),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Products(category: "women"),
                          ),
                        );
                      },
                      child: Text(
                        "Women",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          height: 150,
                          width: 180,
                          color: Colors.grey[400],
                          child: Image.asset(
                            "images/11.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          width: 180,
                          height: 50,
                          color: Colors.grey[350],
                          child: Column(
                            children: [
                              SizedBox(height: 3),
                              Container(
                                padding: EdgeInsets.only(left: 6),
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Men",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          Products(category: "men"),
                                    ),
                                  );
                                },
                                child: Container(
                                  padding: EdgeInsets.only(left: 6),
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    children: [
                                      Text(
                                        "Shop now",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      SizedBox(width: 3),
                                      Icon(Icons.arrow_forward, size: 20),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          height: 150,
                          width: 180,
                          color: Colors.grey[400],
                          child: Image.asset(
                            "images/10.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          width: 180,
                          height: 50,
                          color: Colors.grey[350],
                          child: Column(
                            children: [
                              SizedBox(height: 3),
                              Container(
                                padding: EdgeInsets.only(left: 6),
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Women",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          Products(category: "women"),
                                    ),
                                  );
                                },
                                child: Container(
                                  padding: EdgeInsets.only(left: 6),
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    children: [
                                      Text(
                                        "Shop now",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      SizedBox(width: 3),
                                      Icon(Icons.arrow_forward, size: 20),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Featured Products",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Products(category: "all"),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.only(right: 15),
                      child: Text(
                        " See All",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              GridView.builder(
                padding: EdgeInsets.only(top: 20),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 370,
                ),
                itemCount: itemhome.length,
                itemBuilder: (context, i) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Productdetails(
                            photo: allitems[i]['photo'],
                            name: allitems[i]['name'],
                            price: allitems[i]['price'],
                            description: allitems[i]['description'],
                            rating: allitems[i]['rating'],
                            colors: List<int>.from(allitems[i]['colors']),
                          ),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            height: 250,
                            width: 180,
                            color: Colors.grey[200],
                            child: Image.asset(
                              itemhome[i]['photo'],
                              fit: BoxFit.cover,
                              height: 200,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 6, left: 3),
                            margin: EdgeInsets.only(left: 10, right: 10),
                            height: 100,
                            width: 180,
                            color: Colors.grey[200],
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 2),
                                Container(
                                  width: 180,
                                  child: Text(
                                    itemhome[i]['name'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 1),
                                Container(
                                  child: Text(
                                    itemhome[i]['collection'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 1),
                                Container(
                                  child: Text(
                                    "${itemhome[i]['price']}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 1),
                                Container(
                                  child: Text(
                                    itemhome[i]['rating'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
