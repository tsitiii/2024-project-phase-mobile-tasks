import 'package:task6/cleanArchitecture/data/services/api.dart';
import 'package:task6/cleanArchitecture/data/services/storage.dart';

class UserRepository {
  final ApiService apiService = ApiService();
  final StorageService storageService = StorageService();
}