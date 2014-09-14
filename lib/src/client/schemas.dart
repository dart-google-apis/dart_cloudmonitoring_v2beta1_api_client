part of cloudmonitoring_v2beta1_api;

/** The request of cloudmonitoring.metricDescriptors.list. */
class ListMetricDescriptorsRequest {

  /** Identifies what kind of resource this is. Value: the fixed string "cloudmonitoring#listMetricDescriptorsRequest". */
  core.String kind;

  /** Create new ListMetricDescriptorsRequest from JSON data */
  ListMetricDescriptorsRequest.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for ListMetricDescriptorsRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of ListMetricDescriptorsRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response of cloudmonitoring.metricDescriptors.list. */
class ListMetricDescriptorsResponse {

  /** Identifies what kind of resource this is. Value: the fixed string "cloudmonitoring#listMetricDescriptorsResponse". */
  core.String kind;

  /** The returned metric descriptors. */
  core.List<MetricDescriptor> metrics;

  /** Pagination token. If present, indicates that additional results are available for retrieval. To access the results past the pagination limit, pass this value to the pageToken query parameter. */
  core.String nextPageToken;

  /** Create new ListMetricDescriptorsResponse from JSON data */
  ListMetricDescriptorsResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("metrics")) {
      metrics = json["metrics"].map((metricsItem) => new MetricDescriptor.fromJson(metricsItem)).toList();
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for ListMetricDescriptorsResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (metrics != null) {
      output["metrics"] = metrics.map((metricsItem) => metricsItem.toJson()).toList();
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of ListMetricDescriptorsResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** The request of cloudmonitoring.timeseriesDescriptors.list */
class ListTimeseriesDescriptorsRequest {

  /** Identifies what kind of resource this is. Value: the fixed string "cloudmonitoring#listTimeseriesDescriptorsRequest". */
  core.String kind;

  /** Create new ListTimeseriesDescriptorsRequest from JSON data */
  ListTimeseriesDescriptorsRequest.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for ListTimeseriesDescriptorsRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of ListTimeseriesDescriptorsRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response of cloudmonitoring.timeseriesDescriptors.list */
class ListTimeseriesDescriptorsResponse {

  /** Identifies what kind of resource this is. Value: the fixed string "cloudmonitoring#listTimeseriesDescriptorsResponse". */
  core.String kind;

  /** Pagination token. If present, indicates that additional results are available for retrieval. To access the results past the pagination limit, set this value to the pageToken query parameter. */
  core.String nextPageToken;

  /** The oldest timestamp of the interval of this query, as an RFC 3339 string. */
  core.String oldest;

  /** The returned time series descriptors. */
  core.List<TimeseriesDescriptor> timeseries;

  /** The youngest timestamp of the interval of this query, as an RFC 3339 string. */
  core.String youngest;

  /** Create new ListTimeseriesDescriptorsResponse from JSON data */
  ListTimeseriesDescriptorsResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("oldest")) {
      oldest = json["oldest"];
    }
    if (json.containsKey("timeseries")) {
      timeseries = json["timeseries"].map((timeseriesItem) => new TimeseriesDescriptor.fromJson(timeseriesItem)).toList();
    }
    if (json.containsKey("youngest")) {
      youngest = json["youngest"];
    }
  }

  /** Create JSON Object for ListTimeseriesDescriptorsResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (oldest != null) {
      output["oldest"] = oldest;
    }
    if (timeseries != null) {
      output["timeseries"] = timeseries.map((timeseriesItem) => timeseriesItem.toJson()).toList();
    }
    if (youngest != null) {
      output["youngest"] = youngest;
    }

    return output;
  }

  /** Return String representation of ListTimeseriesDescriptorsResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** The request of cloudmonitoring.timeseries.list */
class ListTimeseriesRequest {

  /** Identifies what kind of resource this is. Value: the fixed string "cloudmonitoring#listTimeseriesRequest". */
  core.String kind;

  /** Create new ListTimeseriesRequest from JSON data */
  ListTimeseriesRequest.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for ListTimeseriesRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of ListTimeseriesRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response of cloudmonitoring.timeseries.list */
class ListTimeseriesResponse {

  /** Identifies what kind of resource this is. Value: the fixed string "cloudmonitoring#listTimeseriesResponse". */
  core.String kind;

  /** Pagination token. If present, indicates that additional results are available for retrieval. To access the results past the pagination limit, set the pageToken query parameter to this value. All of the points of a time series will be returned before returning any point of the subsequent time series. */
  core.String nextPageToken;

  /** The oldest timestamp of the interval of this query as an RFC 3339 string. */
  core.String oldest;

  /** The returned time series. */
  core.List<Timeseries> timeseries;

  /** The youngest timestamp of the interval of this query as an RFC 3339 string. */
  core.String youngest;

  /** Create new ListTimeseriesResponse from JSON data */
  ListTimeseriesResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("oldest")) {
      oldest = json["oldest"];
    }
    if (json.containsKey("timeseries")) {
      timeseries = json["timeseries"].map((timeseriesItem) => new Timeseries.fromJson(timeseriesItem)).toList();
    }
    if (json.containsKey("youngest")) {
      youngest = json["youngest"];
    }
  }

  /** Create JSON Object for ListTimeseriesResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (oldest != null) {
      output["oldest"] = oldest;
    }
    if (timeseries != null) {
      output["timeseries"] = timeseries.map((timeseriesItem) => timeseriesItem.toJson()).toList();
    }
    if (youngest != null) {
      output["youngest"] = youngest;
    }

    return output;
  }

  /** Return String representation of ListTimeseriesResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** A metricDescriptor defines the name, label keys, and data type of a particular metric. */
class MetricDescriptor {

  /** Description of this metric. */
  core.String description;

  /** Labels defined for this metric. */
  core.List<MetricDescriptorLabelDescriptor> labels;

  /** The name of this metric. */
  core.String name;

  /** The project ID to which the metric belongs. */
  core.String project;

  /** Type description for this metric. */
  MetricDescriptorTypeDescriptor typeDescriptor;

  /** Create new MetricDescriptor from JSON data */
  MetricDescriptor.fromJson(core.Map json) {
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("labels")) {
      labels = json["labels"].map((labelsItem) => new MetricDescriptorLabelDescriptor.fromJson(labelsItem)).toList();
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("project")) {
      project = json["project"];
    }
    if (json.containsKey("typeDescriptor")) {
      typeDescriptor = new MetricDescriptorTypeDescriptor.fromJson(json["typeDescriptor"]);
    }
  }

  /** Create JSON Object for MetricDescriptor */
  core.Map toJson() {
    var output = new core.Map();

    if (description != null) {
      output["description"] = description;
    }
    if (labels != null) {
      output["labels"] = labels.map((labelsItem) => labelsItem.toJson()).toList();
    }
    if (name != null) {
      output["name"] = name;
    }
    if (project != null) {
      output["project"] = project;
    }
    if (typeDescriptor != null) {
      output["typeDescriptor"] = typeDescriptor.toJson();
    }

    return output;
  }

  /** Return String representation of MetricDescriptor */
  core.String toString() => JSON.encode(this.toJson());

}

/** A label in a metric is a description of this metric, including the key of this description (what the description is), and the value for this description. */
class MetricDescriptorLabelDescriptor {

  /** Label description. */
  core.String description;

  /** Label key. */
  core.String key;

  /** Create new MetricDescriptorLabelDescriptor from JSON data */
  MetricDescriptorLabelDescriptor.fromJson(core.Map json) {
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("key")) {
      key = json["key"];
    }
  }

  /** Create JSON Object for MetricDescriptorLabelDescriptor */
  core.Map toJson() {
    var output = new core.Map();

    if (description != null) {
      output["description"] = description;
    }
    if (key != null) {
      output["key"] = key;
    }

    return output;
  }

  /** Return String representation of MetricDescriptorLabelDescriptor */
  core.String toString() => JSON.encode(this.toJson());

}

/** A type in a metric contains information about how the metric is collected and what its data points look like. */
class MetricDescriptorTypeDescriptor {

