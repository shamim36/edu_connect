import 'package:flutter/material.dart';

class ClsTimingScreen extends StatefulWidget {
  const ClsTimingScreen({super.key});

  @override
  State<ClsTimingScreen> createState() => _ClsTimingScreenState();
}

class _ClsTimingScreenState extends State<ClsTimingScreen> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        toolbarHeight: 40,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: [
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
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Class Schedule'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(14),
                            ),
                            borderSide: BorderSide(
                              color: Colors.green,
                              width: 1,
                            ),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.search),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: deviceHeight * 0.02,
                      ),
                      showBatchOrClsTimeSchedule(deviceWidth, deviceHeight,
                          label: 'Good Morning'),
                      SizedBox(
                        height: deviceHeight * 0.01,
                      ),
                      showBatchOrClsTimeSchedule(deviceWidth, deviceHeight,
                          label: 'Good Morning'),
                      SizedBox(
                        height: deviceHeight * 0.02,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: deviceHeight * 0.01,
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Timing'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(14),
                            ),
                            borderSide: BorderSide(
                              color: Colors.green,
                              width: 1,
                            ),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.search),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: deviceHeight * 0.02,
                      ),
                      showBatchOrClsTimeSchedule(deviceWidth, deviceHeight,
                          label: 'Good Morning'),
                      SizedBox(
                        height: deviceHeight * 0.01,
                      ),
                      showBatchOrClsTimeSchedule(deviceWidth, deviceHeight,
                          label: 'Good Morning'),
                      SizedBox(
                        height: deviceHeight * 0.02,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container showBatchOrClsTimeSchedule(double deviceWidth, double deviceHeight,
      {required String label}) {
    return Container(
      width: deviceWidth * 0.7,
      height: deviceHeight * 0.07,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.green, // Set the border color
          width: 1.0, // Set the border width
        ),
        borderRadius: BorderRadius.circular(10.0), // Set the border radius
      ),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.image,
                color: Colors.green,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'label',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
