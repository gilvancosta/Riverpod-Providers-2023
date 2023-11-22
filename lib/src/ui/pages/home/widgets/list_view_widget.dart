import 'package:flutter/material.dart';

import 'list_tile_widget.dart';

class ListViewWidget extends StatelessWidget {

  const ListViewWidget({ super.key });

   @override
   Widget build(BuildContext context) {
       return ListView(
      children: const [
          ListTileWidget(
            title: 'Provider Simple',
            subTitle: 'Un provider de sólo lectura',
            location: '/provider',
            icon: Icons.smart_button_outlined
          ),

          ListTileWidget(
            title: 'Provider + Go_Router',
            subTitle: 'Un uso aplicado',
            location: '/provider-router',
            icon: Icons.credit_card
          ),

          ListTileWidget(
            title: 'State Provider',
            subTitle: 'Un estado para almacenar un objeto',
            location: '/state-provider',
            icon: Icons.refresh_rounded
          ),

          ListTileWidget(
            title: 'State Provider + Provider',
            subTitle: 'TODO - Una mezcla entre providers',
            location: '/todo',
            icon: Icons.info_outline
          ),

          ListTileWidget(
            title: 'Future Provider',
            subTitle: 'Mantener el estado de un future y su retorno',
            location: '/future-provider',
            icon: Icons.check_box_outline_blank_rounded
          ),

          ListTileWidget(
            title: 'Family Future Provider',
            subTitle: 'Providers con argumentos',
            location: '/future-family-provider',
            icon: Icons.car_rental_outlined
          ),

          ListTileWidget(
            title: 'Stream Provider',
            subTitle: 'Mantener el estado de un Stream y sus emosiones',
            location: '/stream-provider',
            icon: Icons.accessible_rounded
          ),

          ListTileWidget(
            title: 'State Notifier Provider',
            subTitle: 'Provider con notificación automática',
            location: '/state-notifier-provider',
            icon: Icons.list_alt_rounded
          ),

          ListTileWidget(
            title: 'Change Notifier Provider',
            subTitle: 'Provider con control de notificación a listeners',
            location: '/change-notifier-provider',
            icon: Icons.list_alt_rounded
          ),

      ],
    );
  }
}
