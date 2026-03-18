import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';

import 'package:recho/presentation/common/locale/locale_cubit.dart';
import 'package:recho/data/repositories/settings_repository_impl.dart';
import 'package:recho/domain/repositores/settings_repository.dart';
import 'package:recho/presentation/common/theme/theme_cubit.dart';
import 'package:recho/presentation/home/bloc/home_bloc.dart';
import 'package:recho/core/network/dio_client.dart';
import 'package:recho/data/sources/local/settings/settings_local_data_source.dart';
import 'package:recho/domain/usecases/core/get_locale_use_case.dart';
import 'package:recho/domain/usecases/core/get_theme_mode_use_case.dart';
import 'package:recho/domain/usecases/core/set_locale_use_case.dart';
import 'package:recho/domain/usecases/core/set_theme_mode_use_case.dart';

part 'core.dart';

final GetIt sl = GetIt.instance;

Future<void> initDependencies() async {
  await _initCoreDI();

  sl.registerFactory(() => HomeBloc());
}
