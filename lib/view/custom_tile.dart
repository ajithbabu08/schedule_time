// // import 'package:flutter/material.dart';
// //
// // class CustomTile extends StatelessWidget {
// //   final bool isChecked;
// //   final Function(bool?)? onChanged;
// //   final String title;
// //   final List<String> buttonLabels;
// //   final List<Function()> buttonOnPressed;
// //
// //   const CustomTile({
// //     Key? key,
// //     required this.isChecked,
// //     required this.onChanged,
// //     required this.title,
// //     required this.buttonLabels,
// //     required this.buttonOnPressed,
// //   }) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return ListTile(
// //       leading: Checkbox(
// //         value: isChecked,
// //         onChanged: onChanged,
// //       ),
// //       title: Text(title),
// //       trailing: Row(
// //         mainAxisSize: MainAxisSize.min,
// //         children: List.generate(
// //           buttonLabels.length,
// //               (index) => Padding(
// //             padding: const EdgeInsets.only(right: 5.0),
// //             child: ElevatedButton(
// //               onPressed: buttonOnPressed[index],
// //               child: Text(buttonLabels[index]),
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
//
//
// import 'package:flutter/material.dart';
//
// class CustomTile extends StatelessWidget {
//   final bool isChecked;
//   final Function(bool?)? onChanged;
//   final List<String> title;
//   final List<String> buttonLabels;
//   final List<Function()> buttonOnPressed;
//
//   const CustomTile({
//     Key? key,
//     required this.isChecked,
//     required this.onChanged,
//     required this.title,
//     required this.buttonLabels,
//     required this.buttonOnPressed,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: Checkbox(
//         value: isChecked,
//         onChanged: onChanged,
//       ),
//       title: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: title.map((t) => Text(t, style: TextStyle(fontWeight: FontWeight.bold))).toList(),
//       ),
//       trailing: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: List.generate(
//           buttonLabels.length,
//               (index) => Padding(
//             padding: const EdgeInsets.only(right: 5.0),
//             child: ElevatedButton(
//               onPressed: buttonOnPressed[index],
//               child: Text(buttonLabels[index]),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
