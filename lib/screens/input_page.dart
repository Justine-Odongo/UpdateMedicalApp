// import 'package:flutter/material.dart';
// import 'package:test_tab/widget/navigation_drawer_widget.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:test_tab/components/icon_content.dart';
// import 'package:test_tab/components/reusable_card.dart';
// import 'package:test_tab/constants.dart';
// import 'package:test_tab/screens/results_page.dart';
// import 'package:test_tab/components/bottom_button.dart';
// import 'package:test_tab/components/round_icon_button.dart';
// import 'package:test_tab/calculator_brain.dart';
// import 'package:test_tab/screens/screen2.dart';
// import 'package:test_tab/screens/nav_bar.dart';
// enum Gender {
//   male,
//   female,
// }
//
// class InputPage extends StatefulWidget {
//   @override
//   _InputPageState createState() => _InputPageState();
// }
//
// class _InputPageState extends State<InputPage> {
//  late Gender selectedGender;
//   int height = 100;
//   int weight = 50;
//   int age = 20;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: NavigationDrawerWidget(),
//       appBar: AppBar(
//         title: Text('People'),
//         centerTitle: true,
//         backgroundColor: Colors.green,
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: <Widget>[
//           Expanded(
//               child: Row(
//             children: <Widget>[
//               Expanded(
//                 child: ReusableCard(
//                   onPress: () {
//                     setState(() {
//                       selectedGender = Gender.male;
//                     });
//
//                   },
//                   colour: selectedGender == Gender.male
//                       ? kActiveCardColour
//                       : kInactiveCardColour,
//                   cardChild: IconContent(
//                     icon: FontAwesomeIcons.mars,
//                     label: 'MALE',
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: ReusableCard(
//                   onPress: () {
//                     setState(() {
//                       selectedGender = Gender.female;
//                     });
//                   },
//                   colour: selectedGender == Gender.female
//                       ? kActiveCardColour
//                       : kInactiveCardColour,
//                   cardChild: IconContent(
//                     icon: FontAwesomeIcons.venus,
//                     label: 'FEMALE',
//                   ),
//                 ),
//               ),
//             ],
//           )),
//           Expanded(
//             child: ReusableCard(
//               colour: kActiveCardColour,
//               cardChild: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Text(
//                     'HEIGHT',
//                     style: kLabelTextStyle,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.baseline,
//                     textBaseline: TextBaseline.alphabetic,
//                     children: <Widget>[
//                       Text(
//                         height.toString(),
//                         style: kNumberTextStyle,
//                       ),
//                       Text(
//                         'cm',
//                         style: kLabelTextStyle,
//                       )
//                     ],
//                   ),
//                   SliderTheme(
//                     data: SliderTheme.of(context).copyWith(
//                       inactiveTrackColor: Color(0xFF66BFBF),
//                       activeTrackColor: Colors.white,
//                       thumbColor: Color(0xFFEB1555),
//                       overlayColor: Color(0x29EB1555),
//                       thumbShape:
//                           RoundSliderThumbShape(enabledThumbRadius: 15.0),
//                       overlayShape:
//                           RoundSliderOverlayShape(overlayRadius: 30.0),
//                     ),
//                     child: Slider(
//                       value: height.toDouble(),
//                       min: 100.0,
//                       max: 220.0,
//                       onChanged: (double newValue) {
//                         setState(() {
//                           height = newValue.round();
//                         });
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             child: Row(
//               children: <Widget>[
//                 Expanded(
//                   child: ReusableCard(
//                     colour: kActiveCardColour,
//                     cardChild: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Text(
//                           'WEIGHT',
//                           style: kLabelTextStyle,
//                         ),
//                         Text(
//                           weight.toString(),
//                           style: kNumberTextStyle,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: <Widget>[
//                             RoundIconButton(
//                                 icon: FontAwesomeIcons.minus,
//                                 onPressed: () {
//                                   setState(() {
//                                     weight--;
//                                   });
//                                 }),
//                             SizedBox(
//                               width: 10.0,
//                             ),
//                             RoundIconButton(
//                               icon: FontAwesomeIcons.plus,
//                               onPressed: () {
//                                 setState(() {
//                                   weight++;
//                                 });
//                               },
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: ReusableCard(
//                     colour: kActiveCardColour,
//                     cardChild: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Text(
//                           'AGE',
//                           style: kLabelTextStyle,
//                         ),
//                         Text(
//                           age.toString(),
//                           style: kNumberTextStyle,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: <Widget>[
//                             RoundIconButton(
//                               icon: FontAwesomeIcons.minus,
//                               onPressed: () {
//                                 setState(
//                                   () {
//                                     age--;
//                                   },
//                                 );
//                               },
//                             ),
//                             SizedBox(
//                               width: 10.0,
//                             ),
//                             RoundIconButton(
//                                 icon: FontAwesomeIcons.plus,
//                                 onPressed: () {
//                                   setState(() {
//                                     age++;
//                                   });
//                                 })
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//
//
//           BottomButton(
//             buttonTitle: 'CALCULATE',
//             onTap: () {
//               CalculatorBrain calc =
//                   CalculatorBrain(height: height, weight: weight);
//
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => ResultsPage(
//                         bmiResult: calc.calculateBMI(),
//                         resultText: calc.getResult(),
//                         interpretation: calc.getInterpretation(),
//                       ),
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
