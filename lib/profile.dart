import 'package:fashion_store/cart.dart';
import 'package:fashion_store/favorites.dart';
import 'package:fashion_store/home.dart';
import 'package:fashion_store/products.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Profile"),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
          if (value == 3) {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => Cart()));
          }
        },
        currentIndex: 4,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Center(
            child: Container(
              height: 115,
              width: 115,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(70),
              ),
              child: Image.asset(
                "images/me.png",
                fit: BoxFit.cover,
                height: 95,
                width: 60,
                alignment: AlignmentGeometry.center,
              ),
            ),
          ),
          SizedBox(height: 10),
          Column(
            children: [
              Center(
                child: Text(
                  "Mohamed Maher",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 1),
              Center(
                child: Text(
                  "@mohamedmaher10",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15),
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.black,
                  height: 50,
                  minWidth: 170,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(8),
                  ),
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Divider(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.only(top: 5, left: 20, right: 20),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(Icons.settings),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Settings",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(Icons.chevron_right, size: 30),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.only(top: 5, left: 20, right: 20),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(Icons.receipt_long_outlined),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "My Orders",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(Icons.chevron_right, size: 30),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.only(top: 5, left: 20, right: 20),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(Icons.location_on_outlined),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Address",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(Icons.chevron_right, size: 30),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.only(top: 5, left: 20, right: 20),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(Icons.lock_outline),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Change Password",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(Icons.chevron_right, size: 30),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.only(top: 5, left: 20, right: 20),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(Icons.help_outline),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Help & Support",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(Icons.chevron_right, size: 30),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(
                        context,
                      ).pushNamedAndRemoveUntil("login", (route) => false);
                    },
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      margin: EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(Icons.logout, color: Colors.red),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              "Log out",
                              style: TextStyle(color: Colors.red, fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
