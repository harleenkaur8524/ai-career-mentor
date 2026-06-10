import '../../domain/entities/career_analysis_result.dart';

class CareerAnalysisResponseModel extends CareerAnalysisResult {
  const CareerAnalysisResponseModel({
    required super.response,
    required super.readinessScore,
    required super.missingSkills,
    required super.roadmap,
    required super.interviewAdvice,
  });
}
