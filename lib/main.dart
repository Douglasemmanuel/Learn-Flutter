import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp(MaterialApp()));
// }
void main() => runApp(MaterialApp(
      home: Home(),
));

class Home extends StatelessWidget {
  // const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
          centerTitle: true,
          backgroundColor:Colors.red[600] ,
        ),
        body:Center(
          child: IconButton(
            onPressed: (){
              print('Floating Action Button Pressed!');
            },
             icon: Icon(Icons.alternate_email),
             color: Colors.amber,

            ),
          // child :ElevatedButton(
          //   onPressed:(){},
           
          //   label:Text(
          //     'Mail Me'
          //   ),
          //   color: Colors.amber,
          //   icons:Icon(
          //     Icons.airport_shuttle,
          //   ),
            
          // ),
          // child: FloatingActionButton(
          //   onPressed:(){
          //     print('Floating Action Button Pressed!');
          //   },
          //   child:Text('Click me Awesome'),
          //   // color:Colors.lightBlue,
          // ),
          // child:Icon(
          //   Icons.airport_shuttle,
          //   color: Colors.lightBlue,
          //   size: 50.0,
          // ),
          // child:  Text(
          //   'Hello Douglas',
          //   style: TextStyle(
          //     fontSize:20.0,
          //     fontWeight: FontWeight.bold,
          //     letterSpacing: 2.0,
          //     color: Colors.grey[600],
          //     fontFamily: 'IndieFlower',
          //   ),
          // ),
          // child:Image.asset('assets/redbag1.png')  //shortcut for add images
          // child:Image(
          // // image: NetworkImage('https://images.unsplash.com/photo-1729218621503-b4a57a7ab7a2?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
          // // image:AssetImage('assets/redbag1.png'),
          // ),
        ),
        floatingActionButton: FloatingActionButton( 
          onPressed: () {
            // Add your onPressed code here!
            print('Floating Action Button Pressed!');
          },
          child: Text('click me '),
          backgroundColor: Colors.red[600],
        ),
      );
  }
}