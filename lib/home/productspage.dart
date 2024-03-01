import 'package:atlanwa/home/products.dart';
import 'package:atlanwa/imageslider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class productpage extends StatelessWidget {
  const productpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                 Container(
                   decoration: const BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.only(
                       bottomLeft: Radius.circular(30),
                       bottomRight: Radius.circular(30),
                     )
                       ),
                  child: Stack(
                    children: [
                      const Center(
                        child: ProductImageSlider(),),
                      Padding(padding: const EdgeInsets.only(left: 15,top: 20 ),
                      child: InkWell(
                        onTap: (){
                           Navigator.pop(context);
                                },
                         child: const Icon(
                                  Icons.arrow_back_ios_new,
                                color: Colors.grey,
                                size: 25,
                                 ) ,
                          ),
                          ),

                          ],
                          ),

                          ),
            const SizedBox(height: 10,),
             Padding(padding: const EdgeInsets.all(20),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 const Text('3D Printer',
                 style: TextStyle(
                   fontSize: 22,
                   fontWeight: FontWeight.bold,
                 ),
                 ),
                 const SizedBox(height: 10,),
                 Row(
                   children: [
                     RatingBar.builder(
                       initialRating: 3.5,
                       minRating: 1,
                       direction: Axis.horizontal,
                       allowHalfRating: true,
                       itemCount: 5,
                       itemSize: 25,
                       itemBuilder: (context,_) => const Icon(
                         Icons.star,
                         color: Colors.amber,
                       ),
                       onRatingUpdate: (rating){},
                     ),
                     const SizedBox(width: 5,),
                     const Text('(7)'),
                   ],
                 ),
                 const SizedBox(height: 15,),
                 const Row(
                   children: [
                     Text('\$662',
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 22,
                     ),
                     ),
                     SizedBox(width: 7,),
                     Text('\$672',
                       style: TextStyle(
                         color: Colors.black,
                         decoration: TextDecoration.lineThrough,

                       ),
                     ),
                   ],
                 ),
                 const SizedBox(height: 20,),
                 const Text('With our belief in the ingenuity of our creators, we have launched an online service with the tagline “Your Ideas-Our Parts“, enabling us to bring your innovative concepts to life at the most affordable 3D printing price in India.',
                 style: TextStyle(fontSize: 16),
                   textAlign: TextAlign.justify,
                 ),
                 const SizedBox()
               ],
             ),
             )
          ],

        ),
        ),
      bottomNavigationBar: Container(
        height: 70,
        margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.deepOrange.shade300,
                ),
                child: const Center(
                  child: Text('Add to Cart',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFD4ECF7),
                ),
                child: Center(
                  child: Icon(
                    Icons.favorite_outline,
                    color: Colors.deepOrange.shade300,
                    size: 30,

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
