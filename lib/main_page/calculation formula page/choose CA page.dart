import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:extended_math/extended_math.dart';
import 'critical angle equation 1.dart';
import 'critical angle equation 2.dart';
import 'critical angle equation 3.dart';
import 'package:mathv15/main_page/calculation%20formula%20page/variables.dart';


class choose_CA_page extends StatefulWidget {
  const choose_CA_page({Key? key}) : super(key: key);
  @override
  State<choose_CA_page> createState() => _choose_CA_pageState();
}

class _choose_CA_pageState extends State<choose_CA_page> {
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
                          'Critical Angle Equations',
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
                                r'\sin\theta_c = \sqrt \frac{\varepsilon_2}{\varepsilon_1}',
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
                              _vaildateUserinput1(variables.controller11.text);
                            },

                            child: Math.tex(
                                r'\sin\theta_c = \sqrt \frac{\varepsilon_{2C}}{\varepsilon_{1C}}',
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

  //Calculation for CA 1
  _vaildateUserinput(String input) {
    //input
    variables.epsilon_r = double.parse(variables.controller7.text);
    variables.epsilon_r_2= double.parse(variables.controller10.text);


//calculation
    //CA1
    final E1 = variables.epsilon_o*variables.epsilon_r;
    final E2 = variables.epsilon_o*variables.epsilon_r_2;
    final Et = E2/E1;
    final root = sqrt(Et);
    final ca1 = asin(root);


//display constant with 3 significant
    //CA1
    final er_display = variables.epsilon_r.toStringAsPrecision(4);
    final er2_display = variables.epsilon_r_2.toStringAsPrecision(4);
    final E1_display = E1.toStringAsPrecision(4);
    final E2_display = E2.toStringAsPrecision(4);
    final Et_display = Et.toStringAsPrecision(4);
    final root_display = root.toStringAsPrecision(4);
    final ca1_display = ca1.toStringAsPrecision(4);


//global variables
    //CA1
    variables.epsilon_o = (1 / (36 * pi)) * pow(10, -9);
    variables.er_display = er_display;
    variables.er2_display = er2_display;
    variables.E1_display = E1_display;
    variables.E2_display = E2_display;
    variables.Et_display = Et_display;
    variables.root_display = root_display;
    variables.ca1_display = ca1_display;

    Navigator.push(context,
        MaterialPageRoute(
            builder: (context) =>
                critical_angle_eq1(
                  er_display: variables.er_display,
                  er2_display: variables.er2_display,
                  E1_display:variables.E1_display,
                  E2_display:variables.E2_display,
                  Et_display:variables.Et_display,
                  root_display:variables.root_display,
                  ca1_display:variables.ca1_display,

                )
        )
    );
  }

  //Calculation for CA 2
  _vaildateUserinput1(String input) {
    //input
    variables.real_epsilon = double.parse(variables.controller5.text);
    variables.im_epsilon = double.parse(variables.controller6.text);
    variables.real_epsilon_2 = double.parse(variables.controller11.text);
    variables.im_epsilon_2 = double.parse(variables.controller12.text);


//calculation
    //CA2
    final E1_2 = Complex(re: variables.real_epsilon, im: variables.im_epsilon);
    final E2_2 = Complex(re: variables.real_epsilon_2, im: variables.im_epsilon_2);
    final Et = E2_2/E1_2;
    if (Et.im != 0){
      setState(() {
        final r_root = sqrt(Et.module);
        final angle_root = Et.argument/2;
        //arcsin(z) = -i * ln(i*z + sqrt(1 - z^2)); z is a complex number
        //z^2
        final arcsin_r = r_root*r_root;
        final arcsin_angle = angle_root*2;
        final arcsin_12 = arcsin_r*cos(arcsin_angle);
        final arcsin_123 = arcsin_r*sin(arcsin_angle);
        final arcsin_12345 = Complex(re:1-arcsin_12,im:-1*arcsin_123);
        //sqrt(1 - z^2))
        final arcsin_sqrt_real = sqrt(arcsin_12345.module);
        final arcsin_sqrt_im = arcsin_12345.argument/2;
        //i*z
        final arcsin_iz_angle = (pi/2)+angle_root;
        //i*z + sqrt(1 - z^2)
        final arcsin_real_part1=r_root * cos(arcsin_iz_angle);
        final arcsin_im_part1=r_root * sin(arcsin_iz_angle);
        final arcsin_real_part2=arcsin_sqrt_real * cos(arcsin_sqrt_im);
        final arcsin_im_part2=arcsin_sqrt_real * sin(arcsin_sqrt_im);
        final arcsin_real= arcsin_real_part1 + arcsin_real_part2;
        final arcsin_im= arcsin_im_part1 + arcsin_im_part2;
        final arcsin_complex = Complex(re:arcsin_real, im:arcsin_im);
        //ln(i*z + sqrt(1 - z^2))
        final arcsin_rr= arcsin_complex.module;
        final arcsin_iim= arcsin_complex.argument;
        final arcsin_ln_r= log(arcsin_rr);
        final arcsin_ln= Complex(re:arcsin_ln_r, im:arcsin_iim);
        //-i * ln(i*z + sqrt(1 - z^2))
        final ca2_ans= Complex(re: 0,im: -1)*arcsin_ln;

//display constant with 3 significant
        //CA2
        final real_epsilon_display = variables.real_epsilon.toStringAsPrecision(4);
        final im_epsilon_display = variables.im_epsilon.toStringAsPrecision(4);
        final r_epsilon_disply = E1_2.module.toStringAsPrecision(4);
        final angle_epsilon_display = E1_2.argument.toStringAsPrecision(4);
        final real_epsilon_display_2 = variables.real_epsilon_2.toStringAsPrecision(4);
        final im_epsilon_display_2 = variables.im_epsilon_2.toStringAsPrecision(4);
        final r_epsilon_disply_2 = E2_2.module.toStringAsPrecision(4);
        final angle_epsilon_display_2 = E2_2.argument.toStringAsPrecision(4);
        final Et_real_display = Et.re.toStringAsPrecision(4);
        final Et_im_display = Et.im.toStringAsPrecision(4);
        final Et_r_diplay = Et.module.toStringAsPrecision(4);
        final Et_angle_display = Et.argument.toStringAsPrecision(4);
        final r_root_display = r_root.toStringAsPrecision(4);
        final angle_root_display = angle_root.toStringAsPrecision(4);
        final arcsin_r_display = arcsin_r.toStringAsPrecision(4);
        final arcsin_angle_display = arcsin_angle.toStringAsPrecision(4);
        final arcsin_12_display = arcsin_12.toStringAsPrecision(4);
        final arcsin_123_display  = arcsin_123.toStringAsPrecision(4);
        final arcsin_1234_display = arcsin_12345.module.toStringAsPrecision(4);
        final arcsin_12345_display = arcsin_12345.argument.toStringAsPrecision(4);
        final arcsin_sqrt_real_display = arcsin_sqrt_real.toStringAsPrecision(4);
        final arcsin_sqrt_im_display = arcsin_sqrt_im.toStringAsPrecision(4);
        final arcsin_iz_angle_display = arcsin_iz_angle.toStringAsPrecision(4);
        final arcsin_real_part1_display = arcsin_real_part1.toStringAsPrecision(4);
        final arcsin_im_part1_display = arcsin_im_part1.toStringAsPrecision(4);
        final arcsin_real_part2_display = arcsin_real_part2.toStringAsPrecision(4);
        final arcsin_im_part2_display = arcsin_im_part2.toStringAsPrecision(4);
        final arcsin_real_display = arcsin_real.toStringAsPrecision(4);
        final arcsin_im_display = arcsin_im.toStringAsPrecision(4);
        final arcsin_rr_display = arcsin_rr.toStringAsPrecision(4);
        final arcsin_iim_display = arcsin_iim.toStringAsPrecision(4);
        final arcsin_ln_re_display = arcsin_ln.re.toStringAsPrecision(4);
        final arcsin_ln_im_display = arcsin_ln.im.toStringAsPrecision(4);
        final ca2_real_display = ca2_ans.re.toStringAsPrecision(4);
        final ca2_im_display = ca2_ans.im.toStringAsPrecision(4);

//global variables
        //CA2
        variables.epsilon_o = (1 / (36 * pi)) * pow(10, -9);
        variables.real_epsilon_display= real_epsilon_display;
        variables.im_epsilon_display= im_epsilon_display;
        variables.r_epsilon_disply = r_epsilon_disply;
        variables.angle_epsilon_display = angle_epsilon_display;
        variables.real_epsilon_display_2= real_epsilon_display_2;
        variables.im_epsilon_display_2= im_epsilon_display_2;
        variables.r_epsilon_disply_2 = r_epsilon_disply_2;
        variables.angle_epsilon_display_2 = angle_epsilon_display_2;
        variables.Et_real_display= Et_real_display;
        variables.Et_im_display= Et_im_display;
        variables.Et_r_diplay= Et_r_diplay;
        variables.Et_angle_display= Et_angle_display;
        variables.r_root_display= r_root_display;
        variables.angle_root_display= angle_root_display;
        variables.arcsin_r_display= arcsin_r_display;
        variables.arcsin_angle_display= arcsin_angle_display;
        variables.arcsin_12_display = arcsin_12_display;
        variables.arcsin_123_display  = arcsin_123_display;
        variables.arcsin_1234_display = arcsin_1234_display;
        variables.arcsin_12345_display = arcsin_12345_display;
        variables.arcsin_sqrt_real_display= arcsin_sqrt_real_display;
        variables.arcsin_sqrt_im_display= arcsin_sqrt_im_display;
        variables.arcsin_iz_angle_display= arcsin_iz_angle_display;
        variables.arcsin_real_part1_display= arcsin_real_part1_display;
        variables.arcsin_im_part1_display= arcsin_im_part1_display;
        variables.arcsin_real_part2_display= arcsin_real_part2_display;
        variables.arcsin_im_part2_display= arcsin_im_part2_display;
        variables.arcsin_real_display= arcsin_real_display;
        variables.arcsin_im_display= arcsin_im_display;
        variables.arcsin_rr_display= arcsin_rr_display;
        variables.arcsin_iim_display= arcsin_iim_display;
        variables.arcsin_ln_re_display= arcsin_ln_re_display;
        variables.arcsin_ln_im_display= arcsin_ln_im_display;
        variables.ca2_real_display= ca2_real_display;
        variables.ca2_im_display= ca2_im_display;

        Navigator.push(context,
            MaterialPageRoute(
                builder: (context) =>
                    critical_angle_eq2(
                      real_epsilon_display:variables.real_epsilon_display,
                      im_epsilon_display:variables.im_epsilon_display,
                      r_epsilon_disply:variables.r_epsilon_disply,
                      angle_epsilon_display:angle_epsilon_display,
                      real_epsilon_display_2 :variables.real_epsilon_display_2,
                      im_epsilon_display_2:variables.im_epsilon_display_2,
                      r_epsilon_disply_2 : r_epsilon_disply_2,
                      angle_epsilon_display_2 : angle_epsilon_display_2,
                      Et_real_display:variables.Et_real_display,
                      Et_im_display:variables.Et_im_display,
                      Et_r_diplay:variables.Et_r_diplay,
                      Et_angle_display :variables.Et_angle_display,
                      r_root_display:variables.r_root_display,
                      angle_root_display:variables.angle_root_display,
                      arcsin_r_display:variables.arcsin_r_display,
                      arcsin_angle_display:variables.arcsin_angle_display,

                      arcsin_12_display: variables.arcsin_12_display,
                      arcsin_123_display: variables.arcsin_123_display,
                      arcsin_1234_display: variables.arcsin_1234_display,
                      arcsin_12345_display:  variables.arcsin_12345_display,

                      arcsin_sqrt_real_display:variables.arcsin_sqrt_real_display,
                      arcsin_sqrt_im_display:variables.arcsin_sqrt_im_display,
                      arcsin_iz_angle_display:variables.arcsin_iz_angle_display,
                      arcsin_real_part1_display:variables.arcsin_real_part1_display,
                      arcsin_im_part1_display:variables.arcsin_im_part1_display,
                      arcsin_real_part2_display:variables.arcsin_real_part2_display,
                      arcsin_im_part2_display:variables.arcsin_im_part2_display,
                      arcsin_real_display:variables.arcsin_real_display,
                      arcsin_im_display:variables.arcsin_im_display,
                      arcsin_rr_display:variables.arcsin_rr_display,
                      arcsin_iim_display:variables.arcsin_iim_display,
                      arcsin_ln_re_display:variables.arcsin_ln_re_display,
                      arcsin_ln_im_display:variables.arcsin_ln_im_display,
                      ca2_real_display:variables.ca2_real_display,
                      ca2_im_display:variables.ca2_im_display,

                    )
            )
        );
      });
    }
    if(Et.im == 0){
        setState(() {
          final root_2 = sqrt(Et.module);
          final ca2 = asin(root_2);


          //display constant with 3 significant
          //CA1
          final real_epsilon_display = variables.real_epsilon.toStringAsPrecision(4);
          final im_epsilon_display = variables.im_epsilon.toStringAsPrecision(4);
          final r_epsilon_disply = E1_2.module.toStringAsPrecision(4);
          final angle_epsilon_display = E1_2.argument.toStringAsPrecision(4);
          final real_epsilon_display_2 = variables.real_epsilon_2.toStringAsPrecision(4);
          final im_epsilon_display_2 = variables.im_epsilon_2.toStringAsPrecision(4);
          final r_epsilon_disply_2 = E2_2.module.toStringAsPrecision(4);
          final angle_epsilon_display_2 = E2_2.argument.toStringAsPrecision(4);
          final Et_real_display = Et.re.toStringAsPrecision(4);
          final root_2_display = root_2.toStringAsPrecision(4);
          final ca2_real_display = ca2.toStringAsPrecision(4);


          //global variables
          //CA1
          variables.real_epsilon_display= real_epsilon_display;
          variables.im_epsilon_display= im_epsilon_display;
          variables.r_epsilon_disply = r_epsilon_disply;
          variables.angle_epsilon_display = angle_epsilon_display;
          variables.real_epsilon_display_2= real_epsilon_display_2;
          variables.im_epsilon_display_2= im_epsilon_display_2;
          variables.r_epsilon_disply_2 = r_epsilon_disply_2;
          variables.angle_epsilon_display_2 = angle_epsilon_display_2;
          variables.Et_real_display= Et_real_display;
          variables.root_2_display = root_2_display;
          variables.ca2_real_display = ca2_real_display;

          Navigator.push(context,
              MaterialPageRoute(
                  builder: (context) =>
                      critical_angle_eq3(
                        real_epsilon_display:variables.real_epsilon_display,
                        im_epsilon_display:variables.im_epsilon_display,
                        r_epsilon_disply:variables.r_epsilon_disply,
                        angle_epsilon_display:angle_epsilon_display,
                        real_epsilon_display_2 :variables.real_epsilon_display_2,
                        im_epsilon_display_2:variables.im_epsilon_display_2,
                        r_epsilon_disply_2 : r_epsilon_disply_2,
                        angle_epsilon_display_2 : angle_epsilon_display_2,
                        Et_real_display:variables.Et_real_display,
                        root_2_display:variables.root_2_display,
                        ca2_real_display:variables.ca2_real_display,

                      )
              )
          );
        });
      }
    }

  }