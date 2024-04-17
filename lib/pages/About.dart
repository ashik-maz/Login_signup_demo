import 'package:demo/global/command/toast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AboutDeveloper extends StatefulWidget {
  const AboutDeveloper({super.key});

  @override
  State<AboutDeveloper> createState() => _AboutDeveloperState();
}

class _AboutDeveloperState extends State<AboutDeveloper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Image.asset(
            'images/logo1.png',
            fit: BoxFit.cover,
            height: 45,
            filterQuality: FilterQuality.high,
          ),
          centerTitle: true,), 
      body: Container(
        child: Center(
          child: Column(children: [
            Text("About",style: TextStyle(fontSize: 25),),
            SizedBox(height: 30,),
            Text("application developed by"),
            Text("Mohammad Ashik (CSE 14 Batch, PUST)"),


            SizedBox(height: 30,),
            GestureDetector(
                  onTap: (){
                    
                    FirebaseAuth.instance.signOut();
                    Navigator.pushNamed(context, "/login");
                    showToast(message: "User is Successfully Signed Out");
                  },
                  child: Container(
                    width: 120,
                    height: 45,
                    
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.blue),
                    child: Center(child:Text("Logout",style: TextStyle(color: Colors.white,fontSize: 18, fontWeight: FontWeight.bold),)),
                  ),
                 
                )
          
          
          ]),
        ),
      ),  
    );
  }
}