import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:extended_math/extended_math.dart';

import 'TPP (parallel) 1.dart';

import 'package:mathv15/main_page/calculation%20formula%20page/variables.dart';


class choose_TPP_parallel_page extends StatefulWidget {
  const choose_TPP_parallel_page({Key? key}) : super(key: key);
  @override
  State<choose_TPP_parallel_page> createState() => _choose_TPP_parallel_pageState();
}

class _choose_TPP_parallel_pageState extends State<choose_TPP_parallel_page> {
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
                          'Fresnel Equation \n Transmission Parallel Polarization',
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
                              _vaildateUserinput(variables.controller18.text);
                            },

                            child: Math.tex(
                                r'\tau{_{//}} = \frac {2\eta_2\cos(\theta_i)}{\eta_2\cos(\theta_t)+\eta_1\cos(\theta_i)}',
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
                //                 r'\varGamma{_\perp} = \frac {\eta_2\cos(\theta_i)-\eta_1\cos(\theta_t)}{\eta_2\cos(\theta_i)+\eta_1\cos(\theta_t)}',
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

  //TPP(parallel) 1
  _vaildateUserinput(String input) {
    //input
    variables.theta_i=double.parse(variables.controller13.text);
    variables.theta_t=double.parse(variables.controller14.text);
    variables.CII_1_real=double.parse(variables.controller15.text);
    variables.CII_1_im=double.parse(variables.controller16.text);
    variables.CII_2_real=double.parse(variables.controller17.text);
    variables.CII_2_im=double.parse(variables.controller18.text);

//calculation
    //TPP(parallel) 1
    //n2 cos(i)
    final cos_i = cos(variables.theta_i);
    final n2 = Complex(re: variables.CII_2_real, im: variables.CII_2_im);
    final n2_cos_i_r = n2.module*cos_i;
    final n2_cos_i_angle = n2.argument;
    final n2_cos_i_real = n2_cos_i_r * cos(n2_cos_i_angle);
    final n2_cos_i_im = n2_cos_i_r * sin(n2_cos_i_angle);

    //2*n2cos(i)
    final two_n2cosi= Complex(re: 2*n2_cos_i_real, im:2*n2_cos_i_im);
    final two_n1cosi_r= two_n2cosi.module;
    final two_n1cosi_angle= two_n2cosi.argument;

    //n2 cos(t)
    final cos_t = cos(variables.theta_t);
    final n2_cos_t_r = n2.module*cos_t;
    final n2_cos_t_angle = n2.argument;
    final n2_cos_t_real = n2_cos_t_r * cos(n2_cos_t_angle);
    final n2_cos_t_im = n2_cos_t_r * sin(n2_cos_t_angle);
    final n2cost = Complex(re: n2_cos_t_real, im:n2_cos_t_im);

    //n1 cos(i)
    final n1 = Complex(re: variables.CII_1_real, im: variables.CII_1_im);
    final n1_cos_i_r = n1.module*cos_i;
    final n1_cos_i_angle = n1.argument;
    final n1_cos_i_real = n1_cos_i_r * cos(n1_cos_i_angle);
    final n1_cos_i_im = n1_cos_i_r * sin(n1_cos_i_angle);
    final n1cosi = Complex(re: n1_cos_i_real, im:n1_cos_i_im);


    //n2cos(i)+n1cos(t)
    final bottom_part = n2cost + n1cosi ;
    final bottom_part_r = bottom_part.module;
    final bottom_part_angle = bottom_part.argument;

    //T(parallel)
    final r_per_r = two_n1cosi_r/bottom_part_r;
    final r_per_angle = two_n1cosi_angle - bottom_part_angle;
    final r_per_real = r_per_r*cos(r_per_angle);
    final r_per_im = r_per_r*sin(r_per_angle);

//display constant with 3 significant
    //TPP(parallel) 1
    final theta_i_display = variables.theta_i.toStringAsPrecision(4);
    final theta_t_display = variables.theta_t.toStringAsPrecision(4);
    final CII_1_real_display = variables.CII_1_real.toStringAsPrecision(4) ;
    final CII_1_im_display = variables.CII_1_im.toStringAsPrecision(4);
    final CII_1_R_display = n1.module.toStringAsPrecision(4) ;
    final CII_1_angle_display = n1.argument.toStringAsPrecision(4);

    final CII_2_real_display = variables.CII_2_real.toStringAsPrecision(4) ;
    final CII_2_im_display = variables.CII_2_im.toStringAsPrecision(4) ;
    final CII_2_R_display = n2.module.toStringAsPrecision(4) ;
    final CII_2_angle_display = n2.argument.toStringAsPrecision(4) ;

    final n2_cos_i_r_display = n2_cos_i_r.toStringAsPrecision(4) ;
    final n2_cos_i_angle_display = n2_cos_i_angle.toStringAsPrecision(4) ;
    final n2_cos_i_real_display = n2_cos_i_real.toStringAsPrecision(4) ;
    final n2_cos_i_im_display = n2_cos_i_im.toStringAsPrecision(4) ;

    final n2_cos_t_r_display = n2_cos_t_r.toStringAsPrecision(4) ;
    final n2_cos_t_angle_display = n2_cos_t_angle.toStringAsPrecision(4) ;
    final n2_cos_t_real_display = n2_cos_t_real.toStringAsPrecision(4) ;
    final n2_cos_t_im_display = n2_cos_t_im.toStringAsPrecision(4) ;

    final n1_cos_i_r_display = n1_cos_i_r.toStringAsPrecision(4) ;
    final n1_cos_i_angle_display = n1_cos_i_angle.toStringAsPrecision(4) ;
    final n1_cos_i_real_display = n1_cos_i_real.toStringAsPrecision(4) ;
    final n1_cos_i_im_display = n1_cos_i_im.toStringAsPrecision(4) ;

    final two_n2cosi_re_display = two_n2cosi.re.toStringAsPrecision(4) ;
    final two_n2cosi_im_display = two_n2cosi.im.toStringAsPrecision(4) ;
    final two_n1cosi_r_display = two_n1cosi_r.toStringAsPrecision(4) ;
    final two_n1cosi_angle_display = two_n1cosi_angle.toStringAsPrecision(4) ;

    final bottom_part_re_display = bottom_part.re.toStringAsPrecision(4) ;
    final bottom_part_im_display = bottom_part.im.toStringAsPrecision(4) ;
    final bottom_part_r_display = bottom_part_r.toStringAsPrecision(4) ;
    final bottom_part_angle_display = bottom_part_angle.toStringAsPrecision(4) ;
    final r_per_r_display = r_per_r.toStringAsPrecision(4) ;
    final r_per_angle_display = r_per_angle.toStringAsPrecision(4) ;
    final r_per_real_display = r_per_real.toStringAsPrecision(4) ;
    final r_per_im_display = r_per_im.toStringAsPrecision(4) ;

//global variables
    //TPP(parallel) 1

    variables.theta_i_display = theta_i_display;
    variables.theta_t_display = theta_t_display;
    variables.CII_1_real_display = CII_1_real_display;
    variables.CII_1_im_display = CII_1_im_display ;
    variables.CII_1_R_display = CII_1_R_display ;
    variables.CII_1_angle_display = CII_1_angle_display;
    variables.CII_2_real_display = CII_2_real_display;
    variables.CII_2_im_display = CII_2_im_display ;
    variables.CII_2_R_display = CII_2_R_display ;
    variables.CII_2_angle_display = CII_2_angle_display ;
    variables.n2_cos_i_r_display = n2_cos_i_r_display ;
    variables.n2_cos_i_angle_display = n2_cos_i_angle_display ;
    variables.n2_cos_i_real_display = n2_cos_i_real_display ;
    variables.n2_cos_i_im_display = n2_cos_i_im_display;

    variables.n2_cos_t_r_display = n2_cos_t_r_display ;
    variables.n2_cos_t_angle_display = n2_cos_t_angle_display ;
    variables.n2_cos_t_real_display = n2_cos_t_real_display ;
    variables.n2_cos_t_im_display = n2_cos_t_im_display ;

    variables.n1_cos_i_r_display = n1_cos_i_r_display ;
    variables.n1_cos_i_angle_display = n1_cos_i_angle_display ;
    variables.n1_cos_i_real_display = n1_cos_i_real_display;
    variables.n1_cos_i_im_display = n1_cos_i_im_display ;

    variables.two_n2cosi_re_display = two_n2cosi_re_display ;
    variables.two_n2cosi_im_display = two_n2cosi_im_display ;
    variables.two_n1cosi_r_display =  two_n1cosi_r_display;
    variables.two_n1cosi_angle_display = two_n1cosi_angle_display ;

    variables.bottom_part_re_display = bottom_part_re_display ;
    variables.bottom_part_im_display = bottom_part_im_display ;
    variables.bottom_part_r_display = bottom_part_r_display ;
    variables.bottom_part_angle_display = bottom_part_angle_display;
    variables.r_per_r_display = r_per_r_display ;
    variables.r_per_angle_display = r_per_angle_display ;
    variables.r_per_real_display = r_per_real_display;
    variables.r_per_im_display = r_per_im_display ;


    Navigator.push(context,
        MaterialPageRoute(
            builder: (context) =>
                TPP_parallel_1(

                  theta_i_display: variables.theta_i_display ,
                  theta_t_display: variables.theta_t_display ,
                  CII_1_real_display: variables.CII_1_real_display ,
                  CII_1_im_display: variables.CII_1_im_display,
                  CII_1_R_display: variables.CII_1_R_display ,
                  CII_1_angle_display: variables.CII_1_angle_display,
                  CII_2_real_display:variables.CII_2_real_display,
                  CII_2_im_display : variables.CII_2_im_display,
                  CII_2_R_display: variables.CII_2_R_display ,
                  CII_2_angle_display: variables.CII_2_angle_display,

                  n1_cos_i_r_display : variables.n1_cos_i_r_display,
                  n1_cos_i_angle_display :  variables.n1_cos_i_angle_display,
                  n1_cos_i_real_display : variables.n1_cos_i_real_display,
                  n1_cos_i_im_display : variables.n1_cos_i_im_display,

                  n2_cos_t_r_display: variables.n2_cos_t_r_display ,
                  n2_cos_t_angle_display: variables.n2_cos_t_angle_display ,
                  n2_cos_t_real_display: variables.n2_cos_t_real_display ,
                  n2_cos_t_im_display: variables.n2_cos_t_im_display ,

                  n2_cos_i_r_display: variables.n2_cos_i_r_display ,
                  n2_cos_i_angle_display: variables.n2_cos_i_angle_display ,
                  n2_cos_i_real_display: variables.n2_cos_i_real_display ,
                  n2_cos_i_im_display: variables.n2_cos_i_im_display ,

                  two_n2cosi_re_display: variables.two_n2cosi_re_display,
                  two_n2cosi_im_display: variables.two_n2cosi_im_display ,
                  two_n1cosi_r_display: variables.two_n1cosi_r_display ,
                  two_n1cosi_angle_display: variables.two_n1cosi_angle_display,

                  bottom_part_re_display : variables.bottom_part_re_display,
                  bottom_part_im_display : variables.bottom_part_im_display,
                  bottom_part_r_display : variables.bottom_part_r_display,
                  bottom_part_angle_display: variables.bottom_part_angle_display,
                  r_per_r_display : variables.r_per_r_display,
                  r_per_angle_display : variables.r_per_angle_display,
                  r_per_real_display: variables.r_per_real_display,
                  r_per_im_display : variables.r_per_im_display,


                )
        )
    );
  }
}