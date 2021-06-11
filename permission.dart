  Future<bool> _requestPermission(Permission permission) async {
    // Is permission grandet.
    if (await permission.isGranted) {
      return true;
    } else {
      
      // Create a request.
      var result = await permission.request();
      if (result == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }
