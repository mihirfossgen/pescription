import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformFlatButton extends StatelessWidget {
  final VoidCallback? handler;
  final Widget? buttonChild;
  final Color? color;

  PlatformFlatButton({this.buttonChild, this.color, this.handler});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: this.handler ?? null,
      // color: this.color,
      child: this.buttonChild,
      // handler: this.handler,
    );
  }
}
