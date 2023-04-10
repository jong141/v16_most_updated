import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:mathv15/main_page/calculation%20formula%20page/variables.dart';
import 'function.dart';


// old method with fix frame
// class complex_propagation_constant1 extends StatelessWidget {
//   final variables = Variables();
//
//   complex_propagation_constant1({
//     required a, required b,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Step By Step Guide',
//           style: TextStyle(color: Colors.white),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.blue[900],
//       ),
//               body: SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child:InteractiveViewer(
//               boundaryMargin: EdgeInsets.all(20.0),
//               minScale: 0.1,
//               maxScale: 2.0,
//               panEnabled: true,
//               scaleEnabled: true,
//               onInteractionEnd: (details) {
//                 // do something when interaction ends, such as update a state variable
//               },
//               child: Padding(
//               padding:  EdgeInsets.only(left: 00.0, right: 00.0 , top: 30.0),
//               child: Container(
//               width: 400,
//               child: Column(
//               children: [
//                 const SizedBox( height: 25),
//                 Math.tex(r'\varUpsilon = \alpha + j\beta ', textStyle: const TextStyle(fontSize: 25)),
//                 const SizedBox( height: 25),
//                 Math.tex(r'\varUpsilon =' +variables.a +r'+' +variables.b +r'j' , textStyle: const TextStyle(fontSize: 25)),
//                 const SizedBox( height: 25),
//                 Text("All Calculation are done in Rad mode", style:const TextStyle( fontWeight:FontWeight.bold, color: Colors.black , fontSize: 15, ) ),
//
//                 ExpansionTile(
//                   backgroundColor: Colors.grey[300],
//                   collapsedBackgroundColor: Colors.grey[300],
//                   title: const Text("Guide",
//                     style: TextStyle(color: Colors.black, fontSize: 20,),),
//                   children: [
//                     ExpansionTile(
//                       title: Text("Step 1:",
//                         style: TextStyle(color: Colors.black, fontSize: 20,),),
//                       children: [
//                         ListTile(title: Math.tex(r'\varUpsilon =' + variables.a +r'+' +variables.b +r'j' , textStyle: const TextStyle(fontSize: 20))),
//                         ExpansionTile(
//                           title: Text("More Details:",
//                             style: TextStyle(color: Colors.black, fontSize: 20,),),
//                           children: [
//                             ListTile(title: Math.tex(r'\alpha =' +variables.a +r'\ Np/m', textStyle: const TextStyle(fontSize: 18)),),
//                             ListTile(title: Math.tex(r'\beta =' +variables.b +r'\ rad/m',textStyle:const TextStyle(fontSize:18))),
//                             ExpansionTile(title: Text("Details",style: TextStyle(fontSize: 20 , color: Colors.blue)),
//                                 children: [
//                                   polartorect(variables.a , variables.b )
//                                 ]
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 const SizedBox( height: 25),
//               ],
//             ),
//           ),
//         ),
//       ),
//     )
//     );
//   }
// }

//new method with zoom function only
// class complex_propagation_constant1 extends StatelessWidget {
//   final variables = Variables();
//
//   complex_propagation_constant1({
//     required a,
//     required b,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Step By Step Guide',
//           style: TextStyle(color: Colors.white),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.blue[900],
//       ),
//       body: InteractiveViewer(
//         boundaryMargin: EdgeInsets.all(20.0),
//         minScale: 0.5,
//         maxScale: 3.0,
//         panEnabled: true,
//         scaleEnabled: true,
//         onInteractionEnd: (details) {
//           // do something when interaction ends, such as update a state variable
//         },
//         child: Container(
//           child: Padding(
//             padding: const EdgeInsets.only(
//               left: 10.0,
//               right: 10.0,
//             ),
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   const SizedBox(height: 25),
//                   Math.tex(r'\varUpsilon = \alpha + j\beta ',
//                       textStyle: const TextStyle(fontSize: 25)),
//                   const SizedBox(height: 25),
//                   Math.tex(r'\varUpsilon =' +
//                       variables.a +
//                       r'+' +
//                       variables.b +
//                       r'j',
//                       textStyle: const TextStyle(fontSize: 25)),
//                   const SizedBox(height: 25),
//                   Text("All Calculation are done in Rad mode",
//                       style: const TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                         fontSize: 15,
//                       )),
//                   ExpansionTile(
//                     backgroundColor: Colors.grey[300],
//                     collapsedBackgroundColor: Colors.grey[300],
//                     title: const Text(
//                       "Guide",
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 20,
//                       ),
//                     ),
//                     children: [
//                       ExpansionTile(
//                         title: Text(
//                           "Step 1:",
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 20,
//                           ),
//                         ),
//                         children: [
//                           ListTile(
//                               title: Math.tex(r'\varUpsilon =' +
//                                   variables.a +
//                                   r'+' +
//                                   variables.b +
//                                   r'j',
//                                   textStyle: const TextStyle(fontSize: 25))),
//                           ExpansionTile(
//                             title: Text(
//                               "More Details:",
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 20,
//                               ),
//                             ),
//                             children: [
//                               ListTile(
//                                   title: Math.tex(
//                                       r'\alpha =' +
//                                           variables.a +
//                                           r'\ Np/m',
//                                       textStyle:
//                                       const TextStyle(fontSize: 22))),
//                               ListTile(
//                                   title: Math.tex(
//                                       r'\beta =' +
//                                           variables.b +
//                                           r'\ rad/m',
//                                       textStyle:
//                                       const TextStyle(fontSize: 22))),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

