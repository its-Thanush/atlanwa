import 'package:flutter/material.dart';
class ItemProjects extends StatelessWidget {
  final String thumbnail;
  const ItemProjects({super.key, required this.thumbnail});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(right: 25),
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(10),

        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/$thumbnail')
        )
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow:[
            BoxShadow(
              offset: Offset(0, 5),
              color: Theme.of(context).colorScheme.primary.withOpacity(.1),
              spreadRadius: 5,
              blurRadius: 5
                  
            )
          ]
        ),
      ),
    );
  }
}
