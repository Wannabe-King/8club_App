import 'package:flutter/material.dart';
import '../features/experiences/models/experience_model.dart';

class ExperienceCard extends StatelessWidget {
  final ExperienceModel experience;
  final bool isSelected;
  final VoidCallback onTap;

  const ExperienceCard({
    super.key,
    required this.experience,
    required this.isSelected,
    required this.onTap,
    required BorderRadius borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        child: ClipRRect(
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Background image
              ColorFiltered(
                colorFilter: ColorFilter.mode(
                  isSelected
                      ? Colors.black.withOpacity(0.3)
                      : Colors.black.withOpacity(0.8),
                  BlendMode.darken,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(experience.imageUrl),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
