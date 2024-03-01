import 'package:atlanwa/home/homescreen.dart';
import 'package:flutter/material.dart';
class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(

      color: Colors.deepOrange.shade300,
      child:Padding(
        padding: const EdgeInsets.only(top: 50,left: 30,bottom: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget> [
            Row(
              children: <Widget> [
             CircleAvatar(
               child: ClipRRect(
               borderRadius: BorderRadius.circular(20),
                 child: const Image (
                fit: BoxFit.cover,
                  image: AssetImage('assets/images/person.jpg'),

        ),
      ),
    ),
                 const SizedBox(width: 10,),
                   const Text('Thanush',
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,decoration: TextDecoration.none,
                   ),

              ),
                const SizedBox(width: 160,),
                IconButton(
                 onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (_) => const HomeScreen()));
                },
                  icon: const Icon(Icons.arrow_forward_ios_sharp,
                    size: 30,
                  color: Colors.white,
                  ),

                    ),
                 ],
            ),
                const Column(
                  children: <Widget>[
                    NewRow(

                      text: 'Profile',

                    icon: Icons.person,

                    ),
                    SizedBox(
                      height: 20,
                    ),
                    NewRow(
                      text: 'Messages',
                      icon: Icons.messenger,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    NewRow(
                      text: 'Cart',
                      icon: Icons.shopping_cart,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    NewRow(
                      text: 'Wishlist',

                      icon: Icons.list_alt,
                    ),
                    SizedBox(

                      height: 20,
                    ),
                    NewRow(
                      text: 'Favorites',
                      icon: Icons.favorite,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    NewRow(
                      text: 'Hint',
                      icon: Icons.lightbulb,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    NewRow(
                      text: 'Setting',
                      icon: Icons.settings,
                    ),
                    SizedBox(
                      height: 20,
                    ),

                  ],
                ),
            Row(
              children: <Widget>[
                Icon(Icons.cancel,
                color: Colors.white.withOpacity(0.5),
                ),
                const SizedBox(width: 20),
                Text('Log out',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),fontSize: 20,decoration: TextDecoration.none,
                )
                ),
              ],
            )
              ],
            ),

        ),

      );


  }
}

class NewRow extends StatelessWidget {
  final IconData icon;
  final String text;
  const NewRow({
    super.key, required this.icon, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
        color: Colors.white,
        ),
        Text(
             text,
          style: const TextStyle(color: Colors.white,fontSize: 20,decoration: TextDecoration.none),
        ),
      ],
    );
  }
}
