import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(242, 248, 252, 1),
        centerTitle: true,
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        title: const Text(
          'Class Schedule',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(topLeft: const Radius.circular(14),topRight: Radius.circular(14),),
              child: Column(
                children: [
                  Container(
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
                      TableRow(
                        children: [
                          addCelltoEachColumn(data: 'Chem'),
                          addCelltoEachColumn(data: '2'),
                          addCelltoEachColumn(data: '8'),
                          addNested2CelltoEachRow(day1: 'SUN', day2: 'TUES'),
                          addCelltoEachColumn(data: '10-11:30 AM'),
                          addCelltoEachColumn(data: '101'),
                        ],
                      ),
                      TableRow(
                        children: [
                          addCelltoEachColumn(data: 'Phy'),
                          addCelltoEachColumn(data: '2'),
                          addCelltoEachColumn(data: '10'),
                          addNested2CelltoEachRow(day1: 'SUN', day2: 'TUES'),
                          addCelltoEachColumn(data: '11:30-1 PM'),
                          addCelltoEachColumn(data: '234'),
                        ],
                      ),
                      TableRow(
                        children: [
                          addCelltoEachColumn(data: 'H.Maths'),
                          addCelltoEachColumn(data: '3'),
                          addCelltoEachColumn(data: '10'),
                          addNested2CelltoEachRow(day1: 'MON', day2: 'WED'),
                          addCelltoEachColumn(data: '10-11:30 AM'),
                          addCelltoEachColumn(data: '157'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
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
