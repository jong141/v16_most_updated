import 'dart:math';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:extended_math/extended_math.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



  Widget recttopolar(var a, var b, var c, var d, var e) {
    return Column(
        children: [
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'(A) + j(B)', textStyle: const TextStyle(fontSize: 18),),),),

          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'= \sqrt{A^2+B^2}\ \angle \tan^{-1}(\frac{B}{A})', textStyle: const TextStyle(fontSize: 18),),),),

          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'= \sqrt{'+a +r'^2+' +b +r'^2}\ \angle \tan^{-1}(\frac{'+b +r'}{'+a +r'})', textStyle: const TextStyle(fontSize: 18),),),),

          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'= (' +c +r')\ \angle(' +d +r')rad', textStyle: const TextStyle(fontSize: 18),),),),

          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'= (' +c +r')\ \angle(' +d +r'*\frac{180}{\pi})', textStyle: const TextStyle(fontSize: 18),),),),

          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'= (' +c +r')\ \angle(' +e +r'^o)', textStyle: const TextStyle(fontSize: 18),),),),

        ]
    );
  }

  Widget polartorect(var a, var b, var c, var d,) {
    return Column(
        children: [
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'(A)\ \angle(B)', textStyle: const TextStyle(fontSize: 18),),),),

          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'= A*\cos(B) \ \angle A*\sin(B)', textStyle: const TextStyle(fontSize: 18),),),),

          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'=(' +a +r')*\cos(' +b +r') \ \angle(' +a +r')*\sin(' +b +r')', textStyle: const TextStyle(fontSize: 18),),),),

          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'= (' +c +r')+(' +d +r')j', textStyle: const TextStyle(fontSize: 18),),),),

        ]
    );
  }

  Widget n2cosi_minus_n1cost //RPP(perpendicular)
      (var CII_1_real_display,var CII_1_im_display,var CII_2_real_display, var CII_2_im_display , var n1_cos_t_r_display ,
      var n1_cos_t_angle_display , var n1_cos_t_real_display , var n1_cos_t_im_display , var n2_cos_i_r_display , var n2_cos_i_angle_display ,
      var n2_cos_i_real_display ,var n2_cos_i_im_display ,var top_part_re_display , var top_part_im_display , var top_part_r_display ,
      var top_part_angle_display ,  var CII_1_R_display, var CII_1_angle_display, var CII_2_R_display, var CII_2_angle_display, var theta_i_display,
      var theta_t_display,   )
  {
    return Column(
        children: [
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'\large\eta_2\cos(\theta_i)', textStyle: const TextStyle(fontSize: 18),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'= (' +CII_2_real_display +r')+(' +CII_2_im_display +r'j)*\cos(' +theta_i_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'= \sqrt{' +CII_2_real_display +r'^2+'+CII_2_im_display +r'^2}\ \angle\tan^{-1}\frac{'+CII_2_im_display +r'}{'+CII_2_real_display +r'}*\cos(' +theta_i_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'=' +CII_2_R_display +r'\ \angle' +CII_2_angle_display +r'*\cos(' +theta_i_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          //
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'=' +CII_2_R_display +r'*\cos(' +theta_i_display +r')' +r'\ \angle' +CII_2_angle_display , textStyle: const TextStyle(fontSize: 18),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'=(' +n2_cos_i_r_display +r')' +r'\ \angle(' +CII_2_angle_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'=(' +n2_cos_i_r_display +r')\cos(' +n2_cos_i_angle_display +r')+j(' +n2_cos_i_r_display +r')\sin(' +n2_cos_i_angle_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'=(' +n2_cos_i_real_display +r')+(' +n2_cos_i_im_display +r')j', textStyle: const TextStyle(fontSize: 18),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'\large\eta_1\cos(\theta_t)', textStyle: const TextStyle(fontSize: 18),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'= (' +CII_1_real_display +r')+(' +CII_1_im_display +r'j)*\cos(' +theta_t_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'= \sqrt{' +CII_1_real_display +r'^2+'+CII_1_im_display +r'^2}\ \angle\tan^{-1}\frac{'+CII_1_im_display +r'}{'+CII_1_real_display +r'}*\cos(' +theta_i_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'=' +CII_1_R_display +r'\ \angle' +CII_1_angle_display +r'*\cos(' +theta_t_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'=' +CII_1_R_display +r'*\cos(' +theta_t_display +r')' +r'\ \angle' +CII_1_angle_display , textStyle: const TextStyle(fontSize: 18),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'=(' +n1_cos_i_r_display +r')' +r'\ \angle(' +CII_1_angle_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'=(' +n1_cos_i_r_display +r')\cos(' +n1_cos_i_angle_display +r')+j(' +n1_cos_i_r_display +r')\sin(' +n1_cos_i_angle_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'=(' +n1_cos_i_real_display +r')+(' +n1_cos_i_im_display +r')j', textStyle: const TextStyle(fontSize: 18),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'\large\eta_2\cos(\theta_i)-\eta_1\cos(\theta_t)\normalsize', textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'=('+n2_cos_i_real_display +r')+(' +n2_cos_i_im_display +r')j - \Big[('+n1_cos_t_real_display +r')+(' +n1_cos_t_im_display +r')j\Big]', textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'=(' +top_part_re_display +r')+(' +top_part_im_display +r')j ', textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'= \sqrt{(' +top_part_re_display +r')^2+(' +top_part_im_display +r')^2}\ \angle \tan^{-1}\frac{' +top_part_im_display +r'}{' +top_part_re_display +r'}' , textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'=(' +top_part_r_display +r')\ \angle(' +top_part_angle_display +r')', textStyle: const TextStyle(fontSize: 18),),),),


        ]
    );
  }

  Widget n2cosi_plus_n1cost //RPP(perpendicular) & TPP(perpendicular)
      (var CII_1_real_display,var CII_1_im_display,var CII_2_real_display, var CII_2_im_display , var n1_cos_t_r_display ,
      var n1_cos_t_angle_display , var n1_cos_t_real_display , var n1_cos_t_im_display , var n2_cos_i_r_display , var n2_cos_i_angle_display ,
      var n2_cos_i_real_display ,var n2_cos_i_im_display ,var bottom_part_re_display , var bottom_part_im_display , var bottom_part_r_display ,
      var bottom_part_angle_display ,  var CII_1_R_display, var CII_1_angle_display, var CII_2_R_display, var CII_2_angle_display, var theta_i_display,
      var theta_t_display,   )
  {
    return Column(
        children: [
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'\large\eta_2\cos(\theta_i)', textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'= (' +CII_2_real_display +r')+(' +CII_2_im_display +r'j)*\cos(' +theta_i_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'= \sqrt{' +CII_2_real_display +r'^2+'+CII_2_im_display +r'^2}\ \angle\tan^{-1}\frac{'+CII_2_im_display +r'}{'+CII_2_real_display +r'}*\cos(' +theta_i_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'=' +CII_2_R_display +r'\ \angle' +CII_2_angle_display +r'*\cos(' +theta_i_display +r')', textStyle: const TextStyle(fontSize: 18),),),),

          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'=' +CII_2_R_display +r'*\cos(' +theta_i_display +r')' +r'\ \angle' +CII_2_angle_display , textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'=(' +n2_cos_i_r_display +r')' +r'\ \angle(' +CII_2_angle_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'=(' +n2_cos_i_r_display +r')\cos(' +n2_cos_i_angle_display +r')+j(' +n2_cos_i_r_display +r')\sin(' +n2_cos_i_angle_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'=(' +n2_cos_i_real_display +r')+(' +n2_cos_i_im_display +r')j', textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'\large\eta_1\cos(\theta_t)', textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'= (' +CII_1_real_display +r')+(' +CII_1_im_display +r'j)*\cos(' +theta_t_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'= \sqrt{' +CII_1_real_display +r'^2+'+CII_1_im_display +r'^2}\ \angle\tan^{-1}\frac{'+CII_1_im_display +r'}{'+CII_1_real_display +r'}*\cos(' +theta_t_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'=' +CII_1_R_display +r'\ \angle' +CII_1_angle_display +r'*\cos(' +theta_t_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'=' +CII_1_R_display +r'*\cos(' +theta_t_display +r')' +r'\ \angle' +CII_1_angle_display , textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'=(' +n1_cos_t_r_display +r')' +r'\ \angle(' +CII_1_angle_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'=(' +n1_cos_t_r_display +r')\cos(' +n1_cos_t_angle_display +r')+j(' +n1_cos_t_r_display +r')\sin(' +n1_cos_t_angle_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'=(' +n1_cos_t_real_display +r')+(' +n1_cos_t_im_display +r')j', textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'\large\eta_2\cos(\theta_i)+\eta_1\cos(\theta_t)\normalsize', textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'=('+n2_cos_i_real_display +r')+(' +n2_cos_i_im_display +r')j + \Big[('+n1_cos_t_real_display +r')+(' +n1_cos_t_im_display +r')j\Big]', textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'=(' +bottom_part_re_display +r')+(' +bottom_part_im_display +r')j ', textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'= \sqrt{(' +bottom_part_re_display +r')^2+(' +bottom_part_im_display +r')^2}\ \angle \tan^{-1}\frac{' +bottom_part_im_display +r'}{' +bottom_part_re_display +r'}' , textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'=(' +bottom_part_r_display +r')\ \angle(' +bottom_part_angle_display +r')', textStyle: const TextStyle(fontSize: 18),),),),


        ]
    );
  }

  Widget two_n2cosi //TPP(perpendicular)
      (var CII_1_real_display,var CII_1_im_display,var CII_2_real_display, var CII_2_im_display , var n1_cos_t_r_display ,
      var n1_cos_t_angle_display , var n1_cos_t_real_display , var n1_cos_t_im_display , var n2_cos_t_r_display , var n2_cos_i_angle_display ,
      var n2_cos_i_real_display ,var n2_cos_i_im_display ,var two_n1cosi_r_display , var two_n1cosi_angle_display , var CII_1_R_display,
      var CII_1_angle_display, var CII_2_R_display, var CII_2_angle_display, var theta_i_display, var theta_t_display,   )
  {
    return Column(
        children: [
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'\large\eta_2\cos(\theta_i)', textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'=(' +n2_cos_t_r_display +r')' +r'\ \angle(' +CII_2_angle_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'\large2\eta_2\cos(\theta_i)', textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'=2*\bigg[(' +n2_cos_t_r_display +r')' +r'\ \angle(' +CII_2_angle_display +r')\bigg]', textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'=\big(2*' +n2_cos_t_r_display +r')' +r'\ \angle(' +CII_2_angle_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'=(' +two_n1cosi_r_display +r')' +r'\ \angle(' +two_n1cosi_angle_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
        ]
    );
  }

  Widget n2cost_minus_n1cosi //RPP(parallel)
      (var CII_1_real_display,var CII_1_im_display,var CII_2_real_display, var CII_2_im_display , var n1_cos_t_r_display ,
      var n1_cos_i_angle_display , var n1_cos_i_real_display , var n1_cos_i_im_display , var n2_cos_t_r_display , var n2_cos_t_angle_display ,
      var n2_cos_t_real_display ,var n2_cos_t_im_display ,var top_part_re_display , var top_part_im_display , var top_part_r_display ,
      var top_part_angle_display ,  var CII_1_R_display, var CII_1_angle_display, var CII_2_R_display, var CII_2_angle_display, var theta_i_display,
      var theta_t_display,   )
  {
    return Column(
        children: [
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'\large\eta_2\cos(\theta_i)', textStyle: const TextStyle(fontSize: 18),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'= (' +CII_2_real_display +r')+(' +CII_2_im_display +r'j)*\cos(' +theta_i_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'= \sqrt{' +CII_2_real_display +r'^2+'+CII_2_im_display +r'^2}\ \angle\tan^{-1}\frac{'+CII_2_im_display +r'}{'+CII_2_real_display +r'}*\cos(' +theta_i_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'=' +CII_2_R_display +r'\ \angle' +CII_2_angle_display +r'*\cos(' +theta_i_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          //
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'=' +CII_2_R_display +r'*\cos(' +theta_i_display +r')' +r'\ \angle' +CII_2_angle_display , textStyle: const TextStyle(fontSize: 18),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'=(' +n2_cos_i_r_display +r')' +r'\ \angle(' +CII_2_angle_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'=(' +n2_cos_i_r_display +r')\cos(' +n2_cos_i_angle_display +r')+j(' +n2_cos_i_r_display +r')\sin(' +n2_cos_i_angle_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'=(' +n2_cos_i_real_display +r')+(' +n2_cos_i_im_display +r')j', textStyle: const TextStyle(fontSize: 18),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'\large\eta_1\cos(\theta_t)', textStyle: const TextStyle(fontSize: 18),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'= (' +CII_1_real_display +r')+(' +CII_1_im_display +r'j)*\cos(' +theta_t_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'= \sqrt{' +CII_1_real_display +r'^2+'+CII_1_im_display +r'^2}\ \angle\tan^{-1}\frac{'+CII_1_im_display +r'}{'+CII_1_real_display +r'}*\cos(' +theta_i_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'=' +CII_1_R_display +r'\ \angle' +CII_1_angle_display +r'*\cos(' +theta_t_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'=' +CII_1_R_display +r'*\cos(' +theta_t_display +r')' +r'\ \angle' +CII_1_angle_display , textStyle: const TextStyle(fontSize: 18),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'=(' +n1_cos_i_r_display +r')' +r'\ \angle(' +CII_1_angle_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'=(' +n1_cos_i_r_display +r')\cos(' +n1_cos_i_angle_display +r')+j(' +n1_cos_i_r_display +r')\sin(' +n1_cos_i_angle_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Math.tex(r'=(' +n1_cos_i_real_display +r')+(' +n1_cos_i_im_display +r')j', textStyle: const TextStyle(fontSize: 18),),),),
          // ListTile(
          //   title: FittedBox(
          //     alignment: FractionalOffset.centerLeft,
          //     fit: BoxFit.scaleDown,
          //     child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'\large\eta_2\cos(\theta_t)-\eta_1\cos(\theta_i)\normalsize', textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'=('+n2_cos_t_real_display +r')+(' +n2_cos_t_im_display +r')j - \Big[('+n1_cos_i_real_display +r')+(' +n1_cos_i_im_display +r')j\Big]', textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'=(' +top_part_re_display +r')+(' +top_part_im_display +r')j ', textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'= \sqrt{(' +top_part_re_display +r')^2+(' +top_part_im_display +r')^2}\ \angle \tan^{-1}\frac{' +top_part_im_display +r'}{' +top_part_re_display +r'}' , textStyle: const TextStyle(fontSize: 18),),),),
          ListTile(
            title: FittedBox(
              alignment: FractionalOffset.centerLeft,
              fit: BoxFit.scaleDown,
              child: Math.tex(r'=(' +top_part_r_display +r')\ \angle(' +top_part_angle_display +r')', textStyle: const TextStyle(fontSize: 18),),),),


        ]
    );
  }

