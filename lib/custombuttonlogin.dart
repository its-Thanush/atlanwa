import 'package:atlanwa/home/signupscreen.dart';
import 'package:flutter/material.dart';
class custombuttonlogin extends StatelessWidget {
  const custombuttonlogin({super.key, this.buttonText, this.onTap, this.color, this.textcolor});
final String? buttonText;
final Widget? onTap;
final Color? color;
final Color? textcolor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(
                builder: (e)=> onTap!,
            ));
      },
      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: color!,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
          )
        ),
        child: Text(buttonText!,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: textcolor!,
          ),),
      ),
    );
  }
}