  /** The method of collecting data for the metric. */
  core.String metricType;

  /** The type of data that is written to a timeseries point for this metric. */
  core.String valueType;

  /** Create new MetricDescriptorTypeDescriptor from JSON data */
  MetricDescriptorTypeDescriptor.fromJson(core.Map json) {
    if (json.containsKey("metricType")) {
      metricType = json["metricType"];
    }
    if (json.containsKey("valueType")) {
      valueType = json["valueType"];
    }
  }

  /** Create JSON Object for MetricDescriptorTypeDescriptor */
  core.Map toJson() {
    var output = new core.Map();

    if (metricType != null) {
      output["metricType"] = metricType;
    }
    if (valueType != null) {
      output["valueType"] = valueType;
    }

    return output;
  }

  /** Return String representation of MetricDescriptorTypeDescriptor */
  core.String toString() => JSON.encode(this.toJson());

}

/** Point is a single point in a time series. It consists of a start time, an end time, and a value. */
class Point {

  /** The value of this data point. Either "true" or "false". */
  core.bool boolValue;

  /** The value of this data point as a distribution. A distribution value can contain a list of buckets and/or an underflowBucket and an overflowBucket. The values of these points can be used to create a histogram. */
  PointDistribution distributionValue;

  /** The value of this data point as a double-precision floating-point number. */
  core.num doubleValue;

