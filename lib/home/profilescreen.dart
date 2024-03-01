import 'package:atlanwa/home/homescreen.dart';
import 'package:flutter/material.dart';
class profilescreen extends StatelessWidget {
  const profilescreen({
    super.key,


  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:const Icon(Icons.arrow_back),onPressed: (){Navigator.pop(context,MaterialPageRoute(builder: (_) => const HomeScreen()),);
            },
         ),
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 45,top: 30,right: 30),
          child:Column(
            children: [

              const CircleAvatar(
                radius: 110,
                backgroundImage: AssetImage('assets/images/person.jpg'),
              ),
              const SizedBox(height: 10,),
              const Text('Thanush',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),),
              const Text('thanushv7kmn@gmail.com',
                style: TextStyle(

                  fontSize: 18,
                ),),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange.shade300,side: BorderSide.none,shape: const StadiumBorder()
                  ),
                  child: const Text('Edit Profile',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),),
                ),
              ),
              const SizedBox(height: 30,),
              const Divider(),
              const SizedBox(height: 10,),
              ProfileMenuWidget(title: "Settings",icon: Icons.settings, onpress: (){},),
              ProfileMenuWidget(title: "Billing Details",icon: Icons.wallet, onpress: (){},),
              ProfileMenuWidget(title: "User Management",icon: Icons.manage_accounts, onpress: (){},),


              ProfileMenuWidget(title: "Information",icon: Icons.info, onpress: (){},),
              const Divider(),
              const SizedBox(height: 7,),
              ProfileMenuWidget(
                title: "Logout",
                icon: Icons.login_outlined,
                textColor: Colors.red,
                endIcon: false,
                onpress: (){},
              ),



            ],
          ),
        ),

      ),
    );
  }
}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onpress,
    this.endIcon = true,
    this.textColor,
  });
  final String title;
  final IconData icon;
  final VoidCallback onpress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onpress,
      leading: Container(
        width: 30, height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.deepOrange.shade300,
        ),
        child: Icon(icon,color: Colors.black,),
      ),
      title: Text(title,style: Theme.of(context).textTheme.bodyMedium?.apply(color: textColor),),
      trailing: endIcon? Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey.withOpacity(0.1),
        ),
        child: const Icon(Icons.chevron_right,size: 18,color: Colors.grey,)) : null
    );
  }
}
