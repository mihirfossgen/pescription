import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:medicine/models/pill.dart';
import '../../screens/home/medicine_card.dart';

class MedicinesList extends StatelessWidget {
  final List<Pill> listOfMedicines;
  final Function setData;
  // final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  MedicinesList(
    this.listOfMedicines,
    this.setData,
  );
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) =>
          MedicineCard(listOfMedicines[index], setData),
      itemCount: listOfMedicines.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
    );
  }
}
