import 'package:flutter/material.dart';
import 'package:flutter_application_4/styled_text.dart';

var startAlignment = Alignment.topLeft;
var endtAlignment = Alignment.bottomRight;

class GradeintContainer extends StatelessWidget {
  const GradeintContainer(
      {super.key, required this.colors}); //another method of taking parameters

  final List<Color> colors; //declaring the parameter

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors, //using the varaible that was declared as parameters
          begin: startAlignment,
          end: endtAlignment,
        ),
      ),
      child: Center(
        child: Image.asset(
            'assets/images/dice-1.png'), //value of the parameter has been passed from the styled_text page
      ),
    );
  }
}
