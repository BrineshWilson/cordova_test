import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();

}

class _homeState extends State<home> {
  DateTime now = DateTime.now();
  @override

  Widget build(BuildContext context) {
    String formattedDate = DateFormat('EEE d MMM \nhh:mm  a').format(now);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        extendBody: true,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              expandedHeight: 240.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: LinearGradient(
                      colors: [Color(0xFF6A4BFC), Color(0xFF3F02AA)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, top: 15),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                    'assets/images/Ellipse 197.png'),
                                radius: 25.0,
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'MR.KHALID',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    ' [ PRINCIPAL ]',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 120),
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                    'assets/images/notification-3d.webp'),
                                radius: 15.0,
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 0.5,
                          indent: 10,
                          endIndent: 10,
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(width: 20), // Adjust as needed
                            Text(
                              "GENERAL SHIFT : [ 8.00AM - 6.00PM ]",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(width: 15), // Adjust as needed

                            SizedBox(width: 5),
                            Text(
                              formattedDate,
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 30), // Adjust as needed
                            GestureDetector(
                              onTap: () {

                                print("Button tapped!");
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                width: 300,
                                height: 45,
                                decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,

                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.fingerprint, color: Colors.purple,),
                                      Text(
                                        "CHECK IN ",



                                        style: TextStyle(

                                          fontSize: 16,
                                          color: Color(0xFF4205AE),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 8), // Adjust as needed

                          ],
                        )

                      ],
                    ),
                  ),
                ),
              ),
              // Add other SliverAppBar properties like actions, etc. if needed
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 110,
                color: Colors.black12,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        // Add vertical space
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color(0xFF27252C),
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: Colors.white,
                                width: 0.1,
                              )),
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/attendance-3d.webp",
                                width: 35,
                                height: 35,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Attendance  ",
                                style: TextStyle(
                                  color: Colors
                                      .white, // Specify the color you want
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10), // Add space between containers
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        // Add vertical space
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color(0xFF27252C),
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: Colors.white,
                                // Choose the color of the border
                                width: 0.1,
                              ) // Adjust border radius as needed
                          ),
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/workentry-3d.webp",
                                width: 35,
                                height: 35,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Work Entry",
                                style: TextStyle(
                                  color: Colors
                                      .white, // Specify the color you want
                                ),
                              )
                            ],
                          ), // Adjust padding as needed
                        ),
                      ),
                      SizedBox(width: 10), // Add space between containers
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        // Add vertical space
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color(0xFF27252C),
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: Colors.white,
                                // Choose the color of the border
                                width: 0.1,
                              )
                          ),
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/leave-calendar3d.webp",
                                width: 35,
                                height: 35,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Leave Requst",
                                style: TextStyle(
                                  color: Colors
                                      .white, // Specify the color you want
                                ),
                              )
                            ],
                          ), // Adjust padding as needed
                        ),
                      ),
                      SizedBox(width: 10), // Add space between containers
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        // Add vertical space
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color(0xFF27252C),
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: Colors.white,
                                // Choose the color of the border
                                width: 0.1,
                              ) // Adjust border radius as needed
                          ),
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/image 82.png",
                                width: 35,
                                height: 35,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Work Expense ",
                                style: TextStyle(
                                  color: Colors
                                      .white, // Specify the color you want
                                ),
                              )
                            ],
                          ), // Adjust padding as needed
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 8, bottom: 8),
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(
                        color: Colors.white,
                        // Choose the color of the border
                        width: 0.1, // Choose the width of the border
                      ),
                    ),
                    child: TableCalendar(
                      firstDay: DateTime.utc(2010, 10, 16),
                      lastDay: DateTime.utc(2030, 3, 14),
                      focusedDay: DateTime.now(),
                      availableGestures: AvailableGestures.horizontalSwipe,
                      headerStyle: HeaderStyle(
                        formatButtonVisible: false,
                        titleCentered: true,titleTextStyle: TextStyle(color: Colors.white,fontSize: 17),
                        leftChevronIcon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                        rightChevronIcon: Icon(Icons.arrow_forward_ios, color: Colors.white,),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      height: 200,
                      color: Colors.black12,
                      child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              // Add vertical space
                              child: Container(
                                width: 300,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xFF27252C),
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color: Colors.white,
                                      // Choose the color of the border
                                      width: 0.1,
                                    ) // Adjust border radius as needed
                                ),
                                padding: EdgeInsets.all(
                                    8.0), // Adjust padding as needed
                              ),
                            ),
                            SizedBox(width: 10),
                            // Add space between containers
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              // Add vertical space
                              child: Container(
                                width: 300,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xFF27252C),
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color: Colors.white,
                                      // Choose the color of the border
                                      width: 0.1,
                                    ) // Adjust border radius as needed
                                ),
                                padding: EdgeInsets.all(
                                    8.0), // Adjust padding as needed
                              ),
                            ),
                            SizedBox(width: 10),
                            // Add space between containers
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              // Add vertical space
                              child: Container(
                                width: 300,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xFF27252C),
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color: Colors.white,
                                      // Choose the color of the border
                                      width: 0.1,
                                    ) // Adjust border radius as needed
                                ),
                                padding: EdgeInsets.all(
                                    8.0), // Adjust padding as needed
                              ),
                            ),
                            SizedBox(width: 10),
                            // Add space between containers
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              // Add vertical space
                              child: Container(
                                width: 300,
                                height: 100,

                                decoration: BoxDecoration(
                                    color: Color(0xFF27252C),
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color: Colors.white,
                                      // Choose the color of the border
                                      width: 0.1,
                                    ) // Adjust border radius as needed
                                ),
                                padding: EdgeInsets.all(
                                    8.0), // Adjust padding as needed
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Container(
                    height: 60,
                  )
                ]))
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: (8), vertical: (8)),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(34)),

            child: Container(

              decoration: BoxDecoration(
                color: Colors.black,

              ),
              child: BottomNavigationBar(
                  backgroundColor: Color(0xFF272626),





                  // fixedColor: Color(0xFF272626),
                  selectedItemColor: Colors.white,
                  unselectedItemColor: Colors.white,
                  type: BottomNavigationBarType.fixed,
                  items: [
                    BottomNavigationBarItem(
                      icon: Image.asset("assets/images/Vector.png"),
                      label: 'Home',
                      // backgroundColor: Color(0xFF272626),
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset("assets/images/calendar-clock 1.png"),
                      label: 'Attendance',
                      // backgroundColor: Color(0xFF272626),
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset("assets/images/Frame 1171276692.png"),
                      label: 'Service',
                      // backgroundColor: Color(0xFF272626),
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset("assets/images/Group 238902.png"),

                      label: 'Profile',
                      // backgroundColor: Color(0xFF272626),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
