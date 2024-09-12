import 'package:adstacks/persentation/bloc/bloc/dashboard_bloc.dart';
import 'package:adstacks/persentation/bloc/bloc/dashboard_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/sidebar_widget.dart';
import '../widgets/project_card_widget.dart';
import '../widgets/top_creators_widget.dart';
import '../widgets/performance_chart_widget.dart';
import '../widgets/birthday_widget.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Search action
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Notifications
            },
          ),
        ],
      ),
      drawer: const SidebarWidget(),
      body: BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) {
          if (state is DashboardLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is DashboardLoaded) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top Section
                  Container(
                    height: 200,
                    color: Colors.purple,
                    child: const Center(
                      child: Text(
                        'Top Rating Project',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Projects Section
                  const ProjectCardWidget(
                      title: " Technology behind the Blockchain",
                      projectId: "001"),
                  const Text('All Projects',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  for (var project in state.projects)
                    ProjectCardWidget(title: project, projectId: '001'),
                  // Top Creators Section
                  const TopCreatorsWidget(
                    creators: [
                      {'name': 'Aman singh', 'artworks': '10', 'rating': '4.8'},
                      {'name': 'Ankit singh', 'artworks': '8', 'rating': '4.5'},
                      {
                        'name': 'Roshan singh',
                        'artworks': '5',
                        'rating': '4.2'
                      },
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text('Top Creators',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  TopCreatorsWidget(creators: state.creators),
                  // Performance Chart Section
                  const PerformanceChartWidget(
                    performanceData: [],
                  ),
                  const SizedBox(height: 20),
                  // Birthday Section
                  const BirthdayWidget(
                    name: 'Aman singh',
                    message:
                        'Wishing you a fantastic day filled with joy and happiness!',
                  ),
                  const SizedBox(height: 20),
                  const BirthdayWidget(
                      name: 'Aman singh', message: 'Happy Birthday!'),
                  const BirthdayWidget(
                      name: 'Ankit singh', message: 'Happy Anniversary!'),
                ],
              ),
            );
          } else if (state is DashboardError) {
            return Center(child: Text(state.message));
          }

          return Container();
        },
      ),
    );
  }
}
