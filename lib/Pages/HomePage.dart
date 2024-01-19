//import 'package:firebase_auth/firebase_auth.dart';
// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:projectclass/Pages/Book.dart';
import 'package:projectclass/Pages/Daily%20tasks.dart';
import 'package:projectclass/Pages/Time.dart';
import 'package:projectclass/Pages/schedule.dart';




class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Center(
          child: Text(
            "S E C T I O N S",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 200),
          const Text(
            ' Welcome dear student ',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Schedule()),
                  );
                },
                child: Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      'Add schedule ',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyToDoList ()),
                  );
                },
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Daily tasks',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Book()),
                  );
                },
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Books',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),








      bottomNavigationBar: BottomAppBar(
    
        color: Colors.white,
        child: Row(
          
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            
            IconButton(
              
              onPressed: () {
              Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Time()));
              },
              
              
              icon: Container(
                decoration: BoxDecoration(borderRadius: const BorderRadius.all(
                        Radius.circular(30),),
                         boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                           )],),
                        
                        
                        child: Icon(Icons.punch_clock_rounded, color: Colors.black, 
                ),
              ),
            ),
          
        
      
            IconButton(
              
              onPressed: () {
              Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              
              
              icon: Container(
                decoration: BoxDecoration(borderRadius: const BorderRadius.all(
                        Radius.circular(30),),
                         boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                           )],
                           ),
                        
                        
                        child: Icon(Icons.home, color: Colors.black, 
                ),
              ),
            ),
          ],),
        ),
        );
      

  }
}
