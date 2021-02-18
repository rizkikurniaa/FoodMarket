import 'dart:convert';
import 'dart:io';

import 'package:FoodMarket/models/models.dart';
import 'package:http/http.dart' as http;

part 'user_services.dart';
part 'food_services.dart';
part 'transaction_services.dart';

String baseUrl = 'https://foodmarket-backend.buildwithangga.id/api/';
