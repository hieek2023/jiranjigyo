import 'package:flutter/material.dart';
import 'package:jiranjigyo/camera.dart';
import 'package:jiranjigyo/complaint.dart';
import 'package:jiranjigyo/theme.dart';
import 'package:jiranjigyo/reservation.dart';

import 'confirm.dart';
import 'widget/bottomtabbar.dart';


class CheckOutPage extends StatefulWidget{
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage>{
  int index = 3;
  int? checkedIndex;

  @override
  void initState(){
    super.initState();
  }
  void refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("반납 후 좌석 촬영"),
          leading: IconButton(
              onPressed: () {
                  Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
          actions: [
            const Icon(Icons.logout),
          ],
          centerTitle: true,
        ),
        body:  CameraExample(),
        bottomNavigationBar: const BottomTabBar(0),
        ),
    );
  }
}