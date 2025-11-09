class ExperienceModel {
  final int id;
  final String name;
  final String tagline;
  final String description;
  final String imageUrl;
  final String iconUrl;

  ExperienceModel({
    required this.id,
    required this.name,
    required this.tagline,
    required this.description,
    required this.imageUrl,
    required this.iconUrl,
  });

  factory ExperienceModel.fromJson(Map<String, dynamic> json) {
    return ExperienceModel(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      tagline: json['tagline'] ?? '',
      description: json['description'] ?? '',
      imageUrl: json['image_url'] ?? '',
      iconUrl: json['icon_url'] ?? '',
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExperienceModel &&
          runtimeType == other.runtimeType &&
          id == other.id;

  @override
  int get hashCode => id.hashCode;
}

class ExperienceResponse {
  final String message;
  final List<ExperienceModel> experiences;

  ExperienceResponse({required this.message, required this.experiences});

  factory ExperienceResponse.fromJson(Map<String, dynamic> json) {
    var experiencesList = json['data']['experiences'] as List;
    List<ExperienceModel> experiences = experiencesList
        .map((experience) => ExperienceModel.fromJson(experience))
        .toList();

    return ExperienceResponse(
      message: json['message'] ?? '',
      experiences: experiences,
    );
  }
}
