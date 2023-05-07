import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: NinjaCard(),
    ));

// class NinjaCard extends StatelessWidget {
//   const NinjaCard({Key? key}) : super(key: key);

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<StatefulWidget> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
        ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/chunli.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey[800],
            ),
            Text(
              'Name',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Chunli',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Current Ninja Level',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'chunli@abc.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}



// class Home extends StatelessWidget {
//   const Home({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('my awesome app'),
//         backgroundColor: Colors.deepOrange[600],
//       ),
//       body: Row(
//         children: [
//           Expanded(
//             child: Image.asset('assets/pix-1.jpg'),
//             flex: 3,
//           ),
//           Expanded(
//             flex: 1,
//             child: Container(
//               padding: EdgeInsets.all(30.0),
//               color: Colors.cyan,
//               child: Text('1'),
//             ),
//           ),
//           Expanded(
//               flex: 1,
//               child: Container(
//                 padding: EdgeInsets.all(30.0),
//                 color: Colors.pinkAccent,
//                 child: Text('2'),
//               )),
//           Expanded(
//             flex: 1,
//             child: Container(
//               padding: EdgeInsets.all(30.0),
//               color: Colors.amber,
//               child: Text('3'),
//             ),
//           )
//         ],
//       ),
//       // body: Column(
//       //     mainAxisAlignment: MainAxisAlignment.start,
//       //     crossAxisAlignment: CrossAxisAlignment.start,
//       //     children: [
//       //       Row(
//       //         children: [Text('Hello'), Text('World')],
//       //       ),
//       //       Container(
//       //         padding: EdgeInsets.all(20.0),
//       //         color: Colors.cyan,
//       //         child: Text('one'),
//       //       ),
//       //       Container(
//       //         padding: EdgeInsets.all(30.0),
//       //         color: Colors.pinkAccent,
//       //         child: Text('two'),
//       //       ),
//       //       Container(
//       //         padding: EdgeInsets.all(40.0),
//       //         color: Colors.amber,
//       //         child: Text('three'),
//       //       )
//       //     ]),
//       // body: Row(
//       //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       //   crossAxisAlignment: CrossAxisAlignment.end,
//       //   children: [
//       //     Text('Hello'),
//       //     TextButton(onPressed: () {},
//       //     child: Text(''),
//       //     style: ButtonStyle(
//       //       backgroundColor: MaterialStatePropertyAll(
//       //         Colors.amber
//       //       ),
//       //     ),),
//       //     Container(
//       //       color: Colors.cyan,
//       //       padding: EdgeInsets.all(30.0),
//       //       child: Text('inside container'),
//       //     )
//       //   ],
//       // ),
//       // body: Padding(
//       //   child: Text('hello'),
//       //   padding: EdgeInsets.all(90.0),
//       // ),
//       // body: Container(
//       //   padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
//       //   margin: EdgeInsets.all(30.0),
//       //   color: Colors.grey[400],
//       //   child: Text('hello'),
//       // ),
//       // body: Center(
//       //   // child: Image.asset('assets/pix-1.jpg'),
//       //   // child: Icon(
//       //   //   Icons.airport_shuttle,
//       //   //   color: Colors.lightBlue,
//       //   //   size: 50.0,
//       //   // ),
//
//       //   // child: ElevatedButton(
//       //   //   onPressed: () {
//       //   //     print('you clicked me');
//       //   //   }, child: const Text('click me'),
//       //   //   ),
//       //   // child: ElevatedButton.icon(
//       //   //     onPressed: () {
//       //   //       print('you clicked!');
//       //   //     },
//       //   //     style: ElevatedButton.styleFrom(
//       //   //       backgroundColor: Colors.amber
//       //   //     ),
//       //   //     icon: const Icon(Icons.mail),
//       //   //     label: const Text('click me')),
//
//       //   // child: IconButton(
//       //   //     onPressed: () {},
//       //   //     icon: const Icon(
//       //   //       Icons.alternate_email,
//       //   //       color: Colors.amber,
//       //   //     )),
//       // ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         backgroundColor: Colors.deepOrange[600],
//         child: const Text(
//           'Add points',
//           textAlign: TextAlign.center,
//         ),
//       ),
//     );
//   }
// }
