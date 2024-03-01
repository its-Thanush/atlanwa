import 'package:atlanwa/customscaffoldlogin.dart';
import 'package:atlanwa/home/signupscreen.dart';
import 'package:atlanwa/welcome1.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  final loginkey = GlobalKey<FormState>();
  bool rememberpassword = true;
  @override
  Widget build(BuildContext context) {
    return customscaffoldlogin(
      child: Column(
        children: [
          const Expanded(
            flex: 1,
              child: SizedBox(

          )),
           const Expanded(child: SizedBox(
            height: 10,
          )),
          Expanded(
              flex: 7,
              child: Container(
                padding: const EdgeInsets.fromLTRB(25, 50, 25, 20),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
                child:  SingleChildScrollView(
                  child: Form(
                    key: loginkey,
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('Welcome Back',
                          style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                  
                          ),),
                        const SizedBox(height: 40,),
                        TextFormField(
                          validator: (value){
                            if (value == null || value.isEmpty){
                              return 'Please enter email';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            label: const Text('Email'),
                            hintText: 'Enter Email',
                            hintStyle: const TextStyle(
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black12,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                  
                          ),
                        ),
                        const SizedBox(height: 30,),
                        TextFormField(
                          obscureText: true,
                          obscuringCharacter: '*',
                          validator: (value) {
                            if (value == null || value.isEmpty){
                              return 'Please enter Password';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            label: const Text('Password'),
                            hintText: 'Enter Password',
                            hintStyle: const TextStyle(
                              color: Colors.black26,
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black12,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                  
                              children: [
                                Checkbox(value: rememberpassword, onChanged: (bool? value){
                                  setState(() {
                                    rememberpassword = value!;
                                  });
                                },
                                  activeColor: Colors.deepOrange.shade300,
                  
                                ),
                                const Text('Remember me',
                                style: TextStyle(
                                  color: Colors.black45,
                                ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              child: Text('Forget Password?',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepOrange.shade300,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: (){

                              if (loginkey.currentState!.validate() && rememberpassword)
                                {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('Processing Data'),
                                      ),
                                  );
                                  Navigator.push(context, MaterialPageRoute(builder: (_) => const welcome1()));
                                }
                              else if (!rememberpassword){
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Please agree to the Processing of personal'))
                                );
                              }
                            },
                            child: const Text('Log in'),
                          ),
                        ),
                       const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(child: Divider(
                              thickness: 0.7,
                              color: Colors.grey.withOpacity(0.5),

                            )),
                            const Padding(padding: EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: 10,
                            ),
                            child: Text('Sign up with',
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                            ),
                            ),
                            const Expanded(child: Divider(

                            ))
                          ],
                        ),
                        const SizedBox(height: 20,),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            // Logo(Logos.facebook_f),
                            // Logo(Logos.twitter),
                            // Logo(Logos.google),
                            // Logo(Logos.apple),
                            Icon(Icons.facebook),
                            Icon(Bootstrap.google),
                            Icon(Bootstrap.apple),
                            Icon(Bootstrap.twitter),


                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Don\'t have an account ?',
                            style: TextStyle(color: Colors.black45),
                            ),
                            const SizedBox(width: 5,),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (e) => const SignUpScreen()));
                              },
                              child: Text('Sign up',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Colors.deepOrange.shade300,
                              ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 20,),
                      ],
                  
                    ),

                  ),
                ),
          ))
        ],
      )
    );
  }
}
