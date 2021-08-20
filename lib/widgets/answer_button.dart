import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;

  const AnswerButton({Key? key, required this.child, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) return null; // keep color for DISABLED
              return Colors.green;
            },
          ),
        ),
        onPressed: this.onPressed,
        child: this.child,
      ),
    );
  }
}
