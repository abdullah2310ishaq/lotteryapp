import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
Random random = Random();
   int x=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Lottery App')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('Lottery winning number is 1'),),
           SizedBox(height: 20),

            Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 200,

                  decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3),borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: x==1?  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.celebration,color: Colors.blue,size: 25),
                        Text('Congratulations your number $x won the lottery',textAlign: TextAlign.center),
                      ],
                    ):
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                         Icon(Icons.error,color: Colors.red,size: 25),
                        Text('Better Luck next time your number is $x try again',textAlign: TextAlign.center),
                      ],
                    ),
                  )
                ),
              ),
            ),

         ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
          x=random.nextInt(5);
            print(x);
            setState(() {
            });
          },
          child: Icon( Icons.refresh),

        ),
      ),
    );
  }
}


