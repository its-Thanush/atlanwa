import 'package:atlanwa/home/homescreen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
class welcome1 extends StatelessWidget {
  const welcome1({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('A T L A N W A',style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text('Limitless Possibilities to Innovation',style: Theme.of(context).textTheme.displayMedium?.copyWith(fontWeight: FontWeight.w300,fontSize: 32)),
            const SizedBox(height: 17),
            const Text('Once you place order on Atlanwa your installation request will be generated post-delivery and our expert engineers will guide you through user manual'),
            const SizedBox(height: 10,),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const HomeScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange.shade300,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
              ),

              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Explore'),
            ),
            const SizedBox(height: 20,),
            Expanded(
                child: Image.asset('assets/images/white.jpg',
                  height: 900,
                  width: 900,),
            ),
            const SizedBox(height: 50,)

          ],
        ),
      ),

    );
  }
}
