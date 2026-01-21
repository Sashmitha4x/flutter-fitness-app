import 'package:flutter/material.dart';
import 'package:task2_fitness_app/presentation/cards/round_card.dart';
import 'package:task2_fitness_app/presentation/widgets/buttons/primary_button.dart';
import 'package:task2_fitness_app/presentation/widgets/chips/category_chip.dart';
import '../../../core/theme/app_sizes.dart';

class WorkoutPlanScreen extends StatelessWidget {
  const WorkoutPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width:  double.infinity,
                      child: Container(
                        height: 390,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/work_out1.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 40,
                      left: 16,
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Color(0xFFFFFFFF),
                            size: 22,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 16,
                      left: 16,
                      child: Text(
                        'Full Body Workout',
                        style: const TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 22,
                          fontWeight: FontWeight.w400, 
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(AppSizes.paddingM),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: const [
                            CategoryChip(label: 'Cardio'),
                            SizedBox(width: 8),
                            CategoryChip(label: 'Boxing'),
                            SizedBox(width: 8),
                            CategoryChip(label: 'Zumba'),
                            SizedBox(width: 8),
                            CategoryChip(label: 'Hiking'),
                          ],
                        ),
                      ),
                      SizedBox(height: AppSizes.spaceL),
                      PrimaryButton(
                        text: 'Start Training',
                        onPressed: () {},
                      ),
                      SizedBox(height: AppSizes.spaceM),
                      RoundCard(
                        roundTitle: 'Round 01',
                        exercises: [
                          {
                            'image': 'assets/images/work_out2.png',
                            'name': 'Side Stretch Left',
                            'reps': '3x',
                            'onPressed': () {},
                          },
                          {
                            'image': 'assets/images/work_out2.png',
                            'name': 'Side Stretch Right',
                            'reps': '3x',
                            'onPressed': () {},
                          },
                        ],
                      ),
                      RoundCard(
                        roundTitle: 'Round 01',
                        exercises: [
                          {
                            'image': 'assets/images/work_out2.png',
                            'name': 'Side Stretch Left',
                            'reps': '3x',
                            'onPressed': () {},
                          },
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
