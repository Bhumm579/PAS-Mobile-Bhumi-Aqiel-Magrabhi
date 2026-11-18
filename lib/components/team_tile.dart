import 'package:flutter/material.dart';

import '../models/team_model.dart';
import 'net_image.dart';
class TeamTile extends StatelessWidget {
  final Team team;

  const TeamTile({super.key, required this.team});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: NetImage(
        url: team.strBadge,
        width: 48,
        height: 48,
        fit: BoxFit.contain,
      ),
      title: Text(team.strTeam),
      subtitle: Text(team.strStadium),
    );
  }
}
