import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClsScheduleScreen extends StatefulWidget {
  const ClsScheduleScreen({super.key});

  @override
  State<ClsScheduleScreen> createState() => _ClsScheduleScreenState();
}

class _ClsScheduleScreenState extends State<ClsScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 248, 252, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: deviceHeight * 0.05,
                ),
                const Text(
                  'Class Schedule',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: deviceHeight * 0.01,
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(14),
                    topRight: Radius.circular(14),
                  ),
                  child: Container(
                    height: deviceHeight * 0.075,
                    color: const Color.fromRGBO(74, 207, 150, 1),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.arrow_back),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Today',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              'Tues, 20/02/24',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ),
                Table(
                  border: TableBorder.all(color: Colors.green),
                  children: [
                    TableRow(
                      children: [
                        addColumnTitle(label: 'Sub.'),
                        addColumnTitle(label: 'Batch'),
                        addColumnTitle(label: 'Class'),
                        addColumnTitle(label: 'Days'),
                        addColumnTitle(label: 'Timing'),
                        addColumnTitle(label: 'Room'),
                      ],
                    ),
                    addRow(
                      sub: 'Chem',
                      batch: '2',
                      cls: '8',
                      day1: 'SUN',
                      day2: 'TUES',
                      timing: '10-11:30AM',
                      room: '101',
                    ),
                    addRow(
                      sub: 'Chem',
                      batch: '2',
                      cls: '8',
                      day1: 'SUN',
                      day2: 'TUES',
                      timing: '10-11:30AM',
                      room: '101',
                    ),
                    addRow(
                      sub: 'Chem',
                      batch: '2',
                      cls: '8',
                      day1: 'SUN',
                      day2: 'TUES',
                      timing: '10-11:30AM',
                      room: '101',
                    ),
                    addRow(
                      sub: 'Chem',
                      batch: '2',
                      cls: '8',
                      day1: 'SUN',
                      day2: 'TUES',
                      timing: '10-11:30AM',
                      room: '101',
                    ),
                    addRow(
                      sub: 'Chem',
                      batch: '2',
                      cls: '8',
                      day1: 'SUN',
                      day2: 'TUES',
                      timing: '10-11:30AM',
                      room: '101',
                    ),
                    addRow(
                      sub: 'Chem',
                      batch: '2',
                      cls: '8',
                      day1: 'SUN',
                      day2: 'TUES',
                      timing: '10-11:30AM',
                      room: '101',
                    ),
                    addRow(
                      sub: 'Chem',
                      batch: '2',
                      cls: '8',
                      day1: 'SUN',
                      day2: 'TUES',
                      timing: '10-11:30AM',
                      room: '101',
                    ),
                    addRow(
                      sub: 'Chem',
                      batch: '2',
                      cls: '8',
                      day1: 'SUN',
                      day2: 'TUES',
                      timing: '10-11:30AM',
                      room: '101',
                    ),
                    addRow(
                      sub: 'Chem',
                      batch: '2',
                      cls: '8',
                      day1: 'SUN',
                      day2: 'TUES',
                      timing: '10-11:30AM',
                      room: '101',
                    ),
                    addRow(
                      sub: 'Chem',
                      batch: '2',
                      cls: '8',
                      day1: 'SUN',
                      day2: 'TUES',
                      timing: '10-11:30AM',
                      room: '101',
                    ),
                    addRow(
                      sub: 'Chem',
                      batch: '2',
                      cls: '8',
                      day1: 'SUN',
                      day2: 'TUES',
                      timing: '10-11:30AM',
                      room: '101',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TableRow addRow({
    required String sub,
    required String batch,
    required String cls,
    required String day1,
    required String day2,
    required String timing,
    required String room,
  }) {
    return TableRow(
      children: [
        addCelltoEachColumn(data: sub),
        addCelltoEachColumn(data: batch),
        addCelltoEachColumn(data: cls),
        addNested2CelltoEachRow(day1: day1, day2: day2),
        addCelltoEachColumn(data: timing),
        addCelltoEachColumn(data: room),
      ],
    );
  }

  TableCell addNested2CelltoEachRow(
      {required String day1, required String day2}) {
    return TableCell(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 25,
                  child: Center(
                    child: Text(
                      day1,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 25,
                  child: Center(
                    child: Text(
                      day2,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  TableCell addCelltoEachColumn({required String data}) {
    return TableCell(
      child: Container(
        height: 50, // Set the height of the row here
        child: Center(
          child: Text(
            data,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }

  TableCell addColumnTitle({required String label}) {
    return TableCell(
      child: Container(
        height: 50, // Set the height of the row here
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
