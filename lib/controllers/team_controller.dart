import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../models/team_model.dart';

class TeamController extends GetxController {
  final isLoading = true.obs;
  final daftarTeam = <Team>[].obs;

  final pesanGagal = ''.obs;

  @override
  void onInit() {
    ambilTeam();
    super.onInit();
  }

  Future<void> ambilTeam() async {
    try {
      isLoading.value = true;
      pesanGagal.value = '';

      final url = Uri.parse(
        'https://www.thesportsdb.com/api/v1/json/123/search_all_teams.php?l=English%20Premier%20League',
      );
      final response = await http.get(url).timeout(const Duration(seconds: 15));

      if (response.statusCode == 200) {
        daftarTeam.value = premierLeagueModelFromJson(response.body).teams;
      } else {
        pesanGagal.value = 'Gagal memuat data (${response.statusCode})';
      }
    } catch (e) {
      pesanGagal.value = 'Terjadi kesalahan: $e';
    } finally {
      isLoading.value = false;
    }
  }
}