//VIRTUAL SCREEN BIGGER THAN IPHONE 13 DISPLAY
// class complex_propagation_constant1 extends StatelessWidget {
//   final variables = Variables();
//
//   complex_propagation_constant1({
//     required a,
//     required b,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Step By Step Guide',
//           style: TextStyle(color: Colors.white),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.blue[900],
//       ),
//       body: InteractiveViewer(
//         boundaryMargin: EdgeInsets.all(20.0),
//         minScale: 0.5,
//         maxScale: 3.0,
//         panEnabled: true,
//         scaleEnabled: true,
//         onInteractionEnd: (details) {
//           // do something when interaction ends, such as update a state variable
//         },
//         child: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const SizedBox(height: 25),
//               Math.tex(r'\varUpsilon = \alpha + j\beta ',
//                   textStyle: const TextStyle(fontSize: 25)),
//               const SizedBox(height: 25),
//               Flexible(
//                 fit: FlexFit.loose,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Math.tex(r'\varUpsilon =' +
//                         variables.a +
//                         r'+' +
//                         variables.b +
//                         r'j',
//                         textStyle: const TextStyle(fontSize: 25)),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 25),
//               Text("All Calculation are done in Rad mode",
//                   style: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     fontSize: 15,
//                   )),
//               ExpansionTile(
//                 backgroundColor: Colors.grey[300],
//                 collapsedBackgroundColor: Colors.grey[300],
//                 title: const Text(
//                   "Guide",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 20,
//                   ),
//                 ),
//                 children: [
//                   ExpansionTile(
//                     title: Text(
//                       "Step 1:",
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 20,
//                       ),
//                     ),
//                     children: [
//                       ListTile(
//                           title: Math.tex(r'\varUpsilon =' +
//                               variables.a +
//                               r'+' +
//                               variables.b +
//                               r'j',
//                               textStyle: const TextStyle(fontSize: 25))),
//                       ExpansionTile(
//                         title: Text(
//                           "More Details:",
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 20,
//                           ),
//                         ),
//                         children: [
//                           ListTile(
//                               title: Math.tex(
//                                   r'\alpha =' + variables.a + r'\ Np/m',
//                                   textStyle:
//                                   const TextStyle(fontSize: 22))),
//                           ListTile(
//                               title: Math.tex(
//                                   r'\beta =' + variables.b + r'\ rad/m',
//                                   textStyle:
//                                   const TextStyle(fontSize: 22))),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//THIS IS THE CORRECT ONE
// class complex_propagation_constant1 extends StatelessWidget {
//   final variables = Variables();
//
//   complex_propagation_constant1({
//     required a, required b,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Step By Step Guide',
//             style: TextStyle(color: Colors.white),
//           ),
//           centerTitle: true,
//           backgroundColor: Colors.blue[900],
//         ),
//         body: SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child:SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             child: Padding(
//                 padding:  EdgeInsets.only(left: 00.0, right: 00.0 , top: 00.0),
//                 child:InteractiveViewer(
//                       boundaryMargin: EdgeInsets.all(20.0),
//                       minScale: 0.1,
//                       maxScale: 2.0,
//                       panEnabled: true,
//                       scaleEnabled: true,
//                       onInteractionEnd: (details) {
//                         // do something when interaction ends, such as update a state variable
//                       },
//                       child: Padding(
//                         padding:  EdgeInsets.only(left: 00.0, right: 00.0 , top: 30.0),
//                         child: Container(
//                           width: 400,
//                           child: Column(
//                             children: [
//                               const SizedBox( height: 25),
//                               Math.tex(r'\varUpsilon = \alpha + j\beta ', textStyle: const TextStyle(fontSize: 25)),
//                               const SizedBox( height: 25),
//                               Math.tex(r'\varUpsilon =' +variables.a +r'+' +variables.b +r'j' , textStyle: const TextStyle(fontSize: 25)),
//                               const SizedBox( height: 25),
//                               Text("All Calculation are done in Rad mode", style:const TextStyle( fontWeight:FontWeight.bold, color: Colors.black , fontSize: 15, ) ),
//
//                               ExpansionTile(
//                                 backgroundColor: Colors.grey[300],
//                                 collapsedBackgroundColor: Colors.grey[300],
//                                 title: const Text("Guide",
//                                   style: TextStyle(color: Colors.black, fontSize: 20,),),
//                                 children: [
//                                   ExpansionTile(
//                                     title: Text("Step 1:",
//                                       style: TextStyle(color: Colors.black, fontSize: 20,),),
//                                     children: [
//                                       ListTile(title: Math.tex(r'\varUpsilon =' + variables.a +r'+' +variables.b +r'j' , textStyle: const TextStyle(fontSize: 20))),
//                                       ExpansionTile(
//                                         title: Text("More Details:",
//                                           style: TextStyle(color: Colors.black, fontSize: 20,),),
//                                         children: [
//                                           ListTile(title: Math.tex(r'\alpha =' +variables.a +r'\ Np/m', textStyle: const TextStyle(fontSize: 18)),),
//                                           ListTile(title: Math.tex(r'\beta =' +variables.b +r'\ rad/m',textStyle:const TextStyle(fontSize:18))),
//                                           ExpansionTile(title: Text("Details",style: TextStyle(fontSize: 20 , color: Colors.blue)),
//                                               children: [
//                                                 polartorect(variables.a , variables.b )
//                                               ]
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                               const SizedBox( height: 25),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   )
//                   )
//                 )
//               );
//             }
//           }