Widget n2cost_plus_n1cosi //RPP(parallel) & TPP(parallel)
    (var CII_1_real_display,var CII_1_im_display,var CII_2_real_display, var CII_2_im_display , var n1_cos_i_r_display ,
    var n1_cos_i_angle_display , var n1_cos_i_real_display , var n1_cos_i_im_display , var n2_cos_t_r_display , var n2_cos_t_angle_display ,
    var n2_cos_t_real_display ,var n2_cos_t_im_display ,var bottom_part_re_display , var bottom_part_im_display , var bottom_part_r_display ,
    var bottom_part_angle_display ,  var CII_1_R_display, var CII_1_angle_display, var CII_2_R_display, var CII_2_angle_display, var theta_i_display,
    var theta_t_display,   )
{
  return Column(
      children: [
        ListTile(
          title: FittedBox(
            alignment: FractionalOffset.centerLeft,
            fit: BoxFit.scaleDown,
            child: Math.tex(r'\large\eta_2\cos(\theta_t)', textStyle: const TextStyle(fontSize: 18),),),),
        ListTile(
          title: FittedBox(
            alignment: FractionalOffset.centerLeft,
            fit: BoxFit.scaleDown,
            child: Math.tex(r'= (' +CII_2_real_display +r')+(' +CII_2_im_display +r'j)*\cos(' +theta_t_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
        ListTile(
          title: FittedBox(
            alignment: FractionalOffset.centerLeft,
            fit: BoxFit.scaleDown,
            child: Math.tex(r'= \sqrt{' +CII_2_real_display +r'^2+'+CII_2_im_display +r'^2}\ \angle\tan^{-1}\frac{'+CII_2_im_display +r'}{'+CII_2_real_display +r'}*\cos(' +theta_t_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
        ListTile(
          title: FittedBox(
            alignment: FractionalOffset.centerLeft,
            fit: BoxFit.scaleDown,
            child: Math.tex(r'=' +CII_2_R_display +r'\ \angle' +CII_2_angle_display +r'*\cos(' +theta_t_display +r')', textStyle: const TextStyle(fontSize: 18),),),),

        ListTile(
          title: FittedBox(
            alignment: FractionalOffset.centerLeft,
            fit: BoxFit.scaleDown,
            child: Math.tex(r'=' +CII_2_R_display +r'*\cos(' +theta_t_display +r')' +r'\ \angle' +CII_2_angle_display , textStyle: const TextStyle(fontSize: 18),),),),
        ListTile(
          title: FittedBox(
            alignment: FractionalOffset.centerLeft,
            fit: BoxFit.scaleDown,
            child: Math.tex(r'=(' +n2_cos_t_r_display +r')' +r'\ \angle(' +CII_2_angle_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
        ListTile(
          title: FittedBox(
            alignment: FractionalOffset.centerLeft,
            fit: BoxFit.scaleDown,
            child: Math.tex(r'=(' +n2_cos_t_r_display +r')\cos(' +n2_cos_t_angle_display +r')+j(' +n2_cos_t_r_display +r')\sin(' +n2_cos_t_angle_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
        ListTile(
          title: FittedBox(
            alignment: FractionalOffset.centerLeft,
            fit: BoxFit.scaleDown,
            child: Math.tex(r'=(' +n2_cos_t_real_display +r')+(' +n2_cos_t_im_display +r')j', textStyle: const TextStyle(fontSize: 18),),),),
        ListTile(
          title: FittedBox(
            alignment: FractionalOffset.centerLeft,
            fit: BoxFit.scaleDown,
            child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
        ListTile(
          title: FittedBox(
            alignment: FractionalOffset.centerLeft,
            fit: BoxFit.scaleDown,
            child: Math.tex(r'\large\eta_1\cos(\theta_i)', textStyle: const TextStyle(fontSize: 18),),),),
        ListTile(
          title: FittedBox(
            alignment: FractionalOffset.centerLeft,
            fit: BoxFit.scaleDown,
            child: Math.tex(r'= (' +CII_1_real_display +r')+(' +CII_1_im_display +r'j)*\cos(' +theta_i_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
        ListTile(
          title: FittedBox(
            alignment: FractionalOffset.centerLeft,
            fit: BoxFit.scaleDown,
            child: Math.tex(r'= \sqrt{' +CII_1_real_display +r'^2+'+CII_1_im_display +r'^2}\ \angle\tan^{-1}\frac{'+CII_1_im_display +r'}{'+CII_1_real_display +r'}*\cos(' +theta_i_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
        ListTile(
          title: FittedBox(
            alignment: FractionalOffset.centerLeft,
            fit: BoxFit.scaleDown,
            child: Math.tex(r'=' +CII_1_R_display +r'\ \angle' +CII_1_angle_display +r'*\cos(' +theta_i_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
        ListTile(
          title: FittedBox(
            alignment: FractionalOffset.centerLeft,
            fit: BoxFit.scaleDown,
            child: Math.tex(r'=' +CII_1_R_display +r'*\cos(' +theta_i_display +r')' +r'\ \angle' +CII_1_angle_display , textStyle: const TextStyle(fontSize: 18),),),),
        ListTile(
          title: FittedBox(
            alignment: FractionalOffset.centerLeft,
            fit: BoxFit.scaleDown,
            child: Math.tex(r'=(' +n1_cos_i_r_display +r')' +r'\ \angle(' +CII_1_angle_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
        ListTile(
          title: FittedBox(
            alignment: FractionalOffset.centerLeft,
            fit: BoxFit.scaleDown,
            child: Math.tex(r'=(' +n1_cos_i_r_display +r')\cos(' +n1_cos_i_angle_display +r')+j(' +n1_cos_i_r_display +r')\sin(' +n1_cos_i_angle_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
        ListTile(
          title: FittedBox(
            alignment: FractionalOffset.centerLeft,
            fit: BoxFit.scaleDown,
            child: Math.tex(r'=(' +n1_cos_i_real_display +r')+(' +n1_cos_i_im_display +r')j', textStyle: const TextStyle(fontSize: 18),),),),
        ListTile(
          title: FittedBox(
            alignment: FractionalOffset.centerLeft,
            fit: BoxFit.scaleDown,
            child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
        ListTile(
          title: FittedBox(
            alignment: FractionalOffset.centerLeft,
            fit: BoxFit.scaleDown,
            child: Math.tex(r'\large\eta_2\cos(\theta_i)+\eta_1\cos(\theta_t)\normalsize', textStyle: const TextStyle(fontSize: 18),),),),
        ListTile(
          title: FittedBox(
            alignment: FractionalOffset.centerLeft,
            fit: BoxFit.scaleDown,
            child: Math.tex(r'=('+n2_cos_t_real_display +r')+(' +n2_cos_t_im_display +r')j + \Big[('+n1_cos_i_real_display +r')+(' +n1_cos_i_im_display +r')j\Big]', textStyle: const TextStyle(fontSize: 18),),),),
        ListTile(
          title: FittedBox(
            alignment: FractionalOffset.centerLeft,
            fit: BoxFit.scaleDown,
            child: Math.tex(r'=(' +bottom_part_re_display +r')+(' +bottom_part_im_display +r')j ', textStyle: const TextStyle(fontSize: 18),),),),
        ListTile(
          title: FittedBox(
            alignment: FractionalOffset.centerLeft,
            fit: BoxFit.scaleDown,
            child: Math.tex(r'= \sqrt{(' +bottom_part_re_display +r')^2+(' +bottom_part_im_display +r')^2}\ \angle \tan^{-1}\frac{' +bottom_part_im_display +r'}{' +bottom_part_re_display +r'}' , textStyle: const TextStyle(fontSize: 18),),),),
        ListTile(
          title: FittedBox(
            alignment: FractionalOffset.centerLeft,
            fit: BoxFit.scaleDown,
            child: Math.tex(r'=(' +bottom_part_r_display +r')\ \angle(' +bottom_part_angle_display +r')', textStyle: const TextStyle(fontSize: 18),),),),


      ]
  );
}

Widget two_n2cosi_2 //TPP(parallel)
    (var CII_1_real_display,var CII_1_im_display,var CII_2_real_display, var CII_2_im_display , var n1_cos_t_r_display ,
    var n1_cos_t_angle_display , var n1_cos_t_real_display , var n1_cos_t_im_display , var n2_cos_t_r_display , var n2_cos_i_angle_display ,
    var n2_cos_i_real_display ,var n2_cos_i_im_display ,var two_n1cosi_r_display , var two_n1cosi_angle_display , var CII_1_R_display,
    var CII_1_angle_display, var CII_2_R_display, var CII_2_angle_display, var theta_i_display, var theta_t_display, var n2_cos_i_r_display  )
{
  return Column(
      children: [
      ListTile(
      title: FittedBox(
      alignment: FractionalOffset.centerLeft,
        fit: BoxFit.scaleDown,
        child: Math.tex(r'\large\eta_2\cos(\theta_i)', textStyle: const TextStyle(fontSize: 18),),),),
      ListTile(
      title: FittedBox(
      alignment: FractionalOffset.centerLeft,
      fit: BoxFit.scaleDown,
      child: Math.tex(r'= (' +CII_2_real_display +r')+(' +CII_2_im_display +r'j)*\cos(' +theta_i_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
      ListTile(
      title: FittedBox(
      alignment: FractionalOffset.centerLeft,
      fit: BoxFit.scaleDown,
      child: Math.tex(r'= \sqrt{' +CII_2_real_display +r'^2+'+CII_2_im_display +r'^2}\ \angle\tan^{-1}\frac{'+CII_2_im_display +r'}{'+CII_2_real_display +r'}*\cos(' +theta_i_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
      ListTile(
      title: FittedBox(
      alignment: FractionalOffset.centerLeft,
      fit: BoxFit.scaleDown,
      child: Math.tex(r'=' +CII_2_R_display +r'\ \angle' +CII_2_angle_display +r'*\cos(' +theta_i_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
      
      ListTile(
      title: FittedBox(
        alignment: FractionalOffset.centerLeft,
        fit: BoxFit.scaleDown,
        child: Math.tex(r'=' +CII_2_R_display +r'*\cos(' +theta_i_display +r')' +r'\ \angle' +CII_2_angle_display , textStyle: const TextStyle(fontSize: 18),),),),
      ListTile(
      title: FittedBox(
      alignment: FractionalOffset.centerLeft,
      fit: BoxFit.scaleDown,
      child: Math.tex(r'=(' +n2_cos_i_r_display +r')' +r'\ \angle(' +CII_2_angle_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
        ListTile(
          title: FittedBox(
            alignment: FractionalOffset.centerLeft,
            fit: BoxFit.scaleDown,
            child: Text.rich(TextSpan(text: '________________________________', style: const TextStyle(fontSize: 18),),),),),
        ListTile(
          title: FittedBox(
            alignment: FractionalOffset.centerLeft,
            fit: BoxFit.scaleDown,
            child: Math.tex(r'\large2\eta_2\cos(\theta_i)', textStyle: const TextStyle(fontSize: 18),),),),
        ListTile(
          title: FittedBox(
            alignment: FractionalOffset.centerLeft,
            fit: BoxFit.scaleDown,
            child: Math.tex(r'=2*\bigg[(' +n2_cos_t_r_display +r')' +r'\ \angle(' +CII_2_angle_display +r')\bigg]', textStyle: const TextStyle(fontSize: 18),),),),
        ListTile(
          title: FittedBox(
            alignment: FractionalOffset.centerLeft,
            fit: BoxFit.scaleDown,
            child: Math.tex(r'=\big(2*' +n2_cos_t_r_display +r')' +r'\ \angle(' +CII_2_angle_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
        ListTile(
          title: FittedBox(
            alignment: FractionalOffset.centerLeft,
            fit: BoxFit.scaleDown,
            child: Math.tex(r'=(' +two_n1cosi_r_display +r')' +r'\ \angle(' +two_n1cosi_angle_display +r')', textStyle: const TextStyle(fontSize: 18),),),),
      ]
  );
}
