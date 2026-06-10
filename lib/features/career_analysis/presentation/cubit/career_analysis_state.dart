import 'package:equatable/equatable.dart';

abstract class CareerAnalysisState extends Equatable {
  const CareerAnalysisState();

  @override
  List<Object?> get props => [];
}

class CareerAnalysisInitial extends CareerAnalysisState {}

class CareerAnalysisLoading extends CareerAnalysisState {}

class CareerAnalysisSuccess extends CareerAnalysisState {
  final String result;

  const CareerAnalysisSuccess(this.result);

  @override
  List<Object?> get props => [result];
}

class CareerAnalysisError extends CareerAnalysisState {
  final String message;

  const CareerAnalysisError(this.message);

  @override
  List<Object?> get props => [message];
}
