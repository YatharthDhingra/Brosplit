import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Future<void> handleCalendarButtonClick(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null && pickedDate != DateTime.now()) {
      print('Selected date: $pickedDate');
      // Add your logic here for what should happen with the selected date
    }
  }

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Brosplit'),
          backgroundColor: Colors.green,
          actions: [
            Text('Yatharth')
          ], //this is to see in row with title in appBar
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    print('Left arrow button clicked');
                  },
                  icon: Icon(Icons.keyboard_arrow_left_rounded),
                  hoverColor: Colors.blue,
                ),
                IconButton(
                    onPressed: () {
                      print('Canlendar presesd');
                      handleCalendarButtonClick(buildContext);
                    },
                    icon: Icon(Icons.calendar_month),
                    hoverColor: Colors.blue),
                IconButton(
                    onPressed: () {
                      print('Right pressed');
                    },
                    icon: Icon(Icons.keyboard_arrow_right_sharp),
                    hoverColor: Colors.blue)
              ],
            )
          ],
        ));
  }
}
