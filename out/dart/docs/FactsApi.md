# swagger.api.FactsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getFacts**](FactsApi.md#getFacts) | **GET** /facts | Get a list of facts
[**getRandomFact**](FactsApi.md#getRandomFact) | **GET** /fact | Get Random Fact

# **getFacts**
> List<CatFact> getFacts(maxLength, limit)

Get a list of facts

Returns a a list of facts

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new FactsApi();
var maxLength = 789; // int | maximum length of returned fact
var limit = 789; // int | limit the amount of results returned

try {
    var result = api_instance.getFacts(maxLength, limit);
    print(result);
} catch (e) {
    print("Exception when calling FactsApi->getFacts: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maxLength** | **int**| maximum length of returned fact | [optional] 
 **limit** | **int**| limit the amount of results returned | [optional] 

### Return type

[**List<CatFact>**](CatFact.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRandomFact**
> CatFact getRandomFact(maxLength)

Get Random Fact

Returns a random fact

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new FactsApi();
var maxLength = 789; // int | maximum length of returned fact

try {
    var result = api_instance.getRandomFact(maxLength);
    print(result);
} catch (e) {
    print("Exception when calling FactsApi->getRandomFact: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maxLength** | **int**| maximum length of returned fact | [optional] 

### Return type

[**CatFact**](CatFact.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

