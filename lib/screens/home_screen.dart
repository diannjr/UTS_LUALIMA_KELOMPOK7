import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uts_lualimastuff/screens/homeAppBar.dart';
import 'package:uts_lualimastuff/widget/CategoriesWidget.dart';
import 'package:uts_lualimastuff/widget/ItemsWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        HomeAppBar(),
        Container(
          //height: 500,
          padding: const EdgeInsets.only(top: 15),
          decoration: const BoxDecoration(
            color: Color(0xffedecf2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    //Search
                    Container(
                      margin: const EdgeInsets.only(left: 15),
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search here..."),
                      ),
                    ),
                  ],
                ),
              ),

              //Catagories
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 10,
                ),
                child: const Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 133, 15, 176),
                  ),
                ),
              ),
              const Categories(),

              //Items
              Container(
                alignment: Alignment.centerLeft,
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: const Text(
                  'New Product',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 133, 15, 176),
                  ),
                ),
              ),

              ItemsWidget(),
            ],
          ),
        ),
      ]),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {},
        height: 65,
        color: Color.fromARGB(255, 133, 15, 176),
        items: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "homePage");
            },
            child: Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "cartPage");
            },
            child: Icon(
              CupertinoIcons.cart_fill,
              size: 30,
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "aboutPage");
            },
            child: Icon(
              Icons.settings,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
