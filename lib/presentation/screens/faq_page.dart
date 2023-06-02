import 'package:flutter/material.dart';
import 'package:jusitfi_admin/presentation/widgets/profile_appbar.dart';

const queryColor = Color.fromRGBO(241, 236, 236, 1);

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProfileNavBar(),
            Container(
              width: double.infinity,
              height: 40,
              color: const Color.fromRGBO(222, 226, 230, 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Text(
                    "FAQ",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(),
                  Container(),
                ],
              ),
            ),
            const QnaWidget(
              question: "How does payment work",
            ),
            const QnaWidget(
              question: "How does the Booking an advocate work ?",
            ),
            const QnaWidget(
              question: "How can I contact support ?",
            ),
          ],
        ),
      ),
    );
  }
}

class QnaWidget extends StatelessWidget {
  const QnaWidget({
    super.key,
    required this.question,
  });

  final String question;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedIconColor: Colors.black,
      collapsedBackgroundColor: queryColor,
      leading: const Icon(Icons.add),
      trailing: const SizedBox(),
      title: Text(question),
      backgroundColor: queryColor,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          color: Colors.white,
          child: const ListTile(
            leading: Icon(Icons.minimize_outlined),
            iconColor: Colors.black,
            title: Text(
                "Lorem ipsum, in graphical and textual context, refers to filler text that is placed in a document or visual presentation. Lorem ipsum is derived from the Latin dolorem ipsum roughly translated as"),
          ),
        ),
      ],
    );
  }
}