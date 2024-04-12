//import 'dart:ui';

import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:flutter_application_4/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradeintContainer(
          colors: [
            //passed the value of the parameters
            Color.fromRGBO(102, 22, 44, 109),
            Color.fromRGBO(456, 232, 344, 309)
          ],
        ),
      ),
    ),
  );
}
