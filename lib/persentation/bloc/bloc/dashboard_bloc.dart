import 'package:flutter_bloc/flutter_bloc.dart';
import 'dashboard_event.dart';
import 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(DashboardInitial()) {
    on<LoadDashboardData>(_onLoadDashboardData);
  }

  Future<void> _onLoadDashboardData(
      LoadDashboardData event, Emitter<DashboardState> emit) async {
    emit(DashboardLoading());
    try {
      // Mock data for projects
      final projects = [
        'Technology behind the Blockchain',
        'AI Revolution',
        'Future of Web 3.0'
      ];

      // Mock data for top creators
      final creators = [
        {'name': 'madison_c21', 'artworks': '10', 'rating': '4.8'},
        {'name': 'karl_will02', 'artworks': '8', 'rating': '4.5'},
      ];

      // Mock performance data
      final performanceData = [
        [10.0, 20.0, 30.0, 40.0], // Done data
        [15.0, 25.0, 35.0, 45.0], // Pending data
      ];

      // Simulate loading time
      await Future.delayed(const Duration(seconds: 2));

      emit(DashboardLoaded(
        projects: projects,
        creators: creators,
        performanceData: performanceData,
      ));
    } catch (e) {
      emit(const DashboardError('Failed to load dashboard data'));
    }
  }
}
