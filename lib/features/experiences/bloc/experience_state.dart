part of 'experience_bloc.dart';

@immutable
sealed class ExperienceState {}

abstract class ExperienceActionState extends ExperienceState{}

final class ExperienceInitial extends ExperienceState {}

final class RecordingState extends ExperienceState{}


