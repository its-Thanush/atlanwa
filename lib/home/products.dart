import 'package:flutter/material.dart';
class Products extends StatelessWidget {
  final String title, img;
  final int price;
  const Products({super.key,required this.title,required this.img,required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),

        color: Colors.white,
        border: Border.all(
          color: Theme.of(context).colorScheme.primary.withOpacity(.2),
          width: 3
        )
      ),
      child: Row(
        children: [
         Container(
           padding: EdgeInsets.all(15),
           margin: EdgeInsets.only(right: 15),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(15),
             color: Colors.white,
               boxShadow:[
                 BoxShadow(
                   offset: Offset(0,5),
                   color: Theme.of(context).colorScheme.primary.withOpacity(.15),
                   spreadRadius: 5,
                   blurRadius: 5,
                 )
               ]
           ),
           child: Image.asset('assets/images/$img',height: 30),
         ),
          Expanded(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [

                  Text(title,style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold
                  ),),
                  Text('with Delivery',
                    style: TextStyle(fontWeight: FontWeight.w300) ,),
                  SizedBox(height: 5,),
                  Row(
                    children: [

                      Text('\$ $price',style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(width: 15,),
                      Text('\$ ${price+ 10}',style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w300,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough
                      ),),

                    ],
                  )
                ],
              )
          ),
          Icon(Icons.shopping_cart,color: Colors.grey,size: 30,),
        ],
      ),
    );
  }
}
