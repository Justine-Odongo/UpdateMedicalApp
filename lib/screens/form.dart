// import 'package:flutter/material.dart';
// class FormScreen extends StatefulWidget {
//
//   @override
//   State<FormScreen> createState() => _FormScreenState();
// }
//
// class _FormScreenState extends State<FormScreen> {
//   String _name;
//   String _email;
//   String _message;
//   String _number;
//   final GlobalKey<FormState> _formkey= GlobalKey<FormState>();
//   Widget _buildName(){
//     return TextFormField(
//       decoration: InputDecoration(labelText: 'Name'),
//       validator: (String value){
//         if(value.isEmpty){
//           return 'Name is Required';
//         }
//       },
//       onSaved: (String value){
//         _name=value;
//       },
//     );
//   }
//   Widget _buildMessage(){
//     return null;
//   }
//   Widget _buildEmail(){
//     return null;
//   }
//   Widget _buildNumber(){
//     return null;
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('JC Clinic'),),
//       body: Container(
//         child: Form(
//           key: _formkey,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children:<Widget> [
//               _buildName(),
//               _buildEmail(),
//               _buildMessage(),
//               _buildNumber(),
//               SizedBox(
//                 height: 100,
//               ),
//
//               ElevatedButton(
//                 onPressed: (){
//                   if(! _formkey.currentState.validate()){
//                     return;
//                   };
//                   _formkey.currentState.save();
//                   print(_name);
//                   print(_email);
//                 },
//                 child: const Text('Submit'),
//
//               )
//             ],
//           ),
//         ),
//         margin: EdgeInsets.all(24),
//       ),
//     );
//   }
// }
//
