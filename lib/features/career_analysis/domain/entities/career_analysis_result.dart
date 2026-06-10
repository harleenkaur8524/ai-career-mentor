class CareerAnalysisResult {
  final int readinessScore;
  final List<String> missingSkills;
  final String roadmap;
  final String interviewAdvice;

  const CareerAnalysisResult({
    required this.readinessScore,
    required this.missingSkills,
    required this.roadmap,
    required this.interviewAdvice,
    Object? response,
  });
}
