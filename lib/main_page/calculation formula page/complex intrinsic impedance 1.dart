import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:mathv15/main_page/calculation%20formula%20page/variables.dart';

class complex_intrinsic_impedance1 extends StatelessWidget {
  final variables = Variables();

  complex_intrinsic_impedance1({
    required mu_display, required u_display, required real_epsilon_display, required im_epsilon_display, required neg_im_epsilon_display, required root_R_display, required root_angle_display, required q_real_display,
    required q_angle_display, required q_square_real_display, required g_square_angle_display, required g_sqaure_re_display, required g_sqaure_im_display,
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
                          r'\eta_c = \sqrt{\frac{\mu}{\varepsilon_c}} ',
                          textStyle: const TextStyle(fontSize: 25),
                          ),
                      ),
                      const SizedBox(height: 25),
                      FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Math.tex(
                          r'\eta_c  =' +variables.g_sqaure_re_display +r'+' +variables.g_sqaure_im_display +r'j',
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
                          title: Text("Input Variable:",
                            style: TextStyle(color: Colors.black, fontSize: 20,),),
                          children: [
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
                                child: Math.tex(r'\large\frac{\mu}{\varepsilon_c}\normalsize=' +variables.q_square_real_display +r'\ \angle' +variables.g_square_angle_display , textStyle: const TextStyle(fontSize: 18),),),),

                            ExpansionTile(
                              title: Text("More Details:",
                                style: TextStyle(color: Colors.black, fontSize: 20,),),
                              children: [
                                ListTile(
                                  title: FittedBox(
                                    alignment: FractionalOffset.centerLeft,
                                    fit: BoxFit.scaleDown,
                                    child: Text.rich(TextSpan(text: 'Simplify:', style: const TextStyle(fontSize: 18),),),),),
                                ListTile(
                                  title: FittedBox(
                                    alignment: FractionalOffset.centerLeft,
                                    fit: BoxFit.scaleDown,
                                    child: Math.tex(r'\large\mu\normalsize = \large\mu_o\mu_r \normalsize=  (4\pi*10^{-7})('+variables.mu_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
                                ListTile(
                                  title: FittedBox(
                                    alignment: FractionalOffset.centerLeft,
                                    fit: BoxFit.scaleDown,
                                    child: Math.tex(r' \ \ \ \ =' +variables.u_display, textStyle: const TextStyle(fontSize: 18),),),),
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
                                    child: Text.rich(TextSpan(text: 'Rec form:', style: const TextStyle(fontSize: 18),),),),),
                                ListTile(
                                  title: FittedBox(
                                    alignment: FractionalOffset.centerLeft,
                                    fit: BoxFit.scaleDown,
                                    child: Math.tex(r'\large\frac{\mu}{\varepsilon_c}\normalsize=\frac{' +variables.u_display +r'}{' +variables.real_epsilon_display +r'-' +variables.im_epsilon_display +r'j'+r'}', textStyle: const TextStyle(fontSize: 18),),),),
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
                                    child: Text.rich(TextSpan(text: 'Polar Angle:', style: const TextStyle(fontSize: 18),),),),),
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
                                    child: Text.rich(TextSpan(text: 'Polar Angle:', style: const TextStyle(fontSize: 18),),),),),
                                ListTile(
                                  title: FittedBox(
                                    alignment: FractionalOffset.centerLeft,
                                    fit: BoxFit.scaleDown,
                                    child: Math.tex(r'\large\frac{\mu}{\varepsilon_c}\normalsize=\frac{' +variables.u_display +r'}{' +variables.root_R_display +r'\ \angle' +variables.root_angle_display +r'}', textStyle: const TextStyle(fontSize: 18),),),),
                                ListTile(
                                  title: FittedBox(
                                    alignment: FractionalOffset.centerLeft,
                                    fit: BoxFit.scaleDown,
                                    child: Math.tex(r'=' +variables.q_real_display +r'\ \angle' +variables.q_angle_display , textStyle: const TextStyle(fontSize: 18),),),),
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
                                child: Math.tex(r'\eta_c = \sqrt{\frac{\mu}{\varepsilon_c}}', textStyle: const TextStyle(fontSize: 18),),),),
                            ListTile(
                              title: FittedBox(
                                alignment: FractionalOffset.centerLeft,
                                fit: BoxFit.scaleDown,
                                child: Math.tex(r'\ \ \ \ =' +variables.q_square_real_display +r'\ \angle' +variables.g_square_angle_display, textStyle: const TextStyle(fontSize: 18),),),),

                            ExpansionTile(
                              title: Text("More Details:",
                                style: TextStyle(color: Colors.black, fontSize: 20,),),
                              children: [
                                ListTile(
                                  title: FittedBox(
                                    alignment: FractionalOffset.centerLeft,
                                    fit: BoxFit.scaleDown,
                                    child: Math.tex(r'\sqrt{\frac{\mu}{\varepsilon_c}}=', textStyle: const TextStyle(fontSize: 18),),),),
                                ListTile(
                                  title: FittedBox(
                                    alignment: FractionalOffset.centerLeft,
                                    fit: BoxFit.scaleDown,
                                    child: Math.tex(r' \sqrt{(' +variables.q_real_display +r')\ \angle' +variables.q_angle_display +r'}', textStyle: const TextStyle(fontSize: 18),),),),
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
                                    child: Text.rich(TextSpan(text: 'Angle part:', style: const TextStyle(fontSize: 18),),),),),
                                ListTile(
                                  title: FittedBox(
                                    alignment: FractionalOffset.centerLeft,
                                    fit: BoxFit.scaleDown,
                                    child: Math.tex(r' \sqrt{' +variables.q_real_display +r'} = ' +variables.q_square_real_display, textStyle: const TextStyle(fontSize: 18),),),),
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
                                    child: Math.tex(r'\frac{' +variables.q_angle_display +r'}{2} =' +variables.g_square_angle_display , textStyle: const TextStyle(fontSize: 18),),),),

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
                                child: Math.tex(r'\eta_c = \sqrt{\frac{\mu}{\varepsilon_c}}', textStyle: const TextStyle(fontSize: 18),),),),
                            ListTile(
                              title: FittedBox(
                                alignment: FractionalOffset.centerLeft,
                                fit: BoxFit.scaleDown,
                                child: Math.tex(r'\ \ \ \ = ' +variables.g_sqaure_re_display +r'+'  +variables.g_sqaure_im_display +r'j', textStyle: const TextStyle(fontSize: 18),),),),

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
                                    child: Math.tex(r'\eta_c = \sqrt{\frac{\mu}{\varepsilon_c}}', textStyle: const TextStyle(fontSize: 18),),),),
                                ListTile(
                                  title: FittedBox(
                                    alignment: FractionalOffset.centerLeft,
                                    fit: BoxFit.scaleDown,
                                    child: Math.tex(r'\ \ \ \ = ' +variables.q_square_real_display +r'\ \angle' +variables.g_square_angle_display, textStyle: const TextStyle(fontSize: 18),),),),
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
                                    child: Math.tex(variables.q_square_real_display +r'\large\cos\normalsize(' +variables.g_square_angle_display +r') = ' +variables.g_sqaure_re_display, textStyle: const TextStyle(fontSize: 18),),),),
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
                                    child: Math.tex(variables.q_square_real_display +r'\large\sin\normalsize(' +variables.g_square_angle_display +r') = ' +variables.g_sqaure_im_display, textStyle: const TextStyle(fontSize: 18),),),),
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
