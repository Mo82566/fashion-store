// ignore_for_file: unused_local_variable, unused_import

import 'package:fashion_store/cart.dart';
import 'package:flutter/material.dart';
import 'package:fashion_store/data.dart';

class Productdetails extends StatefulWidget {
  final String photo;
  final String name;
  final int price;
  final String description;
  final String rating;
  final List<int> colors;

  const Productdetails({
    super.key,
    required this.photo,
    required this.name,
    required this.price,
    required this.description,
    required this.rating,
    required this.colors,
  });

  @override
  State<Productdetails> createState() => _ProductdetailsState();
}

class _ProductdetailsState extends State<Productdetails> {
  bool favorites = false;
  String selectedSize = "M";
  late int selectedColor;
  @override
  void initState() {
    super.initState();
    selectedColor = widget.colors.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Product Details"),
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (itemfav.any((item) => item['name'] == widget.name)) {
                        itemfav.removeWhere(
                          (item) => item['name'] == widget.name,
                        );
                        favorites = false;
                      } else {
                        itemfav.add({
                          'photo': widget.photo,
                          'name': widget.name,
                          'price': widget.price,
                          'description': widget.description,
                          'rating': widget.rating,
                          "colors": widget.colors,
                        });
                        favorites = true;
                      }
                    });
                  },
                  icon: favorites == true
                      ? Icon(Icons.favorite)
                      : Icon(Icons.favorite_border_outlined),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      Navigator.of(
                        context,
                      ).push(MaterialPageRoute(builder: (context) => Cart()));
                    });
                  },
                  icon: Icon(Icons.shopping_bag_outlined),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
              ),
              alignment: Alignment.center,
              margin: EdgeInsets.only(right: 20, left: 20),
              height: 360,
              width: double.infinity,
              child: Image.asset(widget.photo, fit: BoxFit.cover),
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              height: 500,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      widget.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      ("${widget.price}\$"),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 3),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 15),
                    child: Text(widget.rating, style: TextStyle(fontSize: 17)),
                  ),
                  SizedBox(height: 3),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      widget.description,
                      style: TextStyle(fontSize: 17, color: Colors.grey[600]),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Color",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.only(left: 15, top: 5),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: widget.colors.map((colorValue) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedColor = colorValue;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(left: 8),
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Color(colorValue),
                                shape: BoxShape.circle,
                                border: selectedColor == colorValue
                                    ? Border.all(color: Colors.blue, width: 3)
                                    : null,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15, left: 15),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Size",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: MaterialButton(
                          minWidth: 45,
                          shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          onPressed: () {
                            setState(() {
                              selectedSize = "XS";
                            });
                          },
                          color: selectedSize == "XS"
                              ? Colors.black
                              : Colors.grey[100],
                          child: Text(
                            "XS",
                            style: TextStyle(
                              color: selectedSize == "XS"
                                  ? Colors.white
                                  : Colors.grey[800],
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: MaterialButton(
                          minWidth: 45,
                          shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          onPressed: () {
                            setState(() {
                              selectedSize = "S";
                            });
                          },
                          color: selectedSize == "S"
                              ? Colors.black
                              : Colors.grey[100],
                          child: Text(
                            "S",
                            style: TextStyle(
                              color: selectedSize == "S"
                                  ? Colors.white
                                  : Colors.grey[800],
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: MaterialButton(
                          minWidth: 45,
                          shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          onPressed: () {
                            setState(() {
                              selectedSize = "M";
                            });
                          },
                          color: selectedSize == "M"
                              ? Colors.black
                              : Colors.grey[100],
                          child: Text(
                            "M",
                            style: TextStyle(
                              color: selectedSize == "M"
                                  ? Colors.white
                                  : Colors.grey[800],
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: MaterialButton(
                          minWidth: 45,
                          shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          onPressed: () {
                            setState(() {
                              selectedSize = "L";
                            });
                          },
                          color: selectedSize == "L"
                              ? Colors.black
                              : Colors.grey[100],
                          child: Text(
                            "L",
                            style: TextStyle(
                              color: selectedSize == "L"
                                  ? Colors.white
                                  : Colors.grey[800],
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: MaterialButton(
                          minWidth: 45,
                          shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          onPressed: () {
                            setState(() {
                              selectedSize = "XL";
                            });
                          },
                          color: selectedSize == "XL"
                              ? Colors.black
                              : Colors.grey[100],
                          child: Text(
                            "XL",
                            style: TextStyle(
                              color: selectedSize == "XL"
                                  ? Colors.white
                                  : Colors.grey[800],
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 50,
                      minWidth: double.infinity,
                      onPressed: () {
                        int quantity = 1;
                        itemscart.add({
                          "photo": widget.photo,
                          "name": widget.name,
                          "price": widget.price,
                          "description": widget.description,
                          "rating": widget.rating,
                          "quantity": quantity,
                          "size": selectedSize,
                          "color": selectedColor,
                        });
                      },
                      color: Colors.black,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(width: 1),
                          Text(
                            " Add to Cart",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
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
  }
}
