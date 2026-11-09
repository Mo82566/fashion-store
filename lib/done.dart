import 'package:fashion_store/data.dart';
import 'package:flutter/material.dart';

class Done extends StatefulWidget {
  const Done({super.key});

  @override
  State<Done> createState() => _DoneState();
}

class _DoneState extends State<Done> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 80),
            Center(
              child: Text(
                "Style Home.",
                style: TextStyle(fontSize: 25, color: Colors.blueAccent),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Text(
                "Thank you for your order.",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            SizedBox(height: 50),
            Center(
              child: Image.asset(
                "images/done2.png",
                fit: BoxFit.cover,
                width: 200,
                height: 200,
              ),
            ),
            SizedBox(height: 50),
            Center(
              child: Text(
                "Payment success!",
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Text(
                "Your order has been placed.",
                style: TextStyle(fontSize: 17, color: Colors.grey[800]),
              ),
            ),
            Center(
              child: Text(
                "An email confirmation will be sent.",
                style: TextStyle(fontSize: 17, color: Colors.grey[800]),
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: Text(
                "Reference: 16155619",
                style: TextStyle(fontSize: 19, color: Colors.black),
              ),
            ),
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: MaterialButton(
                height: 60,
                minWidth: double.infinity,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(60),
                ),
                color: Colors.grey[100],
                onPressed: () {},
                child: Text(
                  "Track Order",
                  style: TextStyle(color: Colors.black, fontSize: 23),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: MaterialButton(
                height: 60,
                minWidth: double.infinity,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(60),
                ),
                color: Colors.blue,
                onPressed: () {
                  itemscart.clear();
                  Navigator.of(
                    context,
                  ).pushNamedAndRemoveUntil("home", (route) => false);
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Text(
                        "Continue Shopping",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 23),
                      ),
                      Positioned(
                        right: 0,
                        child: Icon(Icons.arrow_forward, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
