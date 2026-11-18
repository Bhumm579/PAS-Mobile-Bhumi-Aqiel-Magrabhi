import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/team_tile.dart';
import '../controllers/team_controller.dart';

class FeatPage extends StatelessWidget {
  FeatPage({super.key});

  final controller = Get.put(TeamController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Premier League')),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (controller.pesanGagal.value.isNotEmpty) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(controller.pesanGagal.value),
                TextButton(
                  onPressed: controller.ambilTeam,
                  child: const Text('Muat ulang'),
                ),
              ],
            ),
          );
        }

        return ListView.builder(
          itemCount: controller.daftarTeam.length,
          itemBuilder: (context, index) {
            return TeamTile(team: controller.daftarTeam[index]);
          },
        );
      }),
    );
  }
}
