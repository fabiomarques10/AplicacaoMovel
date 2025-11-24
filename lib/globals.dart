import 'package:projetoacrmobile/services/imobiliaria_service.dart';

class Globals{
  static ImobiliariaService service = ImobiliariaService();
  static String baseUrl = "http://127.0.0.1:8000";
  static String apiUrl = "$baseUrl/api";
  static String nextRoute = "/Casas";
}