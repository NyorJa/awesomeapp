import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my awesome app'),
        backgroundColor: Colors.deepOrange[600],
      ),
      body: Padding(
        child: Text('hello'),
        padding: EdgeInsets.all(90.0),
      ),
      // body: Container(
      //   padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
      //   margin: EdgeInsets.all(30.0),
      //   color: Colors.grey[400],
      //   child: Text('hello'),
      // ),
      // body: Center(
      //   // child: Image.asset('assets/pix-1.jpg'),
      //   // child: Icon(
      //   //   Icons.airport_shuttle,
      //   //   color: Colors.lightBlue,
      //   //   size: 50.0,
      //   // ),

      //   // child: ElevatedButton(
      //   //   onPressed: () {
      //   //     print('you clicked me');
      //   //   }, child: const Text('click me'),
      //   //   ),
      //   // child: ElevatedButton.icon(
      //   //     onPressed: () {
      //   //       print('you clicked!');
      //   //     },
      //   //     style: ElevatedButton.styleFrom(
      //   //       backgroundColor: Colors.amber
      //   //     ),
      //   //     icon: const Icon(Icons.mail),
      //   //     label: const Text('click me')),

      //   // child: IconButton(
      //   //     onPressed: () {},
      //   //     icon: const Icon(
      //   //       Icons.alternate_email,
      //   //       color: Colors.amber,
      //   //     )),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.deepOrange[600],
        child: const Text(
          'Add points',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
