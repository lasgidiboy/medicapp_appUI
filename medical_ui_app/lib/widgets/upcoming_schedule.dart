import 'package:flutter/material.dart';

class UpcomingSchedule extends StatelessWidget {
  const UpcomingSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About Doctor",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 4, spreadRadius: 2, color: Colors.black12)
                ]),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Dr Doctor Name",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Therapist"),
                  trailing: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/doctor1.jpg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(
                    height: 20,
                    thickness: 1,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_month,
                          color: Colors.black54,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "4/4/2023",
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_filled,
                          color: Colors.black54,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "10:30 AM",
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.green, shape: BoxShape.circle),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Confirmed",
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[100],
                          fixedSize: Size.fromWidth(150),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Reschedule",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          // backgroundColor: Colors.grey[100],
                          fixedSize: Size.fromWidth(150),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "About Doctor",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 4, spreadRadius: 2, color: Colors.black12)
                ]),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Dr Doctor Name",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Therapist"),
                  trailing: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/doctor1.jpg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(
                    height: 20,
                    thickness: 1,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_month,
                          color: Colors.black54,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "4/4/2023",
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_filled,
                          color: Colors.black54,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "10:30 AM",
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.green, shape: BoxShape.circle),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Confirmed",
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[100],
                          fixedSize: Size.fromWidth(150),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Reschedule",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          // backgroundColor: Colors.grey[100],
                          fixedSize: Size.fromWidth(150),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "About Doctor",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 4, spreadRadius: 2, color: Colors.black12)
                ]),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Dr Doctor Name",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Therapist"),
                  trailing: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/doctor1.jpg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(
                    height: 20,
                    thickness: 1,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_month,
                          color: Colors.black54,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "4/4/2023",
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_filled,
                          color: Colors.black54,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "10:30 AM",
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.green, shape: BoxShape.circle),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Confirmed",
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[100],
                          fixedSize: Size.fromWidth(150),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Reschedule",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          // backgroundColor: Colors.grey[100],
                          fixedSize: Size.fromWidth(150),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
