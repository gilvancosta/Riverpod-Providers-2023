// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/router/app_router.dart';

class ListTileWidget extends ConsumerWidget {

  final String title;
  final String subTitle;
  final String location;
  final IconData icon;

  const ListTileWidget({super.key, 
    required this.title,
    required this.subTitle,
    required this.location,
    required this.icon,
  });


  get appRouter => null;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);    
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(icon, color: colors.primary),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary),
      title: Text(title),
      subtitle: Text(subTitle),
      onTap: () => appRouter.push(location),
    );
  }
}
