import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:extended_math/extended_math.dart';
import 'complex propagation constant 1.dart';
import 'complex propagation constant 2.dart';
import 'complex propagation constant 3.dart';
import 'package:mathv15/main_page/calculation%20formula%20page/variables.dart';


class choose_CPC_page extends StatefulWidget {
  const choose_CPC_page({Key? key}) : super(key: key);
  @override
  State<choose_CPC_page> createState() => _choose_CPC_pageState();
}

class _choose_CPC_pageState extends State<choose_CPC_page> {
  final variables = Variables();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Math v15'),
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
                          'COMPLEX PROPAGATION CONSTANT',
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
                              _vaildateUserinput2(variables.controller7.text);
                            },

                            child: Math.tex(
                                r'\varUpsilon = j\omega \sqrt{\mu(\varepsilon - j \frac{\sigma}{\omega}})',
                                textStyle: const TextStyle(fontSize: 25)),
                          ),
                        ),
                      ),
                    ),
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
                              _vaildateUserinput1(variables.controller3.text);
                            },

                            child: Math.tex(
                                r'\varUpsilon = j\omega \sqrt{\mu\varepsilon_c}',
                                textStyle: const TextStyle(fontSize: 25)),
                          ),
                        ),
                      ),
                    ),
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
                              _vaildateUserinput(variables.controller1.text);
                            },

                            child: Math.tex(
                                r'\varUpsilon = \alpha + j\beta ',
                                textStyle: const TextStyle(fontSize: 25)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  //Calculation for CII 1
  _vaildateUserinput(String input) {
//input
    variables.alpha = double.parse(variables.controller1.text);
    variables.beta = double.parse(variables.controller2.text);


//display constant with 3 significant
    //CPC1
    final a = variables.alpha.toStringAsPrecision(4);
    final b = variables.beta.toStringAsPrecision(4);
    final polar_a = sqrt(variables.alpha*variables.alpha+variables.beta*variables.beta).toStringAsPrecision(4);
    final polar_b = atan(variables.beta/variables.alpha).toStringAsPrecision(4);
    final polar_b_degree =  (atan(variables.beta/variables.alpha)*180/pi).toStringAsPrecision(4);

// //global variables

    variables.a = a;
    variables.b = b;
    variables.c = polar_a;
    variables.d = polar_b;
    variables.e = polar_b_degree;

    Navigator.push(context,
        MaterialPageRoute(
            builder: (context) =>
                complex_propagation_constant1(
                  a: variables.a,
                  b: variables.b,
                  c: variables.c,
                  d: variables.d,
                  e: variables.e,
                )
        )
    );
  }

  //Calculation for CII 2
  _vaildateUserinput1(String input) {
//input
    variables.omega = double.parse(variables.controller3.text);
    variables.mu = double.parse(variables.controller4.text);
    variables.real_epsilon = double.parse(variables.controller5.text);
    variables.im_epsilon = double.parse(variables.controller6.text);

//calculation
    //CPC2
    final neg_im_epsilon = -1* variables.im_epsilon;
    final u = variables.mu * variables.mu_o;
    final E = Complex(re: variables.real_epsilon, im: neg_im_epsilon);
    final x = E.module * u;
    final z = sqrt(x);
    final angle = E.argument / 2;
    final w = Complex(re: 0, im: variables.omega);
    final R_jw = w.module;
    final angle_jw = w.argument;
    final R_propagration_constant1 = R_jw * z;
    final angle_propagration_constant1 = angle_jw + angle;
    final real_propagration_constant1 = R_propagration_constant1 *
        cos(angle_propagration_constant1);
    final im_propagration_constant1 = R_propagration_constant1 *
        sin(angle_propagration_constant1);


//display constant with 3 significant
    //CPC2
    final mu_display = variables.mu.toStringAsFixed(4);
    final u_display = u.toStringAsExponential(4);
    final real_epsilon_display = variables.real_epsilon.toStringAsPrecision(4);
    final im_epsilon_display = variables.im_epsilon.toStringAsPrecision(4);
    final neg_im_epsilon_display = neg_im_epsilon.toStringAsPrecision(4);
    final root_R_display = E.module.toStringAsPrecision(4);
    final root_angle_display = E.argument.toStringAsPrecision(4);
    final root_real_display = z.toStringAsPrecision(4);
    final root_im_display = angle.toStringAsPrecision(4);
    final polar_R_display = x.toStringAsPrecision(4);
    final omega_display = variables.omega.toStringAsPrecision(4);
    final R_jw_display = R_jw.toStringAsPrecision(4);
    final angle_jw_display = angle_jw.toStringAsPrecision(4);
    final R_propagration_constant1_display = R_propagration_constant1
        .toStringAsPrecision(4);
    final angle_propagration_constant1_display = angle_propagration_constant1
        .toStringAsPrecision(4);
    final real_propagration_constant1_display = real_propagration_constant1
        .toStringAsPrecision(4);
    final im_propagration_constant1_display = im_propagration_constant1
        .toStringAsPrecision(4);

//global variables
    variables.epsilon_o = (1 / (36 * pi)) * pow(10, -9);
    variables.mu_o = (4 * pi) * pow(10, -7);
    variables.mu_display = mu_display;
    variables.u_display = u_display;
    variables.real_epsilon_display = real_epsilon_display;
    variables.im_epsilon_display = im_epsilon_display;
    variables.neg_im_epsilon_display = neg_im_epsilon_display;
    variables.root_real_display = root_real_display;
    variables.root_im_display = root_im_display;
    variables.polar_R_display = polar_R_display;
    variables.omega_display = omega_display;
    variables.R_jw_display = R_jw_display;
    variables.angle_jw_display = angle_jw_display;
    variables.R_propagration_constant1_display = R_propagration_constant1_display;
    variables.angle_propagration_constant1_display = angle_propagration_constant1_display;
    variables.real_propagration_constant1_display = real_propagration_constant1_display;
    variables.im_propagration_constant1_display = im_propagration_constant1_display;
    variables.root_R_display = root_R_display;
    variables.root_angle_display = root_angle_display;

    Navigator.push(context,
        MaterialPageRoute(
            builder: (context) =>
                complex_propagation_constant2(
                  mu_display: variables.mu_display,
                  u_display: variables.u_display,
                  real_epsilon_display: variables.real_epsilon_display,
                  im_epsilon_display: variables.im_epsilon_display,
                  neg_im_epsilon_display:variables.neg_im_epsilon_display,
                  root_R_display: variables.root_R_display,
                  root_angle_display: variables.root_angle_display,
                  root_real_display: variables.root_real_display,
                  root_im_display: variables.root_im_display,
                  polar_R_display: variables.polar_R_display,
                  omega_display: variables.omega_display,
                  R_jw_display: variables.R_jw_display,
                  angle_jw_display: variables.angle_jw_display,
                  R_propagration_constant1_display: variables.R_propagration_constant1_display,
                  angle_propagration_constant1_display: variables.angle_propagration_constant1_display,
                  real_propagration_constant1_display: variables.real_propagration_constant1_display,
                  im_propagration_constant1_display: variables.im_propagration_constant1_display,


                )
        )
    );
  }

  //Calculation for CII 3
  _vaildateUserinput2(String input) {
//input

    variables.omega = double.parse(variables.controller3.text);
    variables.mu = double.parse(variables.controller4.text);
    variables.epsilon_r = double.parse(variables.controller7.text);
    variables.sigma = double.parse(variables.controller8.text);

//calculation

    //CPC3
    final sm_om = variables.sigma / variables.omega;
    final u = variables.mu * variables.mu_o;
    final e = variables.epsilon_r * variables.epsilon_o;
    final m = Complex(re: u, im: 0);
    final E3 = Complex(re: e, im: -1 * sm_om);
    final z3 = m * E3;
    final r3 = sqrt(z3.module);
    final angle3 = z3.argument / 2;
    final w = Complex(re: 0, im: variables.omega);
    final R_jw = w.module;
    final angle_jw = w.argument;
    final R_propagration_constant3 = R_jw * r3;
    final angle_propagration_constant3 = angle_jw + angle3;
    final real_propagration_constant3 = R_propagration_constant3 *
        cos(angle_propagration_constant3);
    final im_propagration_constant3 = R_propagration_constant3 *
        sin(angle_propagration_constant3);

//display constant with 3 significant

    //CPC3
    final mu_display = variables.mu.toStringAsPrecision(4);
    final u_display = u.toStringAsPrecision(4);
    final e_display = e.toStringAsPrecision(4);
    final er_display = variables.epsilon_r.toStringAsPrecision(4);
    final eo_display = variables.epsilon_o.toStringAsPrecision(4);
    final e_R_display = E3.module.toStringAsPrecision(4);
    final e_angle_display = E3.argument.toStringAsPrecision(4);
    final sigma_display = variables.sigma.toStringAsPrecision(4);
    final sm_om_display = sm_om.toStringAsPrecision(4);
    final z3_R_display = z3.module.toStringAsPrecision(4);
    final z3_angle_display = z3.argument.toStringAsPrecision(4);
    final root3_R_display = r3.toStringAsPrecision(4);
    final root3_angle_display = angle3.toStringAsPrecision(4);
    final omega_display = variables.omega.toStringAsPrecision(4);
    final R_jw_display = R_jw.toStringAsPrecision(4);
    final angle_jw_display = angle_jw.toStringAsPrecision(4);
    final R_propagration_constant3_display = R_propagration_constant3
        .toStringAsPrecision(4);
    final angle_propagration_constant3_display = angle_propagration_constant3
        .toStringAsPrecision(4);
    final real_propagration_constant3_display = real_propagration_constant3
        .toStringAsPrecision(4);
    final im_propagration_constant3_display = im_propagration_constant3
        .toStringAsPrecision(4);

//global variables
    variables.epsilon_o = (1 / (36 * pi)) * pow(10, -9);
    variables.mu_o = (4 * pi) * pow(10, -7);
    variables.mu_display = mu_display;
    variables.u_display = u_display;
    variables.omega_display = omega_display;
    variables.R_jw_display = R_jw_display;
    variables.angle_jw_display = angle_jw_display;
    variables.e_display = e_display ;
    variables.er_display = er_display;
    variables.eo_display = eo_display;
    variables.e_R_display = e_R_display;
    variables.e_angle_display = e_angle_display;
    variables.sigma_display = sigma_display;
    variables.sm_om_display = sm_om_display;
    variables.z3_R_display = z3_R_display;
    variables.z3_angle_display = z3_angle_display;
    variables.root3_R_display = root3_R_display;
    variables.root3_angle_display = root3_angle_display;
    variables.R_propagration_constant3_display = R_propagration_constant3_display;
    variables.angle_propagration_constant3_display = angle_propagration_constant3_display;
    variables.real_propagration_constant3_display = real_propagration_constant3_display;
    variables.im_propagration_constant3_display = im_propagration_constant3_display;

    Navigator.push(context,
        MaterialPageRoute(
            builder: (context) =>
                complex_propagation_constant3(
                  mu_display: variables.mu_display,
                  u_display: variables.u_display,
                  e_display: variables.e_display,
                  er_display: variables.er_display,
                  eo_display: variables.eo_display,
                  e_R_display: variables.e_R_display,
                  e_angle_display: variables.e_angle_display,
                  sigma_display: variables.sigma_display,
                  sm_om_display: variables.sm_om_display,
                  z3_R_display: variables.z3_R_display,
                  z3_angle_display: variables.z3_angle_display,
                  root3_R_display: variables.root3_R_display,
                  root3_angle_display: variables.root3_angle_display,
                  omega_display: variables.omega_display,
                  R_jw_display: variables.R_jw_display,
                  angle_jw_display: variables.angle_jw_display,
                  R_propagration_constant3_display: variables.R_propagration_constant3_display,
                  angle_propagration_constant3_display: variables.angle_propagration_constant3_display,
                  real_propagration_constant3_display: variables.real_propagration_constant3_display,
                  im_propagration_constant3_display: variables.im_propagration_constant3_display,


                )
        )
    );
  }

//   _vaildateUserinput(String input) {        // This is a backup of all the calculation and making it 3 decmial,making it global for CPC 1,2 and 3
// //input
//     variables.alpha = double.parse(variables.controller1.text);
//     variables.beta = double.parse(variables.controller2.text);
//     /*variables.omega = double.parse(variables.controller3.text);
//     variables.mu = double.parse(variables.controller4.text);
//     variables.real_epsilon = double.parse(variables.controller5.text);
//     variables.im_epsilon = double.parse(variables.controller6.text);
//     variables.epsilon_r = double.parse(variables.controller7.text);
//     variables.sigma = double.parse(variables.controller8.text);*/
//
// //calculation
// //     //CPC2
// //     final neg_im_epsilon = -1* variables.im_epsilon;
// //     final u = variables.mu * variables.mu_o;
// //     final E = Complex(re: variables.real_epsilon, im: neg_im_epsilon);
// //     final x = E.module * u;
// //     final z = sqrt(x);
// //     final angle = E.argument / 2;
// //     final w = Complex(re: 0, im: variables.omega);
// //     final R_jw = w.module;
// //     final angle_jw = w.argument;
// //     final R_propagration_constant1 = R_jw * z;
// //     final angle_propagration_constant1 = angle_jw + angle;
// //     final real_propagration_constant1 = R_propagration_constant1 *
// //         cos(angle_propagration_constant1);
// //     final im_propagration_constant1 = R_propagration_constant1 *
// //         sin(angle_propagration_constant1);
// //
// //     //CPC3
// //     final sm_om = variables.sigma / variables.omega;
// //     // final u = variables.mu * variables.mu_o;
// //     final e = variables.epsilon_r * variables.epsilon_o;
// //     final m = Complex(re: u, im: 0);
// //     final E3 = Complex(re: e, im: -1 * sm_om);
// //     final z3 = m * E3;
// //     final r3 = sqrt(z3.module);
// //     final angle3 = z3.argument / 2;
// //     // final w = Complex(re: 0, im: variables.omega);
// //     // final R_jw = w.module;
// //     // final angle_jw = w.argument;
// //     final R_propagration_constant3 = R_jw * r3;
// //     final angle_propagration_constant3 = angle_jw + angle3;
// //     final real_propagration_constant3 = R_propagration_constant3 *
// //         cos(angle_propagration_constant3);
// //     final im_propagration_constant3 = R_propagration_constant3 *
// //         sin(angle_propagration_constant3);
//
// //display constant with 3 significant
//     //CPC1
//     final a = variables.alpha.toStringAsPrecision(4);
//     final b = variables.beta.toStringAsPrecision(4);
//
//     // //CPC2
//     // final mu_display = variables.mu.toStringAsFixed(4);
//     // final u_display = u.toStringAsExponential(4);
//     // final real_epsilon_display = variables.real_epsilon.toStringAsPrecision(4);
//     // final im_epsilon_display = variables.im_epsilon.toStringAsPrecision(4);
//     // final neg_im_epsilon_display = neg_im_epsilon.toStringAsPrecision(4);
//     // final root_R_display = E.module.toStringAsPrecision(4);
//     // final root_angle_display = E.argument.toStringAsPrecision(4);
//     // final root_real_display = z.toStringAsPrecision(4);
//     // final root_im_display = angle.toStringAsPrecision(4);
//     // final polar_R_display = x.toStringAsPrecision(4);
//     // final omega_display = variables.omega.toStringAsPrecision(4);
//     // final R_jw_display = R_jw.toStringAsPrecision(4);
//     // final angle_jw_display = angle_jw.toStringAsPrecision(4);
//     // final R_propagration_constant1_display = R_propagration_constant1
//     //     .toStringAsPrecision(4);
//     // final angle_propagration_constant1_display = angle_propagration_constant1
//     //     .toStringAsPrecision(4);
//     // final real_propagration_constant1_display = real_propagration_constant1
//     //     .toStringAsPrecision(4);
//     // final im_propagration_constant1_display = im_propagration_constant1
//     //     .toStringAsPrecision(4);
//     //
//     // //CPC3
//     // // final mu_display = variables.mu.toStringAsPrecision(4);
//     // // final u_display = u.toStringAsPrecision(4);
//     // final e_display = e.toStringAsPrecision(4);
//     // final er_display = variables.epsilon_r.toStringAsPrecision(4);
//     // final eo_display = variables.epsilon_o.toStringAsPrecision(4);
//     // final e_R_display = E3.module.toStringAsPrecision(4);
//     // final e_angle_display = E3.argument.toStringAsPrecision(4);
//     // final sigma_display = variables.sigma.toStringAsPrecision(4);
//     // final sm_om_display = sm_om.toStringAsPrecision(4);
//     // final z3_R_display = z3.module.toStringAsPrecision(4);
//     // final z3_angle_display = z3.argument.toStringAsPrecision(4);
//     // final root3_R_display = r3.toStringAsPrecision(4);
//     // final root3_angle_display = angle3.toStringAsPrecision(4);
//     // // final omega_display = variables.omega.toStringAsPrecision(4);
//     // // final R_jw_display = R_jw.toStringAsPrecision(4);
//     // // final angle_jw_display = angle_jw.toStringAsPrecision(4);
//     // final R_propagration_constant3_display = R_propagration_constant3
//     //     .toStringAsPrecision(4);
//     // final angle_propagration_constant3_display = angle_propagration_constant3
//     //     .toStringAsPrecision(4);
//     // final real_propagration_constant3_display = real_propagration_constant3
//     //     .toStringAsPrecision(4);
//     // final im_propagration_constant3_display = im_propagration_constant3
//     //     .toStringAsPrecision(4);
//
// // //global variables
// //     variables.epsilon_o = (1 / (36 * pi)) * pow(10, -9);
// //     variables.mu_o = (4 * pi) * pow(10, -7);
//     variables.a = a;
//     variables.b = b;
//     // variables.mu_display = mu_display;
//     // variables.u_display = u_display;
//     // variables.real_epsilon_display = real_epsilon_display;
//     // variables.im_epsilon_display = im_epsilon_display;
//     // variables.neg_im_epsilon_display = neg_im_epsilon_display;
//     // variables.root_real_display = root_real_display;
//     // variables.root_im_display = root_im_display;
//     // variables.polar_R_display = polar_R_display;
//     // variables.omega_display = omega_display;
//     // variables.R_jw_display = R_jw_display;
//     // variables.angle_jw_display = angle_jw_display;
//     // variables.R_propagration_constant1_display = R_propagration_constant1_display;
//     // variables.angle_propagration_constant1_display = angle_propagration_constant1_display;
//     // variables.real_propagration_constant1_display = real_propagration_constant1_display;
//     // variables.im_propagration_constant1_display = im_propagration_constant1_display;
//     // variables.root_R_display = root_R_display;
//     // variables.root_angle_display = root_angle_display;
//     // variables.e_display = e_display ;
//     // variables.er_display = er_display;
//     // variables.eo_display = eo_display;
//     // variables.e_R_display = e_R_display;
//     // variables.e_angle_display = e_angle_display;
//     // variables.sigma_display = sigma_display;
//     // variables.sm_om_display = sm_om_display;
//     // variables.z3_R_display = z3_R_display;
//     // variables.z3_angle_display = z3_angle_display;
//     // variables.root3_R_display = root3_R_display;
//     // variables.root3_angle_display = root3_angle_display;
//     // variables.R_propagration_constant3_display = R_propagration_constant3_display;
//     // variables.angle_propagration_constant3_display = angle_propagration_constant3_display;
//     // variables.real_propagration_constant3_display = real_propagration_constant3_display;
//     // variables.im_propagration_constant3_display = im_propagration_constant3_display;
//     Navigator.push(context,
//         MaterialPageRoute(
//             builder: (context) =>
//                 complex_propagation_constant1(
//                   a: variables.a,
//                   b: variables.b,
//                 )
//         )
//     );
//   }
}