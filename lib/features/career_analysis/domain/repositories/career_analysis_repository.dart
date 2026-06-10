import '../entities/career_analysis_result.dart';

abstract class CareerAnalysisRepository {
  Future<CareerAnalysisResult> analyzeCareer({
    required String role,
    required String experience,
    required List<String> skills,
  });
}
