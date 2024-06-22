import 'package:flutter/material.dart';

Future<void> showBaseBottomSheet({
  required BuildContext context,
  required Widget child,
}) async {
  await showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) {
      return Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 3, 31, 50),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: SafeArea(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(
                height: 20,
                child: Center(
                    child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 54, 63, 82),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: const SizedBox(width: 50, height: 5),
                )),
              ),
              child,
            ]),
          ));
    },
  );
}
