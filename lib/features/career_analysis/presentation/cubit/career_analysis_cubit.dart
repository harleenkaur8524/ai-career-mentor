import 'package:flutter_bloc/flutter_bloc.dart';

import 'career_analysis_state.dart';

class CareerAnalysisCubit extends Cubit<CareerAnalysisState> {
  CareerAnalysisCubit() : super(CareerAnalysisInitial());
}
