import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:mathv15/main_page/calculation%20formula%20page/variables.dart';

class critical_angle_eq2 extends StatelessWidget {
  final variables = Variables();

  critical_angle_eq2({
    required real_epsilon_display, required im_epsilon_display,required real_epsilon_display_2, required im_epsilon_display_2,
    required r_epsilon_disply, required angle_epsilon_display,required r_epsilon_disply_2, required angle_epsilon_display_2,
    required Et_real_display, required Et_im_display,required Et_r_diplay, required Et_angle_display,
    required r_root_display, required angle_root_display,required arcsin_r_display, required arcsin_angle_display,
    required arcsin_12_display, required arcsin_123_display,required arcsin_1234_display, required arcsin_12345_display,
    required arcsin_sqrt_real_display, required arcsin_sqrt_im_display,required arcsin_iz_angle_display, required arcsin_real_part1_display,
    required arcsin_im_part1_display, required arcsin_real_part2_display,required arcsin_im_part2_display, required arcsin_real_display,
    required arcsin_im_display, required arcsin_rr_display,required arcsin_iim_display, required arcsin_ln_re_display,
    required arcsin_ln_im_display, required ca2_real_display,required ca2_im_display,

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
                              r'\sin\theta_c = \sqrt \frac{\varepsilon_{2C}}{\varepsilon_{1C}}',
                              textStyle: const TextStyle(fontSize: 25),
                            ),
                          ),
                          const SizedBox( height: 25),

