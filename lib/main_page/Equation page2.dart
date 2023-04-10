import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_math_fork/flutter_math.dart';


const equations = [
  ['Complex Propagation Constant:',
    r'\varUpsilon = \begin{cases} '
    r'\alpha + j\beta \\ '
    r'\ \\'
    r'j\omega \sqrt{\mu\varepsilon_c} &\text{or} \\'
    r'\ \\'
    r'j\omega \sqrt{\mu(\varepsilon - j \frac{\sigma}{\omega}})'
    r'\end{cases}'
  ],

  ['Complex Intrinsic Impedance:',
    r'\eta_c = \begin{cases} '
    r'\sqrt{\frac{\mu}{\varepsilon_c}} \\ '
    r'\  &\text{or}\\'
    r'\sqrt{\frac{\mu}{\varepsilon - j\large\frac{\sigma}{\omega}}} \\'
    r'\end{cases}'
  ],

  ['Snell\'s Law Equation:',
    r'\frac {\sin\theta_t}{\sin\theta_i} = \sqrt \frac{\mu_1\varepsilon_1}{\mu_2\varepsilon_2}'
  ],

  ['Brewster Angle Equation:',
    r'\tan\theta_{B\parallel} = \sqrt \frac{\varepsilon_2}{\varepsilon_1}'
  ],

  ['Critical Angle Equation:',
    r'\sin\theta_c = \sqrt \frac{\varepsilon_2}{\varepsilon_1}'
  ],

  [
    'Fresnel Equation - Reflection Perpendicular Polarization:',
    r'\varGamma{_\perp} = \frac {\eta_2\cos(\theta_i)-\eta_1\cos(\theta_t)}{\eta_2\cos(\theta_i)+\eta_1\cos(\theta_t)}'
  ],

  [
    'Fresnel Equation - Transmission Perpendicular Polarization:',
    r'\tau{_\perp} = \frac {2\eta_2\cos(\theta_i)}{\eta_2\cos(\theta_i)+\eta_1\cos(\theta_t)}'
  ],

  [
    'Fresnel Equation - Reflection Parallel Polarization:',
    r'\varGamma{_{//}} = \frac {\eta_2\cos(\theta_t)-\eta_1\cos(\theta_i)}{\eta_2\cos(\theta_t)+\eta_1\cos(\theta_i)}'
  ],

  [
    'Fresnel Equation - Transmission Parallel Polarization:',
    r'\tau{_{//}} = \frac {2\eta_2\cos(\theta_i)}{\eta_2\cos(\theta_t)+\eta_1\cos(\theta_i)}'
  ],

];

class EquationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      body: GestureDetector(
      onTap: () {
  // Dismiss keyboard when the user taps outside of a text field
            FocusScope.of(context).unfocus();
            },
      child: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 800),
          child: ListView(
            children: equations
                .map((entry) => Padding(
              padding: const EdgeInsets.all(10),
              child: Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text(entry[0]),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(1, 5, 1, 5),
                      child: SelectableMath.tex(
                        entry[1],
                        textStyle: TextStyle(fontSize: 22),
                      ),
                    )
                  ],
                ),
              ),
            ))
                .toList(),
          ),
        ),
      )
      )
      );
    }