import 'package:equatable/equatable.dart';

class DashboardState extends Equatable {
  const DashboardState();

  @override
  List<Object> get props => [];
}

class DashboardInitial extends DashboardState {}

class DashboardLoading extends DashboardState {}

class DashboardLoaded extends DashboardState {
  final List<String> projects;
  final List<Map<String, String>> creators;
  final List<List<double>> performanceData;

  const DashboardLoaded({
    required this.projects,
    required this.creators,
    required this.performanceData,
  });

  @override
  List<Object> get props => [projects, creators, performanceData];
}

class DashboardError extends DashboardState {
  final String message;

  const DashboardError(this.message);

  @override
  List<Object> get props => [message];
}
