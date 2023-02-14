// import 'package:flutter/material.dart';
//  class TabNav extends StatelessWidget{
//    @override
//
//    Widget build(BuildContext context){
//      return MaterialApp(
//        color: Colors.tealAccent,
//        home: DefaultTabController(
//          length: choices.length,
//          child: Scaffold(
//            appBar: AppBar(
//              title:const Text('JC Tab'),
//              bottom: TabBar(
//                isScrollable: true,
//                tabs: choices.map<Widget>((Choice choice){
//                  return Tab(
//                    text: choice.title,
//                    icon:Icon(choice.icon)
//                  );
//                }).toList(),
//              ),
//            ),
//            // body: TabBarView(
//            //   // children: choices.map((Choice choice){
//            //   //   return Padding(
//            //   //       child: ChoicePage(
//            //   //         choice: choice,
//            //   //       ),
//            //   //   ),
//            //   // }),
//            // ),
//          ),
//        ),
//
//      );
//    }
// }
//
// class Choice{
//    final String title;
//    final IconData icon;
//    const Choice({required this.title, required this.icon});
// }
//
// const List<Choice>choices=<Choice>[
//   Choice(title:'Car', icon:Icons.directions_car),
//   Choice(title:'Bike', icon:Icons.directions_bike),
//   Choice(title:'Walk', icon:Icons.directions_walk),
// ];
//
//
//  // class ChoicePage extends StatelessWidget{
//  //   const ChoicePage({Key key, this.choice}):super(key: key);
//  //   final Choice choice;
//  //   @override
//  //   Widget build(BuildContext context){
//  //     return Card(
//  //       color: Colors.white,
//  //       child: Center(
//  //         child: Column(
//  //           mainAxisAlignment: MainAxisAlignment.center,
//  //           mainAxisSize: MainAxisSize.min,
//  //           children: <Widget>[
//  //             Icon(choice.icon,size: 150.0,),
//  //             Text(choice.title)
//  //           ],
//  //         ),
//  //     ),
//  //     );
//  //   }
//  // }
//
//  class ChoicePage extends StatelessWidget {
//    const ChoicePage({Key? key,this.choice}) : super(key: key);
//  final Choice choice;
//    @override
//    Widget build(BuildContext context) {
//      return Card(
//        color: Colors.white,
//        child: Center(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            mainAxisSize: MainAxisSize.min,
//            children: <Widget>[
//              Icon(choice.icon,size: 150.0,),
//              Text(choice.title)
//            ],
//          ),
//        ),
//      );
//    }
//  }
