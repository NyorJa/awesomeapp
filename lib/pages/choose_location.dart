import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {


  void getData() async {
    // simulate network request
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'yoshi';
    });


    // simulate network to get bio
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'vegan, musician';
    });

    print('$username - $bio');
  }

  @override
  void initState() {
    super.initState();
    print('Initstate function ran');
    getData();
    print('hey there');
  }

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        }, child: Text('counter is $counter'),
      )
    );
  }


}
