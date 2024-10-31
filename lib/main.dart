import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

// void main() {
//   runApp(const MyApp(MaterialApp()));
// }
void main() => runApp(MaterialApp(
      // home: Home(),
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
      author: 'Douglas',
      text: '1',
    ),
    Quote(
      author: 'Emmanuel',
      text: '2',
    )
  ];
  // Widget quoteTemplate(quote) {
  //   return QuoteCard(quote: quote);
  //   // return Card(
  //   //   margin:EdgeInsets.fromLTRB(16.0 , 16.0 ,16.0 ,0.0),
  //   //   child:Padding(
  //   //     padding: const EdgeInsets.all(12.0),
  //   //     child: Column(
  //   //       crossAxisAlignment: CrossAxisAlignment.stretch,
  //   //       children:<Widget>[
  //   //         Text(
  //   //           quote.text,
  //   //           style: TextStyle(
  //   //             fontSize:18.0,
  //   //             color:Colors.grey[600],
  //   //           ),
  //   //           ),
  //   //           SizedBox(height:6.0),

  //   //           Text(
  //   //             quote.author,
  //   //           style: TextStyle(
  //   //             fontSize:14.0,
  //   //             color:Colors.grey[800],
  //   //           ),
  //   //           ),
  //   //       ],
  //   //     ),
  //   //   ),
  //   // );
  // }
  void deleteQuote(int index) {
    setState(() {
      quotes.removeAt(index); // Remove the quote at the specified index
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
         children: quotes.asMap().entries.map((entry) {
          int index = entry.key;
          Quote quote = entry.value;
          return QuoteCard(
            quote: quote,
            delete: () => deleteQuote(index), // Pass the delete function
          );
        }).toList(),
        // children: quotes
        //     .map((quote) => QuoteCard(
        //         // (quote)
        //         quote: quote,
        //         delete: () {
        //           setState(() {
        //             (() {
        //               quotes.remove(quote);
        //             });
        //           });
        //         }))
        //     .toList(),
      ),
      // body: Column(children: quotes.map((quote) => Text('${quote.text} -- ${quote.author}')).toList()),
    );
  }
}

// class QuoteCard extends StatelessWidget {
//   final Quote quote;
//   // Constructor to receive the Quote object
//   QuoteCard({required this.quote});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Text(
//               quote.text,
//               style: TextStyle(
//                 fontSize: 18.0,
//                 color: Colors.grey[600],
//               ),
//             ),
//             SizedBox(height: 6.0),
//             Text(
//               quote.author,
//               style: TextStyle(
//                 fontSize: 14.0,
//                 color: Colors.grey[800],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }






















// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//         appBar: AppBar(
//           title: Text('My first app'),
//           centerTitle: true,
//           backgroundColor:Colors.red[600] ,
//         ),
//         body:Row(
//           children: <Widget>[
//             Expanded(
//               child:Image.asset('assets/redbag1.png'),
//               flex:3,
//               ),
//             Expanded(
//               flex: 1,
//               child: Container(
//                 padding: EdgeInsets.all(30.0),
//                 color: Colors.cyan,
//                 child: Text('1'),
//               ),
//             ),
//             Expanded(
//               flex: 1,
//               child: Container(
//                 padding: EdgeInsets.all(30.0),
//                 color: Colors.pinkAccent,
//                 child: Text('2'),
//               ),
//             ),
//             Expanded(
//               flex: 1,
//               child: Container(
//                 padding: EdgeInsets.all(30.0),
//                 color: Colors.amber,
//                 child: Text('3'),
//               ),
//             ),
//           ],
//         ),
//         // body: Column(
//         //   mainAxisAlignment: MainAxisAlignment.end,
//         //   crossAxisAlignment: CrossAxisAlignment.end,
//         //   children: <Widget>[
//         //     Row(
//         //       children:<Widget>[
//         //         Text('Hello'),
//         //         Text('World'),
//         //       ],
//         //     ),
//         //     Container(
//         //       padding: EdgeInsets.all(40.0),
//         //       color: Colors.pink,
//         //       child: Padding(
//         //         padding: const EdgeInsets.all(8.0),
//         //         child: Text('Hello World2'),
//         //       ),
//         //     ),
//         //      Container(
//         //       padding: EdgeInsets.all(30.0),
//         //       color: Colors.cyan,
//         //       child: Text('Hello World'),
//         //     ),
//         //      Container(
//         //       padding: EdgeInsets.all(60.0),
//         //       color: Colors.red,
//         //       child: Text('Hello World3'),
//         //     ),
//         //   ],
//         // ),
//         // body: Row(
//         //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         //   crossAxisAlignment: CrossAxisAlignment.start,
//         //   children: <Widget>[
//         //     Text('hello world'),
//         //     ElevatedButton(
//         //       onPressed: (){},
//         //       // color:Colors.amber,
             
//         //       child:Text('Click Me'),
//         //     ),
//         //     Container(
//         //       color: Colors.cyan,
//         //       padding: EdgeInsets.all(30.0),
//         //       child: Text('Inside container'),
//         //     )
//         //   ],
//         // ),
//         // body:Padding(
//         //   padding: EdgeInsets.all(90.0),
//         //   child:Text('Hello'),
//         //   ),
//         // body: Container(
//         //   padding:EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
//         //   margin: EdgeInsets.all(30.0),

//         //   color: Colors.grey[400],
//         //   child:Text('Hello'),
//         //   // padding: EdgeInsets.all(20.0),
//         //   // padding: EdgeInsets.symmetric(horizontal: 30.0 , vertical: 10.0),
//         // ),
//         // body:Center(
//         //   child: IconButton(
//         //     onPressed: (){
//         //       print('Floating Action Button Pressed!');
//         //     },
//         //      icon: Icon(Icons.alternate_email),
//         //      color: Colors.amber,

//         //     ),
//         //   // child :ElevatedButton(
//         //   //   onPressed:(){},
           
//         //   //   label:Text(
//         //   //     'Mail Me'
//         //   //   ),
//         //   //   color: Colors.amber,
//         //   //   icons:Icon(
//         //   //     Icons.airport_shuttle,
//         //   //   ),
            
//         //   // ),
//         //   // child: FloatingActionButton(
//         //   //   onPressed:(){
//         //   //     print('Floating Action Button Pressed!');
//         //   //   },
//         //   //   child:Text('Click me Awesome'),
//         //   //   // color:Colors.lightBlue,
//         //   // ),
//         //   // child:Icon(
//         //   //   Icons.airport_shuttle,
//         //   //   color: Colors.lightBlue,
//         //   //   size: 50.0,
//         //   // ),
//         //   // child:  Text(
//         //   //   'Hello Douglas',
//         //   //   style: TextStyle(
//         //   //     fontSize:20.0,
//         //   //     fontWeight: FontWeight.bold,
//         //   //     letterSpacing: 2.0,
//         //   //     color: Colors.grey[600],
//         //   //     fontFamily: 'IndieFlower',
//         //   //   ),
//         //   // ),
//         //   // child:Image.asset('assets/redbag1.png')  //shortcut for add images
//         //   // child:Image(
//         //   // // image: NetworkImage('https://images.unsplash.com/photo-1729218621503-b4a57a7ab7a2?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
//         //   // // image:AssetImage('assets/redbag1.png'),
//         //   // ),
//         // ),
//         floatingActionButton: FloatingActionButton( 
//           onPressed: () {
//             // Add your onPressed code here!
//             print('Floating Action Button Pressed!');
//           },
//           child: Text('click me '),
//           backgroundColor: Colors.red[600],
//         ),
//       );
//   }
// }