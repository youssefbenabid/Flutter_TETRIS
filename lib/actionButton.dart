import 'package:flutter/material.dart';

import 'gameScreens/gameScreen.dart';

class ActionButton extends StatelessWidget {
  final Function onClicked;
  final Icon buttonIcon;
  final LastButtonPressed nextAction;
  ActionButton({this.buttonIcon, this.onClicked, this.nextAction});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      child: ElevatedButton(
        onPressed: () => onClicked(nextAction),
        child: buttonIcon,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.indigo),
            minimumSize: MaterialStateProperty.all(Size(80, 40))
        ),
      ),
    );
  }
}
