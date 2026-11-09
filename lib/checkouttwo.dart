// ignore_for_file:avoid_unnecessary_containers

import 'package:fashion_store/checkoutthree.dart';
import 'package:flutter/material.dart';

class Checkouttwo extends StatefulWidget {
  final num items;
  final num itemsprice;
  final int selected1;
  final int selected2;

  const Checkouttwo({
    super.key,
    required this.items,
    required this.itemsprice,
    required this.selected1,
    required this.selected2,
  });

  @override
  State<Checkouttwo> createState() => _CheckouttwoState();
}

class _CheckouttwoState extends State<Checkouttwo> {
  TextEditingController cardnumber = TextEditingController();
  TextEditingController expiration = TextEditingController();
  TextEditingController securitycode = TextEditingController();
  TextEditingController vouchercode = TextEditingController();
  GlobalKey<FormState> globalKey = GlobalKey();
  bool ischecked = false;
  int isselected = 0;

  @override
  void dispose() {
    cardnumber.dispose();
    expiration.dispose();
    securitycode.dispose();
    vouchercode.dispose();
    super.dispose();
  }

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
          child: Form(
            key: globalKey,
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
                          Expanded(child: Divider(color: Colors.black)),
                          SizedBox(width: 20),
                          Icon(Icons.payment_outlined, size: 30),
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
                            style: TextStyle(fontWeight: FontWeight.bold),
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
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "PAYMENT METHOD",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          isselected = 1;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 20),
                        height: 110,
                        width: 175,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: isselected == 1
                              ? Border.all(color: Colors.black, width: 1)
                              : Border.all(color: Colors.white, width: 0),
                        ),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(left: 10),
                              child: Image.asset(
                                height: 65,
                                width: 65,
                                "images/card1.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                            Spacer(),
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(left: 10, bottom: 10),
                              child: Text(
                                "Credit Card",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isselected = 2;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 20),
                        height: 110,
                        width: 175,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: isselected == 2
                              ? Border.all(color: Colors.black, width: 1)
                              : Border.all(color: Colors.white, width: 0),
                        ),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(left: 10, top: 10),
                              child: Image.asset(
                                height: 45,
                                width: 45,
                                "images/card2.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                            Spacer(),
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(left: 10, bottom: 10),
                              child: Text(
                                "Virtual Account",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Card Number",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Enter the card number";
                      } else if (value.length != 16 ||
                          !RegExp(r'^\d+$').hasMatch(value)) {
                        return "Enter a valid card number";
                      }
                      return null;
                    },
                    controller: cardnumber,
                    keyboardType: TextInputType.numberWithOptions(),
                    decoration: InputDecoration(
                      hintText: "XXXX XXXX XXXX XXXX",
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              "Expiration",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            width: double.infinity,
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return "Enter the expiration";
                                } else if (value.length != 5 ||
                                    !RegExp(r'^\d{2}/\d{2}$').hasMatch(value)) {
                                  return "Enter a valid expiration";
                                } else if (int.parse(value.substring(0, 2)) <
                                        1 ||
                                    int.parse(value.substring(0, 2)) > 12) {
                                  return "Enter a valid expiration";
                                }
                                return null;
                              },
                              controller: expiration,
                              keyboardType: TextInputType.numberWithOptions(),
                              decoration: InputDecoration(
                                hintText: "mm/yy",
                                hintStyle: TextStyle(color: Colors.grey[400]),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Security Code",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.only(right: 20),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return "Enter the security Code";
                                } else if (value.length != 3 ||
                                    !RegExp(r'^\d+$').hasMatch(value)) {
                                  return "Enter a valid security Code";
                                }
                                return null;
                              },
                              controller: securitycode,
                              keyboardType: TextInputType.numberWithOptions(),
                              decoration: InputDecoration(
                                hintText: "xxx",
                                hintStyle: TextStyle(color: Colors.grey[400]),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Voucher Code",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Enter the voucher Code";
                      } else if (value.length != 5 ||
                          !RegExp(r'^\d+$').hasMatch(value)) {
                        return "Enter a valid voucher Code";
                      }
                      return null;
                    },
                    controller: vouchercode,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "XXXXX",
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(left: 10),
                      child: Checkbox(
                        checkColor: Colors.black,
                        activeColor: Colors.blue,
                        value: ischecked,
                        onChanged: (value) {
                          setState(() {
                            ischecked = value!;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "I have decided my shipping address to also \nserve as my billing address.",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
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
                      if (globalKey.currentState!.validate() &&
                          ischecked == true &&
                          isselected != 0) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Checkoutthree(
                              items: widget.items,
                              itemsprice: widget.itemsprice,
                              selected1: widget.selected1,
                              selected2: widget.selected2,
                            ),
                          ),
                        );
                      } else if (isselected == 0) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Please select a payment method."),
                          ),
                        );
                      } else if (ischecked == false) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              "Please confirm your billing address.",
                            ),
                          ),
                        );
                      }
                    },
                    color: Colors.blue,
                    child: Text(
                      "Confirm and continue",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
