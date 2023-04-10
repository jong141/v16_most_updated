import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:extended_math/extended_math.dart';
import 'package:flutter_math_fork/flutter_math.dart';

import 'calculation formula page/choose CA page.dart';
import 'calculation formula page/choose CPC page.dart';
import 'calculation formula page/choose CII page.dart';
import 'calculation formula page/choose BA page.dart';
import 'calculation formula page/choose isnell page.dart';
import 'calculation formula page/choose tsnell page.dart';
import 'calculation formula page/choose RPP(perpendicular) page.dart';
import 'calculation formula page/choose TPP(perpendicular) page.dart';
import 'calculation formula page/choose RPP(parallel) page.dart';
import 'calculation formula page/choose TPP(parallel) page.dart';

import 'calculation formula page/variables.dart';

class calculator extends StatefulWidget {
  const calculator({Key? key}) : super(key: key);
  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  final variables = Variables();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Math v15'),
        centerTitle: true,
      ),
        body: GestureDetector(
        onTap: () {
        // Dismiss keyboard when the user taps outside of a text field
        FocusScope.of(context).unfocus();
        },
          child:Container(
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
                      ),  //spacing
                      Card(
                        color: Colors.blue[900],
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 40, 15.0, 40.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: const <Widget>[
                              Text(
                                'Complex Propagation Constant \n Complex Intrinsic Impedance',
                                style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ), //card 1
                      Row(
                        children: const [
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),  //spacing

                      Row(
                        children: [
                          Expanded(
                            child:
                            SizedBox(
                              height: 100,
                              width: 170,
                              child: TextField(
                                controller: variables.controller1,
                                decoration: InputDecoration(
                                    label: Math.tex(r'\alpha \ \scriptsize Np/m',
                                        textStyle: const TextStyle(fontSize: 25)),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20))
                                ),
                                keyboardType: TextInputType.text,
                                onEditingComplete: () {
                                  _vaildateUserinput3(variables.controller1.text) &&
                                      _vaildateUserinput3(variables.controller2.text);
                                },
                                //keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                                //inputFormatters: <TextInputFormatter>[
                                // FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                                //],
                              ),
                            ),

                          ),

                          const SizedBox(
                            width: 10,
                          ),

                          Expanded(child:
                          SizedBox(
                            height: 100,
                            width: 170,
                            child: TextField(
                              controller: variables.controller2,
                              decoration: InputDecoration(
                                  label: Math.tex(r'\beta\ \scriptsize rad/m',
                                      textStyle: const TextStyle(fontSize: 25)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20))
                              ),
                              keyboardType: TextInputType.text,
                              onEditingComplete: () {
                                _vaildateUserinput3(variables.controller1.text) &&
                                    _vaildateUserinput3(variables.controller2.text);
                              },
                              // keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                              //inputFormatters: <TextInputFormatter>[
                              //  FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                              // ],
                            ),
                          ),
                          ),
                        ],
                      ),  //input 1&2
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 100,
                              width: 170,
                              child: TextField(
                                controller: variables.controller3,
                                decoration: InputDecoration(
                                    label: Math.tex(r'\omega \  \scriptsize rad/s',
                                        textStyle: const TextStyle(fontSize: 25)),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20))
                                ),
                                keyboardType: TextInputType.text,
                                onEditingComplete: () {
                                  _vaildateUserinput4(variables.controller3.text);
                                },
                                // keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                                //inputFormatters: <TextInputFormatter>[
                                //  FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                                // ],
                              ),
                            ),
                          ),

                          const SizedBox(
                            width: 10,
                          ),

                          Expanded(child:
                          SizedBox(

                            height: 100,
                            width: 170,
                            child: TextField(
                              controller: variables.controller4,
                              decoration: InputDecoration(
                                  label: Math.tex(r'\mu_{\scriptsize 1 \normalsize r}',
                                      textStyle: const TextStyle(fontSize: 25)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20))
                              ),
                              keyboardType: TextInputType.text,
                              onEditingComplete: () {
                                _vaildateUserinput4(variables.controller4.text);
                              },
                              // keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                              //inputFormatters: <TextInputFormatter>[
                              //  FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                              // ],
                            ),
                          ),
                          ),
                        ],
                      ),  //input 3&4
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 100,
                              width: 170,
                              child: TextField(
                                controller: variables.controller5,
                                decoration: InputDecoration(
                                    label: Math.tex(
                                        r'\varepsilon_{\scriptsize 1 \normalsize c \scriptsize \ Real \ Part}',
                                        textStyle: const TextStyle(fontSize: 25)),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20))
                                ),
                                keyboardType: TextInputType.text,
                                onEditingComplete: () {
                                  variables.controller7.text = '';
                                  variables.controller8.text = '';
                                  variables.controller10.text = '';
                                  _vaildateUserinput4(variables.controller5.text);
                                },
                                // keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                                //inputFormatters: <TextInputFormatter>[
                                //  FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                                // ],
                              ),
                            ),
                          ),

                          const SizedBox(
                            width: 10,
                          ),

                          Expanded(
                            child: SizedBox(
                              height: 100,
                              width: 170,
                              child: TextField(
                                controller: variables.controller6,
                                decoration: InputDecoration(
                                    label: Math.tex(
                                        r'\varepsilon_{\scriptsize 1 \normalsize c \scriptsize \ Im \ Part}',
                                        textStyle: const TextStyle(fontSize: 25)),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20))
                                ),
                                keyboardType: TextInputType.text,
                                onEditingComplete: () {
                                  variables.controller7.text = '';

                                  variables.controller10.text = '';
                                  _vaildateUserinput4(variables.controller6.text);
                                },
                                // keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                                //inputFormatters: <TextInputFormatter>[
                                //  FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                                // ],
                              ),
                            ),
                          ),
                        ],
                      ),  //input 5&6
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 100,
                              width: 170,
                              child: TextField(
                                controller: variables.controller7,
                                decoration: InputDecoration(
                                    label: Math.tex(r'\varepsilon_{\scriptsize 1 \normalsize r}',
                                        textStyle: const TextStyle(fontSize: 25)),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20))
                                ),
                                keyboardType: TextInputType.text,
                                onEditingComplete: () {
                                  variables.controller5.text = '';
                                  variables.controller6.text = '';
                                  _vaildateUserinput4(variables.controller7.text);
                                },
                                // keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                                //inputFormatters: <TextInputFormatter>[
                                //  FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                                // ],
                              ),
                            ),
                          ),

                          SizedBox(
                            width: 10,
                          ),

                          Expanded(
                            child: SizedBox(
                              height: 100,
                              width: 170,
                              child: TextField(
                                controller: variables.controller8,
                                decoration: InputDecoration(
                                    label: Math.tex(r'\sigma\  \scriptsize S/m',
                                        textStyle: const TextStyle(fontSize: 25)),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20))
                                ),
                                keyboardType: TextInputType.text,
                                onEditingComplete: () {
                                  variables.controller5.text = '';

                                  _vaildateUserinput4(variables.controller8.text);
                                },
                                // keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                                //inputFormatters: <TextInputFormatter>[
                                //  FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                                // ],
                              ),
                            ),
                          ),
                        ],
                      ),  //input 7&8

                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 80,
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
                                    _vaildateUserinput(variables.controller1.text) &&
                                        _vaildateUserinput(variables.controller2.text) &&
                                        _vaildateUserinput(variables.controller3.text) &&
                                        _vaildateUserinput(variables.controller4.text) &&
                                        _vaildateUserinput(variables.controller5.text) &&
                                        _vaildateUserinput(variables.controller6.text) &&
                                        _vaildateUserinput(variables.controller7.text) &&
                                        _vaildateUserinput(variables.controller8.text);
                                  },

                                   child: FittedBox(
                                      alignment: FractionalOffset.centerLeft,
                                      fit: BoxFit.fitWidth,
                                      child: Math.tex(r'\varUpsilon =' + variables.ans_1 + r'+' + variables.ans_2 + r'j', textStyle: const TextStyle(fontSize: 25),),),

                                ),
                              ),
                            ),
                          ),
                        ],
                      ),  // complex Propagation constant button
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 80,
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
                                    _vaildateUserinput1(variables.controller3.text) &&
                                        _vaildateUserinput1(variables.controller4.text) &&
                                        _vaildateUserinput1(variables.controller5.text) &&
                                        _vaildateUserinput1(variables.controller6.text) &&
                                        _vaildateUserinput1(variables.controller7.text) &&
                                        _vaildateUserinput1(variables.controller8.text);
                                  },
                                  child: FittedBox(
                                    alignment: FractionalOffset.centerLeft,
                                    fit: BoxFit.fitWidth,
                                    child: Math.tex(r'\large\eta_{\scriptsize 1 \normalsize c}\normalsize =' + variables.ans_3 + r'+' + variables.ans_4 + r'j', textStyle: const TextStyle(fontSize: 25),),),

                                ),
                              ),
                            ),
                          ),
                        ],
                      ),  // complex intrinsic impedance button

                      Row(
                        children: const [
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),  //spacing
                      Card(
                        color: Colors.blue[900],
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 40, 15.0, 40.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Text(
                                'Snell\'s Law \n Brewster Angle \n Critical Angle Equation',
                                style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ), //card 2
                      Row(
                        children: const [
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),  //spacing

                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 100,
                              width: 170,
                              child: TextField(
                                controller: variables.controller9,
                                decoration: InputDecoration(
                                    label: Math.tex(r'\mu_{\scriptsize 2 \normalsize r}',
                                        textStyle: const TextStyle(fontSize: 25)),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20))
                                ),
                                keyboardType: TextInputType.text,
                                onEditingComplete: () {
                                  _vaildateUserinput4(variables.controller10.text);
                                },
                                // keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                                //inputFormatters: <TextInputFormatter>[
                                //  FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                                // ],
                              ),
                            ),
                          ),

                          SizedBox(
                            width: 10,
                          ),

                          Expanded(
                            child: SizedBox(
                              height: 100,
                              width: 170,
                              child: TextField(
                                controller: variables.controller10,
                                decoration: InputDecoration(
                                    label: Math.tex(r'\varepsilon_{\scriptsize 2 \normalsize r} ',
                                        textStyle: const TextStyle(fontSize: 25)),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20))
                                ),
                                keyboardType: TextInputType.text,
                                onEditingComplete: () {
                                  _vaildateUserinput4(variables.controller10.text);
                                },
                                // keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                                //inputFormatters: <TextInputFormatter>[
                                //  FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                                // ],
                              ),
                            ),
                          ),
                        ],
                      ),  //input 9&10
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 100,
                              width: 170,
                              child: TextField(
                                controller: variables.controller11,
                                decoration: InputDecoration(
                                    label: Math.tex(r'\varepsilon_{\scriptsize 2 \normalsize c \ \scriptsize Real\ Part}',
                                        textStyle: const TextStyle(fontSize: 25)),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20))
                                ),
                                keyboardType: TextInputType.text,
                                onEditingComplete: () {
                                  variables.controller10.text = '';
                                  _vaildateUserinput4(variables.controller11.text);
                                },
                                // keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                                //inputFormatters: <TextInputFormatter>[
                                //  FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                                // ],
                              ),
                            ),
                          ),

                          SizedBox(
                            width: 10,
                          ),

                          Expanded(
                            child: SizedBox(
                              height: 100,
                              width: 170,
                              child: TextField(
                                controller: variables.controller12,
                                decoration: InputDecoration(
                                    label: Math.tex(r'\varepsilon_{\scriptsize 2 \normalsize c\ \scriptsize Im\ Part}',
                                        textStyle: const TextStyle(fontSize: 25)),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20))
                                ),
                                keyboardType: TextInputType.text,
                                onEditingComplete: () {
                                  variables.controller10.text = '';
                                  _vaildateUserinput4(variables.controller12.text);
                                },
                                // keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                                //inputFormatters: <TextInputFormatter>[
                                //  FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                                // ],
                              ),
                            ),
                          ),
                        ],
                      ),  //input 11&12
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 100,
                              width: 170,
                              child: TextField(
                                controller: variables.controller13,
                                decoration: InputDecoration(
                                    label: Math.tex(r'\theta_{\normalsize i}\ \scriptsize rad',
                                        textStyle: const TextStyle(fontSize: 25)),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20))
                                ),
                                keyboardType: TextInputType.text,
                                onEditingComplete: () {

                                  _vaildateUserinput4(variables.controller13.text);
                                },
                                // keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                                //inputFormatters: <TextInputFormatter>[
                                //  FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                                // ],
                              ),
                            ),
                          ),

                          SizedBox(
                            width: 10,
                          ),

                          Expanded(
                            child: SizedBox(
                              height: 100,
                              width: 170,
                              child: TextField(
                                controller: variables.controller14,
                                decoration: InputDecoration(
                                    label: Math.tex(r'\theta_{\normalsize t}\ \scriptsize rad',
                                        textStyle: const TextStyle(fontSize: 25)),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20))
                                ),
                                keyboardType: TextInputType.text,
                                onEditingComplete: () {

                                  _vaildateUserinput4(variables.controller14.text);
                                },
                                // keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                                //inputFormatters: <TextInputFormatter>[
                                //  FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                                // ],
                              ),
                            ),
                          ),
                        ],
                      ),  //input 13&14

                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 80,
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
                                    _vaildateUserinput2(variables.controller5.text) &&
                                        _vaildateUserinput2(variables.controller6.text) &&
                                        _vaildateUserinput2(variables.controller7.text) &&
                                        _vaildateUserinput2(variables.controller10.text) &&
                                        _vaildateUserinput2(variables.controller11.text) &&
                                        _vaildateUserinput2(variables.controller12.text);
                                  },

                                  child: FittedBox(
                                    alignment: FractionalOffset.centerLeft,
                                    fit: BoxFit.fitWidth,
                                    child: Math.tex( r'\theta_c  =' + variables.ans_5 + r'+' + variables.ans_6 + r'j', textStyle: const TextStyle(fontSize: 25),),),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),// critical angle button
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 80,
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
                                      _vaildateUserinput5(variables.controller5.text) &&
                                      _vaildateUserinput5(variables.controller6.text) &&
                                      _vaildateUserinput5(variables.controller7.text) &&
                                      _vaildateUserinput5(variables.controller10.text) &&
                                      _vaildateUserinput5(variables.controller11.text) &&
                                      _vaildateUserinput5(variables.controller12.text);
                                  },

                                  child: FittedBox(
                                    alignment: FractionalOffset.centerLeft,
                                    fit: BoxFit.fitWidth,
                                    child: Math.tex( r'\theta_{B\Vert} =' + variables.ans_7 + r'+' + variables.ans_8 + r'j', textStyle: const TextStyle(fontSize: 25),),),

                                ),
                              ),
                            ),
                          ),
                        ],
                      ),// brewster angle button
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 80,
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
                                        _vaildateUserinput6(variables.controller4.text) &&
                                        _vaildateUserinput6(variables.controller7.text) &&
                                        _vaildateUserinput6(variables.controller9.text) &&
                                        _vaildateUserinput6(variables.controller10.text) &&
                                        _vaildateUserinput6(variables.controller14.text);
                                  },

                                  child: FittedBox(
                                    alignment: FractionalOffset.centerLeft,
                                    fit: BoxFit.fitWidth,
                                    child: Math.tex( r'\theta_{i} =' + variables.ans_9 + r'+' + variables.ans_10 + r'j', textStyle: const TextStyle(fontSize: 25),),),

                                ),
                              ),
                            ),
                          ),
                        ],
                      ),// incidence angle Snell's law button
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 80,
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
                                        _vaildateUserinput7(variables.controller4.text) &&
                                        _vaildateUserinput7(variables.controller7.text) &&
                                        _vaildateUserinput7(variables.controller9.text) &&
                                        _vaildateUserinput7(variables.controller10.text) &&
                                        _vaildateUserinput7(variables.controller13.text);
                                  },

                                  child: FittedBox(
                                    alignment: FractionalOffset.centerLeft,
                                    fit: BoxFit.fitWidth,
                                    child: Math.tex(  r'\theta_{t} =' + variables.ans_11 + r'+' + variables.ans_12 + r'j', textStyle: const TextStyle(fontSize: 25),),),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),// transmission angle Snell's law button


                      Row(
                        children: const [
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),  //spacing
                      Card(
                        color: Colors.blue[900],
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 40, 15.0, 40.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: const <Widget>[
                              Text(
                                'Fresnel Equation',
                                style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),  //card 3
                      Row(
                        children: const [
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),  //spacing

                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 100,
                              width: 170,
                              child: TextField(
                                controller: variables.controller15,
                                decoration: InputDecoration(
                                    label: Math.tex(r'\eta_{\scriptsize 1 \normalsize c\ \scriptsize Real\ Part}',
                                        textStyle: const TextStyle(fontSize: 25)),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20))
                                ),
                                keyboardType: TextInputType.text,
                                onEditingComplete: () {
                                  _vaildateUserinput4(variables.controller15.text);
                                },
                                // keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                                //inputFormatters: <TextInputFormatter>[
                                //  FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                                // ],
                              ),
                            ),
                          ),

                          SizedBox(
                            width: 10,
                          ),

                          Expanded(
                            child: SizedBox(
                              height: 100,
                              width: 170,
                              child: TextField(
                                controller: variables.controller16,
                                decoration: InputDecoration(
                                    label: Math.tex(r'\eta_{\scriptsize 1 \normalsize c\ \scriptsize Im\ Part}',
                                        textStyle: const TextStyle(fontSize: 25)),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20))
                                ),
                                keyboardType: TextInputType.text,
                                onEditingComplete: () {
                                  _vaildateUserinput4(variables.controller16.text);
                                },
                                // keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                                //inputFormatters: <TextInputFormatter>[
                                //  FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                                // ],
                              ),
                            ),
                          ),
                        ],
                      ),  //input 15&16
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 100,
                              width: 170,
                              child: TextField(
                                controller: variables.controller17,
                                decoration: InputDecoration(
                                    label: Math.tex(r'\eta_{\scriptsize 2 \normalsize c\ \scriptsize Real\ Part}',
                                        textStyle: const TextStyle(fontSize: 25)),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20))
                                ),
                                keyboardType: TextInputType.text,
                                onEditingComplete: () {
                                  _vaildateUserinput4(variables.controller17.text);
                                },
                                // keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                                //inputFormatters: <TextInputFormatter>[
                                //  FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                                // ],
                              ),
                            ),
                          ),

                          SizedBox(
                            width: 10,
                          ),

                          Expanded(
                            child: SizedBox(
                              height: 100,
                              width: 170,
                              child: TextField(
                                controller: variables.controller18,
                                decoration: InputDecoration(
                                    label: Math.tex(r'\eta_{\scriptsize 2 \normalsize c\ \scriptsize Im\ Part}',
                                        textStyle: const TextStyle(fontSize: 25)),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20))
                                ),
                                keyboardType: TextInputType.text,
                                onEditingComplete: () {
                                  _vaildateUserinput4(variables.controller18.text);
                                },
                                // keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                                //inputFormatters: <TextInputFormatter>[
                                //  FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                                // ],
                              ),
                            ),
                          ),
                        ],
                      ),  //input 17&18

                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 80,
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
                                    _vaildateUserinput8(variables.controller13.text) &&
                                    _vaildateUserinput8(variables.controller14.text) &&
                                    _vaildateUserinput8(variables.controller15.text) &&
                                    _vaildateUserinput8(variables.controller16.text) &&
                                    _vaildateUserinput8(variables.controller17.text) &&
                                    _vaildateUserinput8(variables.controller18.text);
                                  },

                                  child: FittedBox(
                                    alignment: FractionalOffset.centerLeft,
                                    fit: BoxFit.fitWidth,
                                    child: Math.tex( r'\varGamma{_\perp} =' + variables.ans_13 + r'+' + variables.ans_14 + r'j', textStyle: const TextStyle(fontSize: 25),),),

                                ),
                              ),
                            ),
                          ),
                        ],
                      ),  // Reflection Perpendicular Polarization button
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 80,
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
                                        _vaildateUserinput9(variables.controller13.text) &&
                                        _vaildateUserinput9(variables.controller14.text) &&
                                        _vaildateUserinput9(variables.controller15.text) &&
                                        _vaildateUserinput9(variables.controller16.text) &&
                                        _vaildateUserinput9(variables.controller17.text) &&
                                        _vaildateUserinput9(variables.controller18.text);
                                  },

                                  child: FittedBox(
                                    alignment: FractionalOffset.centerLeft,
                                    fit: BoxFit.fitWidth,
                                    child: Math.tex( r'\tau{_\perp} =' + variables.ans_15 + r'+' + variables.ans_16 + r'j', textStyle: const TextStyle(fontSize: 25),),),


                                ),
                              ),
                            ),
                          ),
                        ],
                      ),  // Transmission Perpendicular Polarization button
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 80,
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
                                    _vaildateUserinput10(variables.controller13.text) &&
                                    _vaildateUserinput10(variables.controller14.text) &&
                                    _vaildateUserinput10(variables.controller15.text) &&
                                    _vaildateUserinput10(variables.controller16.text) &&
                                    _vaildateUserinput10(variables.controller17.text) &&
                                    _vaildateUserinput10(variables.controller18.text);
                                  },

                                  child: FittedBox(
                                    alignment: FractionalOffset.centerLeft,
                                    fit: BoxFit.fitWidth,
                                    child: Math.tex( r'\varGamma{_{//}}=' + variables.ans_17 + r'+' + variables.ans_18 + r'j', textStyle: const TextStyle(fontSize: 25),),),

                                ),
                              ),
                            ),
                          ),
                        ],
                      ),  // Reflection Parallel Polarization button
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 80,
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
                                        _vaildateUserinput11(variables.controller13.text) &&
                                        _vaildateUserinput11(variables.controller14.text) &&
                                        _vaildateUserinput11(variables.controller15.text) &&
                                        _vaildateUserinput11(variables.controller16.text) &&
                                        _vaildateUserinput11(variables.controller17.text) &&
                                        _vaildateUserinput11(variables.controller18.text);
                                  },

                                  child: FittedBox(
                                    alignment: FractionalOffset.centerLeft,
                                    fit: BoxFit.fitWidth,
                                    child: Math.tex( r'\tau{_{//}} =' + variables.ans_19 + r'+' + variables.ans_20 + r'j', textStyle: const TextStyle(fontSize: 25),),),

                                ),
                              ),
                            ),
                          ),
                        ],
                      ), // Transmission Parallel Polarization button
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 80,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue[600],
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onPressed: () {
                                    variables.controller1.clear();
                                    variables.controller2.clear();
                                    variables.controller3.clear();
                                    variables.controller4.clear();
                                    variables.controller5.clear();
                                    variables.controller6.clear();
                                    variables.controller7.clear();
                                    variables.controller8.clear();
                                    variables.controller9.clear();
                                    variables.controller10.clear();
                                    variables.controller11.clear();
                                    variables.controller12.clear();
                                    variables.controller13.clear();
                                    variables.controller14.clear();
                                    variables.controller15.clear();
                                    variables.controller16.clear();
                                    variables.controller17.clear();
                                    variables.controller18.clear();

                                    variables.alpha = 0;
                                    variables.beta = 0;
                                    variables.omega = 0;
                                    variables.mu = 0;
                                    variables.real_epsilon = 0;
                                    variables.im_epsilon = 0;
                                    variables.epsilon = 0;
                                    variables.epsilon_r = 0;
                                    variables.sigma = 0;
                                    variables.mu_2=0;
                                    variables.epsilon_r_2=0;
                                    variables.real_epsilon_2 = 0;
                                    variables.im_epsilon_2 = 0;
                                    variables.theta_i =0;
                                    variables.theta_t =0;
                                    variables.CII_1_real = 0;
                                    variables.CII_1_im = 0;
                                    variables.CII_2_real = 0;
                                    variables.CII_2_im = 0;

                                    variables.ans_1 = '0';
                                    variables.ans_2 = '0';
                                    variables.ans_3 = '0';
                                    variables.ans_4 = '0';
                                    variables.ans_5 = '0';
                                    variables.ans_6 = '0';
                                    variables.ans_7 = '0';
                                    variables.ans_8 = '0';
                                    variables.ans_9 = '0';
                                    variables.ans_10 = '0';
                                    variables.ans_11 = '0';
                                    variables.ans_12 = '0';
                                    variables.ans_13 = '0';
                                    variables.ans_14 = '0';
                                    variables.ans_15 = '0';
                                    variables.ans_16 = '0';
                                    variables.ans_17 = '0';
                                    variables.ans_18 = '0';
                                    variables.ans_19 = '0';
                                    variables.ans_20 = '0';
                                  },

                                  child: Text('Clear All', style: TextStyle(fontSize: 25),),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ), // Clear button
                    ],
                  ),
                ),
              ),
            ),
            ),
          );
        }

  //Jump to CPC page.dart
  _vaildateUserinput(String input) {

    Navigator.push(context,
            MaterialPageRoute(
                builder: (context) =>
                    choose_CPC_page()
            ),
        );
      }

  //Jump to CII page.dart
  _vaildateUserinput1(String input) {

        Navigator.push(context,
            MaterialPageRoute(
                builder: (context) =>
                    choose_CII_page()
            ),
        );
    }

  //Jump to CAP page.dart
  _vaildateUserinput2(String input) {

    Navigator.push(context,
      MaterialPageRoute(
          builder: (context) =>
              choose_CA_page()
      ),
    );
  }

  //Auto update user input base on the input given 1,2
  _vaildateUserinput3(String input) {
    if (variables.controller1.text.isNotEmpty) {
      setState(() {
        variables.alpha = double.parse(variables.controller1.text);
        final a = variables.alpha.toStringAsPrecision(4);
        variables.a = a;
        variables.ans_1 = a;
        if (variables.controller2.text.isNotEmpty) {
          setState(() {
            variables.beta = double.parse(variables.controller2.text);
            final b = variables.beta.toStringAsPrecision(4);
            variables.b = b;
            variables.ans_2 = b;
            if (variables.controller3.text.isNotEmpty && variables.controller4.text.isNotEmpty &&
                variables.controller5.text.isNotEmpty && variables.controller6.text.isNotEmpty) {
              setState(() {
                variables.controller3.text = variables.controller4.text = variables.controller5.text =
                    variables.controller6.text = "";
              });
            }
          });
        }

        else {
          variables.ans_2 = '0';
        }
      });
    }
    else {
      variables.ans_1 = '0';
      if (variables.controller2.text.isNotEmpty) {
        setState(() {
          variables.beta = double.parse(variables.controller2.text);
          final b = variables.beta.toStringAsPrecision(4);
          variables.ans_2 = b;
          if (variables.controller3.text.isNotEmpty && variables.controller4.text.isNotEmpty &&
              variables.controller5.text.isNotEmpty && variables.controller6.text.isNotEmpty) {
            setState(() {
              variables.controller3.text = variables.controller4.text = variables.controller5.text =
                  variables.controller6.text = variables.controller7.text = variables.controller8.text = "";
            });
          }
        });
      }
    }
  }

  //Auto update user input base on the input given 3,4,5,6,7,8
  _vaildateUserinput4(String input) {
    if (variables.controller3.text.isNotEmpty && variables.controller4.text.isNotEmpty &&
        variables.controller5.text.isNotEmpty && variables.controller6.text.isNotEmpty) {
      setState(() {
        variables.omega = double.parse(variables.controller3.text);
        variables.mu = double.parse(variables.controller4.text);
        variables.real_epsilon = double.parse(variables.controller5.text);
        variables.im_epsilon = double.parse(variables.controller6.text);
        final neg_im_epsilon = -1* variables.im_epsilon;
        //calculation
        // sqrt(mu*Ec) = ??
        final u = variables.mu * variables.mu_o;
        final E = Complex(re: variables.real_epsilon, im: neg_im_epsilon);
        final x = E.module * u;
        final z = sqrt(x);
        final angle = E.argument / 2;

        //jw
        final w = Complex(re: 0, im: variables.omega);
        final R_jw = w.module;
        final angle_jw = w.argument;

        //result
        final R_propagration_constant1 = R_jw * z;
        final angle_propagration_constant1 = angle_jw + angle;
        final real_propagration_constant1 = R_propagration_constant1 *
            cos(angle_propagration_constant1);
        final im_propagration_constant1 = R_propagration_constant1 *
            sin(angle_propagration_constant1);
        final epsilon_r = variables.real_epsilon / variables.epsilon_o;
        final sigma = variables.im_epsilon * variables.omega;
        //display constant with 3 significant
        final mu_display = variables.mu.toStringAsFixed(4);
        final u_display = u.toStringAsExponential(4);
        final real_epsilon_display = variables.real_epsilon.toStringAsPrecision(4);
        final im_epsilon_display = variables.im_epsilon.toStringAsPrecision(4);
        final neg_im_epsilon_display = neg_im_epsilon.toStringAsPrecision(4);
        final root_R_display = E.module.toStringAsPrecision(4);
        final root_angle_display = E.argument.toStringAsPrecision(4);
        final root_real_display = z.toStringAsPrecision(4);
        final root_im_display = angle.toStringAsPrecision(4);
        final polar_R_display = x.toStringAsPrecision(4);
        final omega_display = variables.omega.toStringAsPrecision(4);
        final R_jw_display = R_jw.toStringAsPrecision(4);
        final angle_jw_display = angle_jw.toStringAsPrecision(4);
        final R_propagration_constant1_display = R_propagration_constant1
            .toStringAsPrecision(4);
        final angle_propagration_constant1_display = angle_propagration_constant1
            .toStringAsPrecision(4);
        final real_propagration_constant1_display = real_propagration_constant1
            .toStringAsPrecision(4);
        final im_propagration_constant1_display = im_propagration_constant1
            .toStringAsPrecision(4);
        final epsilon_r_display = epsilon_r.toStringAsPrecision(4);
        final sigma_display = sigma.toStringAsPrecision(4);

        variables.mu_display = mu_display;
        variables.u_display = u_display;
        variables.real_epsilon_display = real_epsilon_display;
        variables.im_epsilon_display = im_epsilon_display;
        variables.neg_im_epsilon_display = neg_im_epsilon_display;
        variables.root_R_display = root_R_display;
        variables.root_angle_display = root_angle_display;
        variables.root_real_display = root_real_display;
        variables.root_im_display = root_im_display;
        variables.polar_R_display = polar_R_display;
        variables.omega_display = omega_display;
        variables.R_jw_display = R_jw_display;
        variables.angle_jw_display = angle_jw_display;
        variables.R_propagration_constant1_display = R_propagration_constant1_display;
        variables.angle_propagration_constant1_display = angle_propagration_constant1_display;
        variables.real_propagration_constant1_display = real_propagration_constant1_display;
        variables.im_propagration_constant1_display = im_propagration_constant1_display;


        variables.ans_1 = real_propagration_constant1_display;
        variables.ans_2 = im_propagration_constant1_display;
        variables.controller1.text = real_propagration_constant1_display;
        variables.controller2.text = im_propagration_constant1_display;
        variables.controller7.text = epsilon_r_display;
        variables.controller8.text = sigma_display;


        //calculation
        final g_real = u / E.module;
        final g_angle = -1 * E.argument;
        final q_square_real = sqrt(g_real);
        final g_square_angle = g_angle / 2;
        final g_sqaure_re = q_square_real * cos(g_square_angle);
        final g_sqaure_im = q_square_real * sin(g_square_angle);

        //display constant with 3 significant
        final g_sqaure_re_display = g_sqaure_re.toStringAsPrecision(4);
        final g_sqaure_im_display = g_sqaure_im.toStringAsPrecision(4);
        variables.ans_3 = g_sqaure_re_display;
        variables.ans_4 = g_sqaure_im_display;
      });
    }
    else {
      if (variables.controller4.text.isNotEmpty && variables.controller5.text.isNotEmpty &&
          variables.controller6.text.isNotEmpty && variables.controller3.text.isEmpty) {
        setState(() {
          variables.mu = double.parse(variables.controller4.text);
          variables.real_epsilon = double.parse(variables.controller5.text);
          variables.im_epsilon = double.parse(variables.controller6.text);
          variables.mu_o = (4 * pi) * pow(10, -7);
          //calculation
          final neg_im_epsilon = -1 * variables.im_epsilon;
          final E = Complex(re: variables.real_epsilon, im: neg_im_epsilon);
          final u = variables.mu * variables.mu_o;
          final g_real = u / E.module;
          final g_angle = -1 * E.argument;
          final q_square_real = sqrt(g_real);
          final g_square_angle = g_angle / 2;
          final g_sqaure_re = q_square_real * cos(g_square_angle);
          final g_sqaure_im = q_square_real * sin(g_square_angle);
          final epsilon_r = variables.real_epsilon / variables.epsilon_o;
          //display constant with 3 significant
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
          final epsilon_r_display = epsilon_r.toStringAsPrecision(4);
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
          variables.epsilon_r_display = epsilon_r_display;

          variables.ans_3 = g_sqaure_re_display;
          variables.ans_4 = g_sqaure_im_display;
          variables.controller7.text = variables.epsilon_r_display;

        });
      }

      else if (variables.controller3.text.isNotEmpty && variables.controller4.text.isNotEmpty &&
          variables.controller7.text.isNotEmpty && variables.controller8.text.isNotEmpty) {
        setState(() {
          variables.omega = double.parse(variables.controller3.text);
          variables.mu = double.parse(variables.controller4.text);
          variables.epsilon_r = double.parse(variables.controller7.text);
          variables.sigma = double.parse(variables.controller8.text);
          //calculation
          // j(sigma/omega)
          final sm_om = variables.sigma / variables.omega;
          final u = variables.mu * variables.mu_o;
          final e = variables.epsilon_r * variables.epsilon_o;
          final m = Complex(re: u, im: 0);
          final E3 = Complex(re: e, im: -1 * sm_om);
          final z3 = m * E3;
          final r3 = sqrt(z3.module);
          final angle3 = z3.argument / 2;

          //jw
          final w = Complex(re: 0, im: variables.omega);
          final R_jw = w.module;
          final angle_jw = w.argument;

          //result
          final R_propagration_constant3 = R_jw * r3;
          final angle_propagration_constant3 = angle_jw + angle3;
          final real_propagration_constant3 = R_propagration_constant3 *
              cos(angle_propagration_constant3);
          final im_propagration_constant3 = R_propagration_constant3 *
              sin(angle_propagration_constant3);

          //display constant with 3 significant
          final mu_display = variables.mu.toStringAsPrecision(4);
          final u_display = u.toStringAsPrecision(4);
          final e_display = e.toStringAsPrecision(4);
          final er_display = variables.epsilon_r.toStringAsPrecision(4);
          final eo_display = variables.epsilon_o.toStringAsPrecision(4);
          final e_R_display = E3.module.toStringAsPrecision(4);
          final e_angle_display = E3.argument.toStringAsPrecision(4);
          final sigma_display = variables.sigma.toStringAsPrecision(4);
          final sm_om_display = sm_om.toStringAsPrecision(4);
          final z3_R_display = z3.module.toStringAsPrecision(4);
          final z3_angle_display = z3.argument.toStringAsPrecision(4);
          final root3_R_display = r3.toStringAsPrecision(4);
          final root3_angle_display = angle3.toStringAsPrecision(4);
          final omega_display = variables.omega.toStringAsPrecision(4);
          final R_jw_display = R_jw.toStringAsPrecision(4);
          final angle_jw_display = angle_jw.toStringAsPrecision(4);
          final R_propagration_constant3_display = R_propagration_constant3
              .toStringAsPrecision(4);
          final angle_propagration_constant3_display = angle_propagration_constant3
              .toStringAsPrecision(4);
          final real_propagration_constant3_display = real_propagration_constant3
              .toStringAsPrecision(4);
          final im_propagration_constant3_display = im_propagration_constant3
              .toStringAsPrecision(4);

          variables.mu_display = mu_display;
          variables.u_display = u_display;
          variables.e_display = e_display ;
          variables.er_display = er_display;
          variables.eo_display = eo_display;
          variables.e_R_display = e_R_display;
          variables.e_angle_display = e_angle_display;
          variables.sigma_display = sigma_display;
          variables.sm_om_display = sm_om_display;
          variables.z3_R_display = z3_R_display;
          variables.z3_angle_display = z3_angle_display;
          variables.root3_R_display = root3_R_display;
          variables.root3_angle_display = root3_angle_display;
          variables.omega_display = omega_display;
          variables.R_jw_display = R_jw_display;
          variables.angle_jw_display = angle_jw_display;
          variables.R_propagration_constant3_display = R_propagration_constant3_display;
          variables.angle_propagration_constant3_display = angle_propagration_constant3_display;
          variables.real_propagration_constant3_display = real_propagration_constant3_display;
          variables.im_propagration_constant3_display = im_propagration_constant3_display;


          variables.ans_1 = real_propagration_constant3_display;
          variables.ans_2 = im_propagration_constant3_display;
          variables.controller1.text = real_propagration_constant3_display;
          variables.controller2.text = im_propagration_constant3_display;
          variables.controller5.text = e_display;
          variables.controller6.text = sm_om_display;

          //calculation
          // sqrt of {mu/eilson-j(sigma/w)}
          variables.omega = double.parse(variables.controller3.text);
          variables.mu = double.parse(variables.controller4.text);
          variables.epsilon_r = double.parse(variables.controller7.text);
          variables.sigma = double.parse(variables.controller8.text);

          //calculation
          // sqrt of {mu/eilson-j(sigma/w)}
          final E = Complex(re: e, im: -1 * sm_om);
          final g_real = u / E.module;
          final g_angle = -1 * E.argument;
          final q_square_real = sqrt(g_real);
          final g_square_angle = g_angle / 2;
          final g_sqaure_re = q_square_real * cos(g_square_angle);
          final g_sqaure_im = q_square_real * sin(g_square_angle);

          //result
          final real_epsilon_display = e.toStringAsPrecision(4);
          final im_epsilon_display = sm_om.toStringAsPrecision(4);
          final root_R_display = E.module.toStringAsPrecision(4);
          final root_angle_display = E.argument.toStringAsPrecision(4);
          final q_real_display = g_real.toStringAsPrecision(4);
          final q_angle_display = g_angle.toStringAsPrecision(4);
          final q_square_real_display = q_square_real.toStringAsPrecision(4);
          final g_square_angle_display = g_square_angle.toStringAsPrecision(4);
          final g_sqaure_re_display = g_sqaure_re.toStringAsPrecision(4);
          final g_sqaure_im_display = g_sqaure_im.toStringAsPrecision(4);

          variables.omega_display = omega_display;
          variables.sigma_display = sigma_display;
          variables.mu_display = mu_display ;
          variables.u_display = u_display;
          variables.er_display = er_display;
          variables.eo_display = eo_display ;
          variables.real_epsilon_display = real_epsilon_display;
          variables.im_epsilon_display = im_epsilon_display;
          variables.root_R_display = root_R_display;
          variables.root_angle_display = root_angle_display;
          variables.q_real_display = q_real_display;
          variables.q_angle_display = q_angle_display;
          variables.q_square_real_display = q_square_real_display;
          variables.g_square_angle_display = g_square_angle_display ;
          variables.g_sqaure_re_display = g_sqaure_re_display;
          variables.g_sqaure_im_display = g_sqaure_im_display;

          variables.ans_3 = g_sqaure_re_display;
          variables.ans_4 = g_sqaure_im_display;
        });
      }

      // if(variables.controller7.text.isNotEmpty ) {
      //   setState(() {
      //     variables.epsilon_r = double.parse(variables.controller7.text);
      //     variables.epsilon_o = (1 / (36 * pi)) * pow(10, -9);
      //     final e = variables.epsilon_r * variables.epsilon_o;
      //     final e_display = e.toStringAsPrecision(4);
      //     variables.controller5.text = e_display;
      //   });
      // }
      //
      // if(variables.controller3.text.isNotEmpty) {
      //   setState(() {
      //     variables.omega = double.parse(variables.controller3.text);
      //
      //     if (variables.controller8.text.isNotEmpty) {
      //       variables.sigma = double.parse(variables.controller8.text);
      //       final sm_om = variables.sigma / variables.omega;
      //       final sm_om_display = sm_om.toStringAsPrecision(4);
      //       variables.controller6.text = sm_om_display;
      //     } else if (variables.controller6.text.isNotEmpty) {
      //       variables.im_epsilon = double.parse(variables.controller6.text);
      //       final sigma = variables.im_epsilon * variables.omega;
      //       final sigma_display = sigma.toStringAsPrecision(4);
      //       variables.controller8.text = sigma_display;
      //     }
      //   });
      // }
      //   else if(variables.controller3.text.isEmpty && variables.controller6.text.isNotEmpty ) {
      //     setState(() {
      //
      //         variables.sigma = double.parse(variables.controller8.text);
      //         variables.im_epsilon = double.parse(variables.controller6.text);
      //         final sm_om = variables.sigma / variables.im_epsilon;
      //         final sm_om_display = sm_om.toStringAsPrecision(4);
      //         variables.controller3.text = sm_om_display;
      //
      //     });
      //   }
      //
      // if(variables.controller5.text.isNotEmpty){
      //   setState(() {
      //     variables.real_epsilon = double.parse(variables.controller5.text);
      //     variables.epsilon_o = (1 / (36 * pi)) * pow(10, -9);
      //     final epsilon_r = variables.real_epsilon / variables.epsilon_o;
      //     final epsilon_r_display = epsilon_r.toStringAsPrecision(4);
      //     variables.controller7.text = epsilon_r_display;
      //   });
      // }
      //
      // if(variables.controller7.text.isNotEmpty && variables.controller10.text.isNotEmpty ) {
      //   setState(() {
      //     variables.epsilon_r = double.parse(variables.controller7.text);
      //     variables.epsilon_r_2= double.parse(variables.controller10.text);
      //     //CA1
      //     final E1 = variables.epsilon_o*variables.epsilon_r;
      //     final E2 = variables.epsilon_o*variables.epsilon_r_2;
      //     final Et = E2/E1;
      //     final root = sqrt(Et);
      //     final ca1 = asin(root);
      //     final ca1_display = ca1.toStringAsPrecision(4);
      //     variables.ans_5 = ca1_display;
      //     variables.ans_6 = '0';
      //     //BA1
      //     final BA1 = atan(root);
      //     final BA1_display = BA1.toStringAsPrecision(4);
      //     variables.ans_7 = BA1_display;
      //     variables.ans_8 = '0';
      //   });
      // }
      //
      // if(variables.controller5.text.isNotEmpty && variables.controller6.text.isNotEmpty &&
      //     variables.controller11.text.isNotEmpty && variables.controller12.text.isNotEmpty ) {
      //   setState(() {
      //     variables.real_epsilon = double.parse(variables.controller5.text);
      //     variables.im_epsilon = double.parse(variables.controller6.text);
      //     variables.real_epsilon_2 = double.parse(variables.controller11.text);
      //     variables.im_epsilon_2 = double.parse(variables.controller12.text);
      //     final E1_2 = Complex(re: variables.real_epsilon, im: variables.im_epsilon);
      //     final E2_2 = Complex(re: variables.real_epsilon_2, im: variables.im_epsilon_2);
      //     final Et = E2_2/E1_2;
      //     if (Et.im != 0){
      //       setState(() {
      //         final r_root = sqrt(Et.module);
      //         final angle_root = Et.argument/2;
      //         //arcsin(z) = -i * ln(i*z + sqrt(1 - z^2)); z is a complex number
      //         //z^2
      //         final arcsin_r = r_root*r_root;
      //         final arcsin_angle = angle_root*2;
      //         final arcsin_12 = arcsin_r*cos(arcsin_angle);
      //         final arcsin_123 = arcsin_r*sin(arcsin_angle);
      //         final arcsin_12345 = Complex(re:1-arcsin_12,im:-1*arcsin_123);
      //         //sqrt(1 - z^2))
      //         final arcsin_sqrt_real = sqrt(arcsin_12345.module);
      //         final arcsin_sqrt_im = arcsin_12345.argument/2;
      //         //i*z
      //         final arcsin_iz_angle = (pi/2)+angle_root;
      //         //i*z + sqrt(1 - z^2)
      //         final arcsin_real_part1=r_root * cos(arcsin_iz_angle);
      //         final arcsin_im_part1=r_root * sin(arcsin_iz_angle);
      //         final arcsin_real_part2=arcsin_sqrt_real * cos(arcsin_sqrt_im);
      //         final arcsin_im_part2=arcsin_sqrt_real * sin(arcsin_sqrt_im);
      //         final arcsin_real= arcsin_real_part1 + arcsin_real_part2;
      //         final arcsin_im= arcsin_im_part1 + arcsin_im_part2;
      //         final arcsin_complex = Complex(re:arcsin_real, im:arcsin_im);
      //         //ln(i*z + sqrt(1 - z^2))
      //         final arcsin_rr= arcsin_complex.module;
      //         final arcsin_iim= arcsin_complex.argument;
      //         final arcsin_ln_r= log(arcsin_rr);
      //         final arcsin_ln= Complex(re:arcsin_ln_r, im:arcsin_iim);
      //         //-i * ln(i*z + sqrt(1 - z^2))
      //         final ca2_ans= Complex(re: 0,im: -1)*arcsin_ln;
      //         final ca2_real_display = ca2_ans.re.toStringAsPrecision(4);
      //         final ca2_im_display = ca2_ans.im.toStringAsPrecision(4);
      //         variables.ans_5=ca2_real_display;
      //         variables.ans_6=ca2_im_display;
      //       });
      //     }
      //     if(Et.im==0){
      //       setState(() {
      //         final root_2 = sqrt(Et.module);
      //         final ca2 = asin(root_2);
      //         final ca2_real_display = ca2.toStringAsPrecision(4);
      //         variables.ans_5=ca2_real_display;
      //         variables.ans_6='0';
      //       });
      //     }
      //
      //   });
      // }
      //
      // if(variables.controller4.text.isNotEmpty && variables.controller7.text.isNotEmpty &&
      //     variables.controller9.text.isNotEmpty && variables.controller10.text.isNotEmpty &&
      //     variables.controller14.text.isNotEmpty) {
      //   setState(() {
      //     variables.mu = double.parse(variables.controller4.text);
      //     variables.epsilon_r = double.parse(variables.controller7.text);
      //     variables.mu_2 = double.parse(variables.controller9.text);
      //     variables.epsilon_r_2= double.parse(variables.controller10.text);
      //     variables.theta_t=double.parse(variables.controller14.text);
      //
      //     //calculation
      //     //I-SNELL
      //     final U1 = variables.mu * variables.mu_o;
      //     final U2 = variables.mu_2 * variables.mu_o;
      //     final E1 = variables.epsilon_o * variables.epsilon_r;
      //     final E2 = variables.epsilon_o * variables.epsilon_r_2;
      //     final UE1= U1*E1;
      //     final UE2= U2*E2;
      //     final UEt= UE1 / UE2;
      //     final root_3 = sqrt(UEt);
      //     final sin_t= sin(variables.theta_t);
      //     final sin_i = sin_t/root_3;
      //     final Isnell1= asin(sin_i);
      //
      //     final Isnell1_display = Isnell1.toStringAsPrecision(4);
      //     final theta_t_display = variables.theta_t.toStringAsPrecision(4);
      //     variables.ans_9 = variables.controller13.text=Isnell1_display;
      //     variables.ans_10 = '0';
      //     variables.ans_11 =  theta_t_display;
      //     variables.ans_12 = '0';
      //   });
      // }
      // else if(variables.controller4.text.isNotEmpty && variables.controller7.text.isNotEmpty &&
      //     variables.controller9.text.isNotEmpty && variables.controller10.text.isNotEmpty &&
      //     variables.controller13.text.isNotEmpty) {
      //   setState(() {
      //
      //     variables.mu = double.parse(variables.controller4.text);
      //     variables.epsilon_r = double.parse(variables.controller7.text);
      //     variables.mu_2 = double.parse(variables.controller9.text);
      //     variables.epsilon_r_2= double.parse(variables.controller10.text);
      //     variables.theta_i=double.parse(variables.controller13.text);
      //
      //     //calculation
      //     //I-SNELL
      //     final U1 = variables.mu * variables.mu_o;
      //     final U2 = variables.mu_2 * variables.mu_o;
      //     final E1 = variables.epsilon_o * variables.epsilon_r;
      //     final E2 = variables.epsilon_o * variables.epsilon_r_2;
      //     final UE1= U1*E1;
      //     final UE2= U2*E2;
      //     final UEt= UE1 / UE2;
      //     final root_3 = sqrt(UEt);
      //     final sin_i= sin(variables.theta_i);
      //     final sin_t = sin_i*root_3;
      //     final Tsnell1= asin(sin_t);
      //
      //     final Tsnell1_display = Tsnell1.toStringAsPrecision(4);
      //     final theta_i_display = variables.theta_i.toStringAsPrecision(4);
      //     variables.ans_9 = theta_i_display;
      //     variables.ans_10 = '0';
      //     variables.ans_11 =  variables.controller14.text=Tsnell1_display;
      //     variables.ans_12 = '0';
      //   });
      // }

    }
    if(variables.controller7.text.isNotEmpty ) {
      setState(() {
        variables.epsilon_r = double.parse(variables.controller7.text);
        variables.epsilon_o = (1 / (36 * pi)) * pow(10, -9);
        final e = variables.epsilon_r * variables.epsilon_o;
        final e_display = e.toStringAsPrecision(4);
        variables.controller5.text = e_display;
      });
    }

    if(variables.controller3.text.isNotEmpty) {
      setState(() {
        variables.omega = double.parse(variables.controller3.text);

        if (variables.controller8.text.isNotEmpty && variables.controller6.text.isEmpty ) {
          variables.sigma = double.parse(variables.controller8.text);
          final sm_om = variables.sigma / variables.omega;
          final sm_om_display = sm_om.toStringAsPrecision(4);
          variables.controller6.text = sm_om_display;
        } else if (variables.controller8.text.isEmpty && variables.controller6.text.isNotEmpty) {
          variables.im_epsilon = double.parse(variables.controller6.text);
          final sigma = variables.im_epsilon * variables.omega;
          final sigma_display = sigma.toStringAsPrecision(4);
          variables.controller8.text = sigma_display;
        }
      });
    }
    else if(variables.controller3.text.isEmpty && variables.controller6.text.isNotEmpty &&  variables.controller8.text.isNotEmpty) {
      setState(() {

        variables.sigma = double.parse(variables.controller8.text);
        variables.im_epsilon = double.parse(variables.controller6.text);
        final sm_om = variables.sigma / variables.im_epsilon;
        final sm_om_display = sm_om.toStringAsPrecision(4);
        variables.controller3.text = sm_om_display;

      });
    }

    if(variables.controller5.text.isNotEmpty){
      setState(() {
        variables.real_epsilon = double.parse(variables.controller5.text);
        variables.epsilon_o = (1 / (36 * pi)) * pow(10, -9);
        final epsilon_r = variables.real_epsilon / variables.epsilon_o;
        final epsilon_r_display = epsilon_r.toStringAsPrecision(4);
        variables.controller7.text = epsilon_r_display;
      });
    }

    if(variables.controller7.text.isNotEmpty && variables.controller10.text.isNotEmpty ) {
      setState(() {
        variables.epsilon_r = double.parse(variables.controller7.text);
        variables.epsilon_r_2= double.parse(variables.controller10.text);
        //CA1
        final E1 = variables.epsilon_o*variables.epsilon_r;
        final E2 = variables.epsilon_o*variables.epsilon_r_2;
        final Et = E2/E1;
        final root = sqrt(Et);
        final ca1 = asin(root);
        final ca1_display = ca1.toStringAsPrecision(4);
        variables.ans_5 = ca1_display;
        variables.ans_6 = '0';
        //BA1
        final BA1 = atan(root);
        final BA1_display = BA1.toStringAsPrecision(4);
        variables.ans_7 = BA1_display;
        variables.ans_8 = '0';
      });
    }

    if(variables.controller5.text.isNotEmpty && variables.controller6.text.isNotEmpty &&
        variables.controller11.text.isNotEmpty && variables.controller12.text.isNotEmpty ) {
      setState(() {
        variables.real_epsilon = double.parse(variables.controller5.text);
        variables.im_epsilon = double.parse(variables.controller6.text);
        variables.real_epsilon_2 = double.parse(variables.controller11.text);
        variables.im_epsilon_2 = double.parse(variables.controller12.text);
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
            final ca2_real_display = ca2_ans.re.toStringAsPrecision(4);
            final ca2_im_display = ca2_ans.im.toStringAsPrecision(4);
            variables.ans_5=ca2_real_display;
            variables.ans_6=ca2_im_display;
          });
        }
        if(Et.im==0){
          setState(() {
            final root_2 = sqrt(Et.module);
            final ca2 = asin(root_2);
            final ca2_real_display = ca2.toStringAsPrecision(4);
            variables.ans_5=ca2_real_display;
            variables.ans_6='0';
          });
        }

      });
    }

    if(variables.controller4.text.isNotEmpty && variables.controller7.text.isNotEmpty &&
        variables.controller9.text.isNotEmpty && variables.controller10.text.isNotEmpty &&
        variables.controller14.text.isNotEmpty) {
      setState(() {
        variables.mu = double.parse(variables.controller4.text);
        variables.epsilon_r = double.parse(variables.controller7.text);
        variables.mu_2 = double.parse(variables.controller9.text);
        variables.epsilon_r_2= double.parse(variables.controller10.text);
        variables.theta_t=double.parse(variables.controller14.text);

        //calculation
        //I-SNELL
        final U1 = variables.mu * variables.mu_o;
        final U2 = variables.mu_2 * variables.mu_o;
        final E1 = variables.epsilon_o * variables.epsilon_r;
        final E2 = variables.epsilon_o * variables.epsilon_r_2;
        final UE1= U1*E1;
        final UE2= U2*E2;
        final UEt= UE1 / UE2;
        final root_3 = sqrt(UEt);
        final sin_t= sin(variables.theta_t);
        final sin_i = sin_t/root_3;
        final Isnell1= asin(sin_i);

        final Isnell1_display = Isnell1.toStringAsPrecision(4);
        final theta_t_display = variables.theta_t.toStringAsPrecision(4);
        variables.ans_9 = variables.controller13.text=Isnell1_display;
        variables.ans_10 = '0';
        variables.ans_11 =  theta_t_display;
        variables.ans_12 = '0';
      });
    }
    else if(variables.controller4.text.isNotEmpty && variables.controller7.text.isNotEmpty &&
        variables.controller9.text.isNotEmpty && variables.controller10.text.isNotEmpty &&
        variables.controller13.text.isNotEmpty) {
      setState(() {

        variables.mu = double.parse(variables.controller4.text);
        variables.epsilon_r = double.parse(variables.controller7.text);
        variables.mu_2 = double.parse(variables.controller9.text);
        variables.epsilon_r_2= double.parse(variables.controller10.text);
        variables.theta_i=double.parse(variables.controller13.text);

        //calculation
        //I-SNELL
        final U1 = variables.mu * variables.mu_o;
        final U2 = variables.mu_2 * variables.mu_o;
        final E1 = variables.epsilon_o * variables.epsilon_r;
        final E2 = variables.epsilon_o * variables.epsilon_r_2;
        final UE1= U1*E1;
        final UE2= U2*E2;
        final UEt= UE1 / UE2;
        final root_3 = sqrt(UEt);
        final sin_i= sin(variables.theta_i);
        final sin_t = sin_i*root_3;
        final Tsnell1= asin(sin_t);

        final Tsnell1_display = Tsnell1.toStringAsPrecision(4);
        final theta_i_display = variables.theta_i.toStringAsPrecision(4);
        variables.ans_9 = theta_i_display;
        variables.ans_10 = '0';
        variables.ans_11 =  variables.controller14.text=Tsnell1_display;
        variables.ans_12 = '0';
      });
    }
    if(variables.controller13.text.isNotEmpty && variables.controller14.text.isNotEmpty &&
        variables.controller15.text.isNotEmpty && variables.controller16.text.isNotEmpty &&
        variables.controller17.text.isNotEmpty && variables.controller18.text.isNotEmpty) {
      setState(() {
        //input
        variables.theta_i=double.parse(variables.controller13.text);
        variables.theta_t=double.parse(variables.controller14.text);
        variables.CII_1_real=double.parse(variables.controller15.text);
        variables.CII_1_im=double.parse(variables.controller16.text);
        variables.CII_2_real=double.parse(variables.controller17.text);
        variables.CII_2_im=double.parse(variables.controller18.text);

//calculation
        //RPP(perpendicular) 1
        //n2 cos(i)
        final cos_i = cos(variables.theta_i);
        final n2 = Complex(re: variables.CII_2_real, im: variables.CII_2_im);
        final n2_cos_i_r = n2.module*cos_i;
        final n2_cos_i_angle = n2.argument;
        final n2_cos_i_real = n2_cos_i_r * cos(n2_cos_i_angle);
        final n2_cos_i_im = n2_cos_i_r * sin(n2_cos_i_angle);
        final n2cosi = Complex(re: n2_cos_i_real, im:n2_cos_i_im);

        //n1 cos(t)
        final cos_t = cos(variables.theta_t);
        final n1 = Complex(re: variables.CII_1_real, im: variables.CII_1_im);
        final n1_cos_t_r = n1.module*cos_t;
        final n1_cos_t_angle = n1.argument;
        final n1_cos_t_real = n1_cos_t_r * cos(n1_cos_t_angle);
        final n1_cos_t_im = n1_cos_t_r * sin(n1_cos_t_angle);
        final n1cost = Complex(re: n1_cos_t_real, im:n1_cos_t_im);

        //n2cos(i)-n1cos(t)
        final top_part = n2cosi - n1cost ;
        final top_part_r = top_part.module;
        final top_part_angle = top_part.argument;

        //n2cos(i)+n1cos(t)
        final bottom_part = n2cosi + n1cost ;
        final bottom_part_r = bottom_part.module;
        final bottom_part_angle = bottom_part.argument;

        //r(perpendicular)
        final r_per_r = top_part_r/bottom_part_r;
        final r_per_angle = top_part_angle - bottom_part_angle;
        final r_per_real = r_per_r*cos(r_per_angle);
        final r_per_im = r_per_r*sin(r_per_angle);
        final r_per_real_display = r_per_real.toStringAsPrecision(4) ;
        final r_per_im_display = r_per_im.toStringAsPrecision(4) ;
        variables.ans_13 = r_per_real_display;
        variables.ans_14 = r_per_im_display;

        //TPP(perpendicular) 1
        final two_n2cosi= Complex(re: 2*n2_cos_i_real, im:2*n2_cos_i_im);
        final two_n1cosi_r= two_n2cosi.module;
        final two_n1cosi_angle= two_n2cosi.argument;
        final r_per_r_2 = two_n1cosi_r/bottom_part_r;
        final r_per_angle_2 = two_n1cosi_angle - bottom_part_angle;
        final r_per_real_2 = r_per_r_2*cos(r_per_angle_2);
        final r_per_im_2 = r_per_r_2*sin(r_per_angle_2);
        final r_per_real_2_display = r_per_real_2.toStringAsPrecision(4) ;
        final r_per_im_2_display = r_per_im_2.toStringAsPrecision(4) ;
        variables.ans_15 = r_per_real_2_display;
        variables.ans_16 = r_per_im_2_display;


        //calculation
        //RPP(parallel) 1
        //n2 cos(t)
        final n2_cos_t_r = n2.module*cos_t;
        final n2_cos_t_angle = n2.argument;
        final n2_cos_t_real = n2_cos_t_r * cos(n2_cos_t_angle);
        final n2_cos_t_im = n2_cos_t_r * sin(n2_cos_t_angle);
        final n2cost = Complex(re: n2_cos_t_real, im:n2_cos_t_im);

        //n1 cos(i)

        final n1_cos_i_r = n1.module*cos_i;
        final n1_cos_i_angle = n1.argument;
        final n1_cos_i_real = n1_cos_i_r * cos(n1_cos_i_angle);
        final n1_cos_i_im = n1_cos_i_r * sin(n1_cos_i_angle);
        final n1cosi = Complex(re: n1_cos_i_real, im:n1_cos_i_im);

        //n2cos(t)-n1cos(i)
        final top_part_3 = n2cost - n1cosi ;
        final top_part_r_3 = top_part_3.module;
        final top_part_angle_3 = top_part_3.argument;

        //n2cos(i)+n1cos(t)
        final bottom_part_3 = n2cost + n1cosi ;
        final bottom_part_r_3 = bottom_part_3.module;
        final bottom_part_angle_3 = bottom_part_3.argument;

        //r(parallel)
        final r_per_r_3 = top_part_r_3/bottom_part_r_3;
        final r_per_angle_3 = top_part_angle_3 - bottom_part_angle_3;
        final r_per_real_3 = r_per_r_3*cos(r_per_angle_3);
        final r_per_im_3 = r_per_r_3*sin(r_per_angle_3);
        final r_per_real_3_display = r_per_real_3.toStringAsPrecision(4) ;
        final r_per_im_3_display = r_per_im_3.toStringAsPrecision(4) ;

        variables.ans_17 = r_per_real_3_display;
        variables.ans_18 = r_per_im_3_display;

        //TPP(parallel) 1
        //n2 cos(i)


        //T(parallel)
        final r_per_r_4 = two_n1cosi_r/bottom_part_r_3;
        final r_per_angle_4 = two_n1cosi_angle - bottom_part_angle_3;
        final r_per_real_4 = r_per_r_4*cos(r_per_angle_4);
        final r_per_im_4 = r_per_r_4*sin(r_per_angle_4);
        final r_per_real_4_display = r_per_real_4.toStringAsPrecision(4) ;
        final r_per_im_4_display = r_per_im_4.toStringAsPrecision(4) ;
        variables.ans_19 = r_per_real_4_display;
        variables.ans_20 = r_per_im_4_display;

      });
    }
  }

  //Jump to BA page.dart
  _vaildateUserinput5(String input) {

    Navigator.push(context,
      MaterialPageRoute(
          builder: (context) =>
              choose_BA_page()
      ),
    );
  }

  //Jump to incident Snell page.dart
  _vaildateUserinput6(String input) {

    Navigator.push(context,
      MaterialPageRoute(
          builder: (context) =>
              choose_isnell_page()
      ),
    );
  }

  //Jump to Transmission Snell page.dart
  _vaildateUserinput7(String input) {

    Navigator.push(context,
      MaterialPageRoute(
          builder: (context) =>
              choose_tsnell_page()
      ),
    );
  }

  //Jump to RPP(perpendicular) page.dart
  _vaildateUserinput8(String input) {

    Navigator.push(context,
      MaterialPageRoute(
          builder: (context) =>
              choose_RPP_perpendicular_page()
      ),
    );
  }

  //Jump to TPP(perpendicular) page.dart
  _vaildateUserinput9(String input) {

    Navigator.push(context,
      MaterialPageRoute(
          builder: (context) =>
              choose_TPP_perpendicular_page()
      ),
    );
  }

  //Jump to RPP(parallel) page.dart
  _vaildateUserinput10(String input) {

    Navigator.push(context,
      MaterialPageRoute(
          builder: (context) =>
              choose_RPP_parallel_page()
      ),
    );
  }

  //Jump to TPP(parallel) page.dart
  _vaildateUserinput11(String input) {

    Navigator.push(context,
      MaterialPageRoute(
          builder: (context) =>
              choose_TPP_parallel_page()
      ),
    );
  }


}


