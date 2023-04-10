import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:extended_math/extended_math.dart';
import 'i snell\'s law equation 1.dart';
import 'package:mathv15/main_page/calculation%20formula%20page/variables.dart';


class choose_isnell_page extends StatefulWidget {
  const choose_isnell_page({Key? key}) : super(key: key);
  @override
  State<choose_isnell_page> createState() => _choose_isnell_pageState();
}

class _choose_isnell_pageState extends State<choose_isnell_page> {
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
                          'Snell\'s Law Equations to Find Incident Angle ',
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
                        height: 150,
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
                               _vaildateUserinput(variables.controller10.text);
                            },

                            child: Math.tex(
                                r'\sin\theta_{\normalsize i} = \frac{\sin\theta_{\normalsize t} }{\sqrt\frac{\mu_1\varepsilon_1}{\mu_2\varepsilon_2}}',
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
                //                 r'\sin\theta_{\normalsize i} = \frac{\sin\theta_{\normalsize t} }{\sqrt\frac{\mu_1\varepsilon_1}{\mu_2\varepsilon_2}}',
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
  _vaildateUserinput(String input) { // stop here do snell law cal
    //input
    variables.mu = double.parse(variables.controller4.text);
    variables.epsilon_r = double.parse(variables.controller7.text);
    variables.mu_2 = double.parse(variables.controller9.text);
    variables.epsilon_r_2= double.parse(variables.controller10.text);
    variables.theta_t=double.parse(variables.controller14.text);

//calculation
    //I-SNELL
    final U1 = variables.mu * variables.mu_o;
    final U2 = variables.mu_2 * variables.mu_o;
    final E1 = variables.epsilon_o * variables.epsilon_r;
    final E2 = variables.epsilon_o * variables.epsilon_r_2;
    final UE1= U1*E1;
    final UE2= U2*E2;
    final UEt= UE1 / UE2;
    final root_3 = sqrt(UEt);
    final sin_t= sin(variables.theta_t);
    final sin_i = sin_t/root_3;
    final Isnell1= asin(sin_i);


//display constant with 3 significant
    //I-SNELL
    final theta_t_display = variables.theta_t.toStringAsPrecision(4);
    final er_display = variables.epsilon_r.toStringAsPrecision(4);
    final er2_display = variables.epsilon_r_2.toStringAsPrecision(4);
    final mu_display = variables.mu.toStringAsPrecision(4);
    final mu2_display = variables.mu_2.toStringAsPrecision(4);
    final U1_display = U1.toStringAsPrecision(4);
    final U2_display = U2.toStringAsPrecision(4);
    final E1_display = E1.toStringAsPrecision(4);
    final E2_display = E2.toStringAsPrecision(4);
    final UE1_display = UE1.toStringAsPrecision(4);
    final UE2_display = UE2.toStringAsPrecision(4);
    final UEt_display = UEt.toStringAsPrecision(4);
    final root_3_display = root_3.toStringAsPrecision(4);
    final sin_t_display = sin_t.toStringAsPrecision(4);
    final sin_i_display = sin_i.toStringAsPrecision(4);
    final Isnell1_display = Isnell1.toStringAsPrecision(4);


//global variables
    //I-SNELL
    variables.theta_t_display = theta_t_display;
    variables.er_display = er_display;
    variables.er2_display = er2_display;
    variables.E1_display = E1_display;
    variables.E2_display = E2_display;
    variables.mu_display = mu_display;
    variables.mu2_display = mu2_display;
    variables.U1_display = U1_display;
    variables.U2_display = U2_display;
    variables.UE1_display = UE1_display;
    variables.UE2_display = UE2_display;
    variables.UEt_display = UEt_display;
    variables.root_3_display = root_3_display;
    variables.sin_t_display = sin_t_display;
    variables.sin_i_display = sin_i_display;
    variables.Isnell1_display = Isnell1_display;

    Navigator.push(context,
        MaterialPageRoute(
            builder: (context) =>
                i_snell_law_eq1(
                  er_display: variables.er_display,
                  er2_display: variables.er2_display,
                  E1_display: variables.E1_display,
                  E2_display: variables.E2_display,
                  theta_t_display:variables.theta_t_display,
                  mu_display:variables.mu_display,
                  mu2_display:variables.mu2_display,
                  U1_display:variables.U1_display,
                  U2_display:variables.U2_display,
                  UE1_display:variables.UE1_display,
                  UE2_display:variables.UE2_display,
                  UEt_display:variables.UEt_display,
                  root_3_display:variables.root_3_display,
                  sin_t_display:variables.sin_t_display,
                  sin_i_display:variables.sin_i_display,
                  Isnell1_display:variables.Isnell1_display,
                )
        )
    );
  }
}

