import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Map<String, dynamic>> organizers = [
    {
      'name': 'organiser 1 ',
      'image': 'asset2/p1.png', // Replace with actual image path
    },
    {
      'name': 'Organizer 2',
      'image': 'asset2/p2.png', // Replace with actual image path
    },
    {
      'name': 'Organizer 3',
      'image': 'asset2/p3.png', // Replace with actual image path
    },
    {
      'name': 'Organizer 4',
      'image': 'asset2/p4.png', // Replace with actual image path
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Event'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Add functionality to go back
            },
          ),
        ),
        body: Container(
          child: Column(
            children: [
              // Add the line of text of events here

              Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 20.0), // Add horizontal padding
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Color.fromARGB(255, 254, 249, 249),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        width: 390, // Set the desired width
                        height: 322, // Set the desired height

                        child: Stack(
                          children: [
                            Image.asset(
                              'asset2/cofee2.png',
                              width: 389,
                              height: 280,
                              alignment: Alignment.topCenter,
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              top: 310,
                              left: 0,
                              right: 0,
                              bottom: 0,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Coffee Time',
                                      style: TextStyle(
                                        color: const Color.fromARGB(
                                            255, 26, 25, 25),
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Image.asset(
                                      'asset2/event.png', // Replace with actual logo asset path
                                      width: 29,
                                      height: 29,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0), // Add padding
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Join me for a joyous coffee date!',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Write a compelling event description that provides \n all the necessary details about the event. ',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: organizers.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[200], // Add background color
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0),
                                ),
                                image: DecorationImage(
                                  image: AssetImage(organizers[index]['image']),
                                  fit: BoxFit.cover,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    spreadRadius: 0,
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  organizers[index]['name'],
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('asset2/foot1.png', height: 20, width: 20),
              Image.asset('asset2/foot2.png', height: 20, width: 20),
              Image.asset('asset2/foot3.png', height: 20, width: 20),
              Image.asset('asset2/foot4.png', height: 20, width: 20),
              Image.asset('asset2/foot5.png', height: 20, width: 20),
            ],
          ),
        ),
      ),
    );
  }
}
