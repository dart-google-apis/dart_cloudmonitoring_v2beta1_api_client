library cloudmonitoring_v2beta1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_cloudmonitoring_v2beta1_api/src/console_client.dart';

import "package:google_cloudmonitoring_v2beta1_api/cloudmonitoring_v2beta1_api_client.dart";

/** API for accessing Google Cloud and API monitoring data. */
@deprecated
class Cloudmonitoring extends Client with ConsoleClient {

  /** OAuth Scope2: View monitoring data for all of your Google Cloud and API projects */
  static const String MONITORING_READONLY_SCOPE = "https://www.googleapis.com/auth/monitoring.readonly";

  final oauth2.OAuth2Console auth;

  Cloudmonitoring([oauth2.OAuth2Console this.auth]);
}
