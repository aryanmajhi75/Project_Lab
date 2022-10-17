import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'bookedTable.dart';
import 'default.dart';
import 'glass.dart';

class Booked extends StatelessWidget {
  const Booked({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    var _mqwidth = MediaQuery.of(context).size.width;
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                padding: const EdgeInsets.all(10),
                color: Colors.transparent,
                child: StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection("events")
                      .snapshots(),
                  builder: (context, snapshot) {
                    return !snapshot.hasData
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : ListView.builder(
                            itemCount: snapshot.data?.docs.length,
                            itemBuilder: (context, index) {
                              DocumentSnapshot events =
                                  snapshot.data!.docs[index];
                              return bookedTable(
                                eventname: events['event_name'],
                                starttime: events['start_time'],
                                endtime: events['end_time'],
                              );
                            });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Glass(
              height: 600.0,
              width: _mqwidth * 0.92,
              child: Text(
                "BOOKED SLOTS",
                style: TextStyle(
                  color: darkfieldColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
