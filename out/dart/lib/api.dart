library swagger.api;

import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';

part 'api/breeds_api.dart';
part 'api/facts_api.dart';
part 'model/breed.dart';
part 'model/cat_fact.dart';

ApiClient defaultApiClient = new ApiClient(Dio());
