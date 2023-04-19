import 'package:flutter/material.dart';

class Snackbar {
  snackBar(String message, context, Function undo) {
    return SnackBar(
      content: Text(message),
      action: undo != null
          ? SnackBarAction(
              textColor: Theme.of(context).primaryColor,
              label: "Undo",
              onPressed: () => undo,
            )
          : null,
    );
  }

  void showSnack(String message, GlobalKey<ScaffoldState> _scaffoldKey,
          Function undo, context) =>
      ScaffoldMessenger.of(context)
          .showSnackBar(snackBar(message, context, undo));

  // _scaffoldKey.currentState.showSnackBar(

  // );
}
