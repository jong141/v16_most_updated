import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:extended_math/extended_math.dart';
import 'complex intrinsic impedance 1.dart';
import 'complex intrinsic impedance 2.dart';
import 'package:mathv15/main_page/calculation%20formula%20page/variables.dart';


class choose_CII_page extends StatefulWidget {
  const choose_CII_page({Key? key}) : super(key: key);
  @override
  State<choose_CII_page> createState() => _choose_CII_pageState();
}

class _choose_CII_pageState extends State<choose_CII_page> {
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
                          'COMPLEX INTRINSIC IMPEDANCE',
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
                              _vaildateUserinput(variables.controller4.text);
                            },

                            child: Math.tex(
                                r'\eta_c = \sqrt{\frac{\mu}{\varepsilon_c}} ',
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
                              _vaildateUserinput1(variables.controller7.text);
                            },

                            child: Math.tex(
                                r'\eta_c = \sqrt{\frac{\mu}{\varepsilon - j\large\frac{\sigma}{\omega}}} ',
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
    variables.mu = double.parse(variables.controller4.text);
    variables.real_epsilon = double.parse(variables.controller5.text);
    variables.im_epsilon = double.parse(variables.controller6.text);

//calculation
    //CII1
    final neg_im_epsilon = -1 * variables.im_epsilon;
    final E = Complex(re: variables.real_epsilon, im: neg_im_epsilon);
    final u = variables.mu * variables.mu_o;
    final g_real = u / E.module;
    final g_angle = -1 * E.argument;
    final q_square_real = sqrt(g_real);
    final g_square_angle = g_angle / 2;
    final g_sqaure_re = q_square_real * cos(g_square_angle);
    final g_sqaure_im = q_square_real * sin(g_square_angle);

//display constant with 3 significant
    //CII1
    final mu_display = variables.mu.toStringAsFixed(4);
    final u_display = u.toStringAsPrecision(4);
    final real_epsilon_display = variables.real_epsilon.toStringAsPrecision(4);
    final im_epsilon_display = variables.im_epsilon.toStringAsPrecision(4);
    final neg_im_epsilon_display = neg_im_epsilon.toStringAsPrecision(4);
    final root_R_display = E.module.toStringAsPrecision(4);
    final root_angle_display = E.argument.toStringAsPrecision(4);
    final q_real_display = g_real.toStringAsPrecision(4);
    final q_angle_display = g_angle.toStringAsPrecision(4);
    final q_square_real_display = q_square_real.toStringAsPrecision(4);
    final g_square_angle_display = g_square_angle.toStringAsPrecision(4);
    final g_sqaure_re_display = g_sqaure_re.toStringAsPrecision(4);
    final g_sqaure_im_display = g_sqaure_im.toStringAsPrecision(4);

//global variables
    //CII1
    variables.mu_display = mu_display;
    variables.u_display = u_display;
    variables.real_epsilon_display = real_epsilon_display;
    variables.im_epsilon_display = im_epsilon_display;
    variables.neg_im_epsilon_display = neg_im_epsilon_display;
    variables.root_R_display = root_R_display;
    variables.root_angle_display = root_angle_display;
    variables.q_real_display = q_real_display;
    variables.q_angle_display = q_angle_display;
    variables.q_square_real_display = q_square_real_display;
    variables.g_square_angle_display = g_square_angle_display;
    variables.g_sqaure_re_display = g_sqaure_re_display;
    variables.g_sqaure_im_display = g_sqaure_im_display;

    Navigator.push(context,
        MaterialPageRoute(
            builder: (context) =>
                complex_intrinsic_impedance1(
                  mu_display: variables.mu_display,
                  u_display: variables.u_display,
                  real_epsilon_display: variables.real_epsilon_display,
                  im_epsilon_display: variables.im_epsilon_display,
                  neg_im_epsilon_display : variables.neg_im_epsilon_display,
                  root_R_display: variables.root_R_display,
                  root_angle_display: variables.root_angle_display,
                  q_real_display: variables.q_real_display,
                  q_angle_display: variables.q_angle_display,
                  q_square_real_display: variables.q_square_real_display,
                  g_square_angle_display: variables.g_square_angle_display,
                  g_sqaure_re_display: variables.g_sqaure_re_display,
                  g_sqaure_im_display: variables.g_sqaure_im_display,
                )
        )
    );
  }

  //Calculation for CII 2
  _vaildateUserinput1(String input) {
    //input
    variables.omega = double.parse(variables.controller3.text);
    variables.mu = double.parse(variables.controller4.text);
    variables.epsilon_r = double.parse(variables.controller7.text);
    variables.sigma = double.parse(variables.controller8.text);

//calculation

    //CII2
    final e = variables.epsilon_r * variables.epsilon_o;
    final sm_om = variables.sigma / variables.omega;
    final E3 = Complex(re: e, im: -1 * sm_om);
    final u = variables.mu * variables.mu_o;
    final g_real3 = u / E3.module;
    final g_angle3 = -1 * E3.argument;
    final q_square_real3 = sqrt(g_real3);
    final g_square_angle3 = g_angle3 / 2;
    final g_sqaure_re3 = q_square_real3 * cos(g_square_angle3);
    final g_sqaure_im3 = q_square_real3 * sin(g_square_angle3);



//display constant with 3 significant

    //CII2
    final omega_display = variables.omega.toStringAsPrecision(4);
    final sigma_display = variables.sigma.toStringAsPrecision(4);
    final er_display = variables.epsilon_r.toStringAsPrecision(4);
    final eo_display = variables.epsilon_o.toStringAsPrecision(4);
    final real_epsilon_display3 = e.toStringAsPrecision(4);
    final im_epsilon_display3 = sm_om.toStringAsPrecision(4);
    final root_R_display3 = E3.module.toStringAsPrecision(4);
    final root_angle_display3 = E3.argument.toStringAsPrecision(4);
    final q_real_display3 = g_real3.toStringAsPrecision(4);
    final q_angle_display3 = g_angle3.toStringAsPrecision(4);
    final q_square_real_display3 = q_square_real3.toStringAsPrecision(4);
    final g_square_angle_display3 = g_square_angle3.toStringAsPrecision(4);
    final g_sqaure_re_display3 = g_sqaure_re3.toStringAsPrecision(4);
    final g_sqaure_im_display3 = g_sqaure_im3.toStringAsPrecision(4);


//global variables

    //CII2
    variables.omega_display = omega_display;
    variables.sigma_display = sigma_display;
    variables.er_display = er_display;
    variables.eo_display = eo_display;
    variables.real_epsilon_display3 = real_epsilon_display3;
    variables.im_epsilon_display3 = im_epsilon_display3;
    variables.root_R_display3 = root_R_display3;
    variables.root_angle_display3 = root_angle_display3;
    variables.q_real_display3 = q_real_display3;
    variables.q_angle_display3 = q_angle_display3;
    variables.q_square_real_display3 = q_square_real_display3;
    variables.g_square_angle_display3 = g_square_angle_display3;
    variables.g_sqaure_re_display3 = g_sqaure_re_display3;
    variables.g_sqaure_im_display3 = g_sqaure_im_display3;

    Navigator.push(context,
        MaterialPageRoute(
            builder: (context) =>
                complex_intrinsic_impedance2(
                  mu_display: variables.mu_display,
                  u_display: variables.u_display,
                  omega_display:variables.omega_display,
                  sigma_display:variables.sigma_display,
                  er_display:variables.er_display,
                  eo_display:variables.eo_display,
                  real_epsilon_display3:variables.real_epsilon_display3,
                  im_epsilon_display3:variables.im_epsilon_display3,
                  root_R_display3:variables.root_R_display3,
                  root_angle_display3:variables.root_angle_display3,
                  q_real_display3:variables.q_real_display3,
                  q_angle_display3:variables.q_angle_display3,
                  q_square_real_display3:variables.q_square_real_display3,
                  g_square_angle_display3:variables.g_square_angle_display3,
                  g_sqaure_re_display3:variables.g_sqaure_re_display3,
                  g_sqaure_im_display3:variables.g_sqaure_im_display3,

                )
        )
    );
  }
  //Backup of all the CII calculation, 3 decimal, global value
