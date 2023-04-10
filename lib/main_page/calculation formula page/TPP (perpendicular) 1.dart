import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:mathv15/main_page/calculation%20formula%20page/variables.dart';
import 'function.dart';

class TPP_perpendicular_1 extends StatelessWidget {
  final variables = Variables();

  TPP_perpendicular_1({
    required theta_i_display, required theta_t_display,required CII_1_real_display, required CII_1_im_display,
    required CII_2_real_display, required CII_2_im_display,required n1_cos_t_r_display, required n1_cos_t_angle_display,
    required n1_cos_t_real_display, required n1_cos_t_im_display,required two_n2cosi_re_display, required two_n2cosi_im_display,
    required two_n1cosi_r_display, required two_n1cosi_angle_display,required bottom_part_re_display, required bottom_part_im_display,
    required bottom_part_r_display, required bottom_part_angle_display,required r_per_r_display, required r_per_angle_display,
    required r_per_real_display, required r_per_im_display,required CII_1_R_display, required CII_1_angle_display,
    required CII_2_R_display, required CII_2_angle_display,required n2_cos_i_r_display, required n2_cos_i_angle_display,
    required n2_cos_i_real_display, required n2_cos_i_im_display,
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
                    const SizedBox( height: 25),
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Math.tex(
                        r'\tau{_\perp} = \frac {2\eta_2\cos(\theta_i)}{\eta_2\cos(\theta_i)+\eta_1\cos(\theta_t)}',
                        textStyle: const TextStyle(fontSize: 25),
                      ),
                    ),
                    const SizedBox(height: 25),
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Math.tex(
                        r'\tau{_\perp} =' +variables.r_per_real_display +r'+' +variables.r_per_im_display  +r'j',
                        textStyle: const TextStyle(fontSize: 25),
                      ),
                    ),
                    const SizedBox( height: 25),
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
                          title: Text("Input Variable:",
                            style: TextStyle(color: Colors.black, fontSize: 20,),),
                          children: [
                            ListTile(
                              title: FittedBox(
                                alignment: FractionalOffset.centerLeft,
                                fit: BoxFit.scaleDown,
                                child: Math.tex(r'\eta_1=' +variables.CII_1_real_display +r'+' +variables.CII_1_im_display +r'j \ \small E/H' , textStyle: const TextStyle(fontSize: 20),),),),
                            ListTile(
                              title: FittedBox(
                                alignment: FractionalOffset.centerLeft,
                                fit: BoxFit.scaleDown,
                                child: Math.tex(r'\eta_2=' +variables.CII_2_real_display +r'+' +variables.CII_2_im_display +r'j \ \small E/H' , textStyle: const TextStyle(fontSize: 20),),),),
                            ListTile(
                              title: FittedBox(
                                alignment: FractionalOffset.centerLeft,
                                fit: BoxFit.scaleDown,
                                child: Math.tex(r'\theta_i=' +variables.theta_i_display +r'\ rad', textStyle: const TextStyle(fontSize: 20),),),),
                            ListTile(
                              title: FittedBox(
                                alignment: FractionalOffset.centerLeft,
                                fit: BoxFit.scaleDown,
                                child: Math.tex(r'\theta_t=' +variables.theta_t_display +r'\ rad' , textStyle: const TextStyle(fontSize: 20),),),),


                          ],
                        ),
                        ExpansionTile(
                          title: Text("Step 1:",
                            style: TextStyle(color: Colors.black, fontSize: 20,),),
                          children: [
                            ListTile(
                              title: FittedBox(
                                alignment: FractionalOffset.centerLeft,
                                fit: BoxFit.scaleDown,
                                child: Math.tex(r'\large\eta_2\cos(\theta_i)+\eta_1\cos(\theta_t)\normalsize', textStyle: const TextStyle(fontSize: 18),),),),
                            ListTile(
                              title: FittedBox(
                                alignment: FractionalOffset.centerLeft,
                                fit: BoxFit.scaleDown,
                                child: Math.tex(r'=(' +variables.bottom_part_r_display +r')\ \angle(' +variables.bottom_part_angle_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
                            ExpansionTile(
                              title: Text("More Details:",
                                style: TextStyle(color: Colors.black, fontSize: 20,),),
                              children: [
                                n2cosi_plus_n1cost(variables.CII_1_real_display,variables.CII_1_im_display,variables.CII_2_real_display, variables.CII_2_im_display , variables.n1_cos_t_r_display ,
                                  variables.n1_cos_t_angle_display , variables.n1_cos_t_real_display , variables.n1_cos_t_im_display , variables.n2_cos_i_r_display , variables.n2_cos_i_angle_display ,
                                  variables.n2_cos_i_real_display ,variables.n2_cos_i_im_display ,variables.bottom_part_re_display , variables.bottom_part_im_display , variables.bottom_part_r_display ,
                                  variables.bottom_part_angle_display ,  variables.CII_1_R_display, variables.CII_1_angle_display, variables.CII_2_R_display, variables.CII_2_angle_display, variables.theta_i_display,
                                  variables.theta_t_display, ),
                              ],
                            ),
                          ],
                        ),

                        ExpansionTile(
                          title: Text("Step 2:",
                            style: TextStyle(color: Colors.black, fontSize: 20,),),
                          children: [
                            ListTile(
                              title: FittedBox(
                                alignment: FractionalOffset.centerLeft,
                                fit: BoxFit.scaleDown,
                                child: Math.tex(r'\large 2\eta_2\cos(\theta_i)\normalsize', textStyle: const TextStyle(fontSize: 18),),),),
                            ListTile(
                              title: FittedBox(
                                alignment: FractionalOffset.centerLeft,
                                fit: BoxFit.scaleDown,
                                child: Math.tex(r'=(' +variables.two_n1cosi_r_display +r')\ \angle(' +variables.two_n1cosi_angle_display +r')', textStyle: const TextStyle(fontSize: 18),),),),

                            ExpansionTile(
                              title: Text("More Details:",
                                style: TextStyle(color: Colors.black, fontSize: 20,),),
                              children: [
                                two_n2cosi(variables.CII_1_real_display,variables. CII_1_im_display,variables. CII_2_real_display, variables.CII_2_im_display , variables.n1_cos_t_r_display ,
                                    variables.n1_cos_t_angle_display , variables.n1_cos_t_real_display , variables.n1_cos_t_im_display , variables.n2_cos_i_r_display , variables.n2_cos_i_angle_display ,
                                    variables.n2_cos_i_real_display ,variables.n2_cos_i_im_display ,variables.two_n1cosi_r_display , variables.two_n1cosi_angle_display , variables.CII_1_R_display,
                                    variables.CII_1_angle_display, variables.CII_2_R_display, variables.CII_2_angle_display, variables.theta_i_display, variables.theta_t_display,  ),
                              ],
                            ),
                          ],
                        ),
                        ExpansionTile(
                          title: Text("Step 3:",
                            style: TextStyle(color: Colors.black, fontSize: 20,),),
                          children: [
                            ListTile(
                              title: FittedBox(
                                alignment: FractionalOffset.centerLeft,
                                fit: BoxFit.scaleDown,
                                child: Math.tex(r'\large\tau{_\perp}\normalsize =(' +variables.r_per_real_display +r')+(' +variables.r_per_im_display  +r')j', textStyle: const TextStyle(fontSize: 18),),),),

                            ExpansionTile(
                              title: Text("More Details:",
                                style: TextStyle(color: Colors.black, fontSize: 20,),),
                              children: [
                                ListTile(
                                  title: FittedBox(
                                    alignment: FractionalOffset.centerLeft,
                                    fit: BoxFit.scaleDown,
                                    child: Math.tex(r'\large\tau{_\perp} = \frac {2\eta_2\cos(\theta_i)}{\eta_2\cos(\theta_i)+\eta_1\cos(\theta_t)}', textStyle: const TextStyle(fontSize: 18),),),),
                                ListTile(
                                  title: FittedBox(
                                    alignment: FractionalOffset.centerLeft,
                                    fit: BoxFit.scaleDown,
                                    child: Math.tex(r'\large\tau{_\perp}\normalsize = \frac {('+variables.two_n1cosi_r_display +r')\ \angle(' +variables.two_n1cosi_angle_display+r')}{('+variables.bottom_part_r_display +r')\ \angle(' +variables.bottom_part_angle_display +r')}', textStyle: const TextStyle(fontSize: 18),),),),
                                ListTile(
                                  title: FittedBox(
                                    alignment: FractionalOffset.centerLeft,
                                    fit: BoxFit.scaleDown,
                                    child: Math.tex(r'\large\tau{_\perp}\normalsize = (' +variables.r_per_r_display +r')\ \angle(' +variables.r_per_angle_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
                              ],
                            ),
                          ],
                        ),
                        ExpansionTile(
                            title: Text(
                              "Rec to Polar",
                              style: TextStyle(fontSize: 20 , color: Colors.black),
                            ),
                            children: [
                              polartorect(variables.r_per_r_display , variables.r_per_angle_display,variables.r_per_real_display , variables.r_per_im_display)
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
        ),
      ),
    );
  }
}