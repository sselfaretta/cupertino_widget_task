// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        theme: CupertinoThemeData(brightness: Brightness.light),
        home: TampilAlertDaialog());

    //   MaterialApp(
    //   home: Scaffold(
    //       appBar: AppBar(
    //         leading: Icon(Icons.arrow_back_ios),
    //         title: Text('Material Widget'),
    //         actions: [
    //           Padding(
    //             padding: EdgeInsets.only(right: 20),
    //             child: Row(
    //               children: [
    //                 Icon(CupertinoIcons.settings),
    //                 SizedBox(
    //                   width: 15,
    //                 ),
    //                 Icon(CupertinoIcons.profile_circled)
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //       body: Center(
    //         child: Text(
    //           'Selamat Pagi Guys',
    //           style: TextStyle(fontSize: 30),
    //         ),
    //       )),
    // );
  }
}

class TampilAlertDaialog extends StatefulWidget {
  const TampilAlertDaialog({Key? key}) : super(key: key);

  @override
  State<TampilAlertDaialog> createState() => _TampilAlertDaialogState();
}

class _TampilAlertDaialogState extends State<TampilAlertDaialog> {
  void _tampilAlertDialog(context) {
    showCupertinoModalPopup(
        context: context,
        builder: (context) => CupertinoAlertDialog(
              content: Text(
                'Apakah Kamu Yakin??',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              actions: <CupertinoDialogAction>[
                CupertinoDialogAction(
                  /// This parameter indicates this action is the default,
                  /// and turns the action's text to bold text.
                  isDefaultAction: true,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('No'),
                ),
                CupertinoDialogAction(
                  /// This parameter indicates the action would perform
                  /// a destructive action such as deletion, and turns
                  /// the action's text color to red.
                  isDestructiveAction: true,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Yes'),
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoButton(
          padding: EdgeInsets.all(0),
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        middle: Text(
          'App Mobile UPN',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        trailing: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Icon(
              CupertinoIcons.settings,
              color: Colors.white,
              size: 22,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
              size: 22,
            )
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Halaman Log out',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            CupertinoButton(
              color: Colors.red,
              child: Text(
                'Log Out',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onPressed: () => _tampilAlertDialog(context),
            ),
          ],
        ),
      ),
    );
  }
}
