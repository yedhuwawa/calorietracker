import 'package:envied/envied.dart';


@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'FDC_API_KEY', obfuscate: true)
  static final String fdcApiKey = Env.fdcApiKey;
  @EnviedField(varName: 'SENTRY_DNS', obfuscate: true)
  static final String sentryDns = Env.sentryDns;
  @EnviedField(varName: 'SUPABASE_PROJECT_URL', obfuscate: true)
  static final String supabaseProjectUrl = Env.supabaseProjectUrl;
  @EnviedField(varName: 'SUPABASE_PROJECT_ANON_KEY', obfuscate: true)
  static final String supabaseProjectAnonKey = Env.supabaseProjectAnonKey;
}
