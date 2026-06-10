import 'package:ai_career_mentor/features/career_analysis/domain/repositories/career_analysis_repository.dart';

import '../entities/career_analysis_result.dart';

class AnalyzeCareerUseCase {
  final CareerAnalysisRepository repository;

  AnalyzeCareerUseCase(this.repository);

  Future<CareerAnalysisResult> call({
    required String role,
    required String experience,
    required List<String> skills,
  }) {
    return repository.analyzeCareer(
      role: role,
      experience: experience,
      skills: skills,
    );
  }
}
