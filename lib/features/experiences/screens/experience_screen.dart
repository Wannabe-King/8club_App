import 'package:assingment_8club_app/core/services/api_service.dart';
import 'package:flutter/material.dart';

class ExperienceScreen extends StatefulWidget {
  const ExperienceScreen({super.key});

  @override
  State<ExperienceScreen> createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {
  final api_service = ApiService();

  @override
  Widget build(BuildContext context) {
    
    final experiences=api_service.fetchExperiences();
    return const Placeholder();
  }
}