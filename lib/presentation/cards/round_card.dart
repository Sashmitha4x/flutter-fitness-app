import 'package:flutter/material.dart';
import 'package:task2_fitness_app/presentation/widgets/items/exercise_item.dart';

class RoundCard extends StatelessWidget {
  final String roundTitle;
  final List<Map<String, dynamic>> exercises;

  const RoundCard({
    super.key,
    required this.roundTitle,
    required this.exercises,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(22),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              roundTitle,
              style: const TextStyle(
                color: Color(0xFF000000),
                fontSize: 19,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 12),
            ...exercises.map((exercise) => ExerciseItem(
                  imagePath: exercise['image'],
                  exerciseName: exercise['name'],
                  reps: exercise['reps'],
                  onPressed: exercise['onPressed'],
                )),
          ],
        ),
      ),
    );
  }
}
