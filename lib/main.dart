import 'package:flutter/material.dart';
import 'package:toonflix/widgets/challenge_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                          image: AssetImage('assets/fable.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Text(
                      '+',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'MONDAY 16',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 450,
                    height: 50,
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          'TODAY',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          '·',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF9B2A72),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          child: Text(
                            '17  18  19  2',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w600,
                              color: Colors.white.withOpacity(0.6),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const ChallengeCard(
                bNum1: '11',
                bNum2: '12',
                sNum1: '30',
                sNum2: '20',
                uTitle: 'DESIGN',
                dTitle: 'MEETING',
                name0: '',
                name1: 'ALEX',
                name2: 'HELENA',
                name3: 'NANA',
                colors: 0,
              ),
              const SizedBox(
                height: 5,
              ),
              const ChallengeCard(
                bNum1: '12',
                bNum2: '14',
                sNum1: '35',
                sNum2: '10',
                uTitle: 'DAILY',
                dTitle: 'PROJECT',
                name0: '',
                name1: 'RICHARD',
                name2: 'CIRY',
                name3: '+4',
                colors: 1,
              ),
              const SizedBox(
                height: 5,
              ),
              const ChallengeCard(
                bNum1: '15',
                bNum2: '16',
                sNum1: '00',
                sNum2: '30',
                uTitle: 'WEEKLY',
                dTitle: 'PLANNING',
                name0: '',
                name1: 'DEN',
                name2: 'NANA',
                name3: 'MARK',
                colors: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
