

import 'package:flutter/material.dart';

import 'News_Portals/Ittefaq.dart';
import 'News_Portals/bangladeshpratidin.dart';
import 'News_Portals/jugantor.dart';
import 'News_Portals/kalerkantho.dart';
import 'News_Portals/ntvonline.dart';
import 'News_Portals/prothomalo.dart';
import 'News_Portals/samakal.dart';
import 'News_Portals/shomoyeralo.dart';






class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News Portals of Bangladesh",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
        centerTitle: true,
        toolbarHeight: 80,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [

            // First Card
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>ProthomAlo()));
              },
              child: Card(
                elevation: 4,
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.all(17),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/prothomalo.jpg',
                        width: 60,
                        height: 60,
                      ),
                      SizedBox(width: 30),
                      Expanded(
                        child: Text(
                          'প্রথম আলো',
                          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),


            // Second Card
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>jugantor()));
              },
              child: Card(
                elevation: 4,
                color: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.all(17),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/jugantor.png',
                        width: 60,
                        height: 60,
                      ),
                      SizedBox(width: 30),
                      Expanded(
                        child: Text(
                          'যুগান্তর',
                          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),


            // Third Card
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>kalerkantho()));
              },
              child: Card(
                elevation: 4,
                color: Colors.yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.all(17),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/kalerkantho.png',
                        width: 60,
                        height: 60,
                      ),
                      SizedBox(width: 30),
                      Expanded(
                        child: Text(
                          'কালের কন্ঠ',
                          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),


            // Fourth Card
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>bangladeshpratidin()));
              },
              child: Card(
                elevation: 4,
                color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.all(17),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/bangladeshpratidin.png',
                        width: 60,
                        height: 60,
                      ),
                      SizedBox(width: 30),
                      Expanded(
                        child: Text(
                          'বাংলাদেশ প্রতিদিন',
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),


            // Fifth Card
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>samakal()));
              },
              child: Card(
                elevation: 4,
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.all(17),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/samakal.jpg',
                        width: 60,
                        height: 60,
                      ),
                      SizedBox(width: 30),
                      Expanded(
                        child: Text(
                          'সমকাল',
                          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),


            // Sixth Card
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>ittefaq()));
              },
              child: Card(
                elevation: 4,
                color: Colors.cyanAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.all(17),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/ittefaq.png',
                        width: 60,
                        height: 60,
                      ),
                      SizedBox(width: 30),
                      Expanded(
                        child: Text(
                          'ইত্তেফাক',
                          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),


            //Seven Card
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>ntvonline()));
              },
              child: Card(
                elevation: 4,
                color: Colors.lightGreenAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.all(17),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/ntvonline.png',
                        width: 60,
                        height: 60,
                      ),
                      SizedBox(width: 30),
                      Expanded(
                        child: Text(
                          'এনটিভি অনলাইন',
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),


            //Eight Card
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>shomoyeralo()));
              },
              child: Card(
                elevation: 4,
                color: Colors.indigo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.all(17),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/shomoyeralo.jpg',
                        width: 60,
                        height: 60,
                      ),
                      SizedBox(width: 30),
                      Expanded(
                        child: Text(
                          'সময়ের আলো',
                          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                      ),

                    ],
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



