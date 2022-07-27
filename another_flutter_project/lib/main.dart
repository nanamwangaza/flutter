// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:another_flutter_project/mycard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<MyCard> chatList=[
    MyCard(title:'Nana',subtitle:'Mambo',image: 'assets/Tems.PNG',time: '00:00' ),
     MyCard(title:'IPT 2022 (QLICUE)',subtitle:'Eddy:Nipo Santika nafika sasahivi',image: 'assets/Qlicue.JPG',time: '9:02' ),
    MyCard(title:'James',subtitle:'Napenda mihogo',image: 'assets/James.JPG',time: 'Yesterday' ),
    MyCard(title:'Goodluck',subtitle:'I love gaming',image: 'assets/Goodluck.PNG',time: 'Yesterday' ),
    MyCard(title:'Peter',subtitle:'Mimi senior wenu mniheshimu',image: 'assets/Peter.PNG',time: '12:30' ),
    MyCard(title:'Jacob',subtitle:'Usichomoe waya PC yangu ni TV',image: 'assets/Jacob.PNG',time: '00:00' ),
    MyCard(title:'Hossam',subtitle:'My name is Awesome',image: 'assets/Hossam.JPG',time: '1:45' ),
    MyCard(title:'Dennis',subtitle:'Heyyy!!!',image: 'assets/Dennis.JPG',time: 'Yesterday' ),
    MyCard(title:'Edgar',subtitle:'Naomba biskuti nyingi nyingi nipelekee wanangu  nyumbani',image: 'assets/Eddy.JPG',time: '00:00' ),
    MyCard(title:'Angel',subtitle:'Hello!',image: 'assets/pic.jpg',time: '4:12' ),
    MyCard(title:'Maria',subtitle:'Mambo',image: 'assets/picc.jfif',time: '5:49' ),
    MyCard(title:'Freddy',subtitle:'Mambo',image: 'assets/picha.jpg',time: 'Yesterday' ),
    MyCard(title:'Ohms',subtitle:'Naomba buku nikale maandazi na juins',image: 'assets/ppcc.jfif',time: 'Yesterday' ),
    MyCard(title:'Johari',subtitle:'Tukale biriani',image: 'assets/Kaavia.png',time: '10:00' ),
    MyCard(title:'Miriam',subtitle:'How are you? ',image: 'assets/flower.jfif',time: '6:00' ),
    MyCard(title:'Udoddy',subtitle:'Mambo',image: 'assets/fire.jfif',time: '2:00' ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      home: Scaffold(
          appBar: AppBar(
             
              title: Text(
                'WhatsApp',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.green),
          body:   Container(
           decoration: BoxDecoration(
            // ignore: prefer_const_literals_to_create_immutables
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              // ignore: prefer_const_literals_to_create_immutables
              colors: [
              Colors.orangeAccent,
             Colors.purple,
             // Colors.pink,
              Colors.blueGrey
            ])
           ),
            child: ListView(
                    children: [
                      ...chatList.map((value){
                        return ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(value.image),
                          ),
                          title: Text(value.title),
                          subtitle: Text(value.subtitle),
                          trailing: Text(value.time),
                        );
                      }).toList()
                    ],
                    
          ),
              )
            
          ))
    ;
  }
}
