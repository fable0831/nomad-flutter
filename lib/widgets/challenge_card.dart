import 'package:flutter/material.dart';

class ChallengeCard extends StatelessWidget {
  final String bNum1, bNum2, sNum1, sNum2;
  final String uTitle, dTitle, name1, name2, name3, name0;
  final int colors;

  final _yellowColor = const Color(0xFFFEF754);
  final _purpleColor = const Color(0xFF966AC2);
  final _greenColor = const Color(0xFFBCEE4B);

  const ChallengeCard(
      {super.key,
      required this.bNum1,
      required this.bNum2,
      required this.sNum1,
      required this.sNum2,
      required this.uTitle,
      required this.dTitle,
      required this.name0,
      required this.name1,
      required this.name2,
      required this.name3,
      required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colors == 0
            ? _yellowColor
            : (colors == 1 ? _purpleColor : _greenColor),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      bNum1,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      sNum1,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 30,
                      color: Colors.grey,
                    ),
                    Text(
                      bNum2,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      sNum2,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      uTitle,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 55,
                        fontWeight: FontWeight.w400,
                        height: 1,
                      ),
                    ),
                    Text(
                      dTitle,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 55,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 50,
                ),
                Text(
                  name0,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                Text(
                  name1,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.3),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  name2,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.3),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  name3,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.3),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