                          FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Math.tex(
                              r'\theta_c=' +variables.ca2_real_display +r'+' +variables.ca2_im_display +r'j',
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
                                    child: Math.tex(r'\Large\varepsilon_{1C}\normalsize= ' +variables.real_epsilon_display +r'+' +variables.im_epsilon_display +r'j', textStyle: const TextStyle(fontSize: 20),),),),
                                ListTile(
                                  title: FittedBox(
                                    alignment: FractionalOffset.centerLeft,
                                    fit: BoxFit.scaleDown,
                                    child: Math.tex(r'\Large\varepsilon_{2C}\normalsize= ' +variables.real_epsilon_display_2 +r'+' +variables.im_epsilon_display_2 +r'j', textStyle: const TextStyle(fontSize: 20),),),),
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
                                    child: Math.tex(r'\large\frac{\varepsilon_{2C}}{\varepsilon_{1C}}\normalsize=' +variables.Et_r_diplay +r'\ \angle' +variables.Et_angle_display , textStyle: const TextStyle(fontSize: 18),),),),
                                ExpansionTile(
                                  title: Text("More Details:",
                                    style: TextStyle(color: Colors.black, fontSize: 20,),),
                                  children: [
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Text.rich(TextSpan(text: 'Rec form :', style: const TextStyle(fontSize: 18),),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\large\varepsilon_{1C}\normalsize=' +variables.real_epsilon_display +r'+' +variables.im_epsilon_display +r'j', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Text.rich(TextSpan(text: 'Polar Magnitude :', style: const TextStyle(fontSize: 18),),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\sqrt{ ('+variables.real_epsilon_display +r')^2 +('+variables.im_epsilon_display +r')^2}='+variables.r_epsilon_disply , textStyle: const TextStyle(fontSize: 18),),),),
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
                                        child: Math.tex(r'\large\tan^{-1}\normalsize \frac{' +variables.im_epsilon_display +r'}{' +variables.real_epsilon_display +r'}=' +variables.angle_epsilon_display, textStyle: const TextStyle(fontSize: 18),),),),
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
                                        child: Math.tex(r'\large\varepsilon_{2C}\normalsize=' +variables.real_epsilon_display_2 +r'+' +variables.im_epsilon_display_2 +r'j', textStyle: const TextStyle(fontSize: 18),),),),
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
                                        child: Math.tex(r'\sqrt{ ('+variables.real_epsilon_display_2 +r')^2 +('+variables.im_epsilon_display_2 +r')^2}='+variables.r_epsilon_disply_2, textStyle: const TextStyle(fontSize: 18),),),),
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
                                        child: Math.tex(r'\large\tan^{-1}\normalsize \frac{' +variables.im_epsilon_display_2 +r'}{' +variables.real_epsilon_display_2 +r'}=' +variables.angle_epsilon_display_2, textStyle: const TextStyle(fontSize: 18),),),),
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
                                        child: Math.tex(r'\large\frac{\varepsilon_{2C}}{\varepsilon_{1C}}\normalsize= \frac{' +variables.r_epsilon_disply +r'\ \angle' +variables.angle_epsilon_display +r'}{' +variables.r_epsilon_disply_2 +r'\ \angle' +variables.angle_epsilon_display_2 +r'}', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\ \ \ \ \ \ \ \  = ' +variables.Et_r_diplay +r'\ \angle' +variables.Et_angle_display , textStyle: const TextStyle(fontSize: 18),),),),
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
                                    child: Math.tex(r'\large\sqrt \frac{\varepsilon_{2C}}{\varepsilon_{1C}}\normalsize', textStyle: const TextStyle(fontSize: 18),),),),
                                ListTile(
                                  title: FittedBox(
                                    alignment: FractionalOffset.centerLeft,
                                    fit: BoxFit.scaleDown,
                                    child: Math.tex(r'= ' +variables.r_root_display +r'\ \angle' +variables.angle_root_display, textStyle: const TextStyle(fontSize: 18),),),),

                                ExpansionTile(
                                  title: Text("More Details:",
                                    style: TextStyle(color: Colors.black, fontSize: 20,),),
                                  children: [
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\large\sqrt\frac{\varepsilon_{2C}}{\varepsilon_{1C}}\normalsize', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'= \sqrt{' +variables.Et_r_diplay +r'\ \angle' +variables.Et_angle_display +r'}', textStyle: const TextStyle(fontSize: 18),),),),
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
                                        child: Math.tex(r' \sqrt{' +variables.Et_r_diplay +r'} = ' +variables.r_root_display, textStyle: const TextStyle(fontSize: 18),),),),
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
                                        child: Math.tex(r'\frac{' +variables.Et_angle_display +r'}{2} =' +variables.angle_root_display, textStyle: const TextStyle(fontSize: 18),),),),
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
                                    child: Math.tex(r'\large\theta_c\normalsize=' +variables.ca2_real_display +r'+' +variables.ca2_im_display +r'j', textStyle: const TextStyle(fontSize: 18),),),),
                                ExpansionTile(
                                  title: Text("More Details:",
                                    style: TextStyle(color: Colors.black, fontSize: 20,),),
                                  children: [
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\large\sin\theta_c\normalsize = \large\sqrt \frac{\varepsilon_{2C}}{\varepsilon_{1C}}\normalsize', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\ \ \ \ \ \ \ \ \ \ \ = ' +variables.r_root_display +r'\ \angle' +variables.angle_root_display, textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Text.rich(TextSpan(text: 'Note:', style: const TextStyle(fontSize: 18),),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\large\sin^{-1}(x)= -j* \ln\bigg[(j*x)+\sqrt{1-x^2}\bigg]', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Text.rich(TextSpan(text: 'Where x here is a complex number:', style: const TextStyle(fontSize: 18),),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\large\theta_c\normalsize = \large\sin^{-1}\sqrt \frac{\varepsilon_{2C}}{\varepsilon_{1C}}\normalsize', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\ \ \ \ \ = \large\sin^{-1}\normalsize('  +variables.r_root_display +r'\ \angle' +variables.angle_root_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\ \ \ \ \ = -j* \ln\bigg[(j*x)+\sqrt{1-x^2}\bigg]', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'Where\ \ x\ \ is\ \ (' +variables.r_root_display +r'\ \angle' +variables.angle_root_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\sqrt{1-x^2} =', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\sqrt{1-(' +variables.r_root_display +r'\ \angle' +variables.angle_root_display +r')^2}', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Text.rich(TextSpan(text: 'Power a polar:', style: const TextStyle(fontSize: 18),),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Text.rich(TextSpan(text: 'Real part:', style: const TextStyle(fontSize: 18),),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(variables.r_root_display +r'\ ^2 =' +variables.arcsin_r_display, textStyle: const TextStyle(fontSize: 18),),),),
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
                                        child: Math.tex(variables.angle_root_display +r'*2=' +variables.arcsin_angle_display, textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\sqrt{1-x^2} ', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'= \sqrt{1-(' +variables.arcsin_r_display  +r'\ \angle' +variables.arcsin_angle_display +r')}' , textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'=\sqrt{1-(' +variables.arcsin_12_display  +r'+' +variables.arcsin_123_display +r'j)}', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'=\sqrt{(' +variables.arcsin_1234_display +r'\ \angle' +variables.arcsin_12345_display +r')}', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'=(\sqrt{' +variables.arcsin_1234_display +r'}\ \angle\frac{' +variables.arcsin_12345_display +r'}{2})', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'='+variables.arcsin_sqrt_real_display +r'\ \angle' +variables.arcsin_sqrt_im_display , textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'='+variables.arcsin_real_part2_display +r'+' +variables.arcsin_im_part2_display +r'j', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'j*x', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'=(1\ \angle \frac{\pi}{2}) (' +variables.r_root_display +r'\ \angle' +variables.angle_root_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'=(1*' +variables.r_root_display +r')\ \angle\ (\frac{\pi}{2}+ ' +variables.angle_root_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'='+variables.r_root_display +r'\ \angle' +variables.arcsin_iz_angle_display , textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'='+variables.arcsin_real_part1_display +r'+' +variables.arcsin_im_part1_display +r'j', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\ln\bigg[(j*x)+\sqrt{1-x^2}\bigg]' , textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'=\ln\bigg[('+variables.arcsin_real_part1_display +r'+' +variables.arcsin_im_part1_display +r'j)+('+variables.arcsin_real_part1_display +r'+' +variables.arcsin_im_part1_display +r'j)\bigg]', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'=\ln\bigg['+variables.arcsin_real_display +r'+' +variables.arcsin_im_display +r'j\bigg]', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'=\ln\bigg['+variables.arcsin_rr_display +r'\ \angle' +variables.arcsin_iim_display +r'\bigg]', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'=\ln\bigg['+variables.arcsin_rr_display +r'\ e^{j(' +variables.arcsin_iim_display +r')}\bigg]', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'=\ln('+variables.arcsin_rr_display +r')+ \ln e^{j(' +variables.arcsin_iim_display +r')}', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'='+variables.arcsin_ln_re_display +r'+' +variables.arcsin_ln_im_display +r'j', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'Note: \ r\angle\theta\ = re^{j\theta}', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\large\theta_c\normalsize =-j* \ln\bigg[(j*x)+\sqrt{1-x^2}\bigg]', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\ \ \ \ \ =-j*(' +variables.arcsin_ln_re_display +r'+' +variables.arcsin_ln_im_display +r'j)', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\ \ \ \ \ =' +variables.ca2_real_display +r'+' +variables.ca2_im_display +r'j', textStyle: const TextStyle(fontSize: 18),),),),

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