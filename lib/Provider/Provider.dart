import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_structure/Provider/couter_provider.dart';
import 'package:flutter_structure/Provider/theme_provider.dart';

var couterNotifierState = StateNotifierProvider<Counter_State_Notifier, int>(
    (ref) => Counter_State_Notifier());

var themeStateProvider = StateNotifierProvider<AppThemeNotifier, AppTheme>(
    (ref) => AppThemeNotifier());