//TRY OUT WRAP + ZOOM
class complex_propagation_constant1 extends StatelessWidget {
  final variables = Variables();

  complex_propagation_constant1({
    required a, required b, required c, required d, required e,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Step By Step Guide',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
        ),
        body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding:  EdgeInsets.only(left: 00.0, right: 00.0 , top: 00.0),
                  child:InteractiveViewer(
                    boundaryMargin: EdgeInsets.all(15.0),
                    minScale: 0.1,
                    maxScale: 2.0,
                    panEnabled: true,
                    scaleEnabled: true,
                    onInteractionEnd: (details) {
                      // do something when interaction ends, such as update a state variable
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 00.0, right: 00.0, top: 30.0),
                      child: Container(
                        child: Column(
                          children: [
                            const SizedBox(height: 25),
                            FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Math.tex(
                                r'\varUpsilon = \alpha + j\beta ',
                                textStyle: const TextStyle(fontSize: 25),
                              ),
                            ),
                            const SizedBox(height: 25),
                            FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Math.tex(
                                r'\varUpsilon =(' + variables.a + r')+(' + variables.b + r')j',
                                textStyle: const TextStyle(fontSize: 25),
                              ),
                            ),
                            const SizedBox(height: 25),
                            FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                "All Calculation are done in Rad mode",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                              ),
                            ),

                              ExpansionTile(
                                  backgroundColor: Colors.grey[300],
                                  collapsedBackgroundColor: Colors.grey[300],
                                  title: const Text("Guide",
                                    style: TextStyle(color: Colors.black, fontSize: 20,),),
                                  children: [
                                        ExpansionTile(
                                          title: Text(
                                            "Step 1:",
                                            style: TextStyle(color: Colors.black, fontSize: 20,),
                                          ),
                                          children: [
                                            ListTile(
                                              title: FittedBox(
                                                alignment: FractionalOffset.centerLeft,
                                                fit: BoxFit.scaleDown,
                                                child: Math.tex(
                                                  r'\varUpsilon =(' + variables.a +r')+(' +variables.b +r')j',
                                                  textStyle: const TextStyle(fontSize: 18),
                                                ),
                                              ),
                                            ),
                                            ListTile(
                                              title: FittedBox(
                                                alignment: FractionalOffset.centerLeft,
                                                fit: BoxFit.scaleDown,
                                                child: Math.tex(
                                                  r'\alpha =' +variables.a +r'\ Np/m',
                                                  textStyle: const TextStyle(fontSize: 18),
                                                ),
                                              ),
                                            ),
                                            ListTile(
                                              title: FittedBox(
                                                alignment: FractionalOffset.centerLeft,
                                                fit: BoxFit.scaleDown,
                                                child: Math.tex(
                                                  r'\beta =' +variables.b +r'\ rad/m',
                                                  textStyle: const TextStyle(fontSize:18),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),

                                        ExpansionTile(
                                            title: Text(
                                              "Rec to Polar",
                                              style: TextStyle(fontSize: 20 , color: Colors.black),
                                            ),
                                            children: [
                                              recttopolar(variables.a , variables.b,variables.c , variables.d ,variables.e)
                                            ]
                                        ),
                                  ],
                                ),
                                const SizedBox( height: 25),
                              ],

                            ),
                          ),
                        ),
                      ),
                    )
                )

        );
      }
    }