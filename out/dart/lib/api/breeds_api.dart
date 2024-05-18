part of swagger.api;

class BreedsApi {
  final ApiClient apiClient;

  BreedsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get a list of breeds
  ///
  /// Returns a a list of breeds
  Future<List<Breed>?> getBreeds({int? limit = null}) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/breeds".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (limit != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }

    List<String> contentTypes = [];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      //MultipartRequest mp = new MultipartRequest(null, null);
      //if(hasFields)
      //  postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return (apiClient.deserialize(response.body, 'List<Breed>') as List)
          .map((item) => item as Breed)
          .toList();
    } else {
      return null;
    }
  }
}
