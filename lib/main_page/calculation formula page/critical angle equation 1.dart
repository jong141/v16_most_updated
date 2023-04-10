import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:mathv15/main_page/calculation%20formula%20page/variables.dart';

class critical_angle_eq1 extends StatelessWidget {
  final variables = Variables();

  critical_angle_eq1({
    required er_display, required er2_display,required E1_display, required E2_display,
    required Et_display, required root_display,required ca1_display,
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
                            r'\sin\theta_c = \sqrt \frac{\varepsilon_2}{\varepsilon_1}',
                            textStyle: const TextStyle(fontSize: 25),
                          ),
                        ),
                        const SizedBox( height: 25),
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Math.tex(
                            r'\theta_c=' +variables.ca1_display,
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
                                    child: Math.tex(r'\Large\varepsilon_o \normalsize= \frac{1}{36\pi}*10^{-9}\ F/m ', textStyle: const TextStyle(fontSize: 20),),),),
                                ListTile(
                                  title: FittedBox(
                                    alignment: FractionalOffset.centerLeft,
                                    fit: BoxFit.scaleDown,
                                    child: Math.tex(r'\Large\varepsilon_{\scriptsize 1\normalsize r} \normalsize=' +variables.er_display , textStyle: const TextStyle(fontSize: 20),),),),
                                ListTile(
                                  title: FittedBox(
                                    alignment: FractionalOffset.centerLeft,
                                    fit: BoxFit.scaleDown,
                                    child: Math.tex(r'\Large\varepsilon_{\scriptsize2\normalsize r}\normalsize=' +variables.er2_display , textStyle: const TextStyle(fontSize: 20),),),),
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
                                    child: Math.tex(r'\large\frac{\varepsilon_2}{\varepsilon_1}\normalsize=' +variables.Et_display, textStyle: const TextStyle(fontSize: 18),),),),
                                ExpansionTile(
                                  title: Text("More Details:",
                                    style: TextStyle(color: Colors.black, fontSize: 20,),),
                                  children: [
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\Large\varepsilon_1\normalsize= \Large\varepsilon_o\varepsilon_{\scriptsize 1\normalsize r}\normalsize=  ( \frac{1}{36\pi}*10^{-9} )('+variables.er_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\ \ \ \ \ \ = (' +variables.E1_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\Large\varepsilon_2\normalsize= \Large\varepsilon_o\varepsilon_{\scriptsize 2\normalsize r} \normalsize=  ( \frac{1}{36\pi}*10^{-9} )('+variables.er2_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\ \ \ \ \ \ = (' +variables.E2_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\large\frac{\varepsilon_2}{\varepsilon_1}\normalsize= \frac{' +variables.E2_display +r'}{' +variables.E1_display +r'}', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\ \ \ \ \ \ = ' +variables.Et_display, textStyle: const TextStyle(fontSize: 18),),),),

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
                                    child: Math.tex(r'\large\sqrt\frac{\varepsilon_2}{\varepsilon_1}\normalsize', textStyle: const TextStyle(fontSize: 18),),),),
                                ListTile(
                                  title: FittedBox(
                                    alignment: FractionalOffset.centerLeft,
                                    fit: BoxFit.scaleDown,
                                    child: Math.tex(r'= ' +variables.root_display, textStyle: const TextStyle(fontSize: 18),),),),

                                ExpansionTile(
                                  title: Text("More Details:",
                                    style: TextStyle(color: Colors.black, fontSize: 20,),),
                                  children: [
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\large\sqrt\frac{\varepsilon_2}{\varepsilon_1}\normalsize = \sqrt\frac{' +variables.E2_display +r'}{' +variables.E1_display +r'}', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'= \sqrt{' +variables.Et_display +r'}', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'= ' +variables.root_display, textStyle: const TextStyle(fontSize: 18),),),),
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
                                    child: Math.tex(r'\large\theta_c\normalsize=' +variables.ca1_display, textStyle: const TextStyle(fontSize: 18),),),),

                                ExpansionTile(
                                  title: Text("More Details:",
                                    style: TextStyle(color: Colors.black, fontSize: 20,),),
                                  children: [
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\large\sin\theta_c\normalsize = \large\sqrt\frac{\varepsilon_2}{\varepsilon_1}', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\ \ \ \ \ \ \ \ \ \ \ = ' +variables.root_display, textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\large\theta_c\normalsize = \large\sin^{-1}\sqrt\frac{\varepsilon_2}{\varepsilon_1}', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\ \ \ \ \ = \large\sin^{-1}\normalsize(' +variables.root_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
                                    ListTile(
                                      title: FittedBox(
                                        alignment: FractionalOffset.centerLeft,
                                        fit: BoxFit.scaleDown,
                                        child: Math.tex(r'\ \ \ \ \ = ' +variables.ca1_display , textStyle: const TextStyle(fontSize: 18),),),),

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