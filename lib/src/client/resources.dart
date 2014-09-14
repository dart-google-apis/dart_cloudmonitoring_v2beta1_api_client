part of cloudmonitoring_v2beta1_api;

class MetricDescriptorsResource_ {

  final Client _client;

  MetricDescriptorsResource_(Client client) :
      _client = client;

  /**
   * List metric descriptors that match the query. If the query is not set, then all of the metric descriptors will be returned. Large responses will be paginated, use the nextPageToken returned in the response to request subsequent pages of results by setting the pageToken query parameter to the value of the nextPageToken.
   *
   * [request] - ListMetricDescriptorsRequest to send in this request
   *
   * [project] - The project id. The value can be the numeric project ID or string-based project name.
   *
   * [count] - Maximum number of metric descriptors per page. Used for pagination. If not specified, count = 100.
   *   Default: 100
   *   Minimum: 1
   *   Maximum: 1000
   *
   * [pageToken] - The pagination token, which is used to page through large result sets. Set this value to the value of the nextPageToken to retrieve the next page of results.
   *
   * [query] - The query used to search against existing metrics. Separate keywords with a space; the service joins all keywords with AND, meaning that all keywords must match for a metric to be returned. If this field is omitted, all metrics are returned. If an empty string is passed with this field, no metrics are returned.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ListMetricDescriptorsResponse> list(ListMetricDescriptorsRequest request, core.String project, {core.int count, core.String pageToken, core.String query, core.Map optParams}) {
    var url = "{project}/metricDescriptors";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (count != null) queryParams["count"] = count;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (query != null) queryParams["query"] = query;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ListMetricDescriptorsResponse.fromJson(data));
  }
}

class TimeseriesResource_ {

  final Client _client;

  TimeseriesResource_(Client client) :
      _client = client;

  /**
   * List the data points of the time series that match the metric and labels values and that have data points in the interval. Large responses are paginated; use the nextPageToken returned in the response to request subsequent pages of results by setting the pageToken query parameter to the value of the nextPageToken.
   *
   * [request] - ListTimeseriesRequest to send in this request
   *
   * [project] - The project ID to which this time series belongs. The value can be the numeric project ID or string-based project name.
   *
   * [metric] - Metric names are protocol-free URLs as listed in the Supported Metrics page. For example, compute.googleapis.com/instance/disk/read_ops_count.
   *
   * [youngest] - End of the time interval (inclusive), which is expressed as an RFC 3339 timestamp.
   *
   * [count] - Maximum number of data points per page, which is used for pagination of results.
   *   Default: 6000
   *   Minimum: 1
   *   Maximum: 12000
   *
   * [labels] - A collection of labels for the matching time series, which are represented as:  
- key==value: key equals the value 
- key=~value: key regex matches the value 
- key!=value: key does not equal the value 
- key!~value: key regex does not match the value  For example, to list all of the time series descriptors for the region us-central1, you could specify:
label=cloud.googleapis.com%2Flocation=~us-central1.*
   *   Repeated values: allowed
   *
   * [oldest] - Start of the time interval (exclusive), which is expressed as an RFC 3339 timestamp. If neither oldest nor timespan is specified, the default time interval will be (youngest - 4 hours, youngest]
   *
   * [pageToken] - The pagination token, which is used to page through large result sets. Set this value to the value of the nextPageToken to retrieve the next page of results.
   *
   * [timespan] - Length of the time interval to query, which is an alternative way to declare the interval: (youngest - timespan, youngest]. The timespan and oldest parameters should not be used together. Units:  
- s: second 
- m: minute 
- h: hour 
- d: day 
- w: week  Examples: 2s, 3m, 4w. Only one unit is allowed, for example: 2w3d is not allowed; you should use 17d instead.

If neither oldest nor timespan is specified, the default time interval will be (youngest - 4 hours, youngest].
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ListTimeseriesResponse> list(ListTimeseriesRequest request, core.String project, core.String metric, core.String youngest, {core.int count, core.List<core.String> labels, core.String oldest, core.String pageToken, core.String timespan, core.Map optParams}) {
    var url = "{project}/timeseries/{metric}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (count != null) queryParams["count"] = count;
    if (labels != null) queryParams["labels"] = labels;
    if (metric == null) paramErrors.add("metric is required");
    if (metric != null) urlParams["metric"] = metric;
    if (oldest != null) queryParams["oldest"] = oldest;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (timespan != null) queryParams["timespan"] = timespan;
    if (youngest == null) paramErrors.add("youngest is required");
    if (youngest != null) queryParams["youngest"] = youngest;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ListTimeseriesResponse.fromJson(data));
  }
}

class TimeseriesDescriptorsResource_ {

  final Client _client;

  TimeseriesDescriptorsResource_(Client client) :
      _client = client;

  /**
   * List the descriptors of the time series that match the metric and labels values and that have data points in the interval. Large responses are paginated; use the nextPageToken returned in the response to request subsequent pages of results by setting the pageToken query parameter to the value of the nextPageToken.
   *
   * [request] - ListTimeseriesDescriptorsRequest to send in this request
   *
   * [project] - The project ID to which this time series belongs. The value can be the numeric project ID or string-based project name.
   *
   * [metric] - Metric names are protocol-free URLs as listed in the Supported Metrics page. For example, compute.googleapis.com/instance/disk/read_ops_count.
   *
   * [youngest] - End of the time interval (inclusive), which is expressed as an RFC 3339 timestamp.
   *
   * [count] - Maximum number of time series descriptors per page. Used for pagination. If not specified, count = 100.
   *   Default: 100
   *   Minimum: 1
   *   Maximum: 1000
   *
   * [labels] - A collection of labels for the matching time series, which are represented as:  
- key==value: key equals the value 
- key=~value: key regex matches the value 
- key!=value: key does not equal the value 
- key!~value: key regex does not match the value  For example, to list all of the time series descriptors for the region us-central1, you could specify:
label=cloud.googleapis.com%2Flocation=~us-central1.*
   *   Repeated values: allowed
   *
   * [oldest] - Start of the time interval (exclusive), which is expressed as an RFC 3339 timestamp. If neither oldest nor timespan is specified, the default time interval will be (youngest - 4 hours, youngest]
   *
   * [pageToken] - The pagination token, which is used to page through large result sets. Set this value to the value of the nextPageToken to retrieve the next page of results.
   *
   * [timespan] - Length of the time interval to query, which is an alternative way to declare the interval: (youngest - timespan, youngest]. The timespan and oldest parameters should not be used together. Units:  
- s: second 
- m: minute 
- h: hour 
- d: day 
- w: week  Examples: 2s, 3m, 4w. Only one unit is allowed, for example: 2w3d is not allowed; you should use 17d instead.

If neither oldest nor timespan is specified, the default time interval will be (youngest - 4 hours, youngest].
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ListTimeseriesDescriptorsResponse> list(ListTimeseriesDescriptorsRequest request, core.String project, core.String metric, core.String youngest, {core.int count, core.List<core.String> labels, core.String oldest, core.String pageToken, core.String timespan, core.Map optParams}) {
    var url = "{project}/timeseriesDescriptors/{metric}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (count != null) queryParams["count"] = count;
    if (labels != null) queryParams["labels"] = labels;
    if (metric == null) paramErrors.add("metric is required");
    if (metric != null) urlParams["metric"] = metric;
    if (oldest != null) queryParams["oldest"] = oldest;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (timespan != null) queryParams["timespan"] = timespan;
    if (youngest == null) paramErrors.add("youngest is required");
    if (youngest != null) queryParams["youngest"] = youngest;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ListTimeseriesDescriptorsResponse.fromJson(data));
  }
}

