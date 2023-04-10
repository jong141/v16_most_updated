import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:mathv15/main_page/calculation%20formula%20page/variables.dart';

class complex_intrinsic_impedance2 extends StatelessWidget {
  final variables = Variables();

  complex_intrinsic_impedance2({
    required omega_display, required sigma_display, required mu_display, required u_display, required er_display, required eo_display, required real_epsilon_display3, required im_epsilon_display3,
    required root_R_display3, required root_angle_display3, required q_real_display3, required q_angle_display3, required q_square_real_display3,
    required g_square_angle_display3, required g_sqaure_re_display3, required g_sqaure_im_display3,
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
                         r'\eta_c = \sqrt{\frac{\mu}{\varepsilon - j\large\frac{\sigma}{\omega}}} ',
                         textStyle: const TextStyle(fontSize: 25),
                       ),
                     ),
                      const SizedBox( height: 25),
                     FittedBox(
                       fit: BoxFit.fitWidth,
                       child: Math.tex(
                         r'\eta_c  =' +variables.g_sqaure_re_display3 +r'+' +variables.g_sqaure_im_display3 +r'j',
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
                                  child: Math.tex(r'\large\mu_o\normalsize = 4\pi*10^{-7}\ H/m', textStyle: const TextStyle(fontSize:20),),),),
                              ListTile(
                                title: FittedBox(
                                  alignment: FractionalOffset.centerLeft,
                                  fit: BoxFit.scaleDown,
                                  child: Math.tex(r'\large\mu_r\normalsize ='+variables.mu_display, textStyle: const TextStyle(fontSize: 20),),),),
                              ListTile(
                                title: FittedBox(
                                  alignment: FractionalOffset.centerLeft,
                                  fit: BoxFit.scaleDown,
                                  child: Math.tex(r'\Large\varepsilon_o \normalsize= \frac{1}{36\pi}*10^{-9}\ F/m ', textStyle: const TextStyle(fontSize: 20),),),),
                              ListTile(
                                title: FittedBox(
                                  alignment: FractionalOffset.centerLeft,
                                  fit: BoxFit.scaleDown,
                                  child: Math.tex(r'\Large\varepsilon_r \normalsize=' +variables.er_display, textStyle: const TextStyle(fontSize: 20),),),),
                              ListTile(
                                title: FittedBox(
                                  alignment: FractionalOffset.centerLeft,
                                  fit: BoxFit.scaleDown,
                                  child: Math.tex(r'\large\sigma\normalsize ='+variables.sigma_display +r'\ S/m', textStyle: const TextStyle(fontSize: 20),),),),
                              ListTile(
                                title: FittedBox(
                                  alignment: FractionalOffset.centerLeft,
                                  fit: BoxFit.scaleDown,
                                  child: Math.tex(r'\large\omega\normalsize ='+variables.omega_display +r'\ rad/s', textStyle: const TextStyle(fontSize: 20),),),),

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
                                  child: Math.tex(r'\large\frac{\mu}{\varepsilon\normalsize-\large j\frac{\sigma}{\omega}}', textStyle: const TextStyle(fontSize: 18),),),),
                              ListTile(
                                title: FittedBox(
                                  alignment: FractionalOffset.centerLeft,
                                  fit: BoxFit.scaleDown,
                                  child: Math.tex(r'='+variables.q_real_display3 +r'\ \angle' +variables.q_angle_display3, textStyle: const TextStyle(fontSize: 18),),),),

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
                                      child: Math.tex(r'\large\mu_o\mu_r \normalsize=  (4\pi*10^{-7})('+variables.mu_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
                                  ListTile(
                                    title: FittedBox(
                                      alignment: FractionalOffset.centerLeft,
                                      fit: BoxFit.scaleDown,
                                      child: Math.tex(r'\ \ \ \ \ \ \ \ \ \ =' +variables.u_display, textStyle: const TextStyle(fontSize: 18),),),),
                                  ListTile(
                                    title: FittedBox(
                                      alignment: FractionalOffset.centerLeft,
                                      fit: BoxFit.scaleDown,
                                      child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
                                  ListTile(
                                    title: FittedBox(
                                      alignment: FractionalOffset.centerLeft,
                                      fit: BoxFit.scaleDown,
                                      child: Math.tex(r'\Large\varepsilon_o\varepsilon_r \normalsize= (\frac{1}{36\pi}*10^{-9})(' +variables.er_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
                                  ListTile(
                                    title: FittedBox(
                                      alignment: FractionalOffset.centerLeft,
                                      fit: BoxFit.scaleDown,
                                      child: Math.tex(r'\ \ \ \ = (' +variables.real_epsilon_display3 +r')', textStyle: const TextStyle(fontSize: 18),),),),
                                  ListTile(
                                    title: FittedBox(
                                      alignment: FractionalOffset.centerLeft,
                                      fit: BoxFit.scaleDown,
                                      child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
                                  ListTile(
                                    title: FittedBox(
                                      alignment: FractionalOffset.centerLeft,
                                      fit: BoxFit.scaleDown,
                                      child: Math.tex(r'\large -j \frac{\sigma}{\omega} \normalsize =-j \frac{' +variables.sigma_display +r'}{'+variables.omega_display +r'} = -'+variables.im_epsilon_display3 +r'j', textStyle: const TextStyle(fontSize: 18),),),),
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
                                      child: Math.tex(r'\large\frac{\mu}{\varepsilon\normalsize-\large j\frac{\sigma}{\omega}}\normalsize= \frac{' +variables.u_display +r'}{(' +variables.real_epsilon_display3 +r')-' +variables.im_epsilon_display3 +r'j'+r'}', textStyle: const TextStyle(fontSize: 18),),),),
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
                                      child: Math.tex(r'\sqrt{ ('+variables.real_epsilon_display3 +r')^2 +(-'+variables.im_epsilon_display3 +r')^2}='+variables.root_R_display3, textStyle: const TextStyle(fontSize: 18),),),),
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
                                      child: Math.tex(r'\large\tan^{-1}\normalsize \frac{-' +variables.im_epsilon_display3 +r'}{' +variables.real_epsilon_display3 +r'}=' +variables.root_angle_display3, textStyle: const TextStyle(fontSize: 18),),),),
                                  ListTile(
                                    title: FittedBox(
                                      alignment: FractionalOffset.centerLeft,
                                      fit: BoxFit.scaleDown,
                                      child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
                                  ListTile(
                                    title: FittedBox(
                                      alignment: FractionalOffset.centerLeft,
                                      fit: BoxFit.scaleDown,
                                      child: Text.rich(TextSpan(text: 'Polar form:', style: const TextStyle(fontSize: 18),),),),),
                                  ListTile(
                                    title: FittedBox(
                                      alignment: FractionalOffset.centerLeft,
                                      fit: BoxFit.scaleDown,
                                      child: Math.tex(r'\large\frac{\mu}{\varepsilon\normalsize-\large j\frac{\sigma}{\omega}}\normalsize=\frac{' +variables.u_display +r'}{' +variables.root_R_display3 +r'\ \angle' +variables.root_angle_display3 +r'}', textStyle: const TextStyle(fontSize: 18),),),),
                                  ListTile(
                                    title: FittedBox(
                                      alignment: FractionalOffset.centerLeft,
                                      fit: BoxFit.scaleDown,
                                      child: Math.tex(r'\ \ \ \ \ \ \ \ \ \ \ \ \ \ = ' +variables.q_real_display3 +r'\ \angle' +variables.q_angle_display3 , textStyle: const TextStyle(fontSize: 18),),),),


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
                                  child: Math.tex(r'\eta_c = \large\sqrt{\frac{\mu}{\varepsilon\normalsize-\large j\frac{\sigma}{\omega}}}\normalsize', textStyle: const TextStyle(fontSize: 18),),),),
                              ListTile(
                                title: FittedBox(
                                  alignment: FractionalOffset.centerLeft,
                                  fit: BoxFit.scaleDown,
                                  child: Math.tex(r'\ \ \ \ =' +variables.q_square_real_display3 +r'\ \angle' +variables.g_square_angle_display3, textStyle: const TextStyle(fontSize: 18),),),),

                              ExpansionTile(
                                title: Text("More Details:",
                                  style: TextStyle(color: Colors.black, fontSize: 20,),),
                                children: [
                                  ListTile(
                                    title: FittedBox(
                                      alignment: FractionalOffset.centerLeft,
                                      fit: BoxFit.scaleDown,
                                      child: Math.tex(r'\large\sqrt{\frac{\mu}{\varepsilon\normalsize-\large j\frac{\sigma}{\omega}}}\normalsize=', textStyle: const TextStyle(fontSize: 18),),),),
                                  ListTile(
                                    title: FittedBox(
                                      alignment: FractionalOffset.centerLeft,
                                      fit: BoxFit.scaleDown,
                                      child: Math.tex(r' \sqrt{(' +variables.q_real_display3 +r')\ \angle' +variables.q_angle_display3 +r'}', textStyle: const TextStyle(fontSize: 18),),),),
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
                                      child: Math.tex(r' \sqrt{' +variables.q_real_display3 +r'} = ' +variables.q_square_real_display3 , textStyle: const TextStyle(fontSize: 18),),),),
                                  ListTile(
                                    title: FittedBox(
                                      alignment: FractionalOffset.centerLeft,
                                      fit: BoxFit.scaleDown,
                                      child: Text.rich(TextSpan(text: 'Square root a polar:', style: const TextStyle(fontSize: 18),),),),),
                                  ListTile(
                                    title: FittedBox(
                                      alignment: FractionalOffset.centerLeft,
                                      fit: BoxFit.scaleDown,
                                      child: Text.rich(TextSpan(text: 'Angle part:', style: const TextStyle(fontSize: 18),),),),),
                                  ListTile(
                                    title: FittedBox(
                                      alignment: FractionalOffset.centerLeft,
                                      fit: BoxFit.scaleDown,
                                      child: Math.tex(r'\frac{' +variables.q_angle_display3 +r'}{2} =' +variables.q_square_real_display3, textStyle: const TextStyle(fontSize: 18),),),),

                                ],
                              ),
                            ],
                          ),

                          ExpansionTile(
                            title: Text("Step 3:",
                              style: TextStyle(color: Colors.black, fontSize: 20,),),
                            children: [
                              ListTile(title: Math.tex(r'\eta_c = \large\sqrt{\frac{\mu}{\varepsilon\normalsize-\large j\frac{\sigma}{\omega}}}\normalsize', textStyle: const TextStyle(fontSize: 18))),
                              ListTile(title: Math.tex(r'\ \ \ \ = ' +variables.g_sqaure_re_display3 +r'+'  +variables.g_sqaure_im_display3 +r'j',textStyle:const TextStyle(fontSize:18))),
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
                                      child: Math.tex(r'\eta_c = \large\sqrt{\frac{\mu}{\varepsilon\normalsize-\large j\frac{\sigma}{\omega}}}\normalsize', textStyle: const TextStyle(fontSize: 18),),),),
                                  ListTile(
                                    title: FittedBox(
                                      alignment: FractionalOffset.centerLeft,
                                      fit: BoxFit.scaleDown,
                                      child: Math.tex(r'\ \ \ \ = ' +variables.q_square_real_display3 +r'\ \angle' +variables.g_square_angle_display3, textStyle: const TextStyle(fontSize: 18),),),),
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
                                      child: Math.tex(variables.q_square_real_display3 +r'\large\cos\normalsize(' +variables.g_square_angle_display3 +r') = ' +variables.g_sqaure_re_display3, textStyle: const TextStyle(fontSize: 18),),),),
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
                                      child: Math.tex(variables.q_square_real_display3 +r'\large\sin\normalsize(' +variables.g_square_angle_display3 +r') = ' +variables.g_sqaure_im_display3, textStyle: const TextStyle(fontSize: 18),),),),
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