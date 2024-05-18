part of swagger.api;

class FactsApi {
  final ApiClient apiClient;

  FactsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get a list of facts
  ///
  /// Returns a a list of facts
  Future<List<CatFact>?> getFacts({int? maxLength, int? limit}) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/facts".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (maxLength != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "max_length", maxLength));
    }
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
    } else if (response.data != null) {
      var data = response.data['data'];
      if (data is List) {
        return data.map((item) => CatFact.fromJson(item)).toList();
      }
      return (apiClient.deserialize(data, 'List<CatFact>') as List)
          .map((item) => item as CatFact)
          .toList();
    } else {
      return null;
    }
  }

  /// Get Random Fact
  ///
  /// Returns a random fact
  Future<CatFact?> getRandomFact({int? maxLength}) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/fact".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (maxLength != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "max_length", maxLength));
    }

    List<String> contentTypes = [];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      //MultipartRequest mp = new MultipartRequest(null, null);
      //if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'CatFact') as CatFact;
    } else {
      return null;
    }
  }
}
