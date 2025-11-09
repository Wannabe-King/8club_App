import 'dart:io';

import 'package:assingment_8club_app/core/constants/api_endpoints.dart';
import 'package:assingment_8club_app/core/network/api_client.dart';
import 'package:assingment_8club_app/features/experiences/models/experience_model.dart';
// import 'package:assingment_8club_app/models/experience_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiService {
  final Dio _dio = ApiClient().dio;

  Future<List<ExperienceModel>> fetchExperiences() async {
    try {
      final response = await _dio.get(ApiEndpoints.experiences);

      final body = response.data as Map<String, dynamic>;
      final data = body['data'] as Map<String, dynamic>;
      final list = data['experiences'] as List<dynamic>;

      return list
          .map(
            (experience) =>
                ExperienceModel.fromJson(experience as Map<String, dynamic>),
          )
          .toList();
    } on DioException catch (e) {
      debugPrint('Dio error fetching experiences: ${e.message}');
      rethrow;
    } catch (error) {
      debugPrint('Error fetching experiences: $error');
      rethrow;
    }
  }
}