//   _vaildateUserinput1(String input) {
//     //input
//     variables.omega = double.parse(variables.controller3.text);
//     variables.mu = double.parse(variables.controller4.text);
//     variables.real_epsilon = double.parse(variables.controller5.text);
//     variables.im_epsilon = double.parse(variables.controller6.text);
//     variables.epsilon_r = double.parse(variables.controller7.text);
//     variables.sigma = double.parse(variables.controller8.text);
//
// //calculation
//     //CII1
//     final neg_im_epsilon = -1 * variables.im_epsilon;
//     final E = Complex(re: variables.real_epsilon, im: neg_im_epsilon);
//     final u = variables.mu * variables.mu_o;
//     final g_real = u / E.module;
//     final g_angle = -1 * E.argument;
//     final q_square_real = sqrt(g_real);
//     final g_square_angle = g_angle / 2;
//     final g_sqaure_re = q_square_real * cos(g_square_angle);
//     final g_sqaure_im = q_square_real * sin(g_square_angle);
//
//     //CII2
//     final e = variables.epsilon_r * variables.epsilon_o;
//     final sm_om = variables.sigma / variables.omega;
//     final E3 = Complex(re: e, im: -1 * sm_om);
//     // final u = variables.mu * variables.mu_o;
//     final g_real3 = u / E3.module;
//     final g_angle3 = -1 * E3.argument;
//     final q_square_real3 = sqrt(g_real);
//     final g_square_angle3 = g_angle / 2;
//     final g_sqaure_re3 = q_square_real * cos(g_square_angle);
//     final g_sqaure_im3 = q_square_real * sin(g_square_angle);
//
//
//
// //display constant with 3 significant
//     //CII1
//     final mu_display = variables.mu.toStringAsFixed(4);
//     final u_display = u.toStringAsPrecision(4);
//     final real_epsilon_display = variables.real_epsilon.toStringAsPrecision(4);
//     final im_epsilon_display = variables.im_epsilon.toStringAsPrecision(4);
//     final neg_im_epsilon_display = neg_im_epsilon.toStringAsPrecision(4);
//     final root_R_display = E.module.toStringAsPrecision(4);
//     final root_angle_display = E.argument.toStringAsPrecision(4);
//     final q_real_display = g_real.toStringAsPrecision(4);
//     final q_angle_display = g_angle.toStringAsPrecision(4);
//     final q_square_real_display = q_square_real.toStringAsPrecision(4);
//     final g_square_angle_display = g_square_angle.toStringAsPrecision(4);
//     final g_sqaure_re_display = g_sqaure_re.toStringAsPrecision(4);
//     final g_sqaure_im_display = g_sqaure_im.toStringAsPrecision(4);
//
//     //CII2
//     final omega_display = variables.omega.toStringAsPrecision(4);
//     final sigma_display = variables.sigma.toStringAsPrecision(4);
//     final er_display = variables.epsilon_r.toStringAsPrecision(4);
//     final eo_display = variables.epsilon_o.toStringAsPrecision(4);
//     final real_epsilon_display3 = e.toStringAsPrecision(4);
//     final im_epsilon_display3 = sm_om.toStringAsPrecision(4);
//     final root_R_display3 = E3.module.toStringAsPrecision(4);
//     final root_angle_display3 = E3.argument.toStringAsPrecision(4);
//     final q_real_display3 = g_real3.toStringAsPrecision(4);
//     final q_angle_display3 = g_angle3.toStringAsPrecision(4);
//     final q_square_real_display3 = q_square_real3.toStringAsPrecision(4);
//     final g_square_angle_display3 = g_square_angle3.toStringAsPrecision(4);
//     final g_sqaure_re_display3 = g_sqaure_re3.toStringAsPrecision(4);
//     final g_sqaure_im_display3 = g_sqaure_im3.toStringAsPrecision(4);
//
//
// //global variables
//     //CII1
//     variables.mu_display = mu_display;
//     variables.u_display = u_display;
//     variables.real_epsilon_display = real_epsilon_display;
//     variables.im_epsilon_display = im_epsilon_display;
//     variables.neg_im_epsilon_display = neg_im_epsilon_display;
//     variables.root_R_display = root_R_display;
//     variables.root_angle_display = root_angle_display;
//     variables.q_real_display = q_real_display;
//     variables.q_angle_display = q_angle_display;
//     variables.q_square_real_display = q_square_real_display;
//     variables.g_square_angle_display = g_square_angle_display;
//     variables.g_sqaure_re_display = g_sqaure_re_display;
//     variables.g_sqaure_im_display = g_sqaure_im_display;
//
//     //CII2
//     variables.omega_display = omega_display;
//     variables.sigma_display = sigma_display;
//     variables.er_display = er_display;
//     variables.eo_display = eo_display;
//     variables.real_epsilon_display3 = real_epsilon_display3;
//     variables.im_epsilon_display3 = im_epsilon_display3;
//     variables.root_R_display3 = root_R_display3;
//     variables.root_angle_display3 = root_angle_display3;
//     variables.q_real_display3 = q_real_display3;
//     variables.q_angle_display3 = q_angle_display3;
//     variables.q_square_real_display3 = q_square_real_display3;
//     variables.g_square_angle_display3 = g_square_angle_display3;
//     variables.g_sqaure_re_display3 = g_sqaure_re_display3;
//     variables.g_sqaure_im_display3 = g_sqaure_im_display3;
//
//     Navigator.push(context,
//         MaterialPageRoute(
//             builder: (context) =>
//                 choose_CII_page(
//                   mu_display: variables.mu_display,
//                   u_display: variables.u_display,
//                   real_epsilon_display:variables.real_epsilon_display,
//                   im_epsilon_display:variables.im_epsilon_display,
//                   neg_im_epsilon_display:variables.neg_im_epsilon_display,
//                   root_R_display:variables.root_R_display,
//                   root_angle_display:variables.root_angle_display,
//                   q_real_display:variables.q_real_display,
//                   q_angle_display:variables.q_angle_display,
//                   q_square_real_display:variables.q_square_real_display,
//                   g_square_angle_display:variables.g_square_angle_display,
//                   g_sqaure_re_display:variables.g_sqaure_re_display,
//                   g_sqaure_im_display:variables.g_sqaure_im_display,
//
//                   //CII2
//                   omega_display:variables.omega_display,
//                   sigma_display:variables.sigma_display,
//                   er_display:variables.er_display,
//                   eo_display:variables.eo_display,
//                   real_epsilon_display3:variables.real_epsilon_display3,
//                   im_epsilon_display3:variables.im_epsilon_display3,
//                   root_R_display3:variables.root_R_display3,
//                   root_angle_display3:variables.root_angle_display3,
//                   q_real_display3:variables.q_real_display3,
//                   q_angle_display3:variables.q_angle_display3,
//                   q_square_real_display3:variables.q_square_real_display3,
//                   g_square_angle_display3:variables.g_square_angle_display3,
//                   g_sqaure_re_display3:variables.g_sqaure_re_display3,
//                   g_sqaure_im_display3:variables.g_sqaure_im_display3,
//                 )
//         )
//     );
//   }
}