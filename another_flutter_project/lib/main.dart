import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
          body: 
              ListView(
                children: [
                  Divider(height: 10,color: Colors.black,),
                  ListTile(
                    leading: CircleAvatar(backgroundColor: Colors.pink),
                    title: Text('Nana'),
                    subtitle: Text('Mambo'),
                    trailing: Icon(Icons.done_all),
                  ),
                  
                  ListTile(
                    leading: CircleAvatar(backgroundColor: Colors.purple),
                    title: Text('James'),
                    subtitle: Text('Napenda mihogo'),
                    trailing: Icon(Icons.done_all),
                  ),
                 
                  ListTile(
                    leading: CircleAvatar(backgroundColor: Colors.blue),
                    title: Text('Goodluck'),
                    subtitle: Text('I love gaming'),
                    trailing: Icon(Icons.done_all),
                  )
                ],
              )
            
          ))
    ;
  }
}
