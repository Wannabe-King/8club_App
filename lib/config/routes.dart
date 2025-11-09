import 'package:assingment_8club_app/features/experiences/screens/experience_screen.dart';
import 'package:assingment_8club_app/features/onboarding/screens/onboarding_screen.dart';

class AppRoutes {
  static const String onboarding = '/onboarding';
  static const String experiences = '/experiences';

  static final routes = {
    onboarding: (context) => const OnboardingScreen(),
    experiences: (context) => const ExperienceScreen(),
  };
}
