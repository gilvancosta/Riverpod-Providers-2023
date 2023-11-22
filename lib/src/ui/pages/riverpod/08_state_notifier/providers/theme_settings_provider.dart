
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/theme/app_theme.dart';

part 'theme_settings_provider.g.dart';

@riverpod
class ThemeSettings extends StateNotifier<AppTheme> {
  
  // STATE = Estado = new AppTheme();
  ThemeSettings(): super( AppTheme() );


  void toggleDarkmode() {
    state = state.copyWith( isDarkmode: !state.isDarkmode  );
  }

  void changeColorIndex( int colorIndex) {
    state = state.copyWith( selectedColor: colorIndex );
  }


}