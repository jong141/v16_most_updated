import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:extended_math/extended_math.dart';
import 'brewster angle equation 1.dart';
import 'package:mathv15/main_page/calculation%20formula%20page/variables.dart';


class choose_BA_page extends StatefulWidget {
  const choose_BA_page({Key? key}) : super(key: key);
  @override
  State<choose_BA_page> createState() => _choose_BA_pageState();
}

class _choose_BA_pageState extends State<choose_BA_page> {
  final variables = Variables();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Math v14'),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: const [
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
                Card(
                  color: Colors.blue[900],
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 35, 15.0, 40.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          'Brewster Angle Equations',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: const [
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 100,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[900],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                              _vaildateUserinput(variables.controller7.text);
                            },

                            child: Math.tex(
                                r'\tan\theta_{B\Vert} = \sqrt \frac{\varepsilon_2}{\varepsilon_1}',
                                textStyle: const TextStyle(fontSize: 25)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                // For Complex angle in the future for next student to do LOL
                // Row(
                //   children: [
                //     Expanded(
                //       child: SizedBox(
                //         height: 100,
                //         child: Padding(
                //           padding: EdgeInsets.only(bottom: 10),
                //           child: ElevatedButton(
                //             style: ElevatedButton.styleFrom(
                //               backgroundColor: Colors.blue[900],
                //               shape: RoundedRectangleBorder(
                //                 borderRadius: BorderRadius.circular(10),
                //               ),
                //             ),
                //             onPressed: () {
                //
                //             },
                //
                //             child: Math.tex(
                //                 r'\tan\theta_{B\vert} = \sqrt \frac{\varepsilon_{2C}}{\varepsilon_{1C}}',
                //                 textStyle: const TextStyle(fontSize: 25)),
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  //Calculation for BA 1
  _vaildateUserinput(String input) {
    //input
    variables.epsilon_r = double.parse(variables.controller7.text);
    variables.epsilon_r_2 = double.parse(variables.controller10.text);


//calculation
    //CA1
    final E1 = variables.epsilon_o * variables.epsilon_r;
    final E2 = variables.epsilon_o * variables.epsilon_r_2;
    final Et = E2 / E1;
    final root = sqrt(Et);
    final BA1 = atan(root);


//display constant with 3 significant
    //CA1
    final er_display = variables.epsilon_r.toStringAsPrecision(4);
    final er2_display = variables.epsilon_r_2.toStringAsPrecision(4);
    final E1_display = E1.toStringAsPrecision(4);
    final E2_display = E2.toStringAsPrecision(4);
    final Et_display = Et.toStringAsPrecision(4);
    final root_display = root.toStringAsPrecision(4);
    final BA1_display = BA1.toStringAsPrecision(4);


//global variables
    //CA1
    variables.epsilon_o = (1 / (36 * pi)) * pow(10, -9);
    variables.er_display = er_display;
    variables.er2_display = er2_display;
    variables.E1_display = E1_display;
    variables.E2_display = E2_display;
    variables.Et_display = Et_display;
    variables.root_display = root_display;
    variables.BA1_display = BA1_display;

    Navigator.push(context,
        MaterialPageRoute(
            builder: (context) =>
                brewster_angle_eq1(
                  er_display: variables.er_display,
                  er2_display: variables.er2_display,
                  E1_display: variables.E1_display,
                  E2_display: variables.E2_display,
                  Et_display: variables.Et_display,
                  root_display: variables.root_display,
                  BA1_display: variables.BA1_display,

                )
        )
    );
  }
}