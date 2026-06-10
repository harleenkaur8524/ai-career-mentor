abstract class CareerRemoteDataSource {
  Future<String> analyzeCareer({
    required String role,
    required String experience,
    required List<String> skills,
  });
}

class CareerRemoteDataSourceImpl implements CareerRemoteDataSource {
  @override
  Future<String> analyzeCareer({
    required String role,
    required String experience,
    required List<String> skills,
  }) async {
    // Gemini API call later
    return Future.delayed(
      const Duration(seconds: 2),
      () =>
          'Analysis result for $role with $experience experience and skills: ${skills.join(', ')}',
    );
  }
}
