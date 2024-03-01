import 'package:flutter/material.dart';

class ItemCategory extends StatelessWidget {
  final String title;
  final bool isActive;
  const ItemCategory({super.key,required this.title,required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      child: Text(title,style: Theme.of(context).textTheme.titleMedium?.copyWith(
        color: isActive? Colors.deepOrange.shade300: Colors.grey,
        fontWeight: isActive? FontWeight.bold: FontWeight.w300
      ),),

    );
  }
}
