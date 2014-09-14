library cloudmonitoring_v2beta1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_cloudmonitoring_v2beta1_api/src/browser_client.dart';
import "package:google_cloudmonitoring_v2beta1_api/cloudmonitoring_v2beta1_api_client.dart";

/** API for accessing Google Cloud and API monitoring data. */
@deprecated
class Cloudmonitoring extends Client with BrowserClient {

  /** OAuth Scope2: View monitoring data for all of your Google Cloud and API projects */
  static const String MONITORING_READONLY_SCOPE = "https://www.googleapis.com/auth/monitoring.readonly";

  final oauth.OAuth2 auth;

  Cloudmonitoring([oauth.OAuth2 this.auth]);
}
