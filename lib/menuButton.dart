import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final Function onClick;
  const MenuButton({this.onClick});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      child: ElevatedButton(
        onPressed: onClick,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.cyan),
          fixedSize: MaterialStateProperty.all(Size(200,60)),
        ),
        child: const Icon(Icons.play_arrow),
        //color: Theme.of(context).primaryColorLight,
      ),
    );
  }
}
