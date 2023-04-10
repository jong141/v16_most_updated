import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:mathv15/main_page/calculation%20formula%20page/variables.dart';



  class complex_propagation_constant2 extends StatelessWidget {
  final variables = Variables();

  complex_propagation_constant2({
  required mu_display, required u_display, required real_epsilon_display, required im_epsilon_display, required root_R_display, required root_angle_display, required root_real_display, required root_im_display,
  required polar_R_display, required omega_display, required R_jw_display, required angle_jw_display, required R_propagration_constant1_display, required angle_propagration_constant1_display, required real_propagration_constant1_display,
  required im_propagration_constant1_display, required neg_im_epsilon_display,

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
                                r'\varUpsilon = j\omega \sqrt{\mu\varepsilon_c}',
                                textStyle: const TextStyle(fontSize: 25),
                              ),
                            ),
                            const SizedBox( height: 25),
                            FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Math.tex(
                                r'\varUpsilon =' + variables.real_propagration_constant1_display +r'+' + variables.im_propagration_constant1_display +r'j',
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
                                        child: Math.tex(r'\large\omega\normalsize ='+variables.omega_display +r'\ rad/s', textStyle: const TextStyle(fontSize: 20),),),),

                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\large\mu_o\normalsize = 4\pi*10^{-7}\ H/m', textStyle: const TextStyle(fontSize: 20),),),),

                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\large\mu_r\normalsize ='+variables.mu_display, textStyle: const TextStyle(fontSize: 20),),),),

                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\Large\varepsilon_c \normalsize= ' +variables.real_epsilon_display +r'-' +variables.im_epsilon_display +r'j', textStyle: const TextStyle(fontSize: 20),),),),
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
                                        child: Math.tex(r'\large\mu\varepsilon_c\normalsize=' +variables.polar_R_display +r'\ \angle' +variables.root_angle_display, textStyle: const TextStyle(fontSize: 18),),),),
                                    ExpansionTile(
                                      title: Text("More Details:",
                                        style: TextStyle(color: Colors.black, fontSize: 20,),),
                                      children: [
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Math.tex(r'\large\mu\normalsize=\large\mu_o\mu_r \normalsize= (4\pi*10^{-7})*'+variables.mu_display , textStyle: const TextStyle(fontSize: 18),),),),

                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Math.tex(r'\ \ \ \ =' +variables.u_display, textStyle: const TextStyle(fontSize: 18),),),),

                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),

                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Math.tex(r'\Large\varepsilon_c \normalsize= ' +variables.real_epsilon_display +r'-' +variables.im_epsilon_display +r'j', textStyle: const TextStyle(fontSize: 18),),),),

                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),

                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Text.rich(TextSpan(text: 'Rec form :', style: const TextStyle(fontSize: 18),),),),),

                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Math.tex(r'\large\mu\varepsilon_c\normalsize=', textStyle: const TextStyle(fontSize: 18),),),),

                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Math.tex(r'(' +variables.u_display +r')* (' +variables.real_epsilon_display + r'-' +variables.im_epsilon_display +r'j )', textStyle: const TextStyle(fontSize: 18),),),),

                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),

                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Text.rich(TextSpan(text: 'Polar Magnitude:', style: const TextStyle(fontSize: 18),),),),),

                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Math.tex(r'\sqrt{ ('+variables.real_epsilon_display +r')^2 +('+variables.neg_im_epsilon_display +r')^2}='+variables.root_R_display, textStyle: const TextStyle(fontSize: 18),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),

                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Text.rich(TextSpan(text: 'Polar Angle :', style: const TextStyle(fontSize: 18),),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Math.tex(r'\large\tan^{-1}\normalsize \frac{' +variables.neg_im_epsilon_display +r'}{' +variables.real_epsilon_display +r'}=' +variables.root_angle_display, textStyle: const TextStyle(fontSize: 18),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Text.rich(TextSpan(text: 'Polar Form:', style: const TextStyle(fontSize: 18),),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Math.tex(r'\large\mu\varepsilon_c\normalsize=', textStyle: const TextStyle(fontSize: 18),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Math.tex(r'(' +variables.u_display +r')*('+variables.root_R_display +r'\ \angle' +variables.root_angle_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Math.tex(r'=' +variables.polar_R_display +r'\ \angle' +variables.root_angle_display , textStyle: const TextStyle(fontSize: 18),),),),
                                      ],
                                    ),
                                  ],
                                ),

                                ExpansionTile(
                                  title: Text("Step 2:",
                                    style: TextStyle(color: Colors.black, fontSize: 20,),),
                                  children: [
                                    ListTile(title: Math.tex(r'\large\sqrt{\mu\varepsilon_c}\normalsize=' +variables.root_real_display +r'\ \angle' +variables.root_im_display, textStyle: const TextStyle(fontSize: 18)),),
                                    ExpansionTile(
                                      title: Text("More Details:",
                                        style: TextStyle(color: Colors.black, fontSize: 20,),),
                                      children: [
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Math.tex(r'\large\sqrt{\mu\varepsilon_c}\normalsize=', textStyle: const TextStyle(fontSize: 18),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Math.tex(r' \sqrt{' +variables.polar_R_display +r'\ \angle' +variables.root_angle_display +r'}', textStyle: const TextStyle(fontSize: 18),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Text.rich(TextSpan(text: 'Square root a polar:', style: const TextStyle(fontSize: 18),),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Text.rich(TextSpan(text: 'Real part:', style: const TextStyle(fontSize: 18),),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Math.tex(r' \sqrt{' +variables.polar_R_display +r'} = ' +variables.root_real_display, textStyle: const TextStyle(fontSize: 18),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Text.rich(TextSpan(text: 'Angle part:', style: const TextStyle(fontSize: 18),),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Math.tex(r'\frac{' +variables.root_angle_display +r'}{2} =' +variables.root_im_display, textStyle: const TextStyle(fontSize: 18),),),),
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
                                        child: Math.tex(r'\varUpsilon = j\large\omega \sqrt{\mu\varepsilon_c}', textStyle: const TextStyle(fontSize: 18),),),),

                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\ \ \ \ = ' +variables.R_propagration_constant1_display +r'\ \angle'  +variables.angle_propagration_constant1_display, textStyle: const TextStyle(fontSize: 18),),),),

                                    ExpansionTile(
                                      title: Text("More Details:",
                                        style: TextStyle(color: Colors.black, fontSize: 20,),),
                                      children: [
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Math.tex(r'\varUpsilon = j\large\omega \sqrt{\mu\varepsilon_c}', textStyle: const TextStyle(fontSize: 18),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                                                          child: Math.tex(r'\ \ \ \ =' +variables.omega_display +r'j * (' +variables.root_real_display +r'\ \angle' +variables.root_im_display +r')' , textStyle: const TextStyle(fontSize: 18),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Text.rich(TextSpan(text: 'Simplify:', style: const TextStyle(fontSize: 18),),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Math.tex(r'j\large\omega\normalsize=' +variables.omega_display +r'j', textStyle: const TextStyle(fontSize: 18),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Math.tex(r'\ \ \ \ \ =' +variables.R_jw_display +r'\ \angle' +variables.angle_jw_display, textStyle: const TextStyle(fontSize: 18),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Text.rich(TextSpan(text: 'Polar Magnitude:', style: const TextStyle(fontSize: 18),),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Math.tex(variables.R_jw_display +r'*' +variables.root_real_display +r'=' +variables.R_propagration_constant1_display, textStyle: const TextStyle(fontSize: 18),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Text.rich(TextSpan(text: 'Polar Angle:', style: const TextStyle(fontSize: 18),),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Math.tex(variables.angle_jw_display +r'+' +variables.root_im_display +r'='+variables.angle_propagration_constant1_display, textStyle: const TextStyle(fontSize: 18),),),),
                                      ],
                                    ),
                                  ],
                                ),

                                ExpansionTile(
                                  title: Text("Step 4:",
                                    style: TextStyle(color: Colors.black, fontSize: 20,),),
                                  children: [
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\varUpsilon = j\large\omega \sqrt{\mu\varepsilon_c}', textStyle: const TextStyle(fontSize: 18),),),),

                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\ \ \ \ = ' +variables.real_propagration_constant1_display +r'+'  +variables.im_propagration_constant1_display +r'j', textStyle: const TextStyle(fontSize: 18),),),),

                                    ExpansionTile(
                                      title: Text("More Details:",
                                        style: TextStyle(color: Colors.black, fontSize: 20,),),
                                      children: [
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Text.rich(TextSpan(text: 'Covert to Rec form:', style: const TextStyle(fontSize: 18),),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Math.tex(r'\varUpsilon = ' +variables.R_propagration_constant1_display +r'\ \angle'  +variables.angle_propagration_constant1_display, textStyle: const TextStyle(fontSize: 18),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Text.rich(TextSpan(text: 'Real part:', style: const TextStyle(fontSize: 18),),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Math.tex(variables.R_propagration_constant1_display +r'\large\cos\normalsize(' +variables.angle_propagration_constant1_display +r') = ' +variables.real_propagration_constant1_display, textStyle: const TextStyle(fontSize: 18),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Text.rich(TextSpan(text: 'Imaginary part:', style: const TextStyle(fontSize: 18),),),),),
                                        ListTile(
                                          title: FittedBox(
                                            alignment: FractionalOffset.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Math.tex(variables.R_propagration_constant1_display +r'\large\sin\normalsize(' +variables.angle_propagration_constant1_display +r') = ' +variables.im_propagration_constant1_display, textStyle: const TextStyle(fontSize: 18),),),),

                          ],
                        ),
                      ],
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