  /** The interval [start, end] is the time period to which the point's value applies. For gauge metrics, whose values are instantaneous measurements, this interval should be empty (start should equal end). For cumulative metrics (of which deltas and rates are special cases), the interval should be non-empty. Both start and end are RFC 3999 strings. */
  core.String end;

  /** The value of this data point as a 64-bit integer. */
  core.int int64Value;

  /** The interval [start, end] is the time period to which the point's value applies. For gauge metrics, whose values are instantaneous measurements, this interval should be empty (start should equal end). For cumulative metrics (of which deltas and rates are special cases), the interval should be non-empty. Both start and end are RFC 3999 strings. */
  core.String start;

  /** The value of this data point in string format. */
  core.String stringValue;

  /** Create new Point from JSON data */
  Point.fromJson(core.Map json) {
    if (json.containsKey("boolValue")) {
      boolValue = json["boolValue"];
    }
    if (json.containsKey("distributionValue")) {
      distributionValue = new PointDistribution.fromJson(json["distributionValue"]);
    }
    if (json.containsKey("doubleValue")) {
      doubleValue = json["doubleValue"];
    }
    if (json.containsKey("end")) {
      end = json["end"];
    }
    if (json.containsKey("int64Value")) {
      int64Value = (json["int64Value"] is core.String) ? core.int.parse(json["int64Value"]) : json["int64Value"];
    }
    if (json.containsKey("start")) {
      start = json["start"];
    }
    if (json.containsKey("stringValue")) {
      stringValue = json["stringValue"];
    }
  }

  /** Create JSON Object for Point */
  core.Map toJson() {
    var output = new core.Map();

    if (boolValue != null) {
      output["boolValue"] = boolValue;
    }
    if (distributionValue != null) {
      output["distributionValue"] = distributionValue.toJson();
    }
    if (doubleValue != null) {
      output["doubleValue"] = doubleValue;
    }
    if (end != null) {
      output["end"] = end;
    }
    if (int64Value != null) {
      output["int64Value"] = int64Value;
    }
    if (start != null) {
      output["start"] = start;
    }
    if (stringValue != null) {
      output["stringValue"] = stringValue;
    }

    return output;
  }

  /** Return String representation of Point */
  core.String toString() => JSON.encode(this.toJson());

}

/** Distribution data point value type. When writing distribution points, try to be consistent with the boundaries of your buckets. If you must modify the bucket boundaries, then do so by merging, partitioning, or appending rather than skewing them. */
class PointDistribution {

  /** The finite buckets. */
  core.List<PointDistributionBucket> buckets;

  /** The overflow bucket. */
  PointDistributionOverflowBucket overflowBucket;

  /** The underflow bucket. */
  PointDistributionUnderflowBucket underflowBucket;

  /** Create new PointDistribution from JSON data */
  PointDistribution.fromJson(core.Map json) {
    if (json.containsKey("buckets")) {
      buckets = json["buckets"].map((bucketsItem) => new PointDistributionBucket.fromJson(bucketsItem)).toList();
    }
    if (json.containsKey("overflowBucket")) {
      overflowBucket = new PointDistributionOverflowBucket.fromJson(json["overflowBucket"]);
    }
    if (json.containsKey("underflowBucket")) {
      underflowBucket = new PointDistributionUnderflowBucket.fromJson(json["underflowBucket"]);
    }
  }

  /** Create JSON Object for PointDistribution */
  core.Map toJson() {
    var output = new core.Map();

    if (buckets != null) {
      output["buckets"] = buckets.map((bucketsItem) => bucketsItem.toJson()).toList();
    }
    if (overflowBucket != null) {
      output["overflowBucket"] = overflowBucket.toJson();
    }
    if (underflowBucket != null) {
      output["underflowBucket"] = underflowBucket.toJson();
    }

    return output;
  }

  /** Return String representation of PointDistribution */
  core.String toString() => JSON.encode(this.toJson());

}

/** The histogram's bucket. Buckets that form the histogram of a distribution value. If the upper bound of a bucket, say U1, does not equal the lower bound of the next bucket, say L2, this means that there is no event in [U1, L2). */
class PointDistributionBucket {

  /** The number of events whose values are in the interval defined by this bucket. */
  core.int count;

  /** The lower bound of the value interval of this bucket (inclusive). */
  core.num lowerBound;

  /** The upper bound of the value interval of this bucket (exclusive). */
  core.num upperBound;

  /** Create new PointDistributionBucket from JSON data */
  PointDistributionBucket.fromJson(core.Map json) {
    if (json.containsKey("count")) {
      count = (json["count"] is core.String) ? core.int.parse(json["count"]) : json["count"];
    }
    if (json.containsKey("lowerBound")) {
      lowerBound = json["lowerBound"];
    }
    if (json.containsKey("upperBound")) {
      upperBound = json["upperBound"];
    }
  }

  /** Create JSON Object for PointDistributionBucket */
  core.Map toJson() {
    var output = new core.Map();

    if (count != null) {
      output["count"] = count;
    }
    if (lowerBound != null) {
      output["lowerBound"] = lowerBound;
    }
    if (upperBound != null) {
      output["upperBound"] = upperBound;
    }

    return output;
  }

  /** Return String representation of PointDistributionBucket */
  core.String toString() => JSON.encode(this.toJson());

}

/** The overflow bucket is a special bucket that does not have the upperBound field; it includes all of the events that are no less than its lower bound. */
class PointDistributionOverflowBucket {

  /** The number of events whose values are in the interval defined by this bucket. */
  core.int count;

  /** The lower bound of the value interval of this bucket (inclusive). */
  core.num lowerBound;

  /** Create new PointDistributionOverflowBucket from JSON data */
  PointDistributionOverflowBucket.fromJson(core.Map json) {
    if (json.containsKey("count")) {
      count = (json["count"] is core.String) ? core.int.parse(json["count"]) : json["count"];
    }
    if (json.containsKey("lowerBound")) {
      lowerBound = json["lowerBound"];
    }
  }

  /** Create JSON Object for PointDistributionOverflowBucket */
  core.Map toJson() {
    var output = new core.Map();

    if (count != null) {
      output["count"] = count;
    }
    if (lowerBound != null) {
      output["lowerBound"] = lowerBound;
    }

    return output;
  }

  /** Return String representation of PointDistributionOverflowBucket */
  core.String toString() => JSON.encode(this.toJson());

}

/** The underflow bucket is a special bucket that does not have the lowerBound field; it includes all of the events that are less than its upper bound. */
class PointDistributionUnderflowBucket {

  /** The number of events whose values are in the interval defined by this bucket. */
  core.int count;

  /** The upper bound of the value interval of this bucket (exclusive). */
  core.num upperBound;

  /** Create new PointDistributionUnderflowBucket from JSON data */
  PointDistributionUnderflowBucket.fromJson(core.Map json) {
    if (json.containsKey("count")) {
      count = (json["count"] is core.String) ? core.int.parse(json["count"]) : json["count"];
    }
    if (json.containsKey("upperBound")) {
      upperBound = json["upperBound"];
    }
  }

  /** Create JSON Object for PointDistributionUnderflowBucket */
  core.Map toJson() {
    var output = new core.Map();

    if (count != null) {
      output["count"] = count;
    }
    if (upperBound != null) {
      output["upperBound"] = upperBound;
    }

    return output;
  }

  /** Return String representation of PointDistributionUnderflowBucket */
  core.String toString() => JSON.encode(this.toJson());

}

/** The monitoring data is organized as metrics and stored as data points that are recorded over time. Each data point represents information like the CPU utilization of your virtual machine. A historical record of these data points is called a time series. */
class Timeseries {

  /** The data points of this time series. The points are listed in order of their end timestamp, from younger to older. */
  core.List<Point> points;

  /** The descriptor of this time series. */
  TimeseriesDescriptor timeseriesDesc;

  /** Create new Timeseries from JSON data */
  Timeseries.fromJson(core.Map json) {
    if (json.containsKey("points")) {
      points = json["points"].map((pointsItem) => new Point.fromJson(pointsItem)).toList();
    }
    if (json.containsKey("timeseriesDesc")) {
      timeseriesDesc = new TimeseriesDescriptor.fromJson(json["timeseriesDesc"]);
    }
  }

  /** Create JSON Object for Timeseries */
  core.Map toJson() {
    var output = new core.Map();

    if (points != null) {
      output["points"] = points.map((pointsItem) => pointsItem.toJson()).toList();
    }
    if (timeseriesDesc != null) {
      output["timeseriesDesc"] = timeseriesDesc.toJson();
    }

    return output;
  }

  /** Return String representation of Timeseries */
  core.String toString() => JSON.encode(this.toJson());

}

/** TimeseriesDescriptor identifies a single time series. */
class TimeseriesDescriptor {

  /** The set of key-value pairs that describe this time series, including target-specific labels and metric-specific labels. */
  core.Map<core.String, core.String> labels;

  /** The name of the metric. */
  core.String metric;

  /** The Developers Console project number to which this time series belongs. */
  core.String project;

  /** Create new TimeseriesDescriptor from JSON data */
  TimeseriesDescriptor.fromJson(core.Map json) {
    if (json.containsKey("labels")) {
      labels = _mapMap(json["labels"]);
    }
    if (json.containsKey("metric")) {
      metric = json["metric"];
    }
    if (json.containsKey("project")) {
      project = json["project"];
    }
  }

  /** Create JSON Object for TimeseriesDescriptor */
  core.Map toJson() {
    var output = new core.Map();

    if (labels != null) {
      output["labels"] = _mapMap(labels);
    }
    if (metric != null) {
      output["metric"] = metric;
    }
    if (project != null) {
      output["project"] = project;
    }

    return output;
  }

  /** Return String representation of TimeseriesDescriptor */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
