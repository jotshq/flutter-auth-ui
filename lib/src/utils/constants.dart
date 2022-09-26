import 'package:flutter/material.dart';

Future<void> successAlert(BuildContext context) async {
  // return showDialog(
  //   context: context,
  //   builder: (BuildContext context) {
  //     return AlertDialog(
  //       contentPadding: const EdgeInsets.all(16),
  //       title: const Text(
  //         'Success',
  //         style: TextStyle(color: Colors.green),
  //       ),
  //       actions: [
  //         TextButton(
  //           onPressed: () => Navigator.pop(context),
  //           child: const Text(
  //             'OK',
  //             style:
  //                 TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
  //           ),
  //         ),
  //       ],
  //     );
  //   },
  // );

  final snackBar = SnackBar(
    content: const Text(style: TextStyle(color: Colors.green), 'Success!'),
    action: SnackBarAction(
      label: 'Ok',
      onPressed: () {},
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

Future<void> warningAlert(BuildContext context, String errMsg) async {
  // return showDialog(
  //   context: context,
  //   builder: (BuildContext context) {
  //     return AlertDialog(
  //       contentPadding: const EdgeInsets.all(16),
  //       title: Text(
  //         errMsg,
  //         style: const TextStyle(color: Colors.redAccent),
  //       ),
  //       actions: [
  //         TextButton(
  //           onPressed: () => Navigator.pop(context),
  //           child: const Text(
  //             'OK',
  //             style: TextStyle(
  //                 fontWeight: FontWeight.bold, color: Colors.redAccent),
  //           ),
  //         ),
  //       ],
  //     );
  //   },
  // );

  final snackBar = SnackBar(
    content: Text(style: const TextStyle(color: Colors.redAccent), errMsg),
    action: SnackBarAction(
      label: 'Ok',
      onPressed: () {},
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

SizedBox spacer(double height) {
  return SizedBox(
    height: height,
  );
}
