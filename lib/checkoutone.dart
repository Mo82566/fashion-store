// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:fashion_store/checkouttwo.dart';
import 'package:flutter/material.dart';

class Checkoutone extends StatefulWidget {
  final num items;
  final num itemsprice;

  const Checkoutone({super.key, required this.items, required this.itemsprice});

  @override
  State<Checkoutone> createState() => _CheckoutoneState();
}

class _CheckoutoneState extends State<Checkoutone> {
  int selected1 = 0;
  int selected2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Checkout"),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                height: 75,
                padding: EdgeInsets.only(left: 20, right: 20),
                margin: EdgeInsets.only(right: 20, left: 20),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.local_shipping_outlined, size: 30),
                        SizedBox(width: 20),
                        Expanded(child: Divider(color: Colors.grey)),
                        SizedBox(width: 20),
                        Icon(
                          Icons.payment_outlined,
                          size: 30,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 20),
                        Expanded(child: Divider(color: Colors.grey)),
                        SizedBox(width: 20),
                        Icon(
                          Icons.receipt_long_outlined,
                          size: 30,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Shipping",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Payment",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        Text(
                          "Review",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    Text(
                      "ADDRESS",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Container(child: Icon((Icons.add))),
                        Container(
                          child: Text(
                            "Add New",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  setState(() {
                    selected1 = 1;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(8),
                    border: selected1 == 1
                        ? Border.all(color: Colors.black, width: 1)
                        : Border.all(color: Colors.white, width: 0),
                  ),
                  margin: EdgeInsets.only(left: 20, right: 20),
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 20,
                    right: 20,
                    bottom: 10,
                  ),
                  height: 120,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "My Home",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "Al-Hala Area, Mansoura \nDakahlia, Egypt",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        ],
                      ),
                      Spacer(),
                      MaterialButton(
                        onPressed: () {},
                        color: Colors.grey[200],
                        child: Text(
                          "Edit",
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  setState(() {
                    selected1 = 2;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(8),
                    border: selected1 == 2
                        ? Border.all(color: Colors.black, width: 1)
                        : Border.all(color: Colors.white, width: 0),
                  ),
                  margin: EdgeInsets.only(left: 20, right: 20),
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 20,
                    right: 20,
                    bottom: 10,
                  ),
                  height: 120,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Office",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "El-Gomhoria Street, \nMansoura, Dakahlia, Egypt",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        ],
                      ),
                      Spacer(),
                      MaterialButton(
                        onPressed: () {},
                        color: Colors.grey[200],
                        child: Text(
                          "Edit",
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Text(
                  "DELIVERY ESTIMATE",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  setState(() {
                    selected2 = 1;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(8),
                    border: selected2 == 1
                        ? Border.all(color: Colors.black, width: 1)
                        : Border.all(color: Colors.white, width: 0),
                  ),
                  margin: EdgeInsets.only(left: 20, right: 20),
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 20,
                    right: 20,
                    bottom: 10,
                  ),
                  height: 120,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Icon(
                              Icons.local_shipping_outlined,
                              size: 50,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 25),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "Instant Delivery",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "30-40 Min",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  setState(() {
                    selected2 = 2;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(8),
                    border: selected2 == 2
                        ? Border.all(color: Colors.black, width: 1)
                        : Border.all(color: Colors.white, width: 0),
                  ),
                  margin: EdgeInsets.only(left: 20, right: 20),
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 20,
                    right: 20,
                    bottom: 10,
                  ),
                  height: 120,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Icon(Icons.airport_shuttle, size: 50),
                          ),
                        ],
                      ),
                      SizedBox(width: 25),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "Standard Delivery",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Same day",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 15),
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
                    if (selected1 > 0 && selected2 > 0) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Checkouttwo(
                            items: widget.items,
                            itemsprice: widget.itemsprice,
                            selected1: selected1,
                            selected2: selected2,
                          ),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Please select an address and delivery method",
                          ),
                        ),
                      );
                    }
                  },
                  color: Colors.blue,
                  child: Text(
                    "Next",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
