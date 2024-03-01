import 'dart:ffi';

import 'package:atlanwa/drawerscreen.dart';
import 'package:atlanwa/home/itemcategory.dart';
import 'package:atlanwa/home/itemprojects.dart';
import 'package:atlanwa/home/products.dart';
import 'package:atlanwa/home/productspage.dart';
import 'package:atlanwa/home/profilescreen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  bool isDrawerOpen = false;

  int index = 2;

  final Category = [
    'Shop',
    'Drone',
    'BMS',
    '3D Printing',
    'Roberts',
    'Support',
  ];

  ValueNotifier<int> activeCategory = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,

      body: AnimatedContainer(
        transform: Matrix4.translationValues(xOffset, yOffset, 0)
          ..scale(isDrawerOpen ? 0.85 : 1.00)
          ..rotateZ(isDrawerOpen ? -50 : 0),
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: isDrawerOpen ? BorderRadius.circular(40) : BorderRadius.circular(0),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 50,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    isDrawerOpen
                        ? GestureDetector(

                      child: const Icon(Icons.arrow_back_ios),
                      onTap: () {
                        setState(() {
                          xOffset = 0;
                          yOffset = 0;
                          isDrawerOpen = false;
                        });
                      },
                    )
                        : GestureDetector(
                             child: const Icon(Icons.menu),
                          onTap: () { Navigator.push(context, MaterialPageRoute(builder: (_) => const DrawerScreen()));
                        setState(() {
                          xOffset = 290;
                          yOffset = 80;
                          isDrawerOpen = true;
                        });
                      },
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundImage:AssetImage('assets/images/person.jpg'),
                      

                    ),
                  ],

                ),
              ),

              const SizedBox(height: 20),
              SizedBox(
                height: 30,
                child: ValueListenableBuilder<int>(
                  valueListenable: activeCategory,
                  builder: (context, active, _) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Category.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () => activeCategory.value = index,
                          child: ItemCategory(title: Category[index], isActive: active == index),
                        );
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Text(
                    'Our Products',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) =>  const productpage()));
                      },
                      child: const ItemProjects(thumbnail: "thumbnail.png"),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => const productpage()));
                      },
                      child: const ItemProjects(thumbnail: "laser1.jpg"),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => const productpage()));
                      },
                      child: const ItemProjects(thumbnail: "acess.jpg"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Text(
                    'Suggestion',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),

                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Products(title: 'Drone', img: 'drone.jpg', price: 542),
              const Products(title: '3D Printers', img: 'printer.jpg', price: 662),
              const Products(title: 'Motors', img: 'stepper.jpg', price: 108),
              const Products(title: 'CNC', img: 'stepper.jpg', price: 900),
              const Products(title: 'Filaments', img: 'stepper.jpg', price: 900),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: index,
        height: 60,
        backgroundColor: Colors.transparent,
        color: Colors.deepOrange.shade300,
        items: const [
          Icon(Icons.search),
          Icon(Icons.favorite),
          Icon(Icons.home),
          Icon(Icons.notifications),
          Icon(Icons.settings),
        ],
        onTap: (int tappedIndex) {
          setState(() {
            index = tappedIndex;

            switch (index) {
              case 0:

                break;
              case 1:

                break;
              case 2:

                break;


              case 4:
                Navigator.push(context, MaterialPageRoute(builder: (_) => const profilescreen()));
                // Handle settings button tap
                break;
            }
          });
        },
      ),
    );
  }
}