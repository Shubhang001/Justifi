import 'package:flutter/material.dart';
import '../../utils/constants/textstyles.dart';

class LiveCallsCancelledCard extends StatelessWidget {
  const LiveCallsCancelledCard({
    super.key,
    required this.name,
    required this.image,
    required this.location,
    required this.rating,
    required this.date,
    required this.time,
    required this.duration,
    required this.paidAmount,
    required this.callType,
  });

  final String image;
  final String name;
  final String location;
  final int rating;
  final String date;
  final String time;
  final int duration;
  final double paidAmount;
  final String callType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  image,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: kAdvocateCardNameWhite,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/icons/location_icon.png"),
                        Text(
                          location,
                          style: kAdvocateCardLocationWhite,
                        )
                      ],
                    )
                  ],
                ),
                Column(children: [
                  Container(
                    padding: const EdgeInsets.only(left: 8, right: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text(
                          rating.toString(),
                          style: kAdvocateCardRating,
                        )
                      ],
                    ),
                  ),
                ])
              ],
            ),

            Container(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.calendar_month,
                        color: Colors.white,
                      ),
                      Text(
                        date,
                        style: kDateandTimeWhite,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                          height: 16,
                          width: 16,
                          child: Image.asset(
                            "assets/icons/time_clock.png",
                            fit: BoxFit.cover,
                          )),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        time.toString(),
                        style: kDateandTimeWhite,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.timelapse,
                        color: Colors.white,
                      ),
                      Text(
                        "$duration minutes",
                        style: kDateandTimeWhite,
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        callType.toString() == "Video Call"
                            ? const Icon(
                                Icons.videocam,
                                color: Colors.white,
                              )
                            : const Icon(
                                Icons.call,
                                color: Colors.white,
                              ),
                        Text(
                          callType,
                          style: tableTextBold,
                        )
                      ]),
                  const VerticalDivider(
                    color: Colors.white,
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(
                        Icons.currency_rupee,
                        size: 20,
                        color: Colors.white,
                      ),
                      Text(
                        "$paidAmount",
                        style: tableTextNormal,
                      )
                    ],
                  ),
                  const VerticalDivider(
                    color: Colors.white,
                    thickness: 1,
                  ),
                  GestureDetector(
                    onTap: () {
                      //show alert dialo
                      // showDialog(
                      //     context: context,
                      //     builder: (BuildContext context) {
                      //       return ReviewDialogBox();
                      //     });
                    },
                    child: Center(
                      child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15))),
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            "Reason",
                            style: tableTextBoldBlack,
                          )),
                    ),
                  )
                ],
              ),
            ),

            ////
          ],
        ),
      ),
    );
  }
}
