# Generated REST API methods file - DO NOT EDIT!
# Date: 2021-12-07
# ES version: 7.15.2

module Antbird
  module RestApi
    module RestApiV7_15
      def common_params
        @common_params ||= {"documentation"=>{"description"=>"Parameters that are accepted by all API endpoints.", "url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/common-options.html"}, "params"=>{"pretty"=>{"type"=>"boolean", "description"=>"Pretty format the returned JSON response.", "default"=>false}, "human"=>{"type"=>"boolean", "description"=>"Return human readable values for statistics.", "default"=>true}, "error_trace"=>{"type"=>"boolean", "description"=>"Include the stack trace of returned errors.", "default"=>false}, "source"=>{"type"=>"string", "description"=>"The URL-encoded request definition. Useful for libraries that do not accept a request body for non-POST requests."}, "filter_path"=>{"type"=>"list", "description"=>"A comma-separated list of filters used to reduce the response."}}}
      end

      # async_search.delete 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/async-search.html", "description"=>"Deletes an async search by ID. If the search is still running, the search request will be cancelled. Otherwise, the saved search results are deleted."}
      def async_search_delete(params = {})
        api_name = 'async_search.delete'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/async-search.html", "description"=>"Deletes an async search by ID. If the search is still running, the search request will be cancelled. Otherwise, the saved search results are deleted."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_async_search/{id}", "methods"=>["DELETE"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The async search ID"}}}]}}
        request(api_name, api_spec, params)
      end

      # async_search.get 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/async-search.html", "description"=>"Retrieves the results of a previously submitted async search request given its ID."}
      def async_search_get(params = {})
        api_name = 'async_search.get'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/async-search.html", "description"=>"Retrieves the results of a previously submitted async search request given its ID."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_async_search/{id}", "methods"=>["GET"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The async search ID"}}}]}, "params"=>{"wait_for_completion_timeout"=>{"type"=>"time", "description"=>"Specify the time that the request should block waiting for the final response"}, "keep_alive"=>{"type"=>"time", "description"=>"Specify the time interval in which the results (partial or final) for this search will be available"}, "typed_keys"=>{"type"=>"boolean", "description"=>"Specify whether aggregation and suggester names should be prefixed by their respective types in the response"}}}
        request(api_name, api_spec, params)
      end

      # async_search.status 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/async-search.html", "description"=>"Retrieves the status of a previously submitted async search request given its ID."}
      def async_search_status(params = {})
        api_name = 'async_search.status'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/async-search.html", "description"=>"Retrieves the status of a previously submitted async search request given its ID."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_async_search/status/{id}", "methods"=>["GET"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The async search ID"}}}]}}
        request(api_name, api_spec, params)
      end

      # async_search.submit 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/async-search.html", "description"=>"Executes a search request asynchronously."}
      def async_search_submit(params = {})
        api_name = 'async_search.submit'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/async-search.html", "description"=>"Executes a search request asynchronously."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_async_search", "methods"=>["POST"]}, {"path"=>"/{index}/_async_search", "methods"=>["POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices"}}}]}, "params"=>{"wait_for_completion_timeout"=>{"type"=>"time", "description"=>"Specify the time that the request should block waiting for the final response", "default"=>"1s"}, "keep_on_completion"=>{"type"=>"boolean", "description"=>"Control whether the response should be stored in the cluster if it completed within the provided [wait_for_completion] time (default: false)", "default"=>false}, "keep_alive"=>{"type"=>"time", "description"=>"Update the time interval in which the results (partial or final) for this search will be available", "default"=>"5d"}, "batched_reduce_size"=>{"type"=>"number", "description"=>"The number of shard results that should be reduced at once on the coordinating node. This value should be used as the granularity at which progress results will be made available.", "default"=>5}, "request_cache"=>{"type"=>"boolean", "description"=>"Specify if request cache should be used for this request or not, defaults to true"}, "analyzer"=>{"type"=>"string", "description"=>"The analyzer to use for the query string"}, "analyze_wildcard"=>{"type"=>"boolean", "description"=>"Specify whether wildcard and prefix queries should be analyzed (default: false)"}, "default_operator"=>{"type"=>"enum", "options"=>["AND", "OR"], "default"=>"OR", "description"=>"The default operator for query string query (AND or OR)"}, "df"=>{"type"=>"string", "description"=>"The field to use as default where no field prefix is given in the query string"}, "explain"=>{"type"=>"boolean", "description"=>"Specify whether to return detailed information about score computation as part of a hit"}, "stored_fields"=>{"type"=>"list", "description"=>"A comma-separated list of stored fields to return as part of a hit"}, "docvalue_fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields to return as the docvalue representation of a field for each hit"}, "from"=>{"type"=>"number", "description"=>"Starting offset (default: 0)"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "ignore_throttled"=>{"type"=>"boolean", "description"=>"Whether specified concrete, expanded or aliased indices should be ignored when throttled"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "lenient"=>{"type"=>"boolean", "description"=>"Specify whether format-based query failures (such as providing text to a numeric field) should be ignored"}, "preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"}, "q"=>{"type"=>"string", "description"=>"Query in the Lucene query string syntax"}, "routing"=>{"type"=>"list", "description"=>"A comma-separated list of specific routing values"}, "search_type"=>{"type"=>"enum", "options"=>["query_then_fetch", "dfs_query_then_fetch"], "description"=>"Search operation type"}, "size"=>{"type"=>"number", "description"=>"Number of hits to return (default: 10)"}, "sort"=>{"type"=>"list", "description"=>"A comma-separated list of <field>:<direction> pairs"}, "_source"=>{"type"=>"list", "description"=>"True or false to return the _source field or not, or a list of fields to return"}, "_source_excludes"=>{"type"=>"list", "description"=>"A list of fields to exclude from the returned _source field"}, "_source_includes"=>{"type"=>"list", "description"=>"A list of fields to extract and return from the _source field"}, "terminate_after"=>{"type"=>"number", "description"=>"The maximum number of documents to collect for each shard, upon reaching which the query execution will terminate early."}, "stats"=>{"type"=>"list", "description"=>"Specific 'tag' of the request for logging and statistical purposes"}, "suggest_field"=>{"type"=>"string", "description"=>"Specify which field to use for suggestions"}, "suggest_mode"=>{"type"=>"enum", "options"=>["missing", "popular", "always"], "default"=>"missing", "description"=>"Specify suggest mode"}, "suggest_size"=>{"type"=>"number", "description"=>"How many suggestions to return in response"}, "suggest_text"=>{"type"=>"string", "description"=>"The source text for which the suggestions should be returned"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "track_scores"=>{"type"=>"boolean", "description"=>"Whether to calculate and return scores even if they are not used for sorting"}, "track_total_hits"=>{"type"=>"boolean", "description"=>"Indicate if the number of documents that match the query should be tracked"}, "allow_partial_search_results"=>{"type"=>"boolean", "default"=>true, "description"=>"Indicate if an error should be returned if there is a partial search failure or timeout"}, "typed_keys"=>{"type"=>"boolean", "description"=>"Specify whether aggregation and suggester names should be prefixed by their respective types in the response"}, "version"=>{"type"=>"boolean", "description"=>"Specify whether to return document version as part of a hit"}, "seq_no_primary_term"=>{"type"=>"boolean", "description"=>"Specify whether to return sequence number and primary term of the last modification of each hit"}, "max_concurrent_shard_requests"=>{"type"=>"number", "description"=>"The number of concurrent shard requests per node this search executes concurrently. This value should be used to limit the impact of the search on the cluster in order to limit the number of concurrent shard requests", "default"=>5}}, "body"=>{"description"=>"The search definition using the Query DSL"}}
        request(api_name, api_spec, params)
      end

      # autoscaling.delete_autoscaling_policy 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/autoscaling-delete-autoscaling-policy.html", "description"=>"Deletes an autoscaling policy. Designed for indirect use by ECE/ESS and ECK. Direct use is not supported."}
      def autoscaling_delete_autoscaling_policy(params = {})
        api_name = 'autoscaling.delete_autoscaling_policy'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/autoscaling-delete-autoscaling-policy.html", "description"=>"Deletes an autoscaling policy. Designed for indirect use by ECE/ESS and ECK. Direct use is not supported."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_autoscaling/policy/{name}", "methods"=>["DELETE"], "parts"=>{"name"=>{"type"=>"string", "description"=>"the name of the autoscaling policy"}}}]}}
        request(api_name, api_spec, params)
      end

      # autoscaling.get_autoscaling_capacity 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/autoscaling-get-autoscaling-capacity.html", "description"=>"Gets the current autoscaling capacity based on the configured autoscaling policy. Designed for indirect use by ECE/ESS and ECK. Direct use is not supported."}
      def autoscaling_get_autoscaling_capacity(params = {})
        api_name = 'autoscaling.get_autoscaling_capacity'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/autoscaling-get-autoscaling-capacity.html", "description"=>"Gets the current autoscaling capacity based on the configured autoscaling policy. Designed for indirect use by ECE/ESS and ECK. Direct use is not supported."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_autoscaling/capacity", "methods"=>["GET"]}]}}
        request(api_name, api_spec, params)
      end

      # autoscaling.get_autoscaling_policy 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/autoscaling-get-autoscaling-policy.html", "description"=>"Retrieves an autoscaling policy. Designed for indirect use by ECE/ESS and ECK. Direct use is not supported."}
      def autoscaling_get_autoscaling_policy(params = {})
        api_name = 'autoscaling.get_autoscaling_policy'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/autoscaling-get-autoscaling-policy.html", "description"=>"Retrieves an autoscaling policy. Designed for indirect use by ECE/ESS and ECK. Direct use is not supported."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_autoscaling/policy/{name}", "methods"=>["GET"], "parts"=>{"name"=>{"type"=>"string", "description"=>"the name of the autoscaling policy"}}}]}}
        request(api_name, api_spec, params)
      end

      # autoscaling.put_autoscaling_policy 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/autoscaling-put-autoscaling-policy.html", "description"=>"Creates a new autoscaling policy. Designed for indirect use by ECE/ESS and ECK. Direct use is not supported."}
      def autoscaling_put_autoscaling_policy(params = {})
        api_name = 'autoscaling.put_autoscaling_policy'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/autoscaling-put-autoscaling-policy.html", "description"=>"Creates a new autoscaling policy. Designed for indirect use by ECE/ESS and ECK. Direct use is not supported."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_autoscaling/policy/{name}", "methods"=>["PUT"], "parts"=>{"name"=>{"type"=>"string", "description"=>"the name of the autoscaling policy"}}}]}, "body"=>{"description"=>"the specification of the autoscaling policy", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # bulk 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-bulk.html", "description"=>"Allows to perform multiple index/update/delete operations in a single request."}
      def bulk(params = {})
        api_name = 'bulk'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-bulk.html", "description"=>"Allows to perform multiple index/update/delete operations in a single request."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/x-ndjson"]}, "url"=>{"paths"=>[{"path"=>"/_bulk", "methods"=>["POST", "PUT"]}, {"path"=>"/{index}/_bulk", "methods"=>["POST", "PUT"], "parts"=>{"index"=>{"type"=>"string", "description"=>"Default index for items which don't provide one"}}}, {"path"=>"/{index}/{type}/_bulk", "methods"=>["POST", "PUT"], "parts"=>{"index"=>{"type"=>"string", "description"=>"Default index for items which don't provide one"}, "type"=>{"type"=>"string", "description"=>"Default document type for items which don't provide one"}}}]}, "params"=>{"wait_for_active_shards"=>{"type"=>"string", "description"=>"Sets the number of shard copies that must be active before proceeding with the bulk operation. Defaults to 1, meaning the primary shard only. Set to `all` for all shard copies, otherwise set to any non-negative value less than or equal to the total number of copies for the shard (number of replicas + 1)"}, "refresh"=>{"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` (the default) then do nothing with refreshes."}, "routing"=>{"type"=>"string", "description"=>"Specific routing value"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "type"=>{"type"=>"string", "description"=>"Default document type for items which don't provide one"}, "_source"=>{"type"=>"list", "description"=>"True or false to return the _source field or not, or default list of fields to return, can be overridden on each sub-request"}, "_source_excludes"=>{"type"=>"list", "description"=>"Default list of fields to exclude from the returned _source field, can be overridden on each sub-request"}, "_source_includes"=>{"type"=>"list", "description"=>"Default list of fields to extract and return from the _source field, can be overridden on each sub-request"}, "pipeline"=>{"type"=>"string", "description"=>"The pipeline id to preprocess incoming documents with"}, "require_alias"=>{"type"=>"boolean", "description"=>"Sets require_alias for all incoming documents. Defaults to unset (false)"}}, "body"=>{"description"=>"The operation definition and data (action-data pairs), separated by newlines", "required"=>true, "serialize"=>"bulk"}}
        request(api_name, api_spec, params)
      end

      # cat.aliases 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-alias.html", "description"=>"Shows information about currently configured aliases to indices including filter and routing infos."}
      def cat_aliases(params = {})
        api_name = 'cat.aliases'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-alias.html", "description"=>"Shows information about currently configured aliases to indices including filter and routing infos."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["text/plain", "application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cat/aliases", "methods"=>["GET"]}, {"path"=>"/_cat/aliases/{name}", "methods"=>["GET"], "parts"=>{"name"=>{"type"=>"list", "description"=>"A comma-separated list of alias names to return"}}}]}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"all", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}}}
        request(api_name, api_spec, params)
      end

      # cat.allocation 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-allocation.html", "description"=>"Provides a snapshot of how many shards are allocated to each data node and how much disk space they are using."}
      def cat_allocation(params = {})
        api_name = 'cat.allocation'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-allocation.html", "description"=>"Provides a snapshot of how many shards are allocated to each data node and how much disk space they are using."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["text/plain", "application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cat/allocation", "methods"=>["GET"]}, {"path"=>"/_cat/allocation/{node_id}", "methods"=>["GET"], "parts"=>{"node_id"=>{"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information"}}}]}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "bytes"=>{"type"=>"enum", "description"=>"The unit in which to display byte values", "options"=>["b", "k", "kb", "m", "mb", "g", "gb", "t", "tb", "p", "pb"]}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}
        request(api_name, api_spec, params)
      end

      # cat.count 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-count.html", "description"=>"Provides quick access to the document count of the entire cluster, or individual indices."}
      def cat_count(params = {})
        api_name = 'cat.count'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-count.html", "description"=>"Provides quick access to the document count of the entire cluster, or individual indices."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["text/plain", "application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cat/count", "methods"=>["GET"]}, {"path"=>"/_cat/count/{index}", "methods"=>["GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to limit the returned information"}}}]}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}
        request(api_name, api_spec, params)
      end

      # cat.fielddata 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-fielddata.html", "description"=>"Shows how much heap memory is currently being used by fielddata on every data node in the cluster."}
      def cat_fielddata(params = {})
        api_name = 'cat.fielddata'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-fielddata.html", "description"=>"Shows how much heap memory is currently being used by fielddata on every data node in the cluster."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["text/plain", "application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cat/fielddata", "methods"=>["GET"]}, {"path"=>"/_cat/fielddata/{fields}", "methods"=>["GET"], "parts"=>{"fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields to return the fielddata size"}}}]}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "bytes"=>{"type"=>"enum", "description"=>"The unit in which to display byte values", "options"=>["b", "k", "kb", "m", "mb", "g", "gb", "t", "tb", "p", "pb"]}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}, "fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields to return in the output"}}}
        request(api_name, api_spec, params)
      end

      # cat.health 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-health.html", "description"=>"Returns a concise representation of the cluster health."}
      def cat_health(params = {})
        api_name = 'cat.health'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-health.html", "description"=>"Returns a concise representation of the cluster health."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["text/plain", "application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cat/health", "methods"=>["GET"]}]}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "time"=>{"type"=>"enum", "description"=>"The unit in which to display time values", "options"=>["d", "h", "m", "s", "ms", "micros", "nanos"]}, "ts"=>{"type"=>"boolean", "description"=>"Set to false to disable timestamping", "default"=>true}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}
        request(api_name, api_spec, params)
      end

      # cat.help 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat.html", "description"=>"Returns help for the Cat APIs."}
      def cat_help(params = {})
        api_name = 'cat.help'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat.html", "description"=>"Returns help for the Cat APIs."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["text/plain"]}, "url"=>{"paths"=>[{"path"=>"/_cat", "methods"=>["GET"]}]}, "params"=>{"help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}}}
        request(api_name, api_spec, params)
      end

      # cat.indices 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-indices.html", "description"=>"Returns information about indices: number of primaries and replicas, document counts, disk size, ..."}
      def cat_indices(params = {})
        api_name = 'cat.indices'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-indices.html", "description"=>"Returns information about indices: number of primaries and replicas, document counts, disk size, ..."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["text/plain", "application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cat/indices", "methods"=>["GET"]}, {"path"=>"/_cat/indices/{index}", "methods"=>["GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to limit the returned information"}}}]}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "bytes"=>{"type"=>"enum", "description"=>"The unit in which to display byte values", "options"=>["b", "k", "kb", "m", "mb", "g", "gb", "t", "tb", "p", "pb"]}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)", "deprecated"=>{"version"=>"7.11.0", "description"=>"This parameter does not affect the request. It will be removed in a future release."}}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "health"=>{"type"=>"enum", "options"=>["green", "yellow", "red"], "description"=>"A health status (\"green\", \"yellow\", or \"red\" to filter only indices matching the specified health status"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "pri"=>{"type"=>"boolean", "description"=>"Set to true to return stats only for primary shards", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "time"=>{"type"=>"enum", "description"=>"The unit in which to display time values", "options"=>["d", "h", "m", "s", "ms", "micros", "nanos"]}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}, "include_unloaded_segments"=>{"type"=>"boolean", "description"=>"If set to true segment stats will include stats for segments that are not currently loaded into memory", "default"=>false}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"all", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}}}
        request(api_name, api_spec, params)
      end

      # cat.master 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-master.html", "description"=>"Returns information about the master node."}
      def cat_master(params = {})
        api_name = 'cat.master'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-master.html", "description"=>"Returns information about the master node."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["text/plain", "application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cat/master", "methods"=>["GET"]}]}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}
        request(api_name, api_spec, params)
      end

      # cat.ml_data_frame_analytics 
      # {"url"=>"http://www.elastic.co/guide/en/elasticsearch/reference/current/cat-dfanalytics.html", "description"=>"Gets configuration and usage information about data frame analytics jobs."}
      def cat_ml_data_frame_analytics(params = {})
        api_name = 'cat.ml_data_frame_analytics'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"http://www.elastic.co/guide/en/elasticsearch/reference/current/cat-dfanalytics.html", "description"=>"Gets configuration and usage information about data frame analytics jobs."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["text/plain", "application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cat/ml/data_frame/analytics", "methods"=>["GET"]}, {"path"=>"/_cat/ml/data_frame/analytics/{id}", "methods"=>["GET"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The ID of the data frame analytics to fetch"}}}]}, "params"=>{"allow_no_match"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no configs. (This includes `_all` string or when no configs have been specified)"}, "bytes"=>{"type"=>"enum", "description"=>"The unit in which to display byte values", "options"=>["b", "k", "kb", "m", "mb", "g", "gb", "t", "tb", "p", "pb"]}, "format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "time"=>{"type"=>"enum", "description"=>"The unit in which to display time values", "options"=>["d", "h", "m", "s", "ms", "micros", "nanos"]}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}
        request(api_name, api_spec, params)
      end

      # cat.ml_datafeeds 
      # {"url"=>"http://www.elastic.co/guide/en/elasticsearch/reference/current/cat-datafeeds.html", "description"=>"Gets configuration and usage information about datafeeds."}
      def cat_ml_datafeeds(params = {})
        api_name = 'cat.ml_datafeeds'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"http://www.elastic.co/guide/en/elasticsearch/reference/current/cat-datafeeds.html", "description"=>"Gets configuration and usage information about datafeeds."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["text/plain", "application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cat/ml/datafeeds", "methods"=>["GET"]}, {"path"=>"/_cat/ml/datafeeds/{datafeed_id}", "methods"=>["GET"], "parts"=>{"datafeed_id"=>{"type"=>"string", "description"=>"The ID of the datafeeds stats to fetch"}}}]}, "params"=>{"allow_no_match"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no datafeeds. (This includes `_all` string or when no datafeeds have been specified)"}, "allow_no_datafeeds"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no datafeeds. (This includes `_all` string or when no datafeeds have been specified)", "deprecated"=>true}, "format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "time"=>{"type"=>"enum", "description"=>"The unit in which to display time values", "options"=>["d", "h", "m", "s", "ms", "micros", "nanos"]}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}
        request(api_name, api_spec, params)
      end

      # cat.ml_jobs 
      # {"url"=>"http://www.elastic.co/guide/en/elasticsearch/reference/current/cat-anomaly-detectors.html", "description"=>"Gets configuration and usage information about anomaly detection jobs."}
      def cat_ml_jobs(params = {})
        api_name = 'cat.ml_jobs'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"http://www.elastic.co/guide/en/elasticsearch/reference/current/cat-anomaly-detectors.html", "description"=>"Gets configuration and usage information about anomaly detection jobs."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["text/plain", "application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cat/ml/anomaly_detectors", "methods"=>["GET"]}, {"path"=>"/_cat/ml/anomaly_detectors/{job_id}", "methods"=>["GET"], "parts"=>{"job_id"=>{"type"=>"string", "description"=>"The ID of the jobs stats to fetch"}}}]}, "params"=>{"allow_no_match"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no jobs. (This includes `_all` string or when no jobs have been specified)"}, "allow_no_jobs"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no jobs. (This includes `_all` string or when no jobs have been specified)", "deprecated"=>true}, "bytes"=>{"type"=>"enum", "description"=>"The unit in which to display byte values", "options"=>["b", "k", "kb", "m", "mb", "g", "gb", "t", "tb", "p", "pb"]}, "format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "time"=>{"type"=>"enum", "description"=>"The unit in which to display time values", "options"=>["d", "h", "m", "s", "ms", "micros", "nanos"]}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}
        request(api_name, api_spec, params)
      end

      # cat.ml_trained_models 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/cat-trained-model.html", "description"=>"Gets configuration and usage information about inference trained models."}
      def cat_ml_trained_models(params = {})
        api_name = 'cat.ml_trained_models'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/cat-trained-model.html", "description"=>"Gets configuration and usage information about inference trained models."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["text/plain", "application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cat/ml/trained_models", "methods"=>["GET"]}, {"path"=>"/_cat/ml/trained_models/{model_id}", "methods"=>["GET"], "parts"=>{"model_id"=>{"type"=>"string", "description"=>"The ID of the trained models stats to fetch"}}}]}, "params"=>{"allow_no_match"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no trained models. (This includes `_all` string or when no trained models have been specified)", "default"=>true}, "from"=>{"type"=>"int", "description"=>"skips a number of trained models", "default"=>0}, "size"=>{"type"=>"int", "description"=>"specifies a max number of trained models to get", "default"=>100}, "bytes"=>{"type"=>"enum", "description"=>"The unit in which to display byte values", "options"=>["b", "k", "kb", "m", "mb", "g", "gb", "t", "tb", "p", "pb"]}, "format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "time"=>{"type"=>"enum", "description"=>"The unit in which to display time values", "options"=>["d", "h", "m", "s", "ms", "micros", "nanos"]}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}
        request(api_name, api_spec, params)
      end

      # cat.nodeattrs 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-nodeattrs.html", "description"=>"Returns information about custom node attributes."}
      def cat_nodeattrs(params = {})
        api_name = 'cat.nodeattrs'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-nodeattrs.html", "description"=>"Returns information about custom node attributes."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["text/plain", "application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cat/nodeattrs", "methods"=>["GET"]}]}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}
        request(api_name, api_spec, params)
      end

      # cat.nodes 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-nodes.html", "description"=>"Returns basic statistics about performance of cluster nodes."}
      def cat_nodes(params = {})
        api_name = 'cat.nodes'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-nodes.html", "description"=>"Returns basic statistics about performance of cluster nodes."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["text/plain", "application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cat/nodes", "methods"=>["GET"]}]}, "params"=>{"bytes"=>{"type"=>"enum", "description"=>"The unit in which to display byte values", "options"=>["b", "k", "kb", "m", "mb", "g", "gb", "t", "tb", "p", "pb"]}, "format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "full_id"=>{"type"=>"boolean", "description"=>"Return the full node ID instead of the shortened version (default: false)"}, "local"=>{"type"=>"boolean", "description"=>"Calculate the selected nodes using the local cluster state rather than the state from master node (default: false)", "deprecated"=>{"version"=>"7.6.0", "description"=>"This parameter does not cause this API to act locally."}}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "time"=>{"type"=>"enum", "description"=>"The unit in which to display time values", "options"=>["d", "h", "m", "s", "ms", "micros", "nanos"]}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}, "include_unloaded_segments"=>{"type"=>"boolean", "description"=>"If set to true segment stats will include stats for segments that are not currently loaded into memory", "default"=>false}}}
        request(api_name, api_spec, params)
      end

      # cat.pending_tasks 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-pending-tasks.html", "description"=>"Returns a concise representation of the cluster pending tasks."}
      def cat_pending_tasks(params = {})
        api_name = 'cat.pending_tasks'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-pending-tasks.html", "description"=>"Returns a concise representation of the cluster pending tasks."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["text/plain", "application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cat/pending_tasks", "methods"=>["GET"]}]}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "time"=>{"type"=>"enum", "description"=>"The unit in which to display time values", "options"=>["d", "h", "m", "s", "ms", "micros", "nanos"]}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}
        request(api_name, api_spec, params)
      end

      # cat.plugins 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-plugins.html", "description"=>"Returns information about installed plugins across nodes node."}
      def cat_plugins(params = {})
        api_name = 'cat.plugins'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-plugins.html", "description"=>"Returns information about installed plugins across nodes node."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["text/plain", "application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cat/plugins", "methods"=>["GET"]}]}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "include_bootstrap"=>{"type"=>"boolean", "description"=>"Include bootstrap plugins in the response", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}
        request(api_name, api_spec, params)
      end

      # cat.recovery 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-recovery.html", "description"=>"Returns information about index shard recoveries, both on-going completed."}
      def cat_recovery(params = {})
        api_name = 'cat.recovery'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-recovery.html", "description"=>"Returns information about index shard recoveries, both on-going completed."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["text/plain", "application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cat/recovery", "methods"=>["GET"]}, {"path"=>"/_cat/recovery/{index}", "methods"=>["GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"Comma-separated list or wildcard expression of index names to limit the returned information"}}}]}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "active_only"=>{"type"=>"boolean", "description"=>"If `true`, the response only includes ongoing shard recoveries", "default"=>false}, "bytes"=>{"type"=>"enum", "description"=>"The unit in which to display byte values", "options"=>["b", "k", "kb", "m", "mb", "g", "gb", "t", "tb", "p", "pb"]}, "detailed"=>{"type"=>"boolean", "description"=>"If `true`, the response includes detailed information about shard recoveries", "default"=>false}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "index"=>{"type"=>"list", "description"=>"Comma-separated list or wildcard expression of index names to limit the returned information"}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "time"=>{"type"=>"enum", "description"=>"The unit in which to display time values", "options"=>["d", "h", "m", "s", "ms", "micros", "nanos"]}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}
        request(api_name, api_spec, params)
      end

      # cat.repositories 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-repositories.html", "description"=>"Returns information about snapshot repositories registered in the cluster."}
      def cat_repositories(params = {})
        api_name = 'cat.repositories'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-repositories.html", "description"=>"Returns information about snapshot repositories registered in the cluster."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["text/plain", "application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cat/repositories", "methods"=>["GET"]}]}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node", "default"=>false}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}
        request(api_name, api_spec, params)
      end

      # cat.segments 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-segments.html", "description"=>"Provides low-level information about the segments in the shards of an index."}
      def cat_segments(params = {})
        api_name = 'cat.segments'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-segments.html", "description"=>"Provides low-level information about the segments in the shards of an index."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["text/plain", "application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cat/segments", "methods"=>["GET"]}, {"path"=>"/_cat/segments/{index}", "methods"=>["GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to limit the returned information"}}}]}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "bytes"=>{"type"=>"enum", "description"=>"The unit in which to display byte values", "options"=>["b", "k", "kb", "m", "mb", "g", "gb", "t", "tb", "p", "pb"]}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}
        request(api_name, api_spec, params)
      end

      # cat.shards 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-shards.html", "description"=>"Provides a detailed view of shard allocation on nodes."}
      def cat_shards(params = {})
        api_name = 'cat.shards'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-shards.html", "description"=>"Provides a detailed view of shard allocation on nodes."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["text/plain", "application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cat/shards", "methods"=>["GET"]}, {"path"=>"/_cat/shards/{index}", "methods"=>["GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to limit the returned information"}}}]}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "bytes"=>{"type"=>"enum", "description"=>"The unit in which to display byte values", "options"=>["b", "k", "kb", "m", "mb", "g", "gb", "t", "tb", "p", "pb"]}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)", "deprecated"=>{"version"=>"7.11.0", "description"=>"This parameter does not affect the request. It will be removed in a future release."}}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "time"=>{"type"=>"enum", "description"=>"The unit in which to display time values", "options"=>["d", "h", "m", "s", "ms", "micros", "nanos"]}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}
        request(api_name, api_spec, params)
      end

      # cat.snapshots 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-snapshots.html", "description"=>"Returns all snapshots in a specific repository."}
      def cat_snapshots(params = {})
        api_name = 'cat.snapshots'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-snapshots.html", "description"=>"Returns all snapshots in a specific repository."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["text/plain", "application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cat/snapshots", "methods"=>["GET"]}, {"path"=>"/_cat/snapshots/{repository}", "methods"=>["GET"], "parts"=>{"repository"=>{"type"=>"list", "description"=>"Name of repository from which to fetch the snapshot information"}}}]}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Set to true to ignore unavailable snapshots", "default"=>false}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "time"=>{"type"=>"enum", "description"=>"The unit in which to display time values", "options"=>["d", "h", "m", "s", "ms", "micros", "nanos"]}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}
        request(api_name, api_spec, params)
      end

      # cat.tasks 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/tasks.html", "description"=>"Returns information about the tasks currently executing on one or more nodes in the cluster."}
      def cat_tasks(params = {})
        api_name = 'cat.tasks'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/tasks.html", "description"=>"Returns information about the tasks currently executing on one or more nodes in the cluster."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["text/plain", "application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cat/tasks", "methods"=>["GET"]}]}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "nodes"=>{"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"}, "actions"=>{"type"=>"list", "description"=>"A comma-separated list of actions that should be returned. Leave empty to return all."}, "detailed"=>{"type"=>"boolean", "description"=>"Return detailed task information (default: false)"}, "parent_task_id"=>{"type"=>"string", "description"=>"Return tasks with specified parent task id (node_id:task_number). Set to -1 to return all."}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "time"=>{"type"=>"enum", "description"=>"The unit in which to display time values", "options"=>["d", "h", "m", "s", "ms", "micros", "nanos"]}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}
        request(api_name, api_spec, params)
      end

      # cat.templates 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-templates.html", "description"=>"Returns information about existing templates."}
      def cat_templates(params = {})
        api_name = 'cat.templates'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-templates.html", "description"=>"Returns information about existing templates."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["text/plain", "application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cat/templates", "methods"=>["GET"]}, {"path"=>"/_cat/templates/{name}", "methods"=>["GET"], "parts"=>{"name"=>{"type"=>"string", "description"=>"A pattern that returned template names must match"}}}]}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}
        request(api_name, api_spec, params)
      end

      # cat.thread_pool 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-thread-pool.html", "description"=>"Returns cluster-wide thread pool statistics per node.\nBy default the active, queue and rejected statistics are returned for all thread pools."}
      def cat_thread_pool(params = {})
        api_name = 'cat.thread_pool'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-thread-pool.html", "description"=>"Returns cluster-wide thread pool statistics per node.\nBy default the active, queue and rejected statistics are returned for all thread pools."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["text/plain", "application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cat/thread_pool", "methods"=>["GET"]}, {"path"=>"/_cat/thread_pool/{thread_pool_patterns}", "methods"=>["GET"], "parts"=>{"thread_pool_patterns"=>{"type"=>"list", "description"=>"A comma-separated list of regular-expressions to filter the thread pools in the output"}}}]}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "size"=>{"type"=>"enum", "description"=>"The multiplier in which to display values", "options"=>["", "k", "m", "g", "t", "p"], "deprecated"=>{"version"=>"7.7.0", "description"=>"Setting this value has no effect and will be removed from the specification."}}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}
        request(api_name, api_spec, params)
      end

      # cat.transforms 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/cat-transforms.html", "description"=>"Gets configuration and usage information about transforms."}
      def cat_transforms(params = {})
        api_name = 'cat.transforms'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/cat-transforms.html", "description"=>"Gets configuration and usage information about transforms."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["text/plain", "application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cat/transforms", "methods"=>["GET"]}, {"path"=>"/_cat/transforms/{transform_id}", "methods"=>["GET"], "parts"=>{"transform_id"=>{"type"=>"string", "description"=>"The id of the transform for which to get stats. '_all' or '*' implies all transforms"}}}]}, "params"=>{"from"=>{"type"=>"int", "required"=>false, "description"=>"skips a number of transform configs, defaults to 0"}, "size"=>{"type"=>"int", "required"=>false, "description"=>"specifies a max number of transforms to get, defaults to 100"}, "allow_no_match"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no transforms. (This includes `_all` string or when no transforms have been specified)"}, "format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "time"=>{"type"=>"enum", "description"=>"The unit in which to display time values", "options"=>["d", "h", "m", "s", "ms", "micros", "nanos"]}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}
        request(api_name, api_spec, params)
      end

      # ccr.delete_auto_follow_pattern 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-delete-auto-follow-pattern.html", "description"=>"Deletes auto-follow patterns."}
      def ccr_delete_auto_follow_pattern(params = {})
        api_name = 'ccr.delete_auto_follow_pattern'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-delete-auto-follow-pattern.html", "description"=>"Deletes auto-follow patterns."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ccr/auto_follow/{name}", "methods"=>["DELETE"], "parts"=>{"name"=>{"type"=>"string", "description"=>"The name of the auto follow pattern."}}}]}}
        request(api_name, api_spec, params)
      end

      # ccr.follow 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-put-follow.html", "description"=>"Creates a new follower index configured to follow the referenced leader index."}
      def ccr_follow(params = {})
        api_name = 'ccr.follow'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-put-follow.html", "description"=>"Creates a new follower index configured to follow the referenced leader index."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_ccr/follow", "methods"=>["PUT"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The name of the follower index"}}}]}, "params"=>{"wait_for_active_shards"=>{"type"=>"string", "description"=>"Sets the number of shard copies that must be active before returning. Defaults to 0. Set to `all` for all shard copies, otherwise set to any non-negative value less than or equal to the total number of copies for the shard (number of replicas + 1)", "default"=>"0"}}, "body"=>{"description"=>"The name of the leader index and other optional ccr related parameters", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # ccr.follow_info 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-get-follow-info.html", "description"=>"Retrieves information about all follower indices, including parameters and status for each follower index"}
      def ccr_follow_info(params = {})
        api_name = 'ccr.follow_info'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-get-follow-info.html", "description"=>"Retrieves information about all follower indices, including parameters and status for each follower index"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_ccr/info", "methods"=>["GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index patterns; use `_all` to perform the operation on all indices"}}}]}}
        request(api_name, api_spec, params)
      end

      # ccr.follow_stats 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-get-follow-stats.html", "description"=>"Retrieves follower stats. return shard-level stats about the following tasks associated with each shard for the specified indices."}
      def ccr_follow_stats(params = {})
        api_name = 'ccr.follow_stats'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-get-follow-stats.html", "description"=>"Retrieves follower stats. return shard-level stats about the following tasks associated with each shard for the specified indices."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_ccr/stats", "methods"=>["GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index patterns; use `_all` to perform the operation on all indices"}}}]}}
        request(api_name, api_spec, params)
      end

      # ccr.forget_follower 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-post-forget-follower.html", "description"=>"Removes the follower retention leases from the leader."}
      def ccr_forget_follower(params = {})
        api_name = 'ccr.forget_follower'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-post-forget-follower.html", "description"=>"Removes the follower retention leases from the leader."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_ccr/forget_follower", "methods"=>["POST"], "parts"=>{"index"=>{"type"=>"string", "description"=>"the name of the leader index for which specified follower retention leases should be removed"}}}]}, "body"=>{"description"=>"the name and UUID of the follower index, the name of the cluster containing the follower index, and the alias from the perspective of that cluster for the remote cluster containing the leader index", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # ccr.get_auto_follow_pattern 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-get-auto-follow-pattern.html", "description"=>"Gets configured auto-follow patterns. Returns the specified auto-follow pattern collection."}
      def ccr_get_auto_follow_pattern(params = {})
        api_name = 'ccr.get_auto_follow_pattern'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-get-auto-follow-pattern.html", "description"=>"Gets configured auto-follow patterns. Returns the specified auto-follow pattern collection."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ccr/auto_follow", "methods"=>["GET"]}, {"path"=>"/_ccr/auto_follow/{name}", "methods"=>["GET"], "parts"=>{"name"=>{"type"=>"string", "description"=>"The name of the auto follow pattern."}}}]}}
        request(api_name, api_spec, params)
      end

      # ccr.pause_auto_follow_pattern 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-pause-auto-follow-pattern.html", "description"=>"Pauses an auto-follow pattern"}
      def ccr_pause_auto_follow_pattern(params = {})
        api_name = 'ccr.pause_auto_follow_pattern'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-pause-auto-follow-pattern.html", "description"=>"Pauses an auto-follow pattern"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ccr/auto_follow/{name}/pause", "methods"=>["POST"], "parts"=>{"name"=>{"type"=>"string", "description"=>"The name of the auto follow pattern that should pause discovering new indices to follow."}}}]}}
        request(api_name, api_spec, params)
      end

      # ccr.pause_follow 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-post-pause-follow.html", "description"=>"Pauses a follower index. The follower index will not fetch any additional operations from the leader index."}
      def ccr_pause_follow(params = {})
        api_name = 'ccr.pause_follow'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-post-pause-follow.html", "description"=>"Pauses a follower index. The follower index will not fetch any additional operations from the leader index."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_ccr/pause_follow", "methods"=>["POST"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The name of the follower index that should pause following its leader index."}}}]}}
        request(api_name, api_spec, params)
      end

      # ccr.put_auto_follow_pattern 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-put-auto-follow-pattern.html", "description"=>"Creates a new named collection of auto-follow patterns against a specified remote cluster. Newly created indices on the remote cluster matching any of the specified patterns will be automatically configured as follower indices."}
      def ccr_put_auto_follow_pattern(params = {})
        api_name = 'ccr.put_auto_follow_pattern'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-put-auto-follow-pattern.html", "description"=>"Creates a new named collection of auto-follow patterns against a specified remote cluster. Newly created indices on the remote cluster matching any of the specified patterns will be automatically configured as follower indices."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ccr/auto_follow/{name}", "methods"=>["PUT"], "parts"=>{"name"=>{"type"=>"string", "description"=>"The name of the auto follow pattern."}}}]}, "body"=>{"description"=>"The specification of the auto follow pattern", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # ccr.resume_auto_follow_pattern 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-resume-auto-follow-pattern.html", "description"=>"Resumes an auto-follow pattern that has been paused"}
      def ccr_resume_auto_follow_pattern(params = {})
        api_name = 'ccr.resume_auto_follow_pattern'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-resume-auto-follow-pattern.html", "description"=>"Resumes an auto-follow pattern that has been paused"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ccr/auto_follow/{name}/resume", "methods"=>["POST"], "parts"=>{"name"=>{"type"=>"string", "description"=>"The name of the auto follow pattern to resume discovering new indices to follow."}}}]}}
        request(api_name, api_spec, params)
      end

      # ccr.resume_follow 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-post-resume-follow.html", "description"=>"Resumes a follower index that has been paused"}
      def ccr_resume_follow(params = {})
        api_name = 'ccr.resume_follow'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-post-resume-follow.html", "description"=>"Resumes a follower index that has been paused"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_ccr/resume_follow", "methods"=>["POST"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The name of the follow index to resume following."}}}]}, "body"=>{"description"=>"The name of the leader index and other optional ccr related parameters", "required"=>false}}
        request(api_name, api_spec, params)
      end

      # ccr.stats 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-get-stats.html", "description"=>"Gets all stats related to cross-cluster replication."}
      def ccr_stats(params = {})
        api_name = 'ccr.stats'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-get-stats.html", "description"=>"Gets all stats related to cross-cluster replication."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ccr/stats", "methods"=>["GET"]}]}}
        request(api_name, api_spec, params)
      end

      # ccr.unfollow 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-post-unfollow.html", "description"=>"Stops the following task associated with a follower index and removes index metadata and settings associated with cross-cluster replication."}
      def ccr_unfollow(params = {})
        api_name = 'ccr.unfollow'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-post-unfollow.html", "description"=>"Stops the following task associated with a follower index and removes index metadata and settings associated with cross-cluster replication."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_ccr/unfollow", "methods"=>["POST"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The name of the follower index that should be turned into a regular index."}}}]}}
        request(api_name, api_spec, params)
      end

      # clear_scroll 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/clear-scroll-api.html", "description"=>"Explicitly clears the search context for a scroll."}
      def clear_scroll(params = {})
        api_name = 'clear_scroll'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/clear-scroll-api.html", "description"=>"Explicitly clears the search context for a scroll."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json", "text/plain"]}, "url"=>{"paths"=>[{"path"=>"/_search/scroll", "methods"=>["DELETE"]}, {"path"=>"/_search/scroll/{scroll_id}", "methods"=>["DELETE"], "parts"=>{"scroll_id"=>{"type"=>"list", "description"=>"A comma-separated list of scroll IDs to clear", "deprecated"=>true}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"A scroll id can be quite large and should be specified as part of the body"}}]}, "params"=>{}, "body"=>{"description"=>"A comma-separated list of scroll IDs to clear if none was specified via the scroll_id parameter"}}
        request(api_name, api_spec, params)
      end

      # close_point_in_time 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/point-in-time-api.html", "description"=>"Close a point in time"}
      def close_point_in_time(params = {})
        api_name = 'close_point_in_time'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/point-in-time-api.html", "description"=>"Close a point in time"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_pit", "methods"=>["DELETE"]}]}, "params"=>{}, "body"=>{"description"=>"a point-in-time id to close"}}
        request(api_name, api_spec, params)
      end

      # cluster.allocation_explain 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-allocation-explain.html", "description"=>"Provides explanations for shard allocations in the cluster."}
      def cluster_allocation_explain(params = {})
        api_name = 'cluster.allocation_explain'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-allocation-explain.html", "description"=>"Provides explanations for shard allocations in the cluster."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cluster/allocation/explain", "methods"=>["GET", "POST"]}]}, "params"=>{"include_yes_decisions"=>{"type"=>"boolean", "description"=>"Return 'YES' decisions in explanation (default: false)"}, "include_disk_info"=>{"type"=>"boolean", "description"=>"Return information about disk usage and shard sizes (default: false)"}}, "body"=>{"description"=>"The index, shard, and primary flag to explain. Empty means 'explain a randomly-chosen unassigned shard'"}}
        request(api_name, api_spec, params)
      end

      # cluster.delete_component_template 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-component-template.html", "description"=>"Deletes a component template"}
      def cluster_delete_component_template(params = {})
        api_name = 'cluster.delete_component_template'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-component-template.html", "description"=>"Deletes a component template"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_component_template/{name}", "methods"=>["DELETE"], "parts"=>{"name"=>{"type"=>"string", "description"=>"The name of the template"}}}]}, "params"=>{"timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}}}
        request(api_name, api_spec, params)
      end

      # cluster.delete_voting_config_exclusions 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/voting-config-exclusions.html", "description"=>"Clears cluster voting config exclusions."}
      def cluster_delete_voting_config_exclusions(params = {})
        api_name = 'cluster.delete_voting_config_exclusions'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/voting-config-exclusions.html", "description"=>"Clears cluster voting config exclusions."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cluster/voting_config_exclusions", "methods"=>["DELETE"]}]}, "params"=>{"wait_for_removal"=>{"type"=>"boolean", "description"=>"Specifies whether to wait for all excluded nodes to be removed from the cluster before clearing the voting configuration exclusions list.", "default"=>true}}}
        request(api_name, api_spec, params)
      end

      # cluster.exists_component_template 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-component-template.html", "description"=>"Returns information about whether a particular component template exist"}
      def cluster_exists_component_template(params = {})
        api_name = 'cluster.exists_component_template'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-component-template.html", "description"=>"Returns information about whether a particular component template exist"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_component_template/{name}", "methods"=>["HEAD"], "parts"=>{"name"=>{"type"=>"string", "description"=>"The name of the template"}}}]}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}}}
        request(api_name, api_spec, params)
      end
      alias :cluster_exists_component_template? :cluster_exists_component_template

      # cluster.get_component_template 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-component-template.html", "description"=>"Returns one or more component templates"}
      def cluster_get_component_template(params = {})
        api_name = 'cluster.get_component_template'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-component-template.html", "description"=>"Returns one or more component templates"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_component_template", "methods"=>["GET"]}, {"path"=>"/_component_template/{name}", "methods"=>["GET"], "parts"=>{"name"=>{"type"=>"list", "description"=>"The comma separated names of the component templates"}}}]}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}}}
        request(api_name, api_spec, params)
      end

      # cluster.get_settings 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-get-settings.html", "description"=>"Returns cluster settings."}
      def cluster_get_settings(params = {})
        api_name = 'cluster.get_settings'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-get-settings.html", "description"=>"Returns cluster settings."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cluster/settings", "methods"=>["GET"]}]}, "params"=>{"flat_settings"=>{"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "include_defaults"=>{"type"=>"boolean", "description"=>"Whether to return all default clusters setting.", "default"=>false}}}
        request(api_name, api_spec, params)
      end

      # cluster.health 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-health.html", "description"=>"Returns basic information about the health of the cluster."}
      def cluster_health(params = {})
        api_name = 'cluster.health'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-health.html", "description"=>"Returns basic information about the health of the cluster."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cluster/health", "methods"=>["GET"]}, {"path"=>"/_cluster/health/{index}", "methods"=>["GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"Limit the information returned to a specific index"}}}]}, "params"=>{"expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"all", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "level"=>{"type"=>"enum", "options"=>["cluster", "indices", "shards"], "default"=>"cluster", "description"=>"Specify the level of detail for returned information"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "wait_for_active_shards"=>{"type"=>"string", "description"=>"Wait until the specified number of shards is active"}, "wait_for_nodes"=>{"type"=>"string", "description"=>"Wait until the specified number of nodes is available"}, "wait_for_events"=>{"type"=>"enum", "options"=>["immediate", "urgent", "high", "normal", "low", "languid"], "description"=>"Wait until all currently queued events with the given priority are processed"}, "wait_for_no_relocating_shards"=>{"type"=>"boolean", "description"=>"Whether to wait until there are no relocating shards in the cluster"}, "wait_for_no_initializing_shards"=>{"type"=>"boolean", "description"=>"Whether to wait until there are no initializing shards in the cluster"}, "wait_for_status"=>{"type"=>"enum", "options"=>["green", "yellow", "red"], "description"=>"Wait until cluster is in a specific state"}}}
        request(api_name, api_spec, params)
      end

      # cluster.pending_tasks 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-pending.html", "description"=>"Returns a list of any cluster-level changes (e.g. create index, update mapping,\nallocate or fail shard) which have not yet been executed."}
      def cluster_pending_tasks(params = {})
        api_name = 'cluster.pending_tasks'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-pending.html", "description"=>"Returns a list of any cluster-level changes (e.g. create index, update mapping,\nallocate or fail shard) which have not yet been executed."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cluster/pending_tasks", "methods"=>["GET"]}]}, "params"=>{"local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}}}
        request(api_name, api_spec, params)
      end

      # cluster.post_voting_config_exclusions 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/voting-config-exclusions.html", "description"=>"Updates the cluster voting config exclusions by node ids or node names."}
      def cluster_post_voting_config_exclusions(params = {})
        api_name = 'cluster.post_voting_config_exclusions'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/voting-config-exclusions.html", "description"=>"Updates the cluster voting config exclusions by node ids or node names."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cluster/voting_config_exclusions", "methods"=>["POST"]}]}, "params"=>{"node_ids"=>{"type"=>"string", "description"=>"A comma-separated list of the persistent ids of the nodes to exclude from the voting configuration. If specified, you may not also specify ?node_names."}, "node_names"=>{"type"=>"string", "description"=>"A comma-separated list of the names of the nodes to exclude from the voting configuration. If specified, you may not also specify ?node_ids."}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout", "default"=>"30s"}}}
        request(api_name, api_spec, params)
      end

      # cluster.put_component_template 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-component-template.html", "description"=>"Creates or updates a component template"}
      def cluster_put_component_template(params = {})
        api_name = 'cluster.put_component_template'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-component-template.html", "description"=>"Creates or updates a component template"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_component_template/{name}", "methods"=>["PUT", "POST"], "parts"=>{"name"=>{"type"=>"string", "description"=>"The name of the template"}}}]}, "params"=>{"create"=>{"type"=>"boolean", "description"=>"Whether the index template should only be added if new or can also replace an existing one", "default"=>false}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}}, "body"=>{"description"=>"The template definition", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # cluster.put_settings 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-update-settings.html", "description"=>"Updates the cluster settings."}
      def cluster_put_settings(params = {})
        api_name = 'cluster.put_settings'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-update-settings.html", "description"=>"Updates the cluster settings."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cluster/settings", "methods"=>["PUT"]}]}, "params"=>{"flat_settings"=>{"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}}, "body"=>{"description"=>"The settings to be updated. Can be either `transient` or `persistent` (survives cluster restart).", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # cluster.remote_info 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-remote-info.html", "description"=>"Returns the information about configured remote clusters."}
      def cluster_remote_info(params = {})
        api_name = 'cluster.remote_info'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-remote-info.html", "description"=>"Returns the information about configured remote clusters."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_remote/info", "methods"=>["GET"]}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # cluster.reroute 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-reroute.html", "description"=>"Allows to manually change the allocation of individual shards in the cluster."}
      def cluster_reroute(params = {})
        api_name = 'cluster.reroute'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-reroute.html", "description"=>"Allows to manually change the allocation of individual shards in the cluster."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cluster/reroute", "methods"=>["POST"]}]}, "params"=>{"dry_run"=>{"type"=>"boolean", "description"=>"Simulate the operation only and return the resulting state"}, "explain"=>{"type"=>"boolean", "description"=>"Return an explanation of why the commands can or cannot be executed"}, "retry_failed"=>{"type"=>"boolean", "description"=>"Retries allocation of shards that are blocked due to too many subsequent allocation failures"}, "metric"=>{"type"=>"list", "options"=>["_all", "blocks", "metadata", "nodes", "routing_table", "master_node", "version"], "description"=>"Limit the information returned to the specified metrics. Defaults to all but metadata"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}}, "body"=>{"description"=>"The definition of `commands` to perform (`move`, `cancel`, `allocate`)"}}
        request(api_name, api_spec, params)
      end

      # cluster.state 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-state.html", "description"=>"Returns a comprehensive information about the state of the cluster."}
      def cluster_state(params = {})
        api_name = 'cluster.state'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-state.html", "description"=>"Returns a comprehensive information about the state of the cluster."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cluster/state", "methods"=>["GET"]}, {"path"=>"/_cluster/state/{metric}", "methods"=>["GET"], "parts"=>{"metric"=>{"type"=>"list", "options"=>["_all", "blocks", "metadata", "nodes", "routing_table", "routing_nodes", "master_node", "version"], "description"=>"Limit the information returned to the specified metrics"}}}, {"path"=>"/_cluster/state/{metric}/{index}", "methods"=>["GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"}, "metric"=>{"type"=>"list", "options"=>["_all", "blocks", "metadata", "nodes", "routing_table", "routing_nodes", "master_node", "version"], "description"=>"Limit the information returned to the specified metrics"}}}]}, "params"=>{"local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}, "flat_settings"=>{"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"}, "wait_for_metadata_version"=>{"type"=>"number", "description"=>"Wait for the metadata version to be equal or greater than the specified metadata version"}, "wait_for_timeout"=>{"type"=>"time", "description"=>"The maximum time to wait for wait_for_metadata_version before timing out"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}}}
        request(api_name, api_spec, params)
      end

      # cluster.stats 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-stats.html", "description"=>"Returns high-level overview of cluster statistics."}
      def cluster_stats(params = {})
        api_name = 'cluster.stats'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-stats.html", "description"=>"Returns high-level overview of cluster statistics."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cluster/stats", "methods"=>["GET"]}, {"path"=>"/_cluster/stats/nodes/{node_id}", "methods"=>["GET"], "parts"=>{"node_id"=>{"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"}}}]}, "params"=>{"flat_settings"=>{"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}}}
        request(api_name, api_spec, params)
      end

      # count 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/search-count.html", "description"=>"Returns number of documents matching a query."}
      def count(params = {})
        api_name = 'count'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/search-count.html", "description"=>"Returns number of documents matching a query."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_count", "methods"=>["POST", "GET"]}, {"path"=>"/{index}/_count", "methods"=>["POST", "GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of indices to restrict the results"}}}, {"path"=>"/{index}/{type}/_count", "methods"=>["POST", "GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of indices to restrict the results"}, "type"=>{"type"=>"list", "description"=>"A comma-separated list of types to restrict the results"}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}]}, "params"=>{"ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "ignore_throttled"=>{"type"=>"boolean", "description"=>"Whether specified concrete, expanded or aliased indices should be ignored when throttled"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "min_score"=>{"type"=>"number", "description"=>"Include only documents with a specific `_score` value in the result"}, "preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"}, "routing"=>{"type"=>"list", "description"=>"A comma-separated list of specific routing values"}, "q"=>{"type"=>"string", "description"=>"Query in the Lucene query string syntax"}, "analyzer"=>{"type"=>"string", "description"=>"The analyzer to use for the query string"}, "analyze_wildcard"=>{"type"=>"boolean", "description"=>"Specify whether wildcard and prefix queries should be analyzed (default: false)"}, "default_operator"=>{"type"=>"enum", "options"=>["AND", "OR"], "default"=>"OR", "description"=>"The default operator for query string query (AND or OR)"}, "df"=>{"type"=>"string", "description"=>"The field to use as default where no field prefix is given in the query string"}, "lenient"=>{"type"=>"boolean", "description"=>"Specify whether format-based query failures (such as providing text to a numeric field) should be ignored"}, "terminate_after"=>{"type"=>"number", "description"=>"The maximum count for each shard, upon reaching which the query execution will terminate early"}}, "body"=>{"description"=>"A query to restrict the results specified with the Query DSL (optional)"}}
        request(api_name, api_spec, params)
      end

      # create 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-index_.html", "description"=>"Creates a new document in the index.\n\nReturns a 409 response when a document with a same ID already exists in the index."}
      def create(params = {})
        api_name = 'create'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-index_.html", "description"=>"Creates a new document in the index.\n\nReturns a 409 response when a document with a same ID already exists in the index."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_create/{id}", "methods"=>["PUT", "POST"], "parts"=>{"id"=>{"type"=>"string", "description"=>"Document ID"}, "index"=>{"type"=>"string", "description"=>"The name of the index"}}}, {"path"=>"/{index}/{type}/{id}/_create", "methods"=>["PUT", "POST"], "parts"=>{"id"=>{"type"=>"string", "description"=>"Document ID"}, "index"=>{"type"=>"string", "description"=>"The name of the index"}, "type"=>{"type"=>"string", "description"=>"The type of the document", "deprecated"=>true}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}]}, "params"=>{"wait_for_active_shards"=>{"type"=>"string", "description"=>"Sets the number of shard copies that must be active before proceeding with the index operation. Defaults to 1, meaning the primary shard only. Set to `all` for all shard copies, otherwise set to any non-negative value less than or equal to the total number of copies for the shard (number of replicas + 1)"}, "refresh"=>{"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` (the default) then do nothing with refreshes."}, "routing"=>{"type"=>"string", "description"=>"Specific routing value"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "version"=>{"type"=>"number", "description"=>"Explicit version number for concurrency control"}, "version_type"=>{"type"=>"enum", "options"=>["internal", "external", "external_gte"], "description"=>"Specific version type"}, "pipeline"=>{"type"=>"string", "description"=>"The pipeline id to preprocess incoming documents with"}}, "body"=>{"description"=>"The document", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # dangling_indices.delete_dangling_index 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-gateway-dangling-indices.html", "description"=>"Deletes the specified dangling index"}
      def dangling_indices_delete_dangling_index(params = {})
        api_name = 'dangling_indices.delete_dangling_index'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-gateway-dangling-indices.html", "description"=>"Deletes the specified dangling index"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_dangling/{index_uuid}", "methods"=>["DELETE"], "parts"=>{"index_uuid"=>{"type"=>"string", "description"=>"The UUID of the dangling index"}}}]}, "params"=>{"accept_data_loss"=>{"type"=>"boolean", "description"=>"Must be set to true in order to delete the dangling index"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}}}
        request(api_name, api_spec, params)
      end

      # dangling_indices.import_dangling_index 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-gateway-dangling-indices.html", "description"=>"Imports the specified dangling index"}
      def dangling_indices_import_dangling_index(params = {})
        api_name = 'dangling_indices.import_dangling_index'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-gateway-dangling-indices.html", "description"=>"Imports the specified dangling index"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_dangling/{index_uuid}", "methods"=>["POST"], "parts"=>{"index_uuid"=>{"type"=>"string", "description"=>"The UUID of the dangling index"}}}]}, "params"=>{"accept_data_loss"=>{"type"=>"boolean", "description"=>"Must be set to true in order to import the dangling index"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}}}
        request(api_name, api_spec, params)
      end

      # dangling_indices.list_dangling_indices 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-gateway-dangling-indices.html", "description"=>"Returns all dangling indices."}
      def dangling_indices_list_dangling_indices(params = {})
        api_name = 'dangling_indices.list_dangling_indices'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-gateway-dangling-indices.html", "description"=>"Returns all dangling indices."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_dangling", "methods"=>["GET"]}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # data_frame_transform_deprecated.delete_transform 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/delete-transform.html", "description"=>"Deletes an existing transform."}
      def data_frame_transform_deprecated_delete_transform(params = {})
        api_name = 'data_frame_transform_deprecated.delete_transform'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/delete-transform.html", "description"=>"Deletes an existing transform."}, "stability"=>"beta", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_data_frame/transforms/{transform_id}", "methods"=>["DELETE"], "parts"=>{"transform_id"=>{"type"=>"string", "description"=>"The id of the transform to delete"}}, "deprecated"=>{"version"=>"7.5.0", "description"=>"[_data_frame/transforms/] is deprecated, use [_transform/] in the future."}}]}, "params"=>{"force"=>{"type"=>"boolean", "required"=>false, "description"=>"When `true`, the transform is deleted regardless of its current state. The default value is `false`, meaning that the transform must be `stopped` before it can be deleted."}}}
        request(api_name, api_spec, params)
      end

      # data_frame_transform_deprecated.get_transform 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/get-transform.html", "description"=>"Retrieves configuration information for transforms."}
      def data_frame_transform_deprecated_get_transform(params = {})
        api_name = 'data_frame_transform_deprecated.get_transform'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/get-transform.html", "description"=>"Retrieves configuration information for transforms."}, "stability"=>"beta", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_data_frame/transforms/{transform_id}", "methods"=>["GET"], "parts"=>{"transform_id"=>{"type"=>"string", "description"=>"The id or comma delimited list of id expressions of the transforms to get, '_all' or '*' implies get all transforms"}}, "deprecated"=>{"version"=>"7.5.0", "description"=>"[_data_frame/transforms/] is deprecated, use [_transform/] in the future."}}, {"path"=>"/_data_frame/transforms", "methods"=>["GET"], "deprecated"=>{"version"=>"7.5.0", "description"=>"[_data_frame/transforms/] is deprecated, use [_transform/] in the future."}}]}, "params"=>{"from"=>{"type"=>"int", "required"=>false, "description"=>"skips a number of transform configs, defaults to 0"}, "size"=>{"type"=>"int", "required"=>false, "description"=>"specifies a max number of transforms to get, defaults to 100"}, "allow_no_match"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no transforms. (This includes `_all` string or when no transforms have been specified)"}, "exclude_generated"=>{"required"=>false, "type"=>"boolean", "default"=>false, "description"=>"Omits generated fields. Allows transform configurations to be easily copied between clusters and within the same cluster"}}}
        request(api_name, api_spec, params)
      end

      # data_frame_transform_deprecated.get_transform_stats 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/get-transform-stats.html", "description"=>"Retrieves usage information for transforms."}
      def data_frame_transform_deprecated_get_transform_stats(params = {})
        api_name = 'data_frame_transform_deprecated.get_transform_stats'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/get-transform-stats.html", "description"=>"Retrieves usage information for transforms."}, "stability"=>"beta", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_data_frame/transforms/{transform_id}/_stats", "methods"=>["GET"], "parts"=>{"transform_id"=>{"type"=>"string", "description"=>"The id of the transform for which to get stats. '_all' or '*' implies all transforms"}}, "deprecated"=>{"version"=>"7.5.0", "description"=>"[_data_frame/transforms/] is deprecated, use [_transform/] in the future."}}]}, "params"=>{"from"=>{"type"=>"number", "required"=>false, "description"=>"skips a number of transform stats, defaults to 0"}, "size"=>{"type"=>"number", "required"=>false, "description"=>"specifies a max number of transform stats to get, defaults to 100"}, "allow_no_match"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no transforms. (This includes `_all` string or when no transforms have been specified)"}}}
        request(api_name, api_spec, params)
      end

      # data_frame_transform_deprecated.preview_transform 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/preview-transform.html", "description"=>"Previews a transform."}
      def data_frame_transform_deprecated_preview_transform(params = {})
        api_name = 'data_frame_transform_deprecated.preview_transform'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/preview-transform.html", "description"=>"Previews a transform."}, "stability"=>"beta", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_data_frame/transforms/_preview", "methods"=>["POST"], "deprecated"=>{"version"=>"7.5.0", "description"=>"[_data_frame/transforms/] is deprecated, use [_transform/] in the future."}}]}, "body"=>{"description"=>"The definition for the transform to preview", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # data_frame_transform_deprecated.put_transform 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/put-transform.html", "description"=>"Instantiates a transform."}
      def data_frame_transform_deprecated_put_transform(params = {})
        api_name = 'data_frame_transform_deprecated.put_transform'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/put-transform.html", "description"=>"Instantiates a transform."}, "stability"=>"beta", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_data_frame/transforms/{transform_id}", "methods"=>["PUT"], "parts"=>{"transform_id"=>{"type"=>"string", "description"=>"The id of the new transform."}}, "deprecated"=>{"version"=>"7.5.0", "description"=>"[_data_frame/transforms/] is deprecated, use [_transform/] in the future."}}]}, "params"=>{"defer_validation"=>{"type"=>"boolean", "required"=>false, "description"=>"If validations should be deferred until transform starts, defaults to false."}}, "body"=>{"description"=>"The transform definition", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # data_frame_transform_deprecated.start_transform 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/start-transform.html", "description"=>"Starts one or more transforms."}
      def data_frame_transform_deprecated_start_transform(params = {})
        api_name = 'data_frame_transform_deprecated.start_transform'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/start-transform.html", "description"=>"Starts one or more transforms."}, "stability"=>"beta", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_data_frame/transforms/{transform_id}/_start", "methods"=>["POST"], "parts"=>{"transform_id"=>{"type"=>"string", "description"=>"The id of the transform to start"}}, "deprecated"=>{"version"=>"7.5.0", "description"=>"[_data_frame/transforms/] is deprecated, use [_transform/] in the future."}}]}, "params"=>{"timeout"=>{"type"=>"time", "required"=>false, "description"=>"Controls the time to wait for the transform to start"}}}
        request(api_name, api_spec, params)
      end

      # data_frame_transform_deprecated.stop_transform 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/stop-transform.html", "description"=>"Stops one or more transforms."}
      def data_frame_transform_deprecated_stop_transform(params = {})
        api_name = 'data_frame_transform_deprecated.stop_transform'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/stop-transform.html", "description"=>"Stops one or more transforms."}, "stability"=>"beta", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_data_frame/transforms/{transform_id}/_stop", "methods"=>["POST"], "parts"=>{"transform_id"=>{"type"=>"string", "description"=>"The id of the transform to stop"}}, "deprecated"=>{"version"=>"7.5.0", "description"=>"[_data_frame/transforms/] is deprecated, use [_transform/] in the future."}}]}, "params"=>{"wait_for_completion"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to wait for the transform to fully stop before returning or not. Default to false"}, "timeout"=>{"type"=>"time", "required"=>false, "description"=>"Controls the time to wait until the transform has stopped. Default to 30 seconds"}, "allow_no_match"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no transforms. (This includes `_all` string or when no transforms have been specified)"}}}
        request(api_name, api_spec, params)
      end

      # data_frame_transform_deprecated.update_transform 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/update-transform.html", "description"=>"Updates certain properties of a transform."}
      def data_frame_transform_deprecated_update_transform(params = {})
        api_name = 'data_frame_transform_deprecated.update_transform'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/update-transform.html", "description"=>"Updates certain properties of a transform."}, "stability"=>"beta", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_data_frame/transforms/{transform_id}/_update", "methods"=>["POST"], "parts"=>{"transform_id"=>{"type"=>"string", "required"=>true, "description"=>"The id of the transform."}}, "deprecated"=>{"version"=>"7.5.0", "description"=>"[_data_frame/transforms/] is deprecated, use [_transform/] in the future."}}]}, "params"=>{"defer_validation"=>{"type"=>"boolean", "required"=>false, "description"=>"If validations should be deferred until transform starts, defaults to false."}}, "body"=>{"description"=>"The update transform definition", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # delete 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-delete.html", "description"=>"Removes a document from the index."}
      def delete(params = {})
        api_name = 'delete'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-delete.html", "description"=>"Removes a document from the index."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_doc/{id}", "methods"=>["DELETE"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The document ID"}, "index"=>{"type"=>"string", "description"=>"The name of the index"}}}, {"path"=>"/{index}/{type}/{id}", "methods"=>["DELETE"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The document ID"}, "index"=>{"type"=>"string", "description"=>"The name of the index"}, "type"=>{"type"=>"string", "description"=>"The type of the document", "deprecated"=>true}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}]}, "params"=>{"wait_for_active_shards"=>{"type"=>"string", "description"=>"Sets the number of shard copies that must be active before proceeding with the delete operation. Defaults to 1, meaning the primary shard only. Set to `all` for all shard copies, otherwise set to any non-negative value less than or equal to the total number of copies for the shard (number of replicas + 1)"}, "refresh"=>{"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` (the default) then do nothing with refreshes."}, "routing"=>{"type"=>"string", "description"=>"Specific routing value"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "if_seq_no"=>{"type"=>"number", "description"=>"only perform the delete operation if the last operation that has changed the document has the specified sequence number"}, "if_primary_term"=>{"type"=>"number", "description"=>"only perform the delete operation if the last operation that has changed the document has the specified primary term"}, "version"=>{"type"=>"number", "description"=>"Explicit version number for concurrency control"}, "version_type"=>{"type"=>"enum", "options"=>["internal", "external", "external_gte", "force"], "description"=>"Specific version type"}}}
        request(api_name, api_spec, params)
      end

      # delete_by_query 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-delete-by-query.html", "description"=>"Deletes documents matching the provided query."}
      def delete_by_query(params = {})
        api_name = 'delete_by_query'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-delete-by-query.html", "description"=>"Deletes documents matching the provided query."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_delete_by_query", "methods"=>["POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices"}}}, {"path"=>"/{index}/{type}/_delete_by_query", "methods"=>["POST"], "parts"=>{"index"=>{"required"=>true, "type"=>"list", "description"=>"A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices"}, "type"=>{"type"=>"list", "description"=>"A comma-separated list of document types to search; leave empty to perform the operation on all types"}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}]}, "params"=>{"analyzer"=>{"type"=>"string", "description"=>"The analyzer to use for the query string"}, "analyze_wildcard"=>{"type"=>"boolean", "description"=>"Specify whether wildcard and prefix queries should be analyzed (default: false)"}, "default_operator"=>{"type"=>"enum", "options"=>["AND", "OR"], "default"=>"OR", "description"=>"The default operator for query string query (AND or OR)"}, "df"=>{"type"=>"string", "description"=>"The field to use as default where no field prefix is given in the query string"}, "from"=>{"type"=>"number", "description"=>"Starting offset (default: 0)"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "conflicts"=>{"type"=>"enum", "options"=>["abort", "proceed"], "default"=>"abort", "description"=>"What to do when the delete by query hits version conflicts?"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "lenient"=>{"type"=>"boolean", "description"=>"Specify whether format-based query failures (such as providing text to a numeric field) should be ignored"}, "preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"}, "q"=>{"type"=>"string", "description"=>"Query in the Lucene query string syntax"}, "routing"=>{"type"=>"list", "description"=>"A comma-separated list of specific routing values"}, "scroll"=>{"type"=>"time", "description"=>"Specify how long a consistent view of the index should be maintained for scrolled search"}, "search_type"=>{"type"=>"enum", "options"=>["query_then_fetch", "dfs_query_then_fetch"], "description"=>"Search operation type"}, "search_timeout"=>{"type"=>"time", "description"=>"Explicit timeout for each search request. Defaults to no timeout."}, "size"=>{"type"=>"number", "description"=>"Deprecated, please use `max_docs` instead"}, "max_docs"=>{"type"=>"number", "description"=>"Maximum number of documents to process (default: all documents)"}, "sort"=>{"type"=>"list", "description"=>"A comma-separated list of <field>:<direction> pairs"}, "_source"=>{"type"=>"list", "description"=>"True or false to return the _source field or not, or a list of fields to return"}, "_source_excludes"=>{"type"=>"list", "description"=>"A list of fields to exclude from the returned _source field"}, "_source_includes"=>{"type"=>"list", "description"=>"A list of fields to extract and return from the _source field"}, "terminate_after"=>{"type"=>"number", "description"=>"The maximum number of documents to collect for each shard, upon reaching which the query execution will terminate early."}, "stats"=>{"type"=>"list", "description"=>"Specific 'tag' of the request for logging and statistical purposes"}, "version"=>{"type"=>"boolean", "description"=>"Specify whether to return document version as part of a hit"}, "request_cache"=>{"type"=>"boolean", "description"=>"Specify if request cache should be used for this request or not, defaults to index level setting"}, "refresh"=>{"type"=>"boolean", "description"=>"Should the effected indexes be refreshed?"}, "timeout"=>{"type"=>"time", "default"=>"1m", "description"=>"Time each individual bulk request should wait for shards that are unavailable."}, "wait_for_active_shards"=>{"type"=>"string", "description"=>"Sets the number of shard copies that must be active before proceeding with the delete by query operation. Defaults to 1, meaning the primary shard only. Set to `all` for all shard copies, otherwise set to any non-negative value less than or equal to the total number of copies for the shard (number of replicas + 1)"}, "scroll_size"=>{"type"=>"number", "default"=>100, "description"=>"Size on the scroll request powering the delete by query"}, "wait_for_completion"=>{"type"=>"boolean", "default"=>true, "description"=>"Should the request should block until the delete by query is complete."}, "requests_per_second"=>{"type"=>"number", "default"=>0, "description"=>"The throttle for this request in sub-requests per second. -1 means no throttle."}, "slices"=>{"type"=>"number|string", "default"=>1, "description"=>"The number of slices this task should be divided into. Defaults to 1, meaning the task isn't sliced into subtasks. Can be set to `auto`."}}, "body"=>{"description"=>"The search definition using the Query DSL", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # delete_by_query_rethrottle 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/docs-delete-by-query.html", "description"=>"Changes the number of requests per second for a particular Delete By Query operation."}
      def delete_by_query_rethrottle(params = {})
        api_name = 'delete_by_query_rethrottle'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/docs-delete-by-query.html", "description"=>"Changes the number of requests per second for a particular Delete By Query operation."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_delete_by_query/{task_id}/_rethrottle", "methods"=>["POST"], "parts"=>{"task_id"=>{"type"=>"string", "description"=>"The task id to rethrottle"}}}]}, "params"=>{"requests_per_second"=>{"type"=>"number", "required"=>true, "description"=>"The throttle to set on this request in floating sub-requests per second. -1 means set no throttle."}}}
        request(api_name, api_spec, params)
      end

      # delete_script 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-scripting.html", "description"=>"Deletes a script."}
      def delete_script(params = {})
        api_name = 'delete_script'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-scripting.html", "description"=>"Deletes a script."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_scripts/{id}", "methods"=>["DELETE"], "parts"=>{"id"=>{"type"=>"string", "description"=>"Script ID"}}}]}, "params"=>{"timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}}}
        request(api_name, api_spec, params)
      end

      # enrich.delete_policy 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/delete-enrich-policy-api.html", "description"=>"Deletes an existing enrich policy and its enrich index."}
      def enrich_delete_policy(params = {})
        api_name = 'enrich.delete_policy'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/delete-enrich-policy-api.html", "description"=>"Deletes an existing enrich policy and its enrich index."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_enrich/policy/{name}", "methods"=>["DELETE"], "parts"=>{"name"=>{"type"=>"string", "description"=>"The name of the enrich policy"}}}]}}
        request(api_name, api_spec, params)
      end

      # enrich.execute_policy 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/execute-enrich-policy-api.html", "description"=>"Creates the enrich index for an existing enrich policy."}
      def enrich_execute_policy(params = {})
        api_name = 'enrich.execute_policy'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/execute-enrich-policy-api.html", "description"=>"Creates the enrich index for an existing enrich policy."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_enrich/policy/{name}/_execute", "methods"=>["PUT"], "parts"=>{"name"=>{"type"=>"string", "description"=>"The name of the enrich policy"}}}]}, "params"=>{"wait_for_completion"=>{"type"=>"boolean", "default"=>true, "description"=>"Should the request should block until the execution is complete."}}}
        request(api_name, api_spec, params)
      end

      # enrich.get_policy 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/get-enrich-policy-api.html", "description"=>"Gets information about an enrich policy."}
      def enrich_get_policy(params = {})
        api_name = 'enrich.get_policy'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/get-enrich-policy-api.html", "description"=>"Gets information about an enrich policy."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_enrich/policy/{name}", "methods"=>["GET"], "parts"=>{"name"=>{"type"=>"list", "description"=>"A comma-separated list of enrich policy names"}}}, {"path"=>"/_enrich/policy/", "methods"=>["GET"]}]}}
        request(api_name, api_spec, params)
      end

      # enrich.put_policy 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/put-enrich-policy-api.html", "description"=>"Creates a new enrich policy."}
      def enrich_put_policy(params = {})
        api_name = 'enrich.put_policy'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/put-enrich-policy-api.html", "description"=>"Creates a new enrich policy."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_enrich/policy/{name}", "methods"=>["PUT"], "parts"=>{"name"=>{"type"=>"string", "description"=>"The name of the enrich policy"}}}]}, "body"=>{"description"=>"The enrich policy to register", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # enrich.stats 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/enrich-stats-api.html", "description"=>"Gets enrich coordinator statistics and information about enrich policies that are currently executing."}
      def enrich_stats(params = {})
        api_name = 'enrich.stats'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/enrich-stats-api.html", "description"=>"Gets enrich coordinator statistics and information about enrich policies that are currently executing."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_enrich/_stats", "methods"=>["GET"]}]}}
        request(api_name, api_spec, params)
      end

      # eql.delete 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/eql-search-api.html", "description"=>"Deletes an async EQL search by ID. If the search is still running, the search request will be cancelled. Otherwise, the saved search results are deleted."}
      def eql_delete(params = {})
        api_name = 'eql.delete'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/eql-search-api.html", "description"=>"Deletes an async EQL search by ID. If the search is still running, the search request will be cancelled. Otherwise, the saved search results are deleted."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_eql/search/{id}", "methods"=>["DELETE"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The async search ID"}}}]}}
        request(api_name, api_spec, params)
      end

      # eql.get 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/eql-search-api.html", "description"=>"Returns async results from previously executed Event Query Language (EQL) search"}
      def eql_get(params = {})
        api_name = 'eql.get'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/eql-search-api.html", "description"=>"Returns async results from previously executed Event Query Language (EQL) search"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_eql/search/{id}", "methods"=>["GET"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The async search ID"}}}]}, "params"=>{"wait_for_completion_timeout"=>{"type"=>"time", "description"=>"Specify the time that the request should block waiting for the final response"}, "keep_alive"=>{"type"=>"time", "description"=>"Update the time interval in which the results (partial or final) for this search will be available", "default"=>"5d"}}}
        request(api_name, api_spec, params)
      end

      # eql.get_status 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/eql-search-api.html", "description"=>"Returns the status of a previously submitted async or stored Event Query Language (EQL) search"}
      def eql_get_status(params = {})
        api_name = 'eql.get_status'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/eql-search-api.html", "description"=>"Returns the status of a previously submitted async or stored Event Query Language (EQL) search"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_eql/search/status/{id}", "methods"=>["GET"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The async search ID"}}}]}}
        request(api_name, api_spec, params)
      end

      # eql.search 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/eql-search-api.html", "description"=>"Returns results matching a query expressed in Event Query Language (EQL)"}
      def eql_search(params = {})
        api_name = 'eql.search'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/eql-search-api.html", "description"=>"Returns results matching a query expressed in Event Query Language (EQL)"}, "stability"=>"stable", "visibility"=>"feature_flag", "feature_flag"=>"es.eql_feature_flag_registered", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_eql/search", "methods"=>["GET", "POST"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The name of the index to scope the operation"}}}]}, "params"=>{"wait_for_completion_timeout"=>{"type"=>"time", "description"=>"Specify the time that the request should block waiting for the final response"}, "keep_on_completion"=>{"type"=>"boolean", "description"=>"Control whether the response should be stored in the cluster if it completed within the provided [wait_for_completion] time (default: false)", "default"=>false}, "keep_alive"=>{"type"=>"time", "description"=>"Update the time interval in which the results (partial or final) for this search will be available", "default"=>"5d"}}, "body"=>{"description"=>"Eql request body. Use the `query` to limit the query scope.", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # exists 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-get.html", "description"=>"Returns information about whether a document exists in an index."}
      def exists(params = {})
        api_name = 'exists'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-get.html", "description"=>"Returns information about whether a document exists in an index."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_doc/{id}", "methods"=>["HEAD"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The document ID"}, "index"=>{"type"=>"string", "description"=>"The name of the index"}}}, {"path"=>"/{index}/{type}/{id}", "methods"=>["HEAD"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The document ID"}, "index"=>{"type"=>"string", "description"=>"The name of the index"}, "type"=>{"type"=>"string", "description"=>"The type of the document (use `_all` to fetch the first document matching the ID across all types)", "deprecated"=>true}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}]}, "params"=>{"stored_fields"=>{"type"=>"list", "description"=>"A comma-separated list of stored fields to return in the response"}, "preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"}, "realtime"=>{"type"=>"boolean", "description"=>"Specify whether to perform the operation in realtime or search mode"}, "refresh"=>{"type"=>"boolean", "description"=>"Refresh the shard containing the document before performing the operation"}, "routing"=>{"type"=>"string", "description"=>"Specific routing value"}, "_source"=>{"type"=>"list", "description"=>"True or false to return the _source field or not, or a list of fields to return"}, "_source_excludes"=>{"type"=>"list", "description"=>"A list of fields to exclude from the returned _source field"}, "_source_includes"=>{"type"=>"list", "description"=>"A list of fields to extract and return from the _source field"}, "version"=>{"type"=>"number", "description"=>"Explicit version number for concurrency control"}, "version_type"=>{"type"=>"enum", "options"=>["internal", "external", "external_gte", "force"], "description"=>"Specific version type"}}}
        request(api_name, api_spec, params)
      end
      alias :exists? :exists

      # exists_source 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-get.html", "description"=>"Returns information about whether a document source exists in an index."}
      def exists_source(params = {})
        api_name = 'exists_source'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-get.html", "description"=>"Returns information about whether a document source exists in an index."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_source/{id}", "methods"=>["HEAD"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The document ID"}, "index"=>{"type"=>"string", "description"=>"The name of the index"}}}, {"path"=>"/{index}/{type}/{id}/_source", "methods"=>["HEAD"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The document ID"}, "index"=>{"type"=>"string", "description"=>"The name of the index"}, "type"=>{"type"=>"string", "description"=>"The type of the document; deprecated and optional starting with 7.0", "deprecated"=>true}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}]}, "params"=>{"preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"}, "realtime"=>{"type"=>"boolean", "description"=>"Specify whether to perform the operation in realtime or search mode"}, "refresh"=>{"type"=>"boolean", "description"=>"Refresh the shard containing the document before performing the operation"}, "routing"=>{"type"=>"string", "description"=>"Specific routing value"}, "_source"=>{"type"=>"list", "description"=>"True or false to return the _source field or not, or a list of fields to return"}, "_source_excludes"=>{"type"=>"list", "description"=>"A list of fields to exclude from the returned _source field"}, "_source_includes"=>{"type"=>"list", "description"=>"A list of fields to extract and return from the _source field"}, "version"=>{"type"=>"number", "description"=>"Explicit version number for concurrency control"}, "version_type"=>{"type"=>"enum", "options"=>["internal", "external", "external_gte", "force"], "description"=>"Specific version type"}}}
        request(api_name, api_spec, params)
      end
      alias :exists_source? :exists_source

      # explain 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/search-explain.html", "description"=>"Returns information about why a specific matches (or doesn't match) a query."}
      def explain(params = {})
        api_name = 'explain'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/search-explain.html", "description"=>"Returns information about why a specific matches (or doesn't match) a query."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_explain/{id}", "methods"=>["GET", "POST"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The document ID"}, "index"=>{"type"=>"string", "description"=>"The name of the index"}}}, {"path"=>"/{index}/{type}/{id}/_explain", "methods"=>["GET", "POST"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The document ID"}, "index"=>{"type"=>"string", "description"=>"The name of the index"}, "type"=>{"type"=>"string", "description"=>"The type of the document", "deprecated"=>true}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}]}, "params"=>{"analyze_wildcard"=>{"type"=>"boolean", "description"=>"Specify whether wildcards and prefix queries in the query string query should be analyzed (default: false)"}, "analyzer"=>{"type"=>"string", "description"=>"The analyzer for the query string query"}, "default_operator"=>{"type"=>"enum", "options"=>["AND", "OR"], "default"=>"OR", "description"=>"The default operator for query string query (AND or OR)"}, "df"=>{"type"=>"string", "description"=>"The default field for query string query (default: _all)"}, "stored_fields"=>{"type"=>"list", "description"=>"A comma-separated list of stored fields to return in the response"}, "lenient"=>{"type"=>"boolean", "description"=>"Specify whether format-based query failures (such as providing text to a numeric field) should be ignored"}, "preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"}, "q"=>{"type"=>"string", "description"=>"Query in the Lucene query string syntax"}, "routing"=>{"type"=>"string", "description"=>"Specific routing value"}, "_source"=>{"type"=>"list", "description"=>"True or false to return the _source field or not, or a list of fields to return"}, "_source_excludes"=>{"type"=>"list", "description"=>"A list of fields to exclude from the returned _source field"}, "_source_includes"=>{"type"=>"list", "description"=>"A list of fields to extract and return from the _source field"}}, "body"=>{"description"=>"The query definition using the Query DSL"}}
        request(api_name, api_spec, params)
      end

      # features.get_features 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/get-features-api.html", "description"=>"Gets a list of features which can be included in snapshots using the feature_states field when creating a snapshot"}
      def features_get_features(params = {})
        api_name = 'features.get_features'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/get-features-api.html", "description"=>"Gets a list of features which can be included in snapshots using the feature_states field when creating a snapshot"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_features", "methods"=>["GET"]}]}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}}}
        request(api_name, api_spec, params)
      end

      # features.reset_features 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description"=>"Resets the internal state of features, usually by deleting system indices"}
      def features_reset_features(params = {})
        api_name = 'features.reset_features'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description"=>"Resets the internal state of features, usually by deleting system indices"}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_features/_reset", "methods"=>["POST"]}]}}
        request(api_name, api_spec, params)
      end

      # field_caps 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/search-field-caps.html", "description"=>"Returns the information about the capabilities of fields among multiple indices."}
      def field_caps(params = {})
        api_name = 'field_caps'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/search-field-caps.html", "description"=>"Returns the information about the capabilities of fields among multiple indices."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_field_caps", "methods"=>["GET", "POST"]}, {"path"=>"/{index}/_field_caps", "methods"=>["GET", "POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"}}}]}, "params"=>{"fields"=>{"type"=>"list", "description"=>"A comma-separated list of field names"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "include_unmapped"=>{"type"=>"boolean", "default"=>false, "description"=>"Indicates whether unmapped fields should be included in the response."}}, "body"=>{"description"=>"An index filter specified with the Query DSL"}}
        request(api_name, api_spec, params)
      end

      # fleet.global_checkpoints 
      # {"url"=>nil, "description"=>"Returns the current global checkpoints for an index. This API is design for internal use by the fleet server project."}
      def fleet_global_checkpoints(params = {})
        api_name = 'fleet.global_checkpoints'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>nil, "description"=>"Returns the current global checkpoints for an index. This API is design for internal use by the fleet server project."}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_fleet/global_checkpoints", "methods"=>["GET"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The name of the index."}}}]}, "params"=>{"wait_for_advance"=>{"type"=>"boolean", "description"=>"Whether to wait for the global checkpoint to advance past the specified current checkpoints", "default"=>"false"}, "wait_for_index"=>{"type"=>"boolean", "description"=>"Whether to wait for the target index to exist and all primary shards be active", "default"=>"false"}, "checkpoints"=>{"type"=>"list", "description"=>"Comma separated list of checkpoints", "default"=>""}, "timeout"=>{"type"=>"time", "description"=>"Timeout to wait for global checkpoint to advance", "default"=>"30s"}}}
        request(api_name, api_spec, params)
      end

      # get 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-get.html", "description"=>"Returns a document."}
      def get(params = {})
        api_name = 'get'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-get.html", "description"=>"Returns a document."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_doc/{id}", "methods"=>["GET"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The document ID"}, "index"=>{"type"=>"string", "description"=>"The name of the index"}}}, {"path"=>"/{index}/{type}/{id}", "methods"=>["GET"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The document ID"}, "index"=>{"type"=>"string", "description"=>"The name of the index"}, "type"=>{"type"=>"string", "description"=>"The type of the document (use `_all` to fetch the first document matching the ID across all types)", "deprecated"=>true}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}]}, "params"=>{"stored_fields"=>{"type"=>"list", "description"=>"A comma-separated list of stored fields to return in the response"}, "preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"}, "realtime"=>{"type"=>"boolean", "description"=>"Specify whether to perform the operation in realtime or search mode"}, "refresh"=>{"type"=>"boolean", "description"=>"Refresh the shard containing the document before performing the operation"}, "routing"=>{"type"=>"string", "description"=>"Specific routing value"}, "_source"=>{"type"=>"list", "description"=>"True or false to return the _source field or not, or a list of fields to return"}, "_source_excludes"=>{"type"=>"list", "description"=>"A list of fields to exclude from the returned _source field"}, "_source_includes"=>{"type"=>"list", "description"=>"A list of fields to extract and return from the _source field"}, "version"=>{"type"=>"number", "description"=>"Explicit version number for concurrency control"}, "version_type"=>{"type"=>"enum", "options"=>["internal", "external", "external_gte", "force"], "description"=>"Specific version type"}}}
        request(api_name, api_spec, params)
      end

      # get_script 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-scripting.html", "description"=>"Returns a script."}
      def get_script(params = {})
        api_name = 'get_script'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-scripting.html", "description"=>"Returns a script."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_scripts/{id}", "methods"=>["GET"], "parts"=>{"id"=>{"type"=>"string", "description"=>"Script ID"}}}]}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}}}
        request(api_name, api_spec, params)
      end

      # get_script_context 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/painless/master/painless-contexts.html", "description"=>"Returns all script contexts."}
      def get_script_context(params = {})
        api_name = 'get_script_context'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/painless/master/painless-contexts.html", "description"=>"Returns all script contexts."}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_script_context", "methods"=>["GET"]}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # get_script_languages 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-scripting.html", "description"=>"Returns available script types, languages and contexts"}
      def get_script_languages(params = {})
        api_name = 'get_script_languages'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-scripting.html", "description"=>"Returns available script types, languages and contexts"}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_script_language", "methods"=>["GET"]}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # get_source 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-get.html", "description"=>"Returns the source of a document."}
      def get_source(params = {})
        api_name = 'get_source'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-get.html", "description"=>"Returns the source of a document."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_source/{id}", "methods"=>["GET"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The document ID"}, "index"=>{"type"=>"string", "description"=>"The name of the index"}}}, {"path"=>"/{index}/{type}/{id}/_source", "methods"=>["GET"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The document ID"}, "index"=>{"type"=>"string", "description"=>"The name of the index"}, "type"=>{"type"=>"string", "description"=>"The type of the document; deprecated and optional starting with 7.0", "deprecated"=>true}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}]}, "params"=>{"preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"}, "realtime"=>{"type"=>"boolean", "description"=>"Specify whether to perform the operation in realtime or search mode"}, "refresh"=>{"type"=>"boolean", "description"=>"Refresh the shard containing the document before performing the operation"}, "routing"=>{"type"=>"string", "description"=>"Specific routing value"}, "_source"=>{"type"=>"list", "description"=>"True or false to return the _source field or not, or a list of fields to return"}, "_source_excludes"=>{"type"=>"list", "description"=>"A list of fields to exclude from the returned _source field"}, "_source_includes"=>{"type"=>"list", "description"=>"A list of fields to extract and return from the _source field"}, "version"=>{"type"=>"number", "description"=>"Explicit version number for concurrency control"}, "version_type"=>{"type"=>"enum", "options"=>["internal", "external", "external_gte", "force"], "description"=>"Specific version type"}}}
        request(api_name, api_spec, params)
      end

      # graph.explore 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/graph-explore-api.html", "description"=>"Explore extracted and summarized information about the documents and terms in an index."}
      def graph_explore(params = {})
        api_name = 'graph.explore'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/graph-explore-api.html", "description"=>"Explore extracted and summarized information about the documents and terms in an index."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_graph/explore", "methods"=>["GET", "POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices"}}}, {"path"=>"/{index}/{type}/_graph/explore", "methods"=>["GET", "POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices"}, "type"=>{"type"=>"list", "description"=>"A comma-separated list of document types to search; leave empty to perform the operation on all types", "deprecated"=>true}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}]}, "params"=>{"routing"=>{"type"=>"string", "description"=>"Specific routing value"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}}, "body"=>{"description"=>"Graph Query DSL"}}
        request(api_name, api_spec, params)
      end

      # ilm.delete_lifecycle 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-delete-lifecycle.html", "description"=>"Deletes the specified lifecycle policy definition. A currently used policy cannot be deleted."}
      def ilm_delete_lifecycle(params = {})
        api_name = 'ilm.delete_lifecycle'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-delete-lifecycle.html", "description"=>"Deletes the specified lifecycle policy definition. A currently used policy cannot be deleted."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ilm/policy/{policy}", "methods"=>["DELETE"], "parts"=>{"policy"=>{"type"=>"string", "description"=>"The name of the index lifecycle policy"}}}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # ilm.explain_lifecycle 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-explain-lifecycle.html", "description"=>"Retrieves information about the index's current lifecycle state, such as the currently executing phase, action, and step."}
      def ilm_explain_lifecycle(params = {})
        api_name = 'ilm.explain_lifecycle'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-explain-lifecycle.html", "description"=>"Retrieves information about the index's current lifecycle state, such as the currently executing phase, action, and step."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_ilm/explain", "methods"=>["GET"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The name of the index to explain"}}}]}, "params"=>{"only_managed"=>{"type"=>"boolean", "description"=>"filters the indices included in the response to ones managed by ILM"}, "only_errors"=>{"type"=>"boolean", "description"=>"filters the indices included in the response to ones in an ILM error state, implies only_managed"}}}
        request(api_name, api_spec, params)
      end

      # ilm.get_lifecycle 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-get-lifecycle.html", "description"=>"Returns the specified policy definition. Includes the policy version and last modified date."}
      def ilm_get_lifecycle(params = {})
        api_name = 'ilm.get_lifecycle'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-get-lifecycle.html", "description"=>"Returns the specified policy definition. Includes the policy version and last modified date."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ilm/policy/{policy}", "methods"=>["GET"], "parts"=>{"policy"=>{"type"=>"string", "description"=>"The name of the index lifecycle policy"}}}, {"path"=>"/_ilm/policy", "methods"=>["GET"]}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # ilm.get_status 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-get-status.html", "description"=>"Retrieves the current index lifecycle management (ILM) status."}
      def ilm_get_status(params = {})
        api_name = 'ilm.get_status'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-get-status.html", "description"=>"Retrieves the current index lifecycle management (ILM) status."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ilm/status", "methods"=>["GET"]}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # ilm.migrate_to_data_tiers 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-migrate-to-data-tiers.html", "description"=>"Migrates the indices and ILM policies away from custom node attribute allocation routing to data tiers routing"}
      def ilm_migrate_to_data_tiers(params = {})
        api_name = 'ilm.migrate_to_data_tiers'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-migrate-to-data-tiers.html", "description"=>"Migrates the indices and ILM policies away from custom node attribute allocation routing to data tiers routing"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ilm/migrate_to_data_tiers", "methods"=>["POST"]}]}, "params"=>{"dry_run"=>{"type"=>"boolean", "description"=>"If set to true it will simulate the migration, providing a way to retrieve the ILM policies and indices that need to be migrated. The default is false"}}, "body"=>{"description"=>"Optionally specify a legacy index template name to delete and optionally specify a node attribute name used for index shard routing (defaults to \"data\")", "required"=>false}}
        request(api_name, api_spec, params)
      end

      # ilm.move_to_step 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-move-to-step.html", "description"=>"Manually moves an index into the specified step and executes that step."}
      def ilm_move_to_step(params = {})
        api_name = 'ilm.move_to_step'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-move-to-step.html", "description"=>"Manually moves an index into the specified step and executes that step."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ilm/move/{index}", "methods"=>["POST"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The name of the index whose lifecycle step is to change"}}}]}, "params"=>{}, "body"=>{"description"=>"The new lifecycle step to move to"}}
        request(api_name, api_spec, params)
      end

      # ilm.put_lifecycle 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-put-lifecycle.html", "description"=>"Creates a lifecycle policy"}
      def ilm_put_lifecycle(params = {})
        api_name = 'ilm.put_lifecycle'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-put-lifecycle.html", "description"=>"Creates a lifecycle policy"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ilm/policy/{policy}", "methods"=>["PUT"], "parts"=>{"policy"=>{"type"=>"string", "description"=>"The name of the index lifecycle policy"}}}]}, "params"=>{}, "body"=>{"description"=>"The lifecycle policy definition to register"}}
        request(api_name, api_spec, params)
      end

      # ilm.remove_policy 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-remove-policy.html", "description"=>"Removes the assigned lifecycle policy and stops managing the specified index"}
      def ilm_remove_policy(params = {})
        api_name = 'ilm.remove_policy'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-remove-policy.html", "description"=>"Removes the assigned lifecycle policy and stops managing the specified index"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_ilm/remove", "methods"=>["POST"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The name of the index to remove policy on"}}}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # ilm.retry 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-retry-policy.html", "description"=>"Retries executing the policy for an index that is in the ERROR step."}
      def ilm_retry(params = {})
        api_name = 'ilm.retry'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-retry-policy.html", "description"=>"Retries executing the policy for an index that is in the ERROR step."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_ilm/retry", "methods"=>["POST"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The name of the indices (comma-separated) whose failed lifecycle step is to be retry"}}}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # ilm.start 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-start.html", "description"=>"Start the index lifecycle management (ILM) plugin."}
      def ilm_start(params = {})
        api_name = 'ilm.start'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-start.html", "description"=>"Start the index lifecycle management (ILM) plugin."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ilm/start", "methods"=>["POST"]}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # ilm.stop 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-stop.html", "description"=>"Halts all lifecycle management operations and stops the index lifecycle management (ILM) plugin"}
      def ilm_stop(params = {})
        api_name = 'ilm.stop'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-stop.html", "description"=>"Halts all lifecycle management operations and stops the index lifecycle management (ILM) plugin"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ilm/stop", "methods"=>["POST"]}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # index 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-index_.html", "description"=>"Creates or updates a document in an index."}
      def index(params = {})
        api_name = 'index'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-index_.html", "description"=>"Creates or updates a document in an index."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_doc/{id}", "methods"=>["PUT", "POST"], "parts"=>{"id"=>{"type"=>"string", "description"=>"Document ID"}, "index"=>{"type"=>"string", "description"=>"The name of the index"}}}, {"path"=>"/{index}/_doc", "methods"=>["POST"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The name of the index"}}}, {"path"=>"/{index}/{type}", "methods"=>["POST"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The name of the index"}, "type"=>{"type"=>"string", "description"=>"The type of the document", "deprecated"=>true}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}, {"path"=>"/{index}/{type}/{id}", "methods"=>["PUT", "POST"], "parts"=>{"id"=>{"type"=>"string", "description"=>"Document ID"}, "index"=>{"type"=>"string", "description"=>"The name of the index"}, "type"=>{"type"=>"string", "description"=>"The type of the document", "deprecated"=>true}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}]}, "params"=>{"wait_for_active_shards"=>{"type"=>"string", "description"=>"Sets the number of shard copies that must be active before proceeding with the index operation. Defaults to 1, meaning the primary shard only. Set to `all` for all shard copies, otherwise set to any non-negative value less than or equal to the total number of copies for the shard (number of replicas + 1)"}, "op_type"=>{"type"=>"enum", "options"=>["index", "create"], "description"=>"Explicit operation type. Defaults to `index` for requests with an explicit document ID, and to `create`for requests without an explicit document ID"}, "refresh"=>{"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` (the default) then do nothing with refreshes."}, "routing"=>{"type"=>"string", "description"=>"Specific routing value"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "version"=>{"type"=>"number", "description"=>"Explicit version number for concurrency control"}, "version_type"=>{"type"=>"enum", "options"=>["internal", "external", "external_gte"], "description"=>"Specific version type"}, "if_seq_no"=>{"type"=>"number", "description"=>"only perform the index operation if the last operation that has changed the document has the specified sequence number"}, "if_primary_term"=>{"type"=>"number", "description"=>"only perform the index operation if the last operation that has changed the document has the specified primary term"}, "pipeline"=>{"type"=>"string", "description"=>"The pipeline id to preprocess incoming documents with"}, "require_alias"=>{"type"=>"boolean", "description"=>"When true, requires destination to be an alias. Default is false"}}, "body"=>{"description"=>"The document", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # indices.add_block 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/index-modules-blocks.html", "description"=>"Adds a block to an index."}
      def indices_add_block(params = {})
        api_name = 'indices.add_block'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/index-modules-blocks.html", "description"=>"Adds a block to an index."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_block/{block}", "methods"=>["PUT"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma separated list of indices to add a block to"}, "block"=>{"type"=>"string", "description"=>"The block to add (one of read, write, read_only or metadata)"}}}]}, "params"=>{"timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}}}
        request(api_name, api_spec, params)
      end

      # indices.analyze 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-analyze.html", "description"=>"Performs the analysis process on a text and return the tokens breakdown of the text."}
      def indices_analyze(params = {})
        api_name = 'indices.analyze'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-analyze.html", "description"=>"Performs the analysis process on a text and return the tokens breakdown of the text."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_analyze", "methods"=>["GET", "POST"]}, {"path"=>"/{index}/_analyze", "methods"=>["GET", "POST"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The name of the index to scope the operation"}}}]}, "params"=>{"index"=>{"type"=>"string", "description"=>"The name of the index to scope the operation"}}, "body"=>{"description"=>"Define analyzer/tokenizer parameters and the text on which the analysis should be performed"}}
        request(api_name, api_spec, params)
      end

      # indices.clear_cache 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-clearcache.html", "description"=>"Clears all or specific caches for one or more indices."}
      def indices_clear_cache(params = {})
        api_name = 'indices.clear_cache'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-clearcache.html", "description"=>"Clears all or specific caches for one or more indices."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_cache/clear", "methods"=>["POST"]}, {"path"=>"/{index}/_cache/clear", "methods"=>["POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index name to limit the operation"}}}]}, "params"=>{"fielddata"=>{"type"=>"boolean", "description"=>"Clear field data"}, "fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields to clear when using the `fielddata` parameter (default: all)"}, "query"=>{"type"=>"boolean", "description"=>"Clear query caches"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "index"=>{"type"=>"list", "description"=>"A comma-separated list of index name to limit the operation"}, "request"=>{"type"=>"boolean", "description"=>"Clear request cache"}}}
        request(api_name, api_spec, params)
      end

      # indices.clone 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-clone-index.html", "description"=>"Clones an index"}
      def indices_clone(params = {})
        api_name = 'indices.clone'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-clone-index.html", "description"=>"Clones an index"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_clone/{target}", "methods"=>["PUT", "POST"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The name of the source index to clone"}, "target"=>{"type"=>"string", "description"=>"The name of the target index to clone into"}}}]}, "params"=>{"timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}, "wait_for_active_shards"=>{"type"=>"string", "description"=>"Set the number of active shards to wait for on the cloned index before the operation returns."}}, "body"=>{"description"=>"The configuration for the target index (`settings` and `aliases`)"}}
        request(api_name, api_spec, params)
      end

      # indices.close 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-open-close.html", "description"=>"Closes an index."}
      def indices_close(params = {})
        api_name = 'indices.close'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-open-close.html", "description"=>"Closes an index."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_close", "methods"=>["POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma separated list of indices to close"}}}]}, "params"=>{"timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "wait_for_active_shards"=>{"type"=>"string", "description"=>"Sets the number of active shards to wait for before the operation returns. Set to `index-setting` to wait according to the index setting `index.write.wait_for_active_shards`, or `all` to wait for all shards, or an integer. Defaults to `0`."}}}
        request(api_name, api_spec, params)
      end

      # indices.create 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-create-index.html", "description"=>"Creates an index with optional settings and mappings."}
      def indices_create(params = {})
        api_name = 'indices.create'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-create-index.html", "description"=>"Creates an index with optional settings and mappings."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}", "methods"=>["PUT"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The name of the index"}}}]}, "params"=>{"include_type_name"=>{"type"=>"boolean", "description"=>"Whether a type should be expected in the body of the mappings."}, "wait_for_active_shards"=>{"type"=>"string", "description"=>"Set the number of active shards to wait for before the operation returns."}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}}, "body"=>{"description"=>"The configuration for the index (`settings` and `mappings`)"}}
        request(api_name, api_spec, params)
      end

      # indices.create_data_stream 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/data-streams.html", "description"=>"Creates a data stream"}
      def indices_create_data_stream(params = {})
        api_name = 'indices.create_data_stream'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/data-streams.html", "description"=>"Creates a data stream"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_data_stream/{name}", "methods"=>["PUT"], "parts"=>{"name"=>{"type"=>"string", "description"=>"The name of the data stream"}}}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # indices.data_streams_stats 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/data-streams.html", "description"=>"Provides statistics on operations happening in a data stream."}
      def indices_data_streams_stats(params = {})
        api_name = 'indices.data_streams_stats'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/data-streams.html", "description"=>"Provides statistics on operations happening in a data stream."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_data_stream/_stats", "methods"=>["GET"]}, {"path"=>"/_data_stream/{name}/_stats", "methods"=>["GET"], "parts"=>{"name"=>{"type"=>"list", "description"=>"A comma-separated list of data stream names; use `_all` or empty string to perform the operation on all data streams"}}}]}}
        request(api_name, api_spec, params)
      end

      # indices.delete 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-delete-index.html", "description"=>"Deletes an index."}
      def indices_delete(params = {})
        api_name = 'indices.delete'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-delete-index.html", "description"=>"Deletes an index."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}", "methods"=>["DELETE"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of indices to delete; use `_all` or `*` string to delete all indices"}}}]}, "params"=>{"timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Ignore unavailable indexes (default: false)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Ignore if a wildcard expression resolves to no concrete indices (default: false)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open,closed", "description"=>"Whether wildcard expressions should get expanded to open, closed, or hidden indices"}}}
        request(api_name, api_spec, params)
      end

      # indices.delete_alias 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html", "description"=>"Deletes an alias."}
      def indices_delete_alias(params = {})
        api_name = 'indices.delete_alias'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html", "description"=>"Deletes an alias."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_alias/{name}", "methods"=>["DELETE"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names (supports wildcards); use `_all` for all indices"}, "name"=>{"type"=>"list", "description"=>"A comma-separated list of aliases to delete (supports wildcards); use `_all` to delete all aliases for the specified indices."}}}, {"path"=>"/{index}/_aliases/{name}", "methods"=>["DELETE"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names (supports wildcards); use `_all` for all indices"}, "name"=>{"type"=>"list", "description"=>"A comma-separated list of aliases to delete (supports wildcards); use `_all` to delete all aliases for the specified indices."}}}]}, "params"=>{"timeout"=>{"type"=>"time", "description"=>"Explicit timestamp for the document"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}}}
        request(api_name, api_spec, params)
      end

      # indices.delete_data_stream 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/data-streams.html", "description"=>"Deletes a data stream."}
      def indices_delete_data_stream(params = {})
        api_name = 'indices.delete_data_stream'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/data-streams.html", "description"=>"Deletes a data stream."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_data_stream/{name}", "methods"=>["DELETE"], "parts"=>{"name"=>{"type"=>"list", "description"=>"A comma-separated list of data streams to delete; use `*` to delete all data streams"}}}]}, "params"=>{"expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether wildcard expressions should get expanded to open or closed indices (default: open)"}}}
        request(api_name, api_spec, params)
      end

      # indices.delete_index_template 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description"=>"Deletes an index template."}
      def indices_delete_index_template(params = {})
        api_name = 'indices.delete_index_template'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description"=>"Deletes an index template."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_index_template/{name}", "methods"=>["DELETE"], "parts"=>{"name"=>{"type"=>"string", "description"=>"The name of the template"}}}]}, "params"=>{"timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}}}
        request(api_name, api_spec, params)
      end

      # indices.delete_template 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description"=>"Deletes an index template."}
      def indices_delete_template(params = {})
        api_name = 'indices.delete_template'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description"=>"Deletes an index template."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_template/{name}", "methods"=>["DELETE"], "parts"=>{"name"=>{"type"=>"string", "description"=>"The name of the template"}}}]}, "params"=>{"timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}}}
        request(api_name, api_spec, params)
      end

      # indices.disk_usage 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-disk-usage.html", "description"=>"Analyzes the disk usage of each field of an index or data stream"}
      def indices_disk_usage(params = {})
        api_name = 'indices.disk_usage'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-disk-usage.html", "description"=>"Analyzes the disk usage of each field of an index or data stream"}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_disk_usage", "methods"=>["POST"], "parts"=>{"index"=>{"type"=>"string", "description"=>"Comma-separated list of indices or data streams to analyze the disk usage"}}}]}, "params"=>{"run_expensive_tasks"=>{"type"=>"boolean", "description"=>"Must be set to [true] in order for the task to be performed. Defaults to false."}, "flush"=>{"type"=>"boolean", "description"=>"Whether flush or not before analyzing the index disk usage. Defaults to true"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}}}
        request(api_name, api_spec, params)
      end

      # indices.exists 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-exists.html", "description"=>"Returns information about whether a particular index exists."}
      def indices_exists(params = {})
        api_name = 'indices.exists'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-exists.html", "description"=>"Returns information about whether a particular index exists."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}", "methods"=>["HEAD"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names"}}}]}, "params"=>{"local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Ignore unavailable indexes (default: false)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Ignore if a wildcard expression resolves to no concrete indices (default: false)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether wildcard expressions should get expanded to open or closed indices (default: open)"}, "flat_settings"=>{"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"}, "include_defaults"=>{"type"=>"boolean", "description"=>"Whether to return all default setting for each of the indices.", "default"=>false}}}
        request(api_name, api_spec, params)
      end
      alias :indices_exists? :indices_exists

      # indices.exists_alias 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html", "description"=>"Returns information about whether a particular alias exists."}
      def indices_exists_alias(params = {})
        api_name = 'indices.exists_alias'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html", "description"=>"Returns information about whether a particular alias exists."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_alias/{name}", "methods"=>["HEAD"], "parts"=>{"name"=>{"type"=>"list", "description"=>"A comma-separated list of alias names to return"}}}, {"path"=>"/{index}/_alias/{name}", "methods"=>["HEAD"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to filter aliases"}, "name"=>{"type"=>"list", "description"=>"A comma-separated list of alias names to return"}}}]}, "params"=>{"ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"all", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}}}
        request(api_name, api_spec, params)
      end
      alias :indices_exists_alias? :indices_exists_alias

      # indices.exists_index_template 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description"=>"Returns information about whether a particular index template exists."}
      def indices_exists_index_template(params = {})
        api_name = 'indices.exists_index_template'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description"=>"Returns information about whether a particular index template exists."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_index_template/{name}", "methods"=>["HEAD"], "parts"=>{"name"=>{"type"=>"string", "description"=>"The name of the template"}}}]}, "params"=>{"flat_settings"=>{"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}}}
        request(api_name, api_spec, params)
      end
      alias :indices_exists_index_template? :indices_exists_index_template

      # indices.exists_template 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description"=>"Returns information about whether a particular index template exists."}
      def indices_exists_template(params = {})
        api_name = 'indices.exists_template'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description"=>"Returns information about whether a particular index template exists."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_template/{name}", "methods"=>["HEAD"], "parts"=>{"name"=>{"type"=>"list", "description"=>"The comma separated names of the index templates"}}}]}, "params"=>{"flat_settings"=>{"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}}}
        request(api_name, api_spec, params)
      end
      alias :indices_exists_template? :indices_exists_template

      # indices.exists_type 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-types-exists.html", "description"=>"Returns information about whether a particular document type exists. (DEPRECATED)"}
      def indices_exists_type(params = {})
        api_name = 'indices.exists_type'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-types-exists.html", "description"=>"Returns information about whether a particular document type exists. (DEPRECATED)"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_mapping/{type}", "methods"=>["HEAD"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` to check the types across all indices"}, "type"=>{"type"=>"list", "description"=>"A comma-separated list of document types to check"}}}]}, "params"=>{"ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}}}
        request(api_name, api_spec, params)
      end
      alias :indices_exists_type? :indices_exists_type

      # indices.field_usage_stats 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/field-usage-stats.html", "description"=>"Returns the field usage stats for each field of an index"}
      def indices_field_usage_stats(params = {})
        api_name = 'indices.field_usage_stats'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/field-usage-stats.html", "description"=>"Returns the field usage stats for each field of an index"}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_field_usage_stats", "methods"=>["GET"], "parts"=>{"index"=>{"type"=>"string", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"}}}]}, "params"=>{"fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields to include in the stats if only a subset of fields should be returned (supports wildcards)"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}}}
        request(api_name, api_spec, params)
      end

      # indices.flush 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-flush.html", "description"=>"Performs the flush operation on one or more indices."}
      def indices_flush(params = {})
        api_name = 'indices.flush'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-flush.html", "description"=>"Performs the flush operation on one or more indices."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_flush", "methods"=>["POST", "GET"]}, {"path"=>"/{index}/_flush", "methods"=>["POST", "GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string for all indices"}}}]}, "params"=>{"force"=>{"type"=>"boolean", "description"=>"Whether a flush should be forced even if it is not necessarily needed ie. if no changes will be committed to the index. This is useful if transaction log IDs should be incremented even if no uncommitted changes are present. (This setting can be considered as internal)"}, "wait_if_ongoing"=>{"type"=>"boolean", "description"=>"If set to true the flush operation will block until the flush can be executed if another flush operation is already executing. The default is true. If set to false the flush will be skipped iff if another flush operation is already running."}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}}}
        request(api_name, api_spec, params)
      end

      # indices.flush_synced 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-synced-flush-api.html", "description"=>"Performs a synced flush operation on one or more indices. Synced flush is deprecated and will be removed in 8.0. Use flush instead"}
      def indices_flush_synced(params = {})
        api_name = 'indices.flush_synced'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-synced-flush-api.html", "description"=>"Performs a synced flush operation on one or more indices. Synced flush is deprecated and will be removed in 8.0. Use flush instead"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_flush/synced", "methods"=>["POST", "GET"], "deprecated"=>{"version"=>"7.6.0", "description"=>"Synced flush is deprecated and will be removed in 8.0. Use flush instead."}}, {"path"=>"/{index}/_flush/synced", "methods"=>["POST", "GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string for all indices"}}, "deprecated"=>{"version"=>"7.6.0", "description"=>"Synced flush is deprecated and will be removed in 8.0. Use flush instead."}}]}, "params"=>{"ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}}}
        request(api_name, api_spec, params)
      end

      # indices.forcemerge 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-forcemerge.html", "description"=>"Performs the force merge operation on one or more indices."}
      def indices_forcemerge(params = {})
        api_name = 'indices.forcemerge'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-forcemerge.html", "description"=>"Performs the force merge operation on one or more indices."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_forcemerge", "methods"=>["POST"]}, {"path"=>"/{index}/_forcemerge", "methods"=>["POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"}}}]}, "params"=>{"flush"=>{"type"=>"boolean", "description"=>"Specify whether the index should be flushed after performing the operation (default: true)"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "max_num_segments"=>{"type"=>"number", "description"=>"The number of segments the index should be merged into (default: dynamic)"}, "only_expunge_deletes"=>{"type"=>"boolean", "description"=>"Specify whether the operation should only expunge deleted documents"}}}
        request(api_name, api_spec, params)
      end

      # indices.freeze 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/freeze-index-api.html", "description"=>"Freezes an index. A frozen index has almost no overhead on the cluster (except for maintaining its metadata in memory) and is read-only."}
      def indices_freeze(params = {})
        api_name = 'indices.freeze'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/freeze-index-api.html", "description"=>"Freezes an index. A frozen index has almost no overhead on the cluster (except for maintaining its metadata in memory) and is read-only."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_freeze", "methods"=>["POST"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The name of the index to freeze"}}, "deprecated"=>{"version"=>"7.14.0", "description"=>"Frozen indices are deprecated because they provide no benefit given improvements in heap memory utilization. They will be removed in a future release."}}]}, "params"=>{"timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"closed", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "wait_for_active_shards"=>{"type"=>"string", "description"=>"Sets the number of active shards to wait for before the operation returns."}}}
        request(api_name, api_spec, params)
      end

      # indices.get 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-index.html", "description"=>"Returns information about one or more indices."}
      def indices_get(params = {})
        api_name = 'indices.get'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-index.html", "description"=>"Returns information about one or more indices."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}", "methods"=>["GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names"}}}]}, "params"=>{"include_type_name"=>{"type"=>"boolean", "description"=>"Whether to add the type name to the response (default: false)"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Ignore unavailable indexes (default: false)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Ignore if a wildcard expression resolves to no concrete indices (default: false)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether wildcard expressions should get expanded to open or closed indices (default: open)"}, "flat_settings"=>{"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"}, "include_defaults"=>{"type"=>"boolean", "description"=>"Whether to return all default setting for each of the indices.", "default"=>false}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}}}
        request(api_name, api_spec, params)
      end

      # indices.get_alias 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html", "description"=>"Returns an alias."}
      def indices_get_alias(params = {})
        api_name = 'indices.get_alias'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html", "description"=>"Returns an alias."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_alias", "methods"=>["GET"]}, {"path"=>"/_alias/{name}", "methods"=>["GET"], "parts"=>{"name"=>{"type"=>"list", "description"=>"A comma-separated list of alias names to return"}}}, {"path"=>"/{index}/_alias/{name}", "methods"=>["GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to filter aliases"}, "name"=>{"type"=>"list", "description"=>"A comma-separated list of alias names to return"}}}, {"path"=>"/{index}/_alias", "methods"=>["GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to filter aliases"}}}]}, "params"=>{"ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"all", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}}}
        request(api_name, api_spec, params)
      end

      # indices.get_data_stream 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/data-streams.html", "description"=>"Returns data streams."}
      def indices_get_data_stream(params = {})
        api_name = 'indices.get_data_stream'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/data-streams.html", "description"=>"Returns data streams."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_data_stream", "methods"=>["GET"]}, {"path"=>"/_data_stream/{name}", "methods"=>["GET"], "parts"=>{"name"=>{"type"=>"list", "description"=>"A comma-separated list of data streams to get; use `*` to get all data streams"}}}]}, "params"=>{"expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether wildcard expressions should get expanded to open or closed indices (default: open)"}}}
        request(api_name, api_spec, params)
      end

      # indices.get_field_mapping 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-field-mapping.html", "description"=>"Returns mapping for one or more fields."}
      def indices_get_field_mapping(params = {})
        api_name = 'indices.get_field_mapping'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-field-mapping.html", "description"=>"Returns mapping for one or more fields."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_mapping/field/{fields}", "methods"=>["GET"], "parts"=>{"fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields"}}}, {"path"=>"/{index}/_mapping/field/{fields}", "methods"=>["GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names"}, "fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields"}}}, {"path"=>"/_mapping/{type}/field/{fields}", "methods"=>["GET"], "parts"=>{"type"=>{"type"=>"list", "description"=>"A comma-separated list of document types", "deprecated"=>true}, "fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields"}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}, {"path"=>"/{index}/_mapping/{type}/field/{fields}", "methods"=>["GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names"}, "type"=>{"type"=>"list", "description"=>"A comma-separated list of document types", "deprecated"=>true}, "fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields"}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}]}, "params"=>{"include_type_name"=>{"type"=>"boolean", "description"=>"Whether a type should be returned in the body of the mappings."}, "include_defaults"=>{"type"=>"boolean", "description"=>"Whether the default mapping values should be returned as well"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}}}
        request(api_name, api_spec, params)
      end

      # indices.get_index_template 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description"=>"Returns an index template."}
      def indices_get_index_template(params = {})
        api_name = 'indices.get_index_template'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description"=>"Returns an index template."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_index_template", "methods"=>["GET"]}, {"path"=>"/_index_template/{name}", "methods"=>["GET"], "parts"=>{"name"=>{"type"=>"list", "description"=>"The comma separated names of the index templates"}}}]}, "params"=>{"flat_settings"=>{"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}}}
        request(api_name, api_spec, params)
      end

      # indices.get_mapping 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-mapping.html", "description"=>"Returns mappings for one or more indices."}
      def indices_get_mapping(params = {})
        api_name = 'indices.get_mapping'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-mapping.html", "description"=>"Returns mappings for one or more indices."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_mapping", "methods"=>["GET"]}, {"path"=>"/{index}/_mapping", "methods"=>["GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names"}}}, {"path"=>"/_mapping/{type}", "methods"=>["GET"], "parts"=>{"type"=>{"type"=>"list", "description"=>"A comma-separated list of document types", "deprecated"=>true}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}, {"path"=>"/{index}/_mapping/{type}", "methods"=>["GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names"}, "type"=>{"type"=>"list", "description"=>"A comma-separated list of document types", "deprecated"=>true}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}]}, "params"=>{"include_type_name"=>{"type"=>"boolean", "description"=>"Whether to add the type name to the response (default: false)"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)", "deprecated"=>{"version"=>"7.8.0", "description"=>"This parameter is a no-op and field mappings are always retrieved locally."}}}}
        request(api_name, api_spec, params)
      end

      # indices.get_settings 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-settings.html", "description"=>"Returns settings for one or more indices."}
      def indices_get_settings(params = {})
        api_name = 'indices.get_settings'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-settings.html", "description"=>"Returns settings for one or more indices."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_settings", "methods"=>["GET"]}, {"path"=>"/{index}/_settings", "methods"=>["GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"}}}, {"path"=>"/{index}/_settings/{name}", "methods"=>["GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"}, "name"=>{"type"=>"list", "description"=>"The name of the settings that should be included"}}}, {"path"=>"/_settings/{name}", "methods"=>["GET"], "parts"=>{"name"=>{"type"=>"list", "description"=>"The name of the settings that should be included"}}}]}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"all", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "flat_settings"=>{"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "include_defaults"=>{"type"=>"boolean", "description"=>"Whether to return all default setting for each of the indices.", "default"=>false}}}
        request(api_name, api_spec, params)
      end

      # indices.get_template 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description"=>"Returns an index template."}
      def indices_get_template(params = {})
        api_name = 'indices.get_template'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description"=>"Returns an index template."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_template", "methods"=>["GET"]}, {"path"=>"/_template/{name}", "methods"=>["GET"], "parts"=>{"name"=>{"type"=>"list", "description"=>"The comma separated names of the index templates"}}}]}, "params"=>{"include_type_name"=>{"type"=>"boolean", "description"=>"Whether a type should be returned in the body of the mappings."}, "flat_settings"=>{"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}}}
        request(api_name, api_spec, params)
      end

      # indices.get_upgrade 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-upgrade.html", "description"=>"DEPRECATED Returns a progress status of current upgrade."}
      def indices_get_upgrade(params = {})
        api_name = 'indices.get_upgrade'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-upgrade.html", "description"=>"DEPRECATED Returns a progress status of current upgrade."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_upgrade", "methods"=>["GET"], "deprecated"=>{"version"=>"8.0.0", "description"=>"The _upgrade API is no longer useful and will be removed. Instead, see _reindex API."}}, {"path"=>"/{index}/_upgrade", "methods"=>["GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"}}, "deprecated"=>{"version"=>"8.0.0", "description"=>"The _upgrade API is no longer useful and will be removed. Instead, see _reindex API."}}]}, "params"=>{"ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}}}
        request(api_name, api_spec, params)
      end

      # indices.migrate_to_data_stream 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/data-streams.html", "description"=>"Migrates an alias to a data stream"}
      def indices_migrate_to_data_stream(params = {})
        api_name = 'indices.migrate_to_data_stream'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/data-streams.html", "description"=>"Migrates an alias to a data stream"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_data_stream/_migrate/{name}", "methods"=>["POST"], "parts"=>{"name"=>{"type"=>"string", "description"=>"The name of the alias to migrate"}}}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # indices.open 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-open-close.html", "description"=>"Opens an index."}
      def indices_open(params = {})
        api_name = 'indices.open'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-open-close.html", "description"=>"Opens an index."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_open", "methods"=>["POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma separated list of indices to open"}}}]}, "params"=>{"timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"closed", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "wait_for_active_shards"=>{"type"=>"string", "description"=>"Sets the number of active shards to wait for before the operation returns."}}}
        request(api_name, api_spec, params)
      end

      # indices.promote_data_stream 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/data-streams.html", "description"=>"Promotes a data stream from a replicated data stream managed by CCR to a regular data stream"}
      def indices_promote_data_stream(params = {})
        api_name = 'indices.promote_data_stream'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/data-streams.html", "description"=>"Promotes a data stream from a replicated data stream managed by CCR to a regular data stream"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_data_stream/_promote/{name}", "methods"=>["POST"], "parts"=>{"name"=>{"type"=>"string", "description"=>"The name of the data stream"}}}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # indices.put_alias 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html", "description"=>"Creates or updates an alias."}
      def indices_put_alias(params = {})
        api_name = 'indices.put_alias'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html", "description"=>"Creates or updates an alias."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_alias/{name}", "methods"=>["PUT", "POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names the alias should point to (supports wildcards); use `_all` to perform the operation on all indices."}, "name"=>{"type"=>"string", "description"=>"The name of the alias to be created or updated"}}}, {"path"=>"/{index}/_aliases/{name}", "methods"=>["PUT", "POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names the alias should point to (supports wildcards); use `_all` to perform the operation on all indices."}, "name"=>{"type"=>"string", "description"=>"The name of the alias to be created or updated"}}}]}, "params"=>{"timeout"=>{"type"=>"time", "description"=>"Explicit timestamp for the document"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}}, "body"=>{"description"=>"The settings for the alias, such as `routing` or `filter`", "required"=>false}}
        request(api_name, api_spec, params)
      end

      # indices.put_index_template 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description"=>"Creates or updates an index template."}
      def indices_put_index_template(params = {})
        api_name = 'indices.put_index_template'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description"=>"Creates or updates an index template."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_index_template/{name}", "methods"=>["PUT", "POST"], "parts"=>{"name"=>{"type"=>"string", "description"=>"The name of the template"}}}]}, "params"=>{"create"=>{"type"=>"boolean", "description"=>"Whether the index template should only be added if new or can also replace an existing one", "default"=>false}, "cause"=>{"type"=>"string", "description"=>"User defined reason for creating/updating the index template", "default"=>false}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}}, "body"=>{"description"=>"The template definition", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # indices.put_mapping 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-put-mapping.html", "description"=>"Updates the index mappings."}
      def indices_put_mapping(params = {})
        api_name = 'indices.put_mapping'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-put-mapping.html", "description"=>"Updates the index mappings."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_mapping", "methods"=>["PUT", "POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names the mapping should be added to (supports wildcards); use `_all` or omit to add the mapping on all indices."}}}, {"path"=>"/{index}/{type}/_mapping", "methods"=>["PUT", "POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names the mapping should be added to (supports wildcards); use `_all` or omit to add the mapping on all indices."}, "type"=>{"type"=>"string", "description"=>"The name of the document type", "deprecated"=>true}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}, {"path"=>"/{index}/_mapping/{type}", "methods"=>["PUT", "POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names the mapping should be added to (supports wildcards); use `_all` or omit to add the mapping on all indices."}, "type"=>{"type"=>"string", "description"=>"The name of the document type", "deprecated"=>true}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}, {"path"=>"/{index}/{type}/_mappings", "methods"=>["PUT", "POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names the mapping should be added to (supports wildcards); use `_all` or omit to add the mapping on all indices."}, "type"=>{"type"=>"string", "description"=>"The name of the document type", "deprecated"=>true}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}, {"path"=>"/{index}/_mappings/{type}", "methods"=>["PUT", "POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names the mapping should be added to (supports wildcards); use `_all` or omit to add the mapping on all indices."}, "type"=>{"type"=>"string", "description"=>"The name of the document type", "deprecated"=>true}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}, {"path"=>"/_mappings/{type}", "methods"=>["PUT", "POST"], "parts"=>{"type"=>{"type"=>"string", "description"=>"The name of the document type", "deprecated"=>true}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}, {"path"=>"/{index}/_mappings", "methods"=>["PUT", "POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names the mapping should be added to (supports wildcards); use `_all` or omit to add the mapping on all indices."}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"The plural mappings is accepted but only /_mapping is documented"}}, {"path"=>"/_mapping/{type}", "methods"=>["PUT", "POST"], "parts"=>{"type"=>{"type"=>"string", "description"=>"The name of the document type", "deprecated"=>true}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}]}, "params"=>{"include_type_name"=>{"type"=>"boolean", "description"=>"Whether a type should be expected in the body of the mappings."}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "write_index_only"=>{"type"=>"boolean", "default"=>false, "description"=>"When true, applies mappings only to the write index of an alias or data stream"}}, "body"=>{"description"=>"The mapping definition", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # indices.put_settings 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-update-settings.html", "description"=>"Updates the index settings."}
      def indices_put_settings(params = {})
        api_name = 'indices.put_settings'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-update-settings.html", "description"=>"Updates the index settings."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_settings", "methods"=>["PUT"]}, {"path"=>"/{index}/_settings", "methods"=>["PUT"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"}}}]}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "preserve_existing"=>{"type"=>"boolean", "description"=>"Whether to update existing settings. If set to `true` existing settings on an index remain unchanged, the default is `false`"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "flat_settings"=>{"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"}}, "body"=>{"description"=>"The index settings to be updated", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # indices.put_template 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description"=>"Creates or updates an index template."}
      def indices_put_template(params = {})
        api_name = 'indices.put_template'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description"=>"Creates or updates an index template."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_template/{name}", "methods"=>["PUT", "POST"], "parts"=>{"name"=>{"type"=>"string", "description"=>"The name of the template"}}}]}, "params"=>{"include_type_name"=>{"type"=>"boolean", "description"=>"Whether a type should be returned in the body of the mappings."}, "order"=>{"type"=>"number", "description"=>"The order for this template when merging multiple matching ones (higher numbers are merged later, overriding the lower numbers)"}, "create"=>{"type"=>"boolean", "description"=>"Whether the index template should only be added if new or can also replace an existing one", "default"=>false}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}}, "body"=>{"description"=>"The template definition", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # indices.recovery 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-recovery.html", "description"=>"Returns information about ongoing index shard recoveries."}
      def indices_recovery(params = {})
        api_name = 'indices.recovery'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-recovery.html", "description"=>"Returns information about ongoing index shard recoveries."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_recovery", "methods"=>["GET"]}, {"path"=>"/{index}/_recovery", "methods"=>["GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"}}}]}, "params"=>{"detailed"=>{"type"=>"boolean", "description"=>"Whether to display detailed information about shard recovery", "default"=>false}, "active_only"=>{"type"=>"boolean", "description"=>"Display only those recoveries that are currently on-going", "default"=>false}}}
        request(api_name, api_spec, params)
      end

      # indices.refresh 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-refresh.html", "description"=>"Performs the refresh operation in one or more indices."}
      def indices_refresh(params = {})
        api_name = 'indices.refresh'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-refresh.html", "description"=>"Performs the refresh operation in one or more indices."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_refresh", "methods"=>["POST", "GET"]}, {"path"=>"/{index}/_refresh", "methods"=>["POST", "GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"}}}]}, "params"=>{"ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}}}
        request(api_name, api_spec, params)
      end

      # indices.reload_search_analyzers 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-reload-analyzers.html", "description"=>"Reloads an index's search analyzers and their resources."}
      def indices_reload_search_analyzers(params = {})
        api_name = 'indices.reload_search_analyzers'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-reload-analyzers.html", "description"=>"Reloads an index's search analyzers and their resources."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_reload_search_analyzers", "methods"=>["GET", "POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to reload analyzers for"}}}]}, "params"=>{"ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}}}
        request(api_name, api_spec, params)
      end

      # indices.resolve_index 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-resolve-index-api.html", "description"=>"Returns information about any matching indices, aliases, and data streams"}
      def indices_resolve_index(params = {})
        api_name = 'indices.resolve_index'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-resolve-index-api.html", "description"=>"Returns information about any matching indices, aliases, and data streams"}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_resolve/index/{name}", "methods"=>["GET"], "parts"=>{"name"=>{"type"=>"list", "description"=>"A comma-separated list of names or wildcard expressions"}}}]}, "params"=>{"expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether wildcard expressions should get expanded to open or closed indices (default: open)"}}}
        request(api_name, api_spec, params)
      end

      # indices.rollover 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-rollover-index.html", "description"=>"Updates an alias to point to a new index when the existing index\nis considered to be too large or too old."}
      def indices_rollover(params = {})
        api_name = 'indices.rollover'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-rollover-index.html", "description"=>"Updates an alias to point to a new index when the existing index\nis considered to be too large or too old."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{alias}/_rollover", "methods"=>["POST"], "parts"=>{"alias"=>{"type"=>"string", "description"=>"The name of the alias to rollover"}}}, {"path"=>"/{alias}/_rollover/{new_index}", "methods"=>["POST"], "parts"=>{"alias"=>{"type"=>"string", "description"=>"The name of the alias to rollover"}, "new_index"=>{"type"=>"string", "description"=>"The name of the rollover index"}}}]}, "params"=>{"include_type_name"=>{"type"=>"boolean", "description"=>"Whether a type should be included in the body of the mappings."}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "dry_run"=>{"type"=>"boolean", "description"=>"If set to true the rollover action will only be validated but not actually performed even if a condition matches. The default is false"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}, "wait_for_active_shards"=>{"type"=>"string", "description"=>"Set the number of active shards to wait for on the newly created rollover index before the operation returns."}}, "body"=>{"description"=>"The conditions that needs to be met for executing rollover"}}
        request(api_name, api_spec, params)
      end

      # indices.segments 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-segments.html", "description"=>"Provides low-level information about segments in a Lucene index."}
      def indices_segments(params = {})
        api_name = 'indices.segments'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-segments.html", "description"=>"Provides low-level information about segments in a Lucene index."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_segments", "methods"=>["GET"]}, {"path"=>"/{index}/_segments", "methods"=>["GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"}}}]}, "params"=>{"ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "verbose"=>{"type"=>"boolean", "description"=>"Includes detailed memory usage by Lucene.", "default"=>false}}}
        request(api_name, api_spec, params)
      end

      # indices.shard_stores 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-shards-stores.html", "description"=>"Provides store information for shard copies of indices."}
      def indices_shard_stores(params = {})
        api_name = 'indices.shard_stores'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-shards-stores.html", "description"=>"Provides store information for shard copies of indices."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_shard_stores", "methods"=>["GET"]}, {"path"=>"/{index}/_shard_stores", "methods"=>["GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"}}}]}, "params"=>{"status"=>{"type"=>"list", "options"=>["green", "yellow", "red", "all"], "description"=>"A comma-separated list of statuses used to filter on shards to get store information for"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}}}
        request(api_name, api_spec, params)
      end

      # indices.shrink 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-shrink-index.html", "description"=>"Allow to shrink an existing index into a new index with fewer primary shards."}
      def indices_shrink(params = {})
        api_name = 'indices.shrink'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-shrink-index.html", "description"=>"Allow to shrink an existing index into a new index with fewer primary shards."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_shrink/{target}", "methods"=>["PUT", "POST"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The name of the source index to shrink"}, "target"=>{"type"=>"string", "description"=>"The name of the target index to shrink into"}}}]}, "params"=>{"copy_settings"=>{"type"=>"boolean", "description"=>"whether or not to copy settings from the source index (defaults to false)"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}, "wait_for_active_shards"=>{"type"=>"string", "description"=>"Set the number of active shards to wait for on the shrunken index before the operation returns."}}, "body"=>{"description"=>"The configuration for the target index (`settings` and `aliases`)"}}
        request(api_name, api_spec, params)
      end

      # indices.simulate_index_template 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description"=>"Simulate matching the given index name against the index templates in the system"}
      def indices_simulate_index_template(params = {})
        api_name = 'indices.simulate_index_template'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description"=>"Simulate matching the given index name against the index templates in the system"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_index_template/_simulate_index/{name}", "methods"=>["POST"], "parts"=>{"name"=>{"type"=>"string", "description"=>"The name of the index (it must be a concrete index name)"}}}]}, "params"=>{"create"=>{"type"=>"boolean", "description"=>"Whether the index template we optionally defined in the body should only be dry-run added if new or can also replace an existing one", "default"=>false}, "cause"=>{"type"=>"string", "description"=>"User defined reason for dry-run creating the new template for simulation purposes", "default"=>false}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}}, "body"=>{"description"=>"New index template definition, which will be included in the simulation, as if it already exists in the system", "required"=>false}}
        request(api_name, api_spec, params)
      end

      # indices.simulate_template 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description"=>"Simulate resolving the given template name or body"}
      def indices_simulate_template(params = {})
        api_name = 'indices.simulate_template'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description"=>"Simulate resolving the given template name or body"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_index_template/_simulate", "methods"=>["POST"]}, {"path"=>"/_index_template/_simulate/{name}", "methods"=>["POST"], "parts"=>{"name"=>{"type"=>"string", "description"=>"The name of the index template"}}}]}, "params"=>{"create"=>{"type"=>"boolean", "description"=>"Whether the index template we optionally defined in the body should only be dry-run added if new or can also replace an existing one", "default"=>false}, "cause"=>{"type"=>"string", "description"=>"User defined reason for dry-run creating the new template for simulation purposes", "default"=>false}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}}, "body"=>{"description"=>"New index template definition to be simulated, if no index template name is specified", "required"=>false}}
        request(api_name, api_spec, params)
      end

      # indices.split 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-split-index.html", "description"=>"Allows you to split an existing index into a new index with more primary shards."}
      def indices_split(params = {})
        api_name = 'indices.split'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-split-index.html", "description"=>"Allows you to split an existing index into a new index with more primary shards."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_split/{target}", "methods"=>["PUT", "POST"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The name of the source index to split"}, "target"=>{"type"=>"string", "description"=>"The name of the target index to split into"}}}]}, "params"=>{"copy_settings"=>{"type"=>"boolean", "description"=>"whether or not to copy settings from the source index (defaults to false)"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}, "wait_for_active_shards"=>{"type"=>"string", "description"=>"Set the number of active shards to wait for on the shrunken index before the operation returns."}}, "body"=>{"description"=>"The configuration for the target index (`settings` and `aliases`)"}}
        request(api_name, api_spec, params)
      end

      # indices.stats 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-stats.html", "description"=>"Provides statistics on operations happening in an index."}
      def indices_stats(params = {})
        api_name = 'indices.stats'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-stats.html", "description"=>"Provides statistics on operations happening in an index."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_stats", "methods"=>["GET"]}, {"path"=>"/_stats/{metric}", "methods"=>["GET"], "parts"=>{"metric"=>{"type"=>"list", "options"=>["_all", "completion", "docs", "fielddata", "query_cache", "flush", "get", "indexing", "merge", "request_cache", "refresh", "search", "segments", "store", "warmer", "suggest"], "description"=>"Limit the information returned the specific metrics."}}}, {"path"=>"/{index}/_stats", "methods"=>["GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"}}}, {"path"=>"/{index}/_stats/{metric}", "methods"=>["GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"}, "metric"=>{"type"=>"list", "options"=>["_all", "completion", "docs", "fielddata", "query_cache", "flush", "get", "indexing", "merge", "request_cache", "refresh", "search", "segments", "store", "warmer", "suggest"], "description"=>"Limit the information returned the specific metrics."}}}]}, "params"=>{"completion_fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields for `fielddata` and `suggest` index metric (supports wildcards)"}, "fielddata_fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields for `fielddata` index metric (supports wildcards)"}, "fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields for `fielddata` and `completion` index metric (supports wildcards)"}, "groups"=>{"type"=>"list", "description"=>"A comma-separated list of search groups for `search` index metric"}, "level"=>{"type"=>"enum", "description"=>"Return stats aggregated at cluster, index or shard level", "options"=>["cluster", "indices", "shards"], "default"=>"indices"}, "types"=>{"type"=>"list", "description"=>"A comma-separated list of document types for the `indexing` index metric"}, "include_segment_file_sizes"=>{"type"=>"boolean", "description"=>"Whether to report the aggregated disk usage of each one of the Lucene index files (only applies if segment stats are requested)", "default"=>false}, "include_unloaded_segments"=>{"type"=>"boolean", "description"=>"If set to true segment stats will include stats for segments that are not currently loaded into memory", "default"=>false}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "forbid_closed_indices"=>{"type"=>"boolean", "description"=>"If set to false stats will also collected from closed indices if explicitly specified or if expand_wildcards expands to closed indices", "default"=>true}}}
        request(api_name, api_spec, params)
      end

      # indices.unfreeze 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/unfreeze-index-api.html", "description"=>"Unfreezes an index. When a frozen index is unfrozen, the index goes through the normal recovery process and becomes writeable again."}
      def indices_unfreeze(params = {})
        api_name = 'indices.unfreeze'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/unfreeze-index-api.html", "description"=>"Unfreezes an index. When a frozen index is unfrozen, the index goes through the normal recovery process and becomes writeable again."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_unfreeze", "methods"=>["POST"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The name of the index to unfreeze"}}, "deprecated"=>{"version"=>"7.14.0", "description"=>"Frozen indices are deprecated because they provide no benefit given improvements in heap memory utilization. They will be removed in a future release."}}]}, "params"=>{"timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"closed", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "wait_for_active_shards"=>{"type"=>"string", "description"=>"Sets the number of active shards to wait for before the operation returns."}}}
        request(api_name, api_spec, params)
      end

      # indices.update_aliases 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html", "description"=>"Updates index aliases."}
      def indices_update_aliases(params = {})
        api_name = 'indices.update_aliases'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html", "description"=>"Updates index aliases."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_aliases", "methods"=>["POST"]}]}, "params"=>{"timeout"=>{"type"=>"time", "description"=>"Request timeout"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}}, "body"=>{"description"=>"The definition of `actions` to perform", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # indices.upgrade 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-upgrade.html", "description"=>"DEPRECATED Upgrades to the current version of Lucene."}
      def indices_upgrade(params = {})
        api_name = 'indices.upgrade'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-upgrade.html", "description"=>"DEPRECATED Upgrades to the current version of Lucene."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_upgrade", "methods"=>["POST"], "deprecated"=>{"version"=>"8.0.0", "description"=>"The _upgrade API is no longer useful and will be removed. Instead, see _reindex API."}}, {"path"=>"/{index}/_upgrade", "methods"=>["POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"}}, "deprecated"=>{"version"=>"8.0.0", "description"=>"The _upgrade API is no longer useful and will be removed. Instead, see _reindex API."}}]}, "params"=>{"allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "wait_for_completion"=>{"type"=>"boolean", "description"=>"Specify whether the request should block until the all segments are upgraded (default: false)"}, "only_ancient_segments"=>{"type"=>"boolean", "description"=>"If true, only ancient (an older Lucene major release) segments will be upgraded"}}}
        request(api_name, api_spec, params)
      end

      # indices.validate_query 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/search-validate.html", "description"=>"Allows a user to validate a potentially expensive query without executing it."}
      def indices_validate_query(params = {})
        api_name = 'indices.validate_query'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/search-validate.html", "description"=>"Allows a user to validate a potentially expensive query without executing it."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_validate/query", "methods"=>["GET", "POST"]}, {"path"=>"/{index}/_validate/query", "methods"=>["GET", "POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to restrict the operation; use `_all` or empty string to perform the operation on all indices"}}}, {"path"=>"/{index}/{type}/_validate/query", "methods"=>["GET", "POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to restrict the operation; use `_all` or empty string to perform the operation on all indices"}, "type"=>{"type"=>"list", "description"=>"A comma-separated list of document types to restrict the operation; leave empty to perform the operation on all types", "deprecated"=>true}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}]}, "params"=>{"explain"=>{"type"=>"boolean", "description"=>"Return detailed information about the error"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "q"=>{"type"=>"string", "description"=>"Query in the Lucene query string syntax"}, "analyzer"=>{"type"=>"string", "description"=>"The analyzer to use for the query string"}, "analyze_wildcard"=>{"type"=>"boolean", "description"=>"Specify whether wildcard and prefix queries should be analyzed (default: false)"}, "default_operator"=>{"type"=>"enum", "options"=>["AND", "OR"], "default"=>"OR", "description"=>"The default operator for query string query (AND or OR)"}, "df"=>{"type"=>"string", "description"=>"The field to use as default where no field prefix is given in the query string"}, "lenient"=>{"type"=>"boolean", "description"=>"Specify whether format-based query failures (such as providing text to a numeric field) should be ignored"}, "rewrite"=>{"type"=>"boolean", "description"=>"Provide a more detailed explanation showing the actual Lucene query that will be executed."}, "all_shards"=>{"type"=>"boolean", "description"=>"Execute validation on all shards instead of one random shard per index"}}, "body"=>{"description"=>"The query definition specified with the Query DSL"}}
        request(api_name, api_spec, params)
      end

      # info 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html", "description"=>"Returns basic information about the cluster."}
      def info(params = {})
        api_name = 'info'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html", "description"=>"Returns basic information about the cluster."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/", "methods"=>["GET"]}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # ingest.delete_pipeline 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/delete-pipeline-api.html", "description"=>"Deletes a pipeline."}
      def ingest_delete_pipeline(params = {})
        api_name = 'ingest.delete_pipeline'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/delete-pipeline-api.html", "description"=>"Deletes a pipeline."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ingest/pipeline/{id}", "methods"=>["DELETE"], "parts"=>{"id"=>{"type"=>"string", "description"=>"Pipeline ID"}}}]}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}}}
        request(api_name, api_spec, params)
      end

      # ingest.geo_ip_stats 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/geoip-stats-api.html", "description"=>"Returns statistical information about geoip databases"}
      def ingest_geo_ip_stats(params = {})
        api_name = 'ingest.geo_ip_stats'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/geoip-stats-api.html", "description"=>"Returns statistical information about geoip databases"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ingest/geoip/stats", "methods"=>["GET"]}]}}
        request(api_name, api_spec, params)
      end

      # ingest.get_pipeline 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/get-pipeline-api.html", "description"=>"Returns a pipeline."}
      def ingest_get_pipeline(params = {})
        api_name = 'ingest.get_pipeline'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/get-pipeline-api.html", "description"=>"Returns a pipeline."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ingest/pipeline", "methods"=>["GET"]}, {"path"=>"/_ingest/pipeline/{id}", "methods"=>["GET"], "parts"=>{"id"=>{"type"=>"string", "description"=>"Comma separated list of pipeline ids. Wildcards supported"}}}]}, "params"=>{"summary"=>{"type"=>"boolean", "description"=>"Return pipelines without their definitions (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}}}
        request(api_name, api_spec, params)
      end

      # ingest.processor_grok 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/grok-processor.html#grok-processor-rest-get", "description"=>"Returns a list of the built-in patterns."}
      def ingest_processor_grok(params = {})
        api_name = 'ingest.processor_grok'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/grok-processor.html#grok-processor-rest-get", "description"=>"Returns a list of the built-in patterns."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ingest/processor/grok", "methods"=>["GET"]}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # ingest.put_pipeline 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/put-pipeline-api.html", "description"=>"Creates or updates a pipeline."}
      def ingest_put_pipeline(params = {})
        api_name = 'ingest.put_pipeline'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/put-pipeline-api.html", "description"=>"Creates or updates a pipeline."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ingest/pipeline/{id}", "methods"=>["PUT"], "parts"=>{"id"=>{"type"=>"string", "description"=>"Pipeline ID"}}}]}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}}, "body"=>{"description"=>"The ingest definition", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # ingest.simulate 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/simulate-pipeline-api.html", "description"=>"Allows to simulate a pipeline with example documents."}
      def ingest_simulate(params = {})
        api_name = 'ingest.simulate'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/simulate-pipeline-api.html", "description"=>"Allows to simulate a pipeline with example documents."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ingest/pipeline/_simulate", "methods"=>["GET", "POST"]}, {"path"=>"/_ingest/pipeline/{id}/_simulate", "methods"=>["GET", "POST"], "parts"=>{"id"=>{"type"=>"string", "description"=>"Pipeline ID"}}}]}, "params"=>{"verbose"=>{"type"=>"boolean", "description"=>"Verbose mode. Display data output for each processor in executed pipeline", "default"=>false}}, "body"=>{"description"=>"The simulate definition", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # license.delete 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/delete-license.html", "description"=>"Deletes licensing information for the cluster"}
      def license_delete(params = {})
        api_name = 'license.delete'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/delete-license.html", "description"=>"Deletes licensing information for the cluster"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_license", "methods"=>["DELETE"]}]}}
        request(api_name, api_spec, params)
      end

      # license.get 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/get-license.html", "description"=>"Retrieves licensing information for the cluster"}
      def license_get(params = {})
        api_name = 'license.get'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/get-license.html", "description"=>"Retrieves licensing information for the cluster"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_license", "methods"=>["GET"]}]}, "params"=>{"local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "accept_enterprise"=>{"type"=>"boolean", "description"=>"If the active license is an enterprise license, return type as 'enterprise' (default: false)"}}}
        request(api_name, api_spec, params)
      end

      # license.get_basic_status 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/get-basic-status.html", "description"=>"Retrieves information about the status of the basic license."}
      def license_get_basic_status(params = {})
        api_name = 'license.get_basic_status'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/get-basic-status.html", "description"=>"Retrieves information about the status of the basic license."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_license/basic_status", "methods"=>["GET"]}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # license.get_trial_status 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/get-trial-status.html", "description"=>"Retrieves information about the status of the trial license."}
      def license_get_trial_status(params = {})
        api_name = 'license.get_trial_status'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/get-trial-status.html", "description"=>"Retrieves information about the status of the trial license."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_license/trial_status", "methods"=>["GET"]}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # license.post 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/update-license.html", "description"=>"Updates the license for the cluster."}
      def license_post(params = {})
        api_name = 'license.post'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/update-license.html", "description"=>"Updates the license for the cluster."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_license", "methods"=>["PUT", "POST"]}]}, "params"=>{"acknowledge"=>{"type"=>"boolean", "description"=>"whether the user has acknowledged acknowledge messages (default: false)"}}, "body"=>{"description"=>"licenses to be installed"}}
        request(api_name, api_spec, params)
      end

      # license.post_start_basic 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/start-basic.html", "description"=>"Starts an indefinite basic license."}
      def license_post_start_basic(params = {})
        api_name = 'license.post_start_basic'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/start-basic.html", "description"=>"Starts an indefinite basic license."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_license/start_basic", "methods"=>["POST"]}]}, "params"=>{"acknowledge"=>{"type"=>"boolean", "description"=>"whether the user has acknowledged acknowledge messages (default: false)"}}}
        request(api_name, api_spec, params)
      end

      # license.post_start_trial 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/start-trial.html", "description"=>"starts a limited time trial license."}
      def license_post_start_trial(params = {})
        api_name = 'license.post_start_trial'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/start-trial.html", "description"=>"starts a limited time trial license."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_license/start_trial", "methods"=>["POST"]}]}, "params"=>{"type"=>{"type"=>"string", "description"=>"The type of trial license to generate (default: \"trial\")"}, "acknowledge"=>{"type"=>"boolean", "description"=>"whether the user has acknowledged acknowledge messages (default: false)"}}}
        request(api_name, api_spec, params)
      end

      # logstash.delete_pipeline 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/logstash-api-delete-pipeline.html", "description"=>"Deletes Logstash Pipelines used by Central Management"}
      def logstash_delete_pipeline(params = {})
        api_name = 'logstash.delete_pipeline'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/logstash-api-delete-pipeline.html", "description"=>"Deletes Logstash Pipelines used by Central Management"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_logstash/pipeline/{id}", "methods"=>["DELETE"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The ID of the Pipeline"}}}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # logstash.get_pipeline 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/logstash-api-get-pipeline.html", "description"=>"Retrieves Logstash Pipelines used by Central Management"}
      def logstash_get_pipeline(params = {})
        api_name = 'logstash.get_pipeline'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/logstash-api-get-pipeline.html", "description"=>"Retrieves Logstash Pipelines used by Central Management"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_logstash/pipeline/{id}", "methods"=>["GET"], "parts"=>{"id"=>{"type"=>"string", "description"=>"A comma-separated list of Pipeline IDs"}}}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # logstash.put_pipeline 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/logstash-api-put-pipeline.html", "description"=>"Adds and updates Logstash Pipelines used for Central Management"}
      def logstash_put_pipeline(params = {})
        api_name = 'logstash.put_pipeline'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/logstash-api-put-pipeline.html", "description"=>"Adds and updates Logstash Pipelines used for Central Management"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_logstash/pipeline/{id}", "methods"=>["PUT"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The ID of the Pipeline"}}}]}, "params"=>{}, "body"=>{"description"=>"The Pipeline to add or update", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # mget 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-multi-get.html", "description"=>"Allows to get multiple documents in one request."}
      def mget(params = {})
        api_name = 'mget'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-multi-get.html", "description"=>"Allows to get multiple documents in one request."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_mget", "methods"=>["GET", "POST"]}, {"path"=>"/{index}/_mget", "methods"=>["GET", "POST"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The name of the index"}}}, {"path"=>"/{index}/{type}/_mget", "methods"=>["GET", "POST"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The name of the index"}, "type"=>{"type"=>"string", "description"=>"The type of the document", "deprecated"=>true}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}]}, "params"=>{"stored_fields"=>{"type"=>"list", "description"=>"A comma-separated list of stored fields to return in the response"}, "preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"}, "realtime"=>{"type"=>"boolean", "description"=>"Specify whether to perform the operation in realtime or search mode"}, "refresh"=>{"type"=>"boolean", "description"=>"Refresh the shard containing the document before performing the operation"}, "routing"=>{"type"=>"string", "description"=>"Specific routing value"}, "_source"=>{"type"=>"list", "description"=>"True or false to return the _source field or not, or a list of fields to return"}, "_source_excludes"=>{"type"=>"list", "description"=>"A list of fields to exclude from the returned _source field"}, "_source_includes"=>{"type"=>"list", "description"=>"A list of fields to extract and return from the _source field"}}, "body"=>{"description"=>"Document identifiers; can be either `docs` (containing full document information) or `ids` (when index and type is provided in the URL.", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # migration.deprecations 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/migration-api-deprecation.html", "description"=>"Retrieves information about different cluster, node, and index level settings that use deprecated features that will be removed or changed in the next major version."}
      def migration_deprecations(params = {})
        api_name = 'migration.deprecations'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/migration-api-deprecation.html", "description"=>"Retrieves information about different cluster, node, and index level settings that use deprecated features that will be removed or changed in the next major version."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_migration/deprecations", "methods"=>["GET"]}, {"path"=>"/{index}/_migration/deprecations", "methods"=>["GET"], "parts"=>{"index"=>{"type"=>"string", "description"=>"Index pattern"}}}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # ml.close_job 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-close-job.html", "description"=>"Closes one or more anomaly detection jobs. A job can be opened and closed multiple times throughout its lifecycle."}
      def ml_close_job(params = {})
        api_name = 'ml.close_job'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-close-job.html", "description"=>"Closes one or more anomaly detection jobs. A job can be opened and closed multiple times throughout its lifecycle."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/anomaly_detectors/{job_id}/_close", "methods"=>["POST"], "parts"=>{"job_id"=>{"type"=>"string", "description"=>"The name of the job to close"}}}]}, "params"=>{"allow_no_match"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no jobs. (This includes `_all` string or when no jobs have been specified)"}, "allow_no_jobs"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no jobs. (This includes `_all` string or when no jobs have been specified)", "deprecated"=>true}, "force"=>{"type"=>"boolean", "required"=>false, "description"=>"True if the job should be forcefully closed"}, "timeout"=>{"type"=>"time", "description"=>"Controls the time to wait until a job has closed. Default to 30 minutes"}}, "body"=>{"description"=>"The URL params optionally sent in the body", "required"=>false}}
        request(api_name, api_spec, params)
      end

      # ml.delete_calendar 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-calendar.html", "description"=>"Deletes a calendar."}
      def ml_delete_calendar(params = {})
        api_name = 'ml.delete_calendar'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-calendar.html", "description"=>"Deletes a calendar."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/calendars/{calendar_id}", "methods"=>["DELETE"], "parts"=>{"calendar_id"=>{"type"=>"string", "description"=>"The ID of the calendar to delete"}}}]}}
        request(api_name, api_spec, params)
      end

      # ml.delete_calendar_event 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-calendar-event.html", "description"=>"Deletes scheduled events from a calendar."}
      def ml_delete_calendar_event(params = {})
        api_name = 'ml.delete_calendar_event'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-calendar-event.html", "description"=>"Deletes scheduled events from a calendar."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/calendars/{calendar_id}/events/{event_id}", "methods"=>["DELETE"], "parts"=>{"calendar_id"=>{"type"=>"string", "description"=>"The ID of the calendar to modify"}, "event_id"=>{"type"=>"string", "description"=>"The ID of the event to remove from the calendar"}}}]}}
        request(api_name, api_spec, params)
      end

      # ml.delete_calendar_job 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-calendar-job.html", "description"=>"Deletes anomaly detection jobs from a calendar."}
      def ml_delete_calendar_job(params = {})
        api_name = 'ml.delete_calendar_job'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-calendar-job.html", "description"=>"Deletes anomaly detection jobs from a calendar."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/calendars/{calendar_id}/jobs/{job_id}", "methods"=>["DELETE"], "parts"=>{"calendar_id"=>{"type"=>"string", "description"=>"The ID of the calendar to modify"}, "job_id"=>{"type"=>"string", "description"=>"The ID of the job to remove from the calendar"}}}]}}
        request(api_name, api_spec, params)
      end

      # ml.delete_data_frame_analytics 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/delete-dfanalytics.html", "description"=>"Deletes an existing data frame analytics job."}
      def ml_delete_data_frame_analytics(params = {})
        api_name = 'ml.delete_data_frame_analytics'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/delete-dfanalytics.html", "description"=>"Deletes an existing data frame analytics job."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/data_frame/analytics/{id}", "methods"=>["DELETE"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The ID of the data frame analytics to delete"}}}]}, "params"=>{"force"=>{"type"=>"boolean", "description"=>"True if the job should be forcefully deleted", "default"=>false}, "timeout"=>{"type"=>"time", "description"=>"Controls the time to wait until a job is deleted. Defaults to 1 minute"}}}
        request(api_name, api_spec, params)
      end

      # ml.delete_datafeed 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-datafeed.html", "description"=>"Deletes an existing datafeed."}
      def ml_delete_datafeed(params = {})
        api_name = 'ml.delete_datafeed'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-datafeed.html", "description"=>"Deletes an existing datafeed."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/datafeeds/{datafeed_id}", "methods"=>["DELETE"], "parts"=>{"datafeed_id"=>{"type"=>"string", "description"=>"The ID of the datafeed to delete"}}}]}, "params"=>{"force"=>{"type"=>"boolean", "required"=>false, "description"=>"True if the datafeed should be forcefully deleted"}}}
        request(api_name, api_spec, params)
      end

      # ml.delete_expired_data 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-expired-data.html", "description"=>"Deletes expired and unused machine learning data."}
      def ml_delete_expired_data(params = {})
        api_name = 'ml.delete_expired_data'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-expired-data.html", "description"=>"Deletes expired and unused machine learning data."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/_delete_expired_data/{job_id}", "methods"=>["DELETE"], "parts"=>{"job_id"=>{"type"=>"string", "description"=>"The ID of the job(s) to perform expired data hygiene for"}}}, {"path"=>"/_ml/_delete_expired_data", "methods"=>["DELETE"]}]}, "params"=>{"requests_per_second"=>{"type"=>"number", "required"=>false, "description"=>"The desired requests per second for the deletion processes."}, "timeout"=>{"type"=>"time", "required"=>false, "description"=>"How long can the underlying delete processes run until they are canceled"}}, "body"=>{"description"=>"deleting expired data parameters"}}
        request(api_name, api_spec, params)
      end

      # ml.delete_filter 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-filter.html", "description"=>"Deletes a filter."}
      def ml_delete_filter(params = {})
        api_name = 'ml.delete_filter'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-filter.html", "description"=>"Deletes a filter."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/filters/{filter_id}", "methods"=>["DELETE"], "parts"=>{"filter_id"=>{"type"=>"string", "description"=>"The ID of the filter to delete"}}}]}}
        request(api_name, api_spec, params)
      end

      # ml.delete_forecast 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-forecast.html", "description"=>"Deletes forecasts from a machine learning job."}
      def ml_delete_forecast(params = {})
        api_name = 'ml.delete_forecast'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-forecast.html", "description"=>"Deletes forecasts from a machine learning job."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/anomaly_detectors/{job_id}/_forecast", "methods"=>["DELETE"], "parts"=>{"job_id"=>{"type"=>"string", "description"=>"The ID of the job from which to delete forecasts"}}}, {"path"=>"/_ml/anomaly_detectors/{job_id}/_forecast/{forecast_id}", "methods"=>["DELETE"], "parts"=>{"job_id"=>{"type"=>"string", "description"=>"The ID of the job from which to delete forecasts"}, "forecast_id"=>{"type"=>"string", "description"=>"The ID of the forecast to delete, can be comma delimited list. Leaving blank implies `_all`"}}}]}, "params"=>{"allow_no_forecasts"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if `_all` matches no forecasts"}, "timeout"=>{"type"=>"time", "required"=>false, "description"=>"Controls the time to wait until the forecast(s) are deleted. Default to 30 seconds"}}}
        request(api_name, api_spec, params)
      end

      # ml.delete_job 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-job.html", "description"=>"Deletes an existing anomaly detection job."}
      def ml_delete_job(params = {})
        api_name = 'ml.delete_job'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-job.html", "description"=>"Deletes an existing anomaly detection job."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/anomaly_detectors/{job_id}", "methods"=>["DELETE"], "parts"=>{"job_id"=>{"type"=>"string", "description"=>"The ID of the job to delete"}}}]}, "params"=>{"force"=>{"type"=>"boolean", "description"=>"True if the job should be forcefully deleted", "default"=>false}, "wait_for_completion"=>{"type"=>"boolean", "description"=>"Should this request wait until the operation has completed before returning", "default"=>true}}}
        request(api_name, api_spec, params)
      end

      # ml.delete_model_snapshot 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-snapshot.html", "description"=>"Deletes an existing model snapshot."}
      def ml_delete_model_snapshot(params = {})
        api_name = 'ml.delete_model_snapshot'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-snapshot.html", "description"=>"Deletes an existing model snapshot."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/anomaly_detectors/{job_id}/model_snapshots/{snapshot_id}", "methods"=>["DELETE"], "parts"=>{"job_id"=>{"type"=>"string", "description"=>"The ID of the job to fetch"}, "snapshot_id"=>{"type"=>"string", "description"=>"The ID of the snapshot to delete"}}}]}}
        request(api_name, api_spec, params)
      end

      # ml.delete_trained_model 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/delete-trained-models.html", "description"=>"Deletes an existing trained inference model that is currently not referenced by an ingest pipeline."}
      def ml_delete_trained_model(params = {})
        api_name = 'ml.delete_trained_model'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/delete-trained-models.html", "description"=>"Deletes an existing trained inference model that is currently not referenced by an ingest pipeline."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/trained_models/{model_id}", "methods"=>["DELETE"], "parts"=>{"model_id"=>{"type"=>"string", "description"=>"The ID of the trained model to delete"}}}]}}
        request(api_name, api_spec, params)
      end

      # ml.delete_trained_model_alias 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/delete-trained-models-aliases.html", "description"=>"Deletes a model alias that refers to the trained model"}
      def ml_delete_trained_model_alias(params = {})
        api_name = 'ml.delete_trained_model_alias'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/delete-trained-models-aliases.html", "description"=>"Deletes a model alias that refers to the trained model"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/trained_models/{model_id}/model_aliases/{model_alias}", "methods"=>["DELETE"], "parts"=>{"model_alias"=>{"type"=>"string", "description"=>"The trained model alias to delete"}, "model_id"=>{"type"=>"string", "description"=>"The trained model where the model alias is assigned"}}}]}}
        request(api_name, api_spec, params)
      end

      # ml.estimate_model_memory 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-apis.html", "description"=>"Estimates the model memory"}
      def ml_estimate_model_memory(params = {})
        api_name = 'ml.estimate_model_memory'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-apis.html", "description"=>"Estimates the model memory"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/anomaly_detectors/_estimate_model_memory", "methods"=>["POST"]}]}, "params"=>{}, "body"=>{"description"=>"The analysis config, plus cardinality estimates for fields it references", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # ml.evaluate_data_frame 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/evaluate-dfanalytics.html", "description"=>"Evaluates the data frame analytics for an annotated index."}
      def ml_evaluate_data_frame(params = {})
        api_name = 'ml.evaluate_data_frame'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/evaluate-dfanalytics.html", "description"=>"Evaluates the data frame analytics for an annotated index."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/data_frame/_evaluate", "methods"=>["POST"]}]}, "body"=>{"description"=>"The evaluation definition", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # ml.explain_data_frame_analytics 
      # {"url"=>"http://www.elastic.co/guide/en/elasticsearch/reference/current/explain-dfanalytics.html", "description"=>"Explains a data frame analytics config."}
      def ml_explain_data_frame_analytics(params = {})
        api_name = 'ml.explain_data_frame_analytics'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"http://www.elastic.co/guide/en/elasticsearch/reference/current/explain-dfanalytics.html", "description"=>"Explains a data frame analytics config."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/data_frame/analytics/_explain", "methods"=>["GET", "POST"], "parts"=>{}}, {"path"=>"/_ml/data_frame/analytics/{id}/_explain", "methods"=>["GET", "POST"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The ID of the data frame analytics to explain"}}}]}, "body"=>{"description"=>"The data frame analytics config to explain", "required"=>false}}
        request(api_name, api_spec, params)
      end

      # ml.find_file_structure 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/find-structure.html", "description"=>"Finds the structure of a text file. The text file must contain data that is suitable to be ingested into Elasticsearch."}
      def ml_find_file_structure(params = {})
        api_name = 'ml.find_file_structure'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/find-structure.html", "description"=>"Finds the structure of a text file. The text file must contain data that is suitable to be ingested into Elasticsearch."}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/x-ndjson"]}, "url"=>{"paths"=>[{"path"=>"/_ml/find_file_structure", "methods"=>["POST"], "deprecated"=>{"version"=>"7.12.0", "description"=>"This endpoint has changed to _text_structure/find_structure, please use that API instead"}}]}, "params"=>{"lines_to_sample"=>{"type"=>"int", "description"=>"How many lines of the file should be included in the analysis", "default"=>1000}, "line_merge_size_limit"=>{"type"=>"int", "description"=>"Maximum number of characters permitted in a single message when lines are merged to create messages.", "default"=>10000}, "timeout"=>{"type"=>"time", "description"=>"Timeout after which the analysis will be aborted", "default"=>"25s"}, "charset"=>{"type"=>"string", "description"=>"Optional parameter to specify the character set of the file"}, "format"=>{"type"=>"enum", "options"=>["ndjson", "xml", "delimited", "semi_structured_text"], "description"=>"Optional parameter to specify the high level file format"}, "has_header_row"=>{"type"=>"boolean", "description"=>"Optional parameter to specify whether a delimited file includes the column names in its first row"}, "column_names"=>{"type"=>"list", "description"=>"Optional parameter containing a comma separated list of the column names for a delimited file"}, "delimiter"=>{"type"=>"string", "description"=>"Optional parameter to specify the delimiter character for a delimited file - must be a single character"}, "quote"=>{"type"=>"string", "description"=>"Optional parameter to specify the quote character for a delimited file - must be a single character"}, "should_trim_fields"=>{"type"=>"boolean", "description"=>"Optional parameter to specify whether the values between delimiters in a delimited file should have whitespace trimmed from them"}, "grok_pattern"=>{"type"=>"string", "description"=>"Optional parameter to specify the Grok pattern that should be used to extract fields from messages in a semi-structured text file"}, "timestamp_field"=>{"type"=>"string", "description"=>"Optional parameter to specify the timestamp field in the file"}, "timestamp_format"=>{"type"=>"string", "description"=>"Optional parameter to specify the timestamp format in the file - may be either a Joda or Java time format"}, "explain"=>{"type"=>"boolean", "description"=>"Whether to include a commentary on how the structure was derived", "default"=>false}}, "body"=>{"description"=>"The contents of the file to be analyzed", "required"=>true, "serialize"=>"bulk"}}
        request(api_name, api_spec, params)
      end

      # ml.flush_job 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-flush-job.html", "description"=>"Forces any buffered data to be processed by the job."}
      def ml_flush_job(params = {})
        api_name = 'ml.flush_job'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-flush-job.html", "description"=>"Forces any buffered data to be processed by the job."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/anomaly_detectors/{job_id}/_flush", "methods"=>["POST"], "parts"=>{"job_id"=>{"type"=>"string", "description"=>"The name of the job to flush"}}}]}, "params"=>{"calc_interim"=>{"type"=>"boolean", "description"=>"Calculates interim results for the most recent bucket or all buckets within the latency period"}, "start"=>{"type"=>"string", "description"=>"When used in conjunction with calc_interim, specifies the range of buckets on which to calculate interim results"}, "end"=>{"type"=>"string", "description"=>"When used in conjunction with calc_interim, specifies the range of buckets on which to calculate interim results"}, "advance_time"=>{"type"=>"string", "description"=>"Advances time to the given value generating results and updating the model for the advanced interval"}, "skip_time"=>{"type"=>"string", "description"=>"Skips time to the given value without generating results or updating the model for the skipped interval"}}, "body"=>{"description"=>"Flush parameters"}}
        request(api_name, api_spec, params)
      end

      # ml.forecast 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-forecast.html", "description"=>"Predicts the future behavior of a time series by using its historical behavior."}
      def ml_forecast(params = {})
        api_name = 'ml.forecast'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-forecast.html", "description"=>"Predicts the future behavior of a time series by using its historical behavior."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/anomaly_detectors/{job_id}/_forecast", "methods"=>["POST"], "parts"=>{"job_id"=>{"type"=>"string", "description"=>"The ID of the job to forecast for"}}}]}, "params"=>{"duration"=>{"type"=>"time", "required"=>false, "description"=>"The duration of the forecast"}, "expires_in"=>{"type"=>"time", "required"=>false, "description"=>"The time interval after which the forecast expires. Expired forecasts will be deleted at the first opportunity."}, "max_model_memory"=>{"type"=>"string", "required"=>false, "description"=>"The max memory able to be used by the forecast. Default is 20mb."}}}
        request(api_name, api_spec, params)
      end

      # ml.get_buckets 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-bucket.html", "description"=>"Retrieves anomaly detection job results for one or more buckets."}
      def ml_get_buckets(params = {})
        api_name = 'ml.get_buckets'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-bucket.html", "description"=>"Retrieves anomaly detection job results for one or more buckets."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/anomaly_detectors/{job_id}/results/buckets/{timestamp}", "methods"=>["GET", "POST"], "parts"=>{"job_id"=>{"type"=>"string", "description"=>"ID of the job to get bucket results from"}, "timestamp"=>{"type"=>"string", "description"=>"The timestamp of the desired single bucket result"}}}, {"path"=>"/_ml/anomaly_detectors/{job_id}/results/buckets", "methods"=>["GET", "POST"], "parts"=>{"job_id"=>{"type"=>"string", "description"=>"ID of the job to get bucket results from"}}}]}, "params"=>{"expand"=>{"type"=>"boolean", "description"=>"Include anomaly records"}, "exclude_interim"=>{"type"=>"boolean", "description"=>"Exclude interim results"}, "from"=>{"type"=>"int", "description"=>"skips a number of buckets"}, "size"=>{"type"=>"int", "description"=>"specifies a max number of buckets to get"}, "start"=>{"type"=>"string", "description"=>"Start time filter for buckets"}, "end"=>{"type"=>"string", "description"=>"End time filter for buckets"}, "anomaly_score"=>{"type"=>"double", "description"=>"Filter for the most anomalous buckets"}, "sort"=>{"type"=>"string", "description"=>"Sort buckets by a particular field"}, "desc"=>{"type"=>"boolean", "description"=>"Set the sort direction"}}, "body"=>{"description"=>"Bucket selection details if not provided in URI"}}
        request(api_name, api_spec, params)
      end

      # ml.get_calendar_events 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-calendar-event.html", "description"=>"Retrieves information about the scheduled events in calendars."}
      def ml_get_calendar_events(params = {})
        api_name = 'ml.get_calendar_events'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-calendar-event.html", "description"=>"Retrieves information about the scheduled events in calendars."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/calendars/{calendar_id}/events", "methods"=>["GET"], "parts"=>{"calendar_id"=>{"type"=>"string", "description"=>"The ID of the calendar containing the events"}}}]}, "params"=>{"job_id"=>{"type"=>"string", "description"=>"Get events for the job. When this option is used calendar_id must be '_all'"}, "start"=>{"type"=>"string", "description"=>"Get events after this time"}, "end"=>{"type"=>"date", "description"=>"Get events before this time"}, "from"=>{"type"=>"int", "description"=>"Skips a number of events"}, "size"=>{"type"=>"int", "description"=>"Specifies a max number of events to get"}}}
        request(api_name, api_spec, params)
      end

      # ml.get_calendars 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-calendar.html", "description"=>"Retrieves configuration information for calendars."}
      def ml_get_calendars(params = {})
        api_name = 'ml.get_calendars'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-calendar.html", "description"=>"Retrieves configuration information for calendars."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/calendars", "methods"=>["GET", "POST"]}, {"path"=>"/_ml/calendars/{calendar_id}", "methods"=>["GET", "POST"], "parts"=>{"calendar_id"=>{"type"=>"string", "description"=>"The ID of the calendar to fetch"}}}]}, "params"=>{"from"=>{"type"=>"int", "description"=>"skips a number of calendars"}, "size"=>{"type"=>"int", "description"=>"specifies a max number of calendars to get"}}, "body"=>{"description"=>"The from and size parameters optionally sent in the body"}}
        request(api_name, api_spec, params)
      end

      # ml.get_categories 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-category.html", "description"=>"Retrieves anomaly detection job results for one or more categories."}
      def ml_get_categories(params = {})
        api_name = 'ml.get_categories'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-category.html", "description"=>"Retrieves anomaly detection job results for one or more categories."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/anomaly_detectors/{job_id}/results/categories/{category_id}", "methods"=>["GET", "POST"], "parts"=>{"job_id"=>{"type"=>"string", "description"=>"The name of the job"}, "category_id"=>{"type"=>"long", "description"=>"The identifier of the category definition of interest"}}}, {"path"=>"/_ml/anomaly_detectors/{job_id}/results/categories/", "methods"=>["GET", "POST"], "parts"=>{"job_id"=>{"type"=>"string", "description"=>"The name of the job"}}}]}, "params"=>{"from"=>{"type"=>"int", "description"=>"skips a number of categories"}, "size"=>{"type"=>"int", "description"=>"specifies a max number of categories to get"}, "partition_field_value"=>{"type"=>"string", "description"=>"Specifies the partition to retrieve categories for. This is optional, and should never be used for jobs where per-partition categorization is disabled."}}, "body"=>{"description"=>"Category selection details if not provided in URI"}}
        request(api_name, api_spec, params)
      end

      # ml.get_data_frame_analytics 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/get-dfanalytics.html", "description"=>"Retrieves configuration information for data frame analytics jobs."}
      def ml_get_data_frame_analytics(params = {})
        api_name = 'ml.get_data_frame_analytics'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/get-dfanalytics.html", "description"=>"Retrieves configuration information for data frame analytics jobs."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/data_frame/analytics/{id}", "methods"=>["GET"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The ID of the data frame analytics to fetch"}}}, {"path"=>"/_ml/data_frame/analytics", "methods"=>["GET"]}]}, "params"=>{"allow_no_match"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no data frame analytics. (This includes `_all` string or when no data frame analytics have been specified)", "default"=>true}, "from"=>{"type"=>"int", "description"=>"skips a number of analytics", "default"=>0}, "size"=>{"type"=>"int", "description"=>"specifies a max number of analytics to get", "default"=>100}, "exclude_generated"=>{"required"=>false, "type"=>"boolean", "default"=>false, "description"=>"Omits fields that are illegal to set on data frame analytics PUT"}}}
        request(api_name, api_spec, params)
      end

      # ml.get_data_frame_analytics_stats 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/get-dfanalytics-stats.html", "description"=>"Retrieves usage information for data frame analytics jobs."}
      def ml_get_data_frame_analytics_stats(params = {})
        api_name = 'ml.get_data_frame_analytics_stats'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/get-dfanalytics-stats.html", "description"=>"Retrieves usage information for data frame analytics jobs."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/data_frame/analytics/_stats", "methods"=>["GET"]}, {"path"=>"/_ml/data_frame/analytics/{id}/_stats", "methods"=>["GET"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The ID of the data frame analytics stats to fetch"}}}]}, "params"=>{"allow_no_match"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no data frame analytics. (This includes `_all` string or when no data frame analytics have been specified)", "default"=>true}, "from"=>{"type"=>"int", "description"=>"skips a number of analytics", "default"=>0}, "size"=>{"type"=>"int", "description"=>"specifies a max number of analytics to get", "default"=>100}, "verbose"=>{"type"=>"boolean", "required"=>false, "description"=>"whether the stats response should be verbose", "default"=>false}}}
        request(api_name, api_spec, params)
      end

      # ml.get_datafeed_stats 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-datafeed-stats.html", "description"=>"Retrieves usage information for datafeeds."}
      def ml_get_datafeed_stats(params = {})
        api_name = 'ml.get_datafeed_stats'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-datafeed-stats.html", "description"=>"Retrieves usage information for datafeeds."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/datafeeds/{datafeed_id}/_stats", "methods"=>["GET"], "parts"=>{"datafeed_id"=>{"type"=>"string", "description"=>"The ID of the datafeeds stats to fetch"}}}, {"path"=>"/_ml/datafeeds/_stats", "methods"=>["GET"]}]}, "params"=>{"allow_no_match"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no datafeeds. (This includes `_all` string or when no datafeeds have been specified)"}, "allow_no_datafeeds"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no datafeeds. (This includes `_all` string or when no datafeeds have been specified)", "deprecated"=>true}}}
        request(api_name, api_spec, params)
      end

      # ml.get_datafeeds 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-datafeed.html", "description"=>"Retrieves configuration information for datafeeds."}
      def ml_get_datafeeds(params = {})
        api_name = 'ml.get_datafeeds'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-datafeed.html", "description"=>"Retrieves configuration information for datafeeds."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/datafeeds/{datafeed_id}", "methods"=>["GET"], "parts"=>{"datafeed_id"=>{"type"=>"string", "description"=>"The ID of the datafeeds to fetch"}}}, {"path"=>"/_ml/datafeeds", "methods"=>["GET"]}]}, "params"=>{"allow_no_match"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no datafeeds. (This includes `_all` string or when no datafeeds have been specified)"}, "allow_no_datafeeds"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no datafeeds. (This includes `_all` string or when no datafeeds have been specified)", "deprecated"=>true}, "exclude_generated"=>{"required"=>false, "type"=>"boolean", "default"=>false, "description"=>"Omits fields that are illegal to set on datafeed PUT"}}}
        request(api_name, api_spec, params)
      end

      # ml.get_filters 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-filter.html", "description"=>"Retrieves filters."}
      def ml_get_filters(params = {})
        api_name = 'ml.get_filters'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-filter.html", "description"=>"Retrieves filters."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/filters", "methods"=>["GET"]}, {"path"=>"/_ml/filters/{filter_id}", "methods"=>["GET"], "parts"=>{"filter_id"=>{"type"=>"string", "description"=>"The ID of the filter to fetch"}}}]}, "params"=>{"from"=>{"type"=>"int", "description"=>"skips a number of filters"}, "size"=>{"type"=>"int", "description"=>"specifies a max number of filters to get"}}}
        request(api_name, api_spec, params)
      end

      # ml.get_influencers 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-influencer.html", "description"=>"Retrieves anomaly detection job results for one or more influencers."}
      def ml_get_influencers(params = {})
        api_name = 'ml.get_influencers'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-influencer.html", "description"=>"Retrieves anomaly detection job results for one or more influencers."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/anomaly_detectors/{job_id}/results/influencers", "methods"=>["GET", "POST"], "parts"=>{"job_id"=>{"type"=>"string", "description"=>"Identifier for the anomaly detection job"}}}]}, "params"=>{"exclude_interim"=>{"type"=>"boolean", "description"=>"Exclude interim results"}, "from"=>{"type"=>"int", "description"=>"skips a number of influencers"}, "size"=>{"type"=>"int", "description"=>"specifies a max number of influencers to get"}, "start"=>{"type"=>"string", "description"=>"start timestamp for the requested influencers"}, "end"=>{"type"=>"string", "description"=>"end timestamp for the requested influencers"}, "influencer_score"=>{"type"=>"double", "description"=>"influencer score threshold for the requested influencers"}, "sort"=>{"type"=>"string", "description"=>"sort field for the requested influencers"}, "desc"=>{"type"=>"boolean", "description"=>"whether the results should be sorted in decending order"}}, "body"=>{"description"=>"Influencer selection criteria"}}
        request(api_name, api_spec, params)
      end

      # ml.get_job_stats 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-job-stats.html", "description"=>"Retrieves usage information for anomaly detection jobs."}
      def ml_get_job_stats(params = {})
        api_name = 'ml.get_job_stats'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-job-stats.html", "description"=>"Retrieves usage information for anomaly detection jobs."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/anomaly_detectors/_stats", "methods"=>["GET"]}, {"path"=>"/_ml/anomaly_detectors/{job_id}/_stats", "methods"=>["GET"], "parts"=>{"job_id"=>{"type"=>"string", "description"=>"The ID of the jobs stats to fetch"}}}]}, "params"=>{"allow_no_match"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no jobs. (This includes `_all` string or when no jobs have been specified)"}, "allow_no_jobs"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no jobs. (This includes `_all` string or when no jobs have been specified)", "deprecated"=>true}}}
        request(api_name, api_spec, params)
      end

      # ml.get_jobs 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-job.html", "description"=>"Retrieves configuration information for anomaly detection jobs."}
      def ml_get_jobs(params = {})
        api_name = 'ml.get_jobs'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-job.html", "description"=>"Retrieves configuration information for anomaly detection jobs."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/anomaly_detectors/{job_id}", "methods"=>["GET"], "parts"=>{"job_id"=>{"type"=>"string", "description"=>"The ID of the jobs to fetch"}}}, {"path"=>"/_ml/anomaly_detectors", "methods"=>["GET"]}]}, "params"=>{"allow_no_match"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no jobs. (This includes `_all` string or when no jobs have been specified)"}, "allow_no_jobs"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no jobs. (This includes `_all` string or when no jobs have been specified)", "deprecated"=>true}, "exclude_generated"=>{"required"=>false, "type"=>"boolean", "default"=>false, "description"=>"Omits fields that are illegal to set on job PUT"}}}
        request(api_name, api_spec, params)
      end

      # ml.get_model_snapshots 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-snapshot.html", "description"=>"Retrieves information about model snapshots."}
      def ml_get_model_snapshots(params = {})
        api_name = 'ml.get_model_snapshots'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-snapshot.html", "description"=>"Retrieves information about model snapshots."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/anomaly_detectors/{job_id}/model_snapshots/{snapshot_id}", "methods"=>["GET", "POST"], "parts"=>{"job_id"=>{"type"=>"string", "description"=>"The ID of the job to fetch"}, "snapshot_id"=>{"type"=>"string", "description"=>"The ID of the snapshot to fetch"}}}, {"path"=>"/_ml/anomaly_detectors/{job_id}/model_snapshots", "methods"=>["GET", "POST"], "parts"=>{"job_id"=>{"type"=>"string", "description"=>"The ID of the job to fetch"}}}]}, "params"=>{"from"=>{"type"=>"int", "description"=>"Skips a number of documents"}, "size"=>{"type"=>"int", "description"=>"The default number of documents returned in queries as a string."}, "start"=>{"type"=>"date", "description"=>"The filter 'start' query parameter"}, "end"=>{"type"=>"date", "description"=>"The filter 'end' query parameter"}, "sort"=>{"type"=>"string", "description"=>"Name of the field to sort on"}, "desc"=>{"type"=>"boolean", "description"=>"True if the results should be sorted in descending order"}}, "body"=>{"description"=>"Model snapshot selection criteria"}}
        request(api_name, api_spec, params)
      end

      # ml.get_overall_buckets 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-overall-buckets.html", "description"=>"Retrieves overall bucket results that summarize the bucket results of multiple anomaly detection jobs."}
      def ml_get_overall_buckets(params = {})
        api_name = 'ml.get_overall_buckets'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-overall-buckets.html", "description"=>"Retrieves overall bucket results that summarize the bucket results of multiple anomaly detection jobs."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/anomaly_detectors/{job_id}/results/overall_buckets", "methods"=>["GET", "POST"], "parts"=>{"job_id"=>{"type"=>"string", "description"=>"The job IDs for which to calculate overall bucket results"}}}]}, "params"=>{"top_n"=>{"type"=>"int", "description"=>"The number of top job bucket scores to be used in the overall_score calculation"}, "bucket_span"=>{"type"=>"string", "description"=>"The span of the overall buckets. Defaults to the longest job bucket_span"}, "overall_score"=>{"type"=>"double", "description"=>"Returns overall buckets with overall scores higher than this value"}, "exclude_interim"=>{"type"=>"boolean", "description"=>"If true overall buckets that include interim buckets will be excluded"}, "start"=>{"type"=>"string", "description"=>"Returns overall buckets with timestamps after this time"}, "end"=>{"type"=>"string", "description"=>"Returns overall buckets with timestamps earlier than this time"}, "allow_no_match"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard expression matches no jobs. (This includes `_all` string or when no jobs have been specified)"}, "allow_no_jobs"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard expression matches no jobs. (This includes `_all` string or when no jobs have been specified)", "deprecated"=>true}}, "body"=>{"description"=>"Overall bucket selection details if not provided in URI"}}
        request(api_name, api_spec, params)
      end

      # ml.get_records 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-record.html", "description"=>"Retrieves anomaly records for an anomaly detection job."}
      def ml_get_records(params = {})
        api_name = 'ml.get_records'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-record.html", "description"=>"Retrieves anomaly records for an anomaly detection job."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/anomaly_detectors/{job_id}/results/records", "methods"=>["GET", "POST"], "parts"=>{"job_id"=>{"type"=>"string", "description"=>"The ID of the job"}}}]}, "params"=>{"exclude_interim"=>{"type"=>"boolean", "description"=>"Exclude interim results"}, "from"=>{"type"=>"int", "description"=>"skips a number of records"}, "size"=>{"type"=>"int", "description"=>"specifies a max number of records to get"}, "start"=>{"type"=>"string", "description"=>"Start time filter for records"}, "end"=>{"type"=>"string", "description"=>"End time filter for records"}, "record_score"=>{"type"=>"double", "description"=>"Returns records with anomaly scores greater or equal than this value"}, "sort"=>{"type"=>"string", "description"=>"Sort records by a particular field"}, "desc"=>{"type"=>"boolean", "description"=>"Set the sort direction"}}, "body"=>{"description"=>"Record selection criteria"}}
        request(api_name, api_spec, params)
      end

      # ml.get_trained_models 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/get-trained-models.html", "description"=>"Retrieves configuration information for a trained inference model."}
      def ml_get_trained_models(params = {})
        api_name = 'ml.get_trained_models'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/get-trained-models.html", "description"=>"Retrieves configuration information for a trained inference model."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/trained_models/{model_id}", "methods"=>["GET"], "parts"=>{"model_id"=>{"type"=>"string", "description"=>"The ID of the trained models to fetch"}}}, {"path"=>"/_ml/trained_models", "methods"=>["GET"]}]}, "params"=>{"allow_no_match"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no trained models. (This includes `_all` string or when no trained models have been specified)", "default"=>true}, "include"=>{"type"=>"string", "required"=>false, "description"=>"A comma-separate list of fields to optionally include. Valid options are 'definition' and 'total_feature_importance'. Default is none."}, "include_model_definition"=>{"type"=>"boolean", "required"=>false, "description"=>"Should the full model definition be included in the results. These definitions can be large. So be cautious when including them. Defaults to false.", "default"=>false, "deprecated"=>true}, "decompress_definition"=>{"type"=>"boolean", "required"=>false, "default"=>true, "description"=>"Should the model definition be decompressed into valid JSON or returned in a custom compressed format. Defaults to true."}, "from"=>{"required"=>false, "type"=>"int", "description"=>"skips a number of trained models", "default"=>0}, "size"=>{"required"=>false, "type"=>"int", "description"=>"specifies a max number of trained models to get", "default"=>100}, "tags"=>{"required"=>false, "type"=>"list", "description"=>"A comma-separated list of tags that the model must have."}, "exclude_generated"=>{"required"=>false, "type"=>"boolean", "default"=>false, "description"=>"Omits fields that are illegal to set on model PUT"}}}
        request(api_name, api_spec, params)
      end

      # ml.get_trained_models_stats 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/get-trained-models-stats.html", "description"=>"Retrieves usage information for trained inference models."}
      def ml_get_trained_models_stats(params = {})
        api_name = 'ml.get_trained_models_stats'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/get-trained-models-stats.html", "description"=>"Retrieves usage information for trained inference models."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/trained_models/{model_id}/_stats", "methods"=>["GET"], "parts"=>{"model_id"=>{"type"=>"string", "description"=>"The ID of the trained models stats to fetch"}}}, {"path"=>"/_ml/trained_models/_stats", "methods"=>["GET"]}]}, "params"=>{"allow_no_match"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no trained models. (This includes `_all` string or when no trained models have been specified)", "default"=>true}, "from"=>{"type"=>"int", "description"=>"skips a number of trained models", "default"=>0}, "size"=>{"type"=>"int", "description"=>"specifies a max number of trained models to get", "default"=>100}}}
        request(api_name, api_spec, params)
      end

      # ml.info 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/get-ml-info.html", "description"=>"Returns defaults and limits used by machine learning."}
      def ml_info(params = {})
        api_name = 'ml.info'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/get-ml-info.html", "description"=>"Returns defaults and limits used by machine learning."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/info", "methods"=>["GET"]}]}}
        request(api_name, api_spec, params)
      end

      # ml.open_job 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-open-job.html", "description"=>"Opens one or more anomaly detection jobs."}
      def ml_open_job(params = {})
        api_name = 'ml.open_job'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-open-job.html", "description"=>"Opens one or more anomaly detection jobs."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/anomaly_detectors/{job_id}/_open", "methods"=>["POST"], "parts"=>{"job_id"=>{"type"=>"string", "description"=>"The ID of the job to open"}}}]}}
        request(api_name, api_spec, params)
      end

      # ml.post_calendar_events 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-post-calendar-event.html", "description"=>"Posts scheduled events in a calendar."}
      def ml_post_calendar_events(params = {})
        api_name = 'ml.post_calendar_events'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-post-calendar-event.html", "description"=>"Posts scheduled events in a calendar."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/calendars/{calendar_id}/events", "methods"=>["POST"], "parts"=>{"calendar_id"=>{"type"=>"string", "description"=>"The ID of the calendar to modify"}}}]}, "body"=>{"description"=>"A list of events", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # ml.post_data 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-post-data.html", "description"=>"Sends data to an anomaly detection job for analysis."}
      def ml_post_data(params = {})
        api_name = 'ml.post_data'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-post-data.html", "description"=>"Sends data to an anomaly detection job for analysis."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/x-ndjson", "application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/anomaly_detectors/{job_id}/_data", "methods"=>["POST"], "parts"=>{"job_id"=>{"type"=>"string", "description"=>"The name of the job receiving the data"}}}]}, "params"=>{"reset_start"=>{"type"=>"string", "description"=>"Optional parameter to specify the start of the bucket resetting range"}, "reset_end"=>{"type"=>"string", "description"=>"Optional parameter to specify the end of the bucket resetting range"}}, "body"=>{"description"=>"The data to process", "required"=>true, "serialize"=>"bulk"}}
        request(api_name, api_spec, params)
      end

      # ml.preview_data_frame_analytics 
      # {"url"=>"http://www.elastic.co/guide/en/elasticsearch/reference/current/preview-dfanalytics.html", "description"=>"Previews that will be analyzed given a data frame analytics config."}
      def ml_preview_data_frame_analytics(params = {})
        api_name = 'ml.preview_data_frame_analytics'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"http://www.elastic.co/guide/en/elasticsearch/reference/current/preview-dfanalytics.html", "description"=>"Previews that will be analyzed given a data frame analytics config."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/data_frame/analytics/_preview", "methods"=>["GET", "POST"], "parts"=>{}}, {"path"=>"/_ml/data_frame/analytics/{id}/_preview", "methods"=>["GET", "POST"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The ID of the data frame analytics to preview"}}}]}, "body"=>{"description"=>"The data frame analytics config to preview", "required"=>false}}
        request(api_name, api_spec, params)
      end

      # ml.preview_datafeed 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-preview-datafeed.html", "description"=>"Previews a datafeed."}
      def ml_preview_datafeed(params = {})
        api_name = 'ml.preview_datafeed'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-preview-datafeed.html", "description"=>"Previews a datafeed."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/datafeeds/{datafeed_id}/_preview", "methods"=>["GET", "POST"], "parts"=>{"datafeed_id"=>{"type"=>"string", "description"=>"The ID of the datafeed to preview"}}}, {"path"=>"/_ml/datafeeds/_preview", "methods"=>["GET", "POST"]}]}, "body"=>{"description"=>"The datafeed config and job config with which to execute the preview", "required"=>false}}
        request(api_name, api_spec, params)
      end

      # ml.put_calendar 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-put-calendar.html", "description"=>"Instantiates a calendar."}
      def ml_put_calendar(params = {})
        api_name = 'ml.put_calendar'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-put-calendar.html", "description"=>"Instantiates a calendar."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/calendars/{calendar_id}", "methods"=>["PUT"], "parts"=>{"calendar_id"=>{"type"=>"string", "description"=>"The ID of the calendar to create"}}}]}, "body"=>{"description"=>"The calendar details", "required"=>false}}
        request(api_name, api_spec, params)
      end

      # ml.put_calendar_job 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-put-calendar-job.html", "description"=>"Adds an anomaly detection job to a calendar."}
      def ml_put_calendar_job(params = {})
        api_name = 'ml.put_calendar_job'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-put-calendar-job.html", "description"=>"Adds an anomaly detection job to a calendar."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/calendars/{calendar_id}/jobs/{job_id}", "methods"=>["PUT"], "parts"=>{"calendar_id"=>{"type"=>"string", "description"=>"The ID of the calendar to modify"}, "job_id"=>{"type"=>"string", "description"=>"The ID of the job to add to the calendar"}}}]}}
        request(api_name, api_spec, params)
      end

      # ml.put_data_frame_analytics 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/put-dfanalytics.html", "description"=>"Instantiates a data frame analytics job."}
      def ml_put_data_frame_analytics(params = {})
        api_name = 'ml.put_data_frame_analytics'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/put-dfanalytics.html", "description"=>"Instantiates a data frame analytics job."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/data_frame/analytics/{id}", "methods"=>["PUT"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The ID of the data frame analytics to create"}}}]}, "body"=>{"description"=>"The data frame analytics configuration", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # ml.put_datafeed 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-put-datafeed.html", "description"=>"Instantiates a datafeed."}
      def ml_put_datafeed(params = {})
        api_name = 'ml.put_datafeed'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-put-datafeed.html", "description"=>"Instantiates a datafeed."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/datafeeds/{datafeed_id}", "methods"=>["PUT"], "parts"=>{"datafeed_id"=>{"type"=>"string", "description"=>"The ID of the datafeed to create"}}}]}, "body"=>{"description"=>"The datafeed config", "required"=>true}, "params"=>{"ignore_unavailable"=>{"type"=>"boolean", "description"=>"Ignore unavailable indexes (default: false)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Ignore if the source indices expressions resolves to no concrete indices (default: true)"}, "ignore_throttled"=>{"type"=>"boolean", "description"=>"Ignore indices that are marked as throttled (default: true)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "description"=>"Whether source index expressions should get expanded to open or closed indices (default: open)"}}}
        request(api_name, api_spec, params)
      end

      # ml.put_filter 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-put-filter.html", "description"=>"Instantiates a filter."}
      def ml_put_filter(params = {})
        api_name = 'ml.put_filter'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-put-filter.html", "description"=>"Instantiates a filter."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/filters/{filter_id}", "methods"=>["PUT"], "parts"=>{"filter_id"=>{"type"=>"string", "description"=>"The ID of the filter to create"}}}]}, "body"=>{"description"=>"The filter details", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # ml.put_job 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-put-job.html", "description"=>"Instantiates an anomaly detection job."}
      def ml_put_job(params = {})
        api_name = 'ml.put_job'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-put-job.html", "description"=>"Instantiates an anomaly detection job."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/anomaly_detectors/{job_id}", "methods"=>["PUT"], "parts"=>{"job_id"=>{"type"=>"string", "description"=>"The ID of the job to create"}}}]}, "params"=>{"ignore_unavailable"=>{"type"=>"boolean", "description"=>"Ignore unavailable indexes (default: false). Only set if datafeed_config is provided."}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Ignore if the source indices expressions resolves to no concrete indices (default: true). Only set if datafeed_config is provided."}, "ignore_throttled"=>{"type"=>"boolean", "description"=>"Ignore indices that are marked as throttled (default: true). Only set if datafeed_config is provided."}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "description"=>"Whether source index expressions should get expanded to open or closed indices (default: open). Only set if datafeed_config is provided."}}, "body"=>{"description"=>"The job", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # ml.put_trained_model 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/put-trained-models.html", "description"=>"Creates an inference trained model."}
      def ml_put_trained_model(params = {})
        api_name = 'ml.put_trained_model'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/put-trained-models.html", "description"=>"Creates an inference trained model."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/trained_models/{model_id}", "methods"=>["PUT"], "parts"=>{"model_id"=>{"type"=>"string", "description"=>"The ID of the trained models to store"}}}]}, "body"=>{"description"=>"The trained model configuration", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # ml.put_trained_model_alias 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/put-trained-models-aliases.html", "description"=>"Creates a new model alias (or reassigns an existing one) to refer to the trained model"}
      def ml_put_trained_model_alias(params = {})
        api_name = 'ml.put_trained_model_alias'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/put-trained-models-aliases.html", "description"=>"Creates a new model alias (or reassigns an existing one) to refer to the trained model"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/trained_models/{model_id}/model_aliases/{model_alias}", "methods"=>["PUT"], "parts"=>{"model_alias"=>{"type"=>"string", "description"=>"The trained model alias to update"}, "model_id"=>{"type"=>"string", "description"=>"The trained model where the model alias should be assigned"}}}]}, "params"=>{"reassign"=>{"type"=>"boolean", "description"=>"If the model_alias already exists and points to a separate model_id, this parameter must be true. Defaults to false."}}}
        request(api_name, api_spec, params)
      end

      # ml.reset_job 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-reset-job.html", "description"=>"Resets an existing anomaly detection job."}
      def ml_reset_job(params = {})
        api_name = 'ml.reset_job'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-reset-job.html", "description"=>"Resets an existing anomaly detection job."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/anomaly_detectors/{job_id}/_reset", "methods"=>["POST"], "parts"=>{"job_id"=>{"type"=>"string", "description"=>"The ID of the job to reset"}}}]}, "params"=>{"wait_for_completion"=>{"type"=>"boolean", "description"=>"Should this request wait until the operation has completed before returning", "default"=>true}}}
        request(api_name, api_spec, params)
      end

      # ml.revert_model_snapshot 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-revert-snapshot.html", "description"=>"Reverts to a specific snapshot."}
      def ml_revert_model_snapshot(params = {})
        api_name = 'ml.revert_model_snapshot'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-revert-snapshot.html", "description"=>"Reverts to a specific snapshot."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/anomaly_detectors/{job_id}/model_snapshots/{snapshot_id}/_revert", "methods"=>["POST"], "parts"=>{"job_id"=>{"type"=>"string", "description"=>"The ID of the job to fetch"}, "snapshot_id"=>{"type"=>"string", "description"=>"The ID of the snapshot to revert to"}}}]}, "params"=>{"delete_intervening_results"=>{"type"=>"boolean", "description"=>"Should we reset the results back to the time of the snapshot?"}}, "body"=>{"description"=>"Reversion options"}}
        request(api_name, api_spec, params)
      end

      # ml.set_upgrade_mode 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-set-upgrade-mode.html", "description"=>"Sets a cluster wide upgrade_mode setting that prepares machine learning indices for an upgrade."}
      def ml_set_upgrade_mode(params = {})
        api_name = 'ml.set_upgrade_mode'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-set-upgrade-mode.html", "description"=>"Sets a cluster wide upgrade_mode setting that prepares machine learning indices for an upgrade."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/set_upgrade_mode", "methods"=>["POST"]}]}, "params"=>{"enabled"=>{"type"=>"boolean", "description"=>"Whether to enable upgrade_mode ML setting or not. Defaults to false."}, "timeout"=>{"type"=>"time", "description"=>"Controls the time to wait before action times out. Defaults to 30 seconds"}}}
        request(api_name, api_spec, params)
      end

      # ml.start_data_frame_analytics 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/start-dfanalytics.html", "description"=>"Starts a data frame analytics job."}
      def ml_start_data_frame_analytics(params = {})
        api_name = 'ml.start_data_frame_analytics'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/start-dfanalytics.html", "description"=>"Starts a data frame analytics job."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/data_frame/analytics/{id}/_start", "methods"=>["POST"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The ID of the data frame analytics to start"}}}]}, "params"=>{"timeout"=>{"type"=>"time", "required"=>false, "description"=>"Controls the time to wait until the task has started. Defaults to 20 seconds"}}, "body"=>{"description"=>"The start data frame analytics parameters"}}
        request(api_name, api_spec, params)
      end

      # ml.start_datafeed 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-start-datafeed.html", "description"=>"Starts one or more datafeeds."}
      def ml_start_datafeed(params = {})
        api_name = 'ml.start_datafeed'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-start-datafeed.html", "description"=>"Starts one or more datafeeds."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/datafeeds/{datafeed_id}/_start", "methods"=>["POST"], "parts"=>{"datafeed_id"=>{"type"=>"string", "description"=>"The ID of the datafeed to start"}}}]}, "params"=>{"start"=>{"type"=>"string", "required"=>false, "description"=>"The start time from where the datafeed should begin"}, "end"=>{"type"=>"string", "required"=>false, "description"=>"The end time when the datafeed should stop. When not set, the datafeed continues in real time"}, "timeout"=>{"type"=>"time", "required"=>false, "description"=>"Controls the time to wait until a datafeed has started. Default to 20 seconds"}}, "body"=>{"description"=>"The start datafeed parameters"}}
        request(api_name, api_spec, params)
      end

      # ml.stop_data_frame_analytics 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/stop-dfanalytics.html", "description"=>"Stops one or more data frame analytics jobs."}
      def ml_stop_data_frame_analytics(params = {})
        api_name = 'ml.stop_data_frame_analytics'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/stop-dfanalytics.html", "description"=>"Stops one or more data frame analytics jobs."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/data_frame/analytics/{id}/_stop", "methods"=>["POST"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The ID of the data frame analytics to stop"}}}]}, "params"=>{"allow_no_match"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no data frame analytics. (This includes `_all` string or when no data frame analytics have been specified)"}, "force"=>{"type"=>"boolean", "required"=>false, "description"=>"True if the data frame analytics should be forcefully stopped"}, "timeout"=>{"type"=>"time", "required"=>false, "description"=>"Controls the time to wait until the task has stopped. Defaults to 20 seconds"}}, "body"=>{"description"=>"The stop data frame analytics parameters"}}
        request(api_name, api_spec, params)
      end

      # ml.stop_datafeed 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-stop-datafeed.html", "description"=>"Stops one or more datafeeds."}
      def ml_stop_datafeed(params = {})
        api_name = 'ml.stop_datafeed'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-stop-datafeed.html", "description"=>"Stops one or more datafeeds."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/datafeeds/{datafeed_id}/_stop", "methods"=>["POST"], "parts"=>{"datafeed_id"=>{"type"=>"string", "description"=>"The ID of the datafeed to stop"}}}]}, "params"=>{"allow_no_match"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no datafeeds. (This includes `_all` string or when no datafeeds have been specified)"}, "allow_no_datafeeds"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no datafeeds. (This includes `_all` string or when no datafeeds have been specified)", "deprecated"=>true}, "force"=>{"type"=>"boolean", "required"=>false, "description"=>"True if the datafeed should be forcefully stopped."}, "timeout"=>{"type"=>"time", "required"=>false, "description"=>"Controls the time to wait until a datafeed has stopped. Default to 20 seconds"}}, "body"=>{"description"=>"The URL params optionally sent in the body", "required"=>false}}
        request(api_name, api_spec, params)
      end

      # ml.update_data_frame_analytics 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/update-dfanalytics.html", "description"=>"Updates certain properties of a data frame analytics job."}
      def ml_update_data_frame_analytics(params = {})
        api_name = 'ml.update_data_frame_analytics'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/update-dfanalytics.html", "description"=>"Updates certain properties of a data frame analytics job."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/data_frame/analytics/{id}/_update", "methods"=>["POST"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The ID of the data frame analytics to update"}}}]}, "body"=>{"description"=>"The data frame analytics settings to update", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # ml.update_datafeed 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-update-datafeed.html", "description"=>"Updates certain properties of a datafeed."}
      def ml_update_datafeed(params = {})
        api_name = 'ml.update_datafeed'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-update-datafeed.html", "description"=>"Updates certain properties of a datafeed."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/datafeeds/{datafeed_id}/_update", "methods"=>["POST"], "parts"=>{"datafeed_id"=>{"type"=>"string", "description"=>"The ID of the datafeed to update"}}}]}, "body"=>{"description"=>"The datafeed update settings", "required"=>true}, "params"=>{"ignore_unavailable"=>{"type"=>"boolean", "description"=>"Ignore unavailable indexes (default: false)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Ignore if the source indices expressions resolves to no concrete indices (default: true)"}, "ignore_throttled"=>{"type"=>"boolean", "description"=>"Ignore indices that are marked as throttled (default: true)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "description"=>"Whether source index expressions should get expanded to open or closed indices (default: open)"}}}
        request(api_name, api_spec, params)
      end

      # ml.update_filter 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-update-filter.html", "description"=>"Updates the description of a filter, adds items, or removes items."}
      def ml_update_filter(params = {})
        api_name = 'ml.update_filter'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-update-filter.html", "description"=>"Updates the description of a filter, adds items, or removes items."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/filters/{filter_id}/_update", "methods"=>["POST"], "parts"=>{"filter_id"=>{"type"=>"string", "description"=>"The ID of the filter to update"}}}]}, "body"=>{"description"=>"The filter update", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # ml.update_job 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-update-job.html", "description"=>"Updates certain properties of an anomaly detection job."}
      def ml_update_job(params = {})
        api_name = 'ml.update_job'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-update-job.html", "description"=>"Updates certain properties of an anomaly detection job."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/anomaly_detectors/{job_id}/_update", "methods"=>["POST"], "parts"=>{"job_id"=>{"type"=>"string", "description"=>"The ID of the job to create"}}}]}, "body"=>{"description"=>"The job update settings", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # ml.update_model_snapshot 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-update-snapshot.html", "description"=>"Updates certain properties of a snapshot."}
      def ml_update_model_snapshot(params = {})
        api_name = 'ml.update_model_snapshot'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-update-snapshot.html", "description"=>"Updates certain properties of a snapshot."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/anomaly_detectors/{job_id}/model_snapshots/{snapshot_id}/_update", "methods"=>["POST"], "parts"=>{"job_id"=>{"type"=>"string", "description"=>"The ID of the job to fetch"}, "snapshot_id"=>{"type"=>"string", "description"=>"The ID of the snapshot to update"}}}]}, "params"=>{}, "body"=>{"description"=>"The model snapshot properties to update", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # ml.upgrade_job_snapshot 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-upgrade-job-model-snapshot.html", "description"=>"Upgrades a given job snapshot to the current major version."}
      def ml_upgrade_job_snapshot(params = {})
        api_name = 'ml.upgrade_job_snapshot'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-upgrade-job-model-snapshot.html", "description"=>"Upgrades a given job snapshot to the current major version."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/anomaly_detectors/{job_id}/model_snapshots/{snapshot_id}/_upgrade", "methods"=>["POST"], "parts"=>{"job_id"=>{"type"=>"string", "description"=>"The ID of the job"}, "snapshot_id"=>{"type"=>"string", "description"=>"The ID of the snapshot"}}}]}, "params"=>{"timeout"=>{"type"=>"time", "required"=>false, "description"=>"How long should the API wait for the job to be opened and the old snapshot to be loaded."}, "wait_for_completion"=>{"type"=>"boolean", "required"=>false, "description"=>"Should the request wait until the task is complete before responding to the caller. Default is false."}}}
        request(api_name, api_spec, params)
      end

      # ml.validate 
      # {"url"=>"https://www.elastic.co/guide/en/machine-learning/current/ml-jobs.html", "description"=>"Validates an anomaly detection job."}
      def ml_validate(params = {})
        api_name = 'ml.validate'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/machine-learning/current/ml-jobs.html", "description"=>"Validates an anomaly detection job."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/anomaly_detectors/_validate", "methods"=>["POST"]}]}, "params"=>{}, "body"=>{"description"=>"The job config", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # ml.validate_detector 
      # {"url"=>"https://www.elastic.co/guide/en/machine-learning/current/ml-jobs.html", "description"=>"Validates an anomaly detection detector."}
      def ml_validate_detector(params = {})
        api_name = 'ml.validate_detector'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/machine-learning/current/ml-jobs.html", "description"=>"Validates an anomaly detection detector."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ml/anomaly_detectors/_validate/detector", "methods"=>["POST"]}]}, "params"=>{}, "body"=>{"description"=>"The detector", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # monitoring.bulk 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/monitor-elasticsearch-cluster.html", "description"=>"Used by the monitoring features to send monitoring data."}
      def monitoring_bulk(params = {})
        api_name = 'monitoring.bulk'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/monitor-elasticsearch-cluster.html", "description"=>"Used by the monitoring features to send monitoring data."}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/x-ndjson"]}, "url"=>{"paths"=>[{"path"=>"/_monitoring/bulk", "methods"=>["POST", "PUT"]}, {"path"=>"/_monitoring/{type}/bulk", "methods"=>["POST", "PUT"], "parts"=>{"type"=>{"type"=>"string", "description"=>"Default document type for items which don't provide one", "deprecated"=>true}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}]}, "params"=>{"system_id"=>{"type"=>"string", "description"=>"Identifier of the monitored system"}, "system_api_version"=>{"type"=>"string", "description"=>"API Version of the monitored system"}, "interval"=>{"type"=>"string", "description"=>"Collection interval (e.g., '10s' or '10000ms') of the payload"}}, "body"=>{"description"=>"The operation definition and data (action-data pairs), separated by newlines", "required"=>true, "serialize"=>"bulk"}}
        request(api_name, api_spec, params)
      end

      # msearch 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/search-multi-search.html", "description"=>"Allows to execute several search operations in one request."}
      def msearch(params = {})
        api_name = 'msearch'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/search-multi-search.html", "description"=>"Allows to execute several search operations in one request."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/x-ndjson"]}, "url"=>{"paths"=>[{"path"=>"/_msearch", "methods"=>["GET", "POST"]}, {"path"=>"/{index}/_msearch", "methods"=>["GET", "POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to use as default"}}}, {"path"=>"/{index}/{type}/_msearch", "methods"=>["GET", "POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to use as default"}, "type"=>{"type"=>"list", "description"=>"A comma-separated list of document types to use as default"}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}]}, "params"=>{"search_type"=>{"type"=>"enum", "options"=>["query_then_fetch", "dfs_query_then_fetch"], "description"=>"Search operation type"}, "max_concurrent_searches"=>{"type"=>"number", "description"=>"Controls the maximum number of concurrent searches the multi search api will execute"}, "typed_keys"=>{"type"=>"boolean", "description"=>"Specify whether aggregation and suggester names should be prefixed by their respective types in the response"}, "pre_filter_shard_size"=>{"type"=>"number", "description"=>"A threshold that enforces a pre-filter roundtrip to prefilter search shards based on query rewriting if the number of shards the search request expands to exceeds the threshold. This filter roundtrip can limit the number of shards significantly if for instance a shard can not match any documents based on its rewrite method ie. if date filters are mandatory to match but the shard bounds and the query are disjoint."}, "max_concurrent_shard_requests"=>{"type"=>"number", "description"=>"The number of concurrent shard requests each sub search executes concurrently per node. This value should be used to limit the impact of the search on the cluster in order to limit the number of concurrent shard requests", "default"=>5}, "rest_total_hits_as_int"=>{"type"=>"boolean", "description"=>"Indicates whether hits.total should be rendered as an integer or an object in the rest search response", "default"=>false}, "ccs_minimize_roundtrips"=>{"type"=>"boolean", "description"=>"Indicates whether network round-trips should be minimized as part of cross-cluster search requests execution", "default"=>"true"}}, "body"=>{"description"=>"The request definitions (metadata-search request definition pairs), separated by newlines", "required"=>true, "serialize"=>"bulk"}}
        request(api_name, api_spec, params)
      end

      # msearch_template 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/search-multi-search.html", "description"=>"Allows to execute several search template operations in one request."}
      def msearch_template(params = {})
        api_name = 'msearch_template'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/search-multi-search.html", "description"=>"Allows to execute several search template operations in one request."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/x-ndjson"]}, "url"=>{"paths"=>[{"path"=>"/_msearch/template", "methods"=>["GET", "POST"]}, {"path"=>"/{index}/_msearch/template", "methods"=>["GET", "POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to use as default"}}}, {"path"=>"/{index}/{type}/_msearch/template", "methods"=>["GET", "POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to use as default"}, "type"=>{"type"=>"list", "description"=>"A comma-separated list of document types to use as default"}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}]}, "params"=>{"search_type"=>{"type"=>"enum", "options"=>["query_then_fetch", "dfs_query_then_fetch"], "description"=>"Search operation type"}, "typed_keys"=>{"type"=>"boolean", "description"=>"Specify whether aggregation and suggester names should be prefixed by their respective types in the response"}, "max_concurrent_searches"=>{"type"=>"number", "description"=>"Controls the maximum number of concurrent searches the multi search api will execute"}, "rest_total_hits_as_int"=>{"type"=>"boolean", "description"=>"Indicates whether hits.total should be rendered as an integer or an object in the rest search response", "default"=>false}, "ccs_minimize_roundtrips"=>{"type"=>"boolean", "description"=>"Indicates whether network round-trips should be minimized as part of cross-cluster search requests execution", "default"=>"true"}}, "body"=>{"description"=>"The request definitions (metadata-search request definition pairs), separated by newlines", "required"=>true, "serialize"=>"bulk"}}
        request(api_name, api_spec, params)
      end

      # mtermvectors 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-multi-termvectors.html", "description"=>"Returns multiple termvectors in one request."}
      def mtermvectors(params = {})
        api_name = 'mtermvectors'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-multi-termvectors.html", "description"=>"Returns multiple termvectors in one request."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_mtermvectors", "methods"=>["GET", "POST"]}, {"path"=>"/{index}/_mtermvectors", "methods"=>["GET", "POST"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The index in which the document resides."}}}, {"path"=>"/{index}/{type}/_mtermvectors", "methods"=>["GET", "POST"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The index in which the document resides."}, "type"=>{"type"=>"string", "description"=>"The type of the document."}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}]}, "params"=>{"ids"=>{"type"=>"list", "description"=>"A comma-separated list of documents ids. You must define ids as parameter or set \"ids\" or \"docs\" in the request body"}, "term_statistics"=>{"type"=>"boolean", "description"=>"Specifies if total term frequency and document frequency should be returned. Applies to all returned documents unless otherwise specified in body \"params\" or \"docs\".", "default"=>false}, "field_statistics"=>{"type"=>"boolean", "description"=>"Specifies if document count, sum of document frequencies and sum of total term frequencies should be returned. Applies to all returned documents unless otherwise specified in body \"params\" or \"docs\".", "default"=>true}, "fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields to return. Applies to all returned documents unless otherwise specified in body \"params\" or \"docs\"."}, "offsets"=>{"type"=>"boolean", "description"=>"Specifies if term offsets should be returned. Applies to all returned documents unless otherwise specified in body \"params\" or \"docs\".", "default"=>true}, "positions"=>{"type"=>"boolean", "description"=>"Specifies if term positions should be returned. Applies to all returned documents unless otherwise specified in body \"params\" or \"docs\".", "default"=>true}, "payloads"=>{"type"=>"boolean", "description"=>"Specifies if term payloads should be returned. Applies to all returned documents unless otherwise specified in body \"params\" or \"docs\".", "default"=>true}, "preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random) .Applies to all returned documents unless otherwise specified in body \"params\" or \"docs\"."}, "routing"=>{"type"=>"string", "description"=>"Specific routing value. Applies to all returned documents unless otherwise specified in body \"params\" or \"docs\"."}, "realtime"=>{"type"=>"boolean", "description"=>"Specifies if requests are real-time as opposed to near-real-time (default: true)."}, "version"=>{"type"=>"number", "description"=>"Explicit version number for concurrency control"}, "version_type"=>{"type"=>"enum", "options"=>["internal", "external", "external_gte", "force"], "description"=>"Specific version type"}}, "body"=>{"description"=>"Define ids, documents, parameters or a list of parameters per document here. You must at least provide a list of document ids. See documentation.", "required"=>false}}
        request(api_name, api_spec, params)
      end

      # nodes.clear_repositories_metering_archive 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/clear-repositories-metering-archive-api.html", "description"=>"Removes the archived repositories metering information present in the cluster."}
      def nodes_clear_repositories_metering_archive(params = {})
        api_name = 'nodes.clear_repositories_metering_archive'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/clear-repositories-metering-archive-api.html", "description"=>"Removes the archived repositories metering information present in the cluster."}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_nodes/{node_id}/_repositories_metering/{max_archive_version}", "methods"=>["DELETE"], "parts"=>{"node_id"=>{"type"=>"list", "description"=>"Comma-separated list of node IDs or names used to limit returned information."}, "max_archive_version"=>{"type"=>"long", "description"=>"Specifies the maximum archive_version to be cleared from the archive."}}}]}}
        request(api_name, api_spec, params)
      end

      # nodes.get_repositories_metering_info 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/get-repositories-metering-api.html", "description"=>"Returns cluster repositories metering information."}
      def nodes_get_repositories_metering_info(params = {})
        api_name = 'nodes.get_repositories_metering_info'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/get-repositories-metering-api.html", "description"=>"Returns cluster repositories metering information."}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_nodes/{node_id}/_repositories_metering", "methods"=>["GET"], "parts"=>{"node_id"=>{"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information."}}}]}}
        request(api_name, api_spec, params)
      end

      # nodes.hot_threads 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-hot-threads.html", "description"=>"Returns information about hot threads on each node in the cluster."}
      def nodes_hot_threads(params = {})
        api_name = 'nodes.hot_threads'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-hot-threads.html", "description"=>"Returns information about hot threads on each node in the cluster."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["text/plain"]}, "url"=>{"paths"=>[{"path"=>"/_nodes/hot_threads", "methods"=>["GET"]}, {"path"=>"/_nodes/{node_id}/hot_threads", "methods"=>["GET"], "parts"=>{"node_id"=>{"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"}}}, {"path"=>"/_cluster/nodes/hotthreads", "methods"=>["GET"], "parts"=>{}, "deprecated"=>{"version"=>"7.0.0", "description"=>"The hot threads API accepts `hotthreads` but only `hot_threads` is documented"}}, {"path"=>"/_cluster/nodes/{node_id}/hotthreads", "methods"=>["GET"], "parts"=>{"node_id"=>{"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"The hot threads API accepts `hotthreads` but only `hot_threads` is documented"}}, {"path"=>"/_nodes/hotthreads", "methods"=>["GET"], "parts"=>{}, "deprecated"=>{"version"=>"7.0.0", "description"=>"The hot threads API accepts `hotthreads` but only `hot_threads` is documented"}}, {"path"=>"/_nodes/{node_id}/hotthreads", "methods"=>["GET"], "parts"=>{"node_id"=>{"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"The hot threads API accepts `hotthreads` but only `hot_threads` is documented"}}, {"path"=>"/_cluster/nodes/hot_threads", "methods"=>["GET"], "parts"=>{}, "deprecated"=>{"version"=>"7.0.0", "description"=>"The hot accepts /_cluster/nodes as prefix for backwards compatibility reasons"}}, {"path"=>"/_cluster/nodes/{node_id}/hot_threads", "methods"=>["GET"], "parts"=>{"node_id"=>{"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"The hot accepts /_cluster/nodes as prefix for backwards compatibility reasons"}}]}, "params"=>{"interval"=>{"type"=>"time", "description"=>"The interval for the second sampling of threads"}, "snapshots"=>{"type"=>"number", "description"=>"Number of samples of thread stacktrace (default: 10)"}, "threads"=>{"type"=>"number", "description"=>"Specify the number of threads to provide information for (default: 3)"}, "ignore_idle_threads"=>{"type"=>"boolean", "description"=>"Don't show threads that are in known-idle places, such as waiting on a socket select or pulling from an empty task queue (default: true)"}, "type"=>{"type"=>"enum", "options"=>["cpu", "wait", "block"], "description"=>"The type to sample (default: cpu)"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}}}
        request(api_name, api_spec, params)
      end

      # nodes.info 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-info.html", "description"=>"Returns information about nodes in the cluster."}
      def nodes_info(params = {})
        api_name = 'nodes.info'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-info.html", "description"=>"Returns information about nodes in the cluster."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_nodes", "methods"=>["GET"]}, {"path"=>"/_nodes/{node_id}", "methods"=>["GET"], "parts"=>{"node_id"=>{"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"}}}, {"path"=>"/_nodes/{metric}", "methods"=>["GET"], "parts"=>{"metric"=>{"type"=>"list", "options"=>["settings", "os", "process", "jvm", "thread_pool", "transport", "http", "plugins", "ingest", "indices", "aggregations"], "description"=>"A comma-separated list of metrics you wish returned. Leave empty to return all metrics."}}}, {"path"=>"/_nodes/{node_id}/{metric}", "methods"=>["GET"], "parts"=>{"node_id"=>{"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"}, "metric"=>{"type"=>"list", "options"=>["settings", "os", "process", "jvm", "thread_pool", "transport", "http", "plugins", "ingest", "indices", "aggregations", "_all", "_none"], "description"=>"A comma-separated list of metrics you wish returned. Use `_all` to retrieve all metrics and `_none` to retrieve the node identity without any additional metrics."}}}]}, "params"=>{"flat_settings"=>{"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}}}
        request(api_name, api_spec, params)
      end

      # nodes.reload_secure_settings 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/secure-settings.html#reloadable-secure-settings", "description"=>"Reloads secure settings."}
      def nodes_reload_secure_settings(params = {})
        api_name = 'nodes.reload_secure_settings'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/secure-settings.html#reloadable-secure-settings", "description"=>"Reloads secure settings."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_nodes/reload_secure_settings", "methods"=>["POST"]}, {"path"=>"/_nodes/{node_id}/reload_secure_settings", "methods"=>["POST"], "parts"=>{"node_id"=>{"type"=>"list", "description"=>"A comma-separated list of node IDs to span the reload/reinit call. Should stay empty because reloading usually involves all cluster nodes."}}}]}, "params"=>{"timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}}, "body"=>{"description"=>"An object containing the password for the elasticsearch keystore", "required"=>false}}
        request(api_name, api_spec, params)
      end

      # nodes.stats 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-stats.html", "description"=>"Returns statistical information about nodes in the cluster."}
      def nodes_stats(params = {})
        api_name = 'nodes.stats'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-stats.html", "description"=>"Returns statistical information about nodes in the cluster."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_nodes/stats", "methods"=>["GET"]}, {"path"=>"/_nodes/{node_id}/stats", "methods"=>["GET"], "parts"=>{"node_id"=>{"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"}}}, {"path"=>"/_nodes/stats/{metric}", "methods"=>["GET"], "parts"=>{"metric"=>{"type"=>"list", "options"=>["_all", "breaker", "fs", "http", "indices", "jvm", "os", "process", "thread_pool", "transport", "discovery", "indexing_pressure"], "description"=>"Limit the information returned to the specified metrics"}}}, {"path"=>"/_nodes/{node_id}/stats/{metric}", "methods"=>["GET"], "parts"=>{"metric"=>{"type"=>"list", "options"=>["_all", "breaker", "fs", "http", "indices", "jvm", "os", "process", "thread_pool", "transport", "discovery", "indexing_pressure"], "description"=>"Limit the information returned to the specified metrics"}, "node_id"=>{"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"}}}, {"path"=>"/_nodes/stats/{metric}/{index_metric}", "methods"=>["GET"], "parts"=>{"metric"=>{"type"=>"list", "options"=>["_all", "breaker", "fs", "http", "indices", "jvm", "os", "process", "thread_pool", "transport", "discovery", "indexing_pressure"], "description"=>"Limit the information returned to the specified metrics"}, "index_metric"=>{"type"=>"list", "options"=>["_all", "completion", "docs", "fielddata", "query_cache", "flush", "get", "indexing", "merge", "request_cache", "refresh", "search", "segments", "store", "warmer", "suggest", "shard_stats"], "description"=>"Limit the information returned for `indices` metric to the specific index metrics. Isn't used if `indices` (or `all`) metric isn't specified."}}}, {"path"=>"/_nodes/{node_id}/stats/{metric}/{index_metric}", "methods"=>["GET"], "parts"=>{"metric"=>{"type"=>"list", "options"=>["_all", "breaker", "fs", "http", "indices", "jvm", "os", "process", "thread_pool", "transport", "discovery", "indexing_pressure"], "description"=>"Limit the information returned to the specified metrics"}, "index_metric"=>{"type"=>"list", "options"=>["_all", "completion", "docs", "fielddata", "query_cache", "flush", "get", "indexing", "merge", "request_cache", "refresh", "search", "segments", "store", "warmer", "suggest", "shard_stats"], "description"=>"Limit the information returned for `indices` metric to the specific index metrics. Isn't used if `indices` (or `all`) metric isn't specified."}, "node_id"=>{"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"}}}]}, "params"=>{"completion_fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields for `fielddata` and `suggest` index metric (supports wildcards)"}, "fielddata_fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields for `fielddata` index metric (supports wildcards)"}, "fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields for `fielddata` and `completion` index metric (supports wildcards)"}, "groups"=>{"type"=>"boolean", "description"=>"A comma-separated list of search groups for `search` index metric"}, "level"=>{"type"=>"enum", "description"=>"Return indices stats aggregated at index, node or shard level", "options"=>["indices", "node", "shards"], "default"=>"node"}, "types"=>{"type"=>"list", "description"=>"A comma-separated list of document types for the `indexing` index metric"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "include_segment_file_sizes"=>{"type"=>"boolean", "description"=>"Whether to report the aggregated disk usage of each one of the Lucene index files (only applies if segment stats are requested)", "default"=>false}, "include_unloaded_segments"=>{"type"=>"boolean", "description"=>"If set to true segment stats will include stats for segments that are not currently loaded into memory", "default"=>false}}}
        request(api_name, api_spec, params)
      end

      # nodes.usage 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-usage.html", "description"=>"Returns low-level information about REST actions usage on nodes."}
      def nodes_usage(params = {})
        api_name = 'nodes.usage'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-usage.html", "description"=>"Returns low-level information about REST actions usage on nodes."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_nodes/usage", "methods"=>["GET"]}, {"path"=>"/_nodes/{node_id}/usage", "methods"=>["GET"], "parts"=>{"node_id"=>{"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"}}}, {"path"=>"/_nodes/usage/{metric}", "methods"=>["GET"], "parts"=>{"metric"=>{"type"=>"list", "options"=>["_all", "rest_actions"], "description"=>"Limit the information returned to the specified metrics"}}}, {"path"=>"/_nodes/{node_id}/usage/{metric}", "methods"=>["GET"], "parts"=>{"metric"=>{"type"=>"list", "options"=>["_all", "rest_actions"], "description"=>"Limit the information returned to the specified metrics"}, "node_id"=>{"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"}}}]}, "params"=>{"timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}}}
        request(api_name, api_spec, params)
      end

      # open_point_in_time 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/point-in-time-api.html", "description"=>"Open a point in time that can be used in subsequent searches"}
      def open_point_in_time(params = {})
        api_name = 'open_point_in_time'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/point-in-time-api.html", "description"=>"Open a point in time that can be used in subsequent searches"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_pit", "methods"=>["POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to open point in time; use `_all` or empty string to perform the operation on all indices"}}}]}, "params"=>{"preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"}, "routing"=>{"type"=>"string", "description"=>"Specific routing value"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "keep_alive"=>{"type"=>"string", "description"=>"Specific the time to live for the point in time"}}}
        request(api_name, api_spec, params)
      end

      # ping 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html", "description"=>"Returns whether the cluster is running."}
      def ping(params = {})
        api_name = 'ping'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html", "description"=>"Returns whether the cluster is running."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/", "methods"=>["HEAD"]}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end
      alias :ping? :ping

      # put_script 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-scripting.html", "description"=>"Creates or updates a script."}
      def put_script(params = {})
        api_name = 'put_script'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-scripting.html", "description"=>"Creates or updates a script."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_scripts/{id}", "methods"=>["PUT", "POST"], "parts"=>{"id"=>{"type"=>"string", "description"=>"Script ID"}}}, {"path"=>"/_scripts/{id}/{context}", "methods"=>["PUT", "POST"], "parts"=>{"id"=>{"type"=>"string", "description"=>"Script ID"}, "context"=>{"type"=>"string", "description"=>"Script context"}}}]}, "params"=>{"timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}, "context"=>{"type"=>"string", "description"=>"Context name to compile script against"}}, "body"=>{"description"=>"The document", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # rank_eval 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/search-rank-eval.html", "description"=>"Allows to evaluate the quality of ranked search results over a set of typical search queries"}
      def rank_eval(params = {})
        api_name = 'rank_eval'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/search-rank-eval.html", "description"=>"Allows to evaluate the quality of ranked search results over a set of typical search queries"}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_rank_eval", "methods"=>["GET", "POST"]}, {"path"=>"/{index}/_rank_eval", "methods"=>["GET", "POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices"}}}]}, "params"=>{"ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "search_type"=>{"type"=>"enum", "options"=>["query_then_fetch", "dfs_query_then_fetch"], "description"=>"Search operation type"}}, "body"=>{"description"=>"The ranking evaluation search definition, including search requests, document ratings and ranking metric definition.", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # reindex 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-reindex.html", "description"=>"Allows to copy documents from one index to another, optionally filtering the source\ndocuments by a query, changing the destination index settings, or fetching the\ndocuments from a remote cluster."}
      def reindex(params = {})
        api_name = 'reindex'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-reindex.html", "description"=>"Allows to copy documents from one index to another, optionally filtering the source\ndocuments by a query, changing the destination index settings, or fetching the\ndocuments from a remote cluster."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_reindex", "methods"=>["POST"]}]}, "params"=>{"refresh"=>{"type"=>"boolean", "description"=>"Should the affected indexes be refreshed?"}, "timeout"=>{"type"=>"time", "default"=>"1m", "description"=>"Time each individual bulk request should wait for shards that are unavailable."}, "wait_for_active_shards"=>{"type"=>"string", "description"=>"Sets the number of shard copies that must be active before proceeding with the reindex operation. Defaults to 1, meaning the primary shard only. Set to `all` for all shard copies, otherwise set to any non-negative value less than or equal to the total number of copies for the shard (number of replicas + 1)"}, "wait_for_completion"=>{"type"=>"boolean", "default"=>true, "description"=>"Should the request should block until the reindex is complete."}, "requests_per_second"=>{"type"=>"number", "default"=>0, "description"=>"The throttle to set on this request in sub-requests per second. -1 means no throttle."}, "scroll"=>{"type"=>"time", "description"=>"Control how long to keep the search context alive", "default"=>"5m"}, "slices"=>{"type"=>"number|string", "default"=>1, "description"=>"The number of slices this task should be divided into. Defaults to 1, meaning the task isn't sliced into subtasks. Can be set to `auto`."}, "max_docs"=>{"type"=>"number", "description"=>"Maximum number of documents to process (default: all documents)"}}, "body"=>{"description"=>"The search definition using the Query DSL and the prototype for the index request.", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # reindex_rethrottle 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-reindex.html", "description"=>"Changes the number of requests per second for a particular Reindex operation."}
      def reindex_rethrottle(params = {})
        api_name = 'reindex_rethrottle'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-reindex.html", "description"=>"Changes the number of requests per second for a particular Reindex operation."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_reindex/{task_id}/_rethrottle", "methods"=>["POST"], "parts"=>{"task_id"=>{"type"=>"string", "description"=>"The task id to rethrottle"}}}]}, "params"=>{"requests_per_second"=>{"type"=>"number", "required"=>true, "description"=>"The throttle to set on this request in floating sub-requests per second. -1 means set no throttle."}}}
        request(api_name, api_spec, params)
      end

      # render_search_template 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/render-search-template-api.html", "description"=>"Allows to use the Mustache language to pre-render a search definition."}
      def render_search_template(params = {})
        api_name = 'render_search_template'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/render-search-template-api.html", "description"=>"Allows to use the Mustache language to pre-render a search definition."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_render/template", "methods"=>["GET", "POST"]}, {"path"=>"/_render/template/{id}", "methods"=>["GET", "POST"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The id of the stored search template"}}}]}, "body"=>{"description"=>"The search definition template and its params"}}
        request(api_name, api_spec, params)
      end

      # rollup.delete_job 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-delete-job.html", "description"=>"Deletes an existing rollup job."}
      def rollup_delete_job(params = {})
        api_name = 'rollup.delete_job'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-delete-job.html", "description"=>"Deletes an existing rollup job."}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_rollup/job/{id}", "methods"=>["DELETE"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The ID of the job to delete"}}}]}}
        request(api_name, api_spec, params)
      end

      # rollup.get_jobs 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-get-job.html", "description"=>"Retrieves the configuration, stats, and status of rollup jobs."}
      def rollup_get_jobs(params = {})
        api_name = 'rollup.get_jobs'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-get-job.html", "description"=>"Retrieves the configuration, stats, and status of rollup jobs."}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_rollup/job/{id}", "methods"=>["GET"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The ID of the job(s) to fetch. Accepts glob patterns, or left blank for all jobs"}}}, {"path"=>"/_rollup/job/", "methods"=>["GET"]}]}}
        request(api_name, api_spec, params)
      end

      # rollup.get_rollup_caps 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-get-rollup-caps.html", "description"=>"Returns the capabilities of any rollup jobs that have been configured for a specific index or index pattern."}
      def rollup_get_rollup_caps(params = {})
        api_name = 'rollup.get_rollup_caps'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-get-rollup-caps.html", "description"=>"Returns the capabilities of any rollup jobs that have been configured for a specific index or index pattern."}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_rollup/data/{id}", "methods"=>["GET"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The ID of the index to check rollup capabilities on, or left blank for all jobs"}}}, {"path"=>"/_rollup/data/", "methods"=>["GET"]}]}}
        request(api_name, api_spec, params)
      end

      # rollup.get_rollup_index_caps 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-get-rollup-index-caps.html", "description"=>"Returns the rollup capabilities of all jobs inside of a rollup index (e.g. the index where rollup data is stored)."}
      def rollup_get_rollup_index_caps(params = {})
        api_name = 'rollup.get_rollup_index_caps'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-get-rollup-index-caps.html", "description"=>"Returns the rollup capabilities of all jobs inside of a rollup index (e.g. the index where rollup data is stored)."}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_rollup/data", "methods"=>["GET"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The rollup index or index pattern to obtain rollup capabilities from."}}}]}}
        request(api_name, api_spec, params)
      end

      # rollup.put_job 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-put-job.html", "description"=>"Creates a rollup job."}
      def rollup_put_job(params = {})
        api_name = 'rollup.put_job'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-put-job.html", "description"=>"Creates a rollup job."}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_rollup/job/{id}", "methods"=>["PUT"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The ID of the job to create"}}}]}, "body"=>{"description"=>"The job configuration", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # rollup.rollup 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/xpack-rollup.html", "description"=>"Rollup an index"}
      def rollup_rollup(params = {})
        api_name = 'rollup.rollup'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/xpack-rollup.html", "description"=>"Rollup an index"}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_rollup/{rollup_index}", "methods"=>["POST"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The index to roll up", "required"=>true}, "rollup_index"=>{"type"=>"string", "description"=>"The name of the rollup index to create", "required"=>true}}}]}, "params"=>{}, "body"=>{"description"=>"The rollup configuration", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # rollup.rollup_search 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-search.html", "description"=>"Enables searching rolled-up data using the standard query DSL."}
      def rollup_rollup_search(params = {})
        api_name = 'rollup.rollup_search'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-search.html", "description"=>"Enables searching rolled-up data using the standard query DSL."}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_rollup_search", "methods"=>["GET", "POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"The indices or index-pattern(s) (containing rollup or regular data) that should be searched"}}}, {"path"=>"/{index}/{type}/_rollup_search", "methods"=>["GET", "POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"The indices or index-pattern(s) (containing rollup or regular data) that should be searched"}, "type"=>{"type"=>"string", "required"=>false, "description"=>"The doc type inside the index", "deprecated"=>true}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}]}, "params"=>{"typed_keys"=>{"type"=>"boolean", "description"=>"Specify whether aggregation and suggester names should be prefixed by their respective types in the response"}, "rest_total_hits_as_int"=>{"type"=>"boolean", "description"=>"Indicates whether hits.total should be rendered as an integer or an object in the rest search response", "default"=>false}}, "body"=>{"description"=>"The search request body", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # rollup.start_job 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-start-job.html", "description"=>"Starts an existing, stopped rollup job."}
      def rollup_start_job(params = {})
        api_name = 'rollup.start_job'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-start-job.html", "description"=>"Starts an existing, stopped rollup job."}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_rollup/job/{id}/_start", "methods"=>["POST"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The ID of the job to start"}}}]}}
        request(api_name, api_spec, params)
      end

      # rollup.stop_job 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-stop-job.html", "description"=>"Stops an existing, started rollup job."}
      def rollup_stop_job(params = {})
        api_name = 'rollup.stop_job'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-stop-job.html", "description"=>"Stops an existing, started rollup job."}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_rollup/job/{id}/_stop", "methods"=>["POST"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The ID of the job to stop"}}}]}, "params"=>{"wait_for_completion"=>{"type"=>"boolean", "required"=>false, "description"=>"True if the API should block until the job has fully stopped, false if should be executed async. Defaults to false."}, "timeout"=>{"type"=>"time", "required"=>false, "description"=>"Block for (at maximum) the specified duration while waiting for the job to stop.  Defaults to 30s."}}}
        request(api_name, api_spec, params)
      end

      # scripts_painless_execute 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/painless/master/painless-execute-api.html", "description"=>"Allows an arbitrary script to be executed and a result to be returned"}
      def scripts_painless_execute(params = {})
        api_name = 'scripts_painless_execute'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/painless/master/painless-execute-api.html", "description"=>"Allows an arbitrary script to be executed and a result to be returned"}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_scripts/painless/_execute", "methods"=>["GET", "POST"]}]}, "params"=>{}, "body"=>{"description"=>"The script to execute"}}
        request(api_name, api_spec, params)
      end

      # scroll 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/search-request-body.html#request-body-search-scroll", "description"=>"Allows to retrieve a large numbers of results from a single search request."}
      def scroll(params = {})
        api_name = 'scroll'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/search-request-body.html#request-body-search-scroll", "description"=>"Allows to retrieve a large numbers of results from a single search request."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_search/scroll", "methods"=>["GET", "POST"]}, {"path"=>"/_search/scroll/{scroll_id}", "methods"=>["GET", "POST"], "parts"=>{"scroll_id"=>{"type"=>"string", "description"=>"The scroll ID", "deprecated"=>true}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"A scroll id can be quite large and should be specified as part of the body"}}]}, "params"=>{"scroll"=>{"type"=>"time", "description"=>"Specify how long a consistent view of the index should be maintained for scrolled search"}, "scroll_id"=>{"type"=>"string", "description"=>"The scroll ID for scrolled search"}, "rest_total_hits_as_int"=>{"type"=>"boolean", "description"=>"Indicates whether hits.total should be rendered as an integer or an object in the rest search response", "default"=>false}}, "body"=>{"description"=>"The scroll ID if not passed by URL or query parameter."}}
        request(api_name, api_spec, params)
      end

      # search 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/search-search.html", "description"=>"Returns results matching a query."}
      def search(params = {})
        api_name = 'search'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/search-search.html", "description"=>"Returns results matching a query."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_search", "methods"=>["GET", "POST"]}, {"path"=>"/{index}/_search", "methods"=>["GET", "POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices"}}}, {"path"=>"/{index}/{type}/_search", "methods"=>["GET", "POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices"}, "type"=>{"type"=>"list", "description"=>"A comma-separated list of document types to search; leave empty to perform the operation on all types"}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}]}, "params"=>{"analyzer"=>{"type"=>"string", "description"=>"The analyzer to use for the query string"}, "analyze_wildcard"=>{"type"=>"boolean", "description"=>"Specify whether wildcard and prefix queries should be analyzed (default: false)"}, "ccs_minimize_roundtrips"=>{"type"=>"boolean", "description"=>"Indicates whether network round-trips should be minimized as part of cross-cluster search requests execution", "default"=>"true"}, "default_operator"=>{"type"=>"enum", "options"=>["AND", "OR"], "default"=>"OR", "description"=>"The default operator for query string query (AND or OR)"}, "df"=>{"type"=>"string", "description"=>"The field to use as default where no field prefix is given in the query string"}, "explain"=>{"type"=>"boolean", "description"=>"Specify whether to return detailed information about score computation as part of a hit"}, "stored_fields"=>{"type"=>"list", "description"=>"A comma-separated list of stored fields to return as part of a hit"}, "docvalue_fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields to return as the docvalue representation of a field for each hit"}, "from"=>{"type"=>"number", "description"=>"Starting offset (default: 0)"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "ignore_throttled"=>{"type"=>"boolean", "description"=>"Whether specified concrete, expanded or aliased indices should be ignored when throttled"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "lenient"=>{"type"=>"boolean", "description"=>"Specify whether format-based query failures (such as providing text to a numeric field) should be ignored"}, "preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"}, "q"=>{"type"=>"string", "description"=>"Query in the Lucene query string syntax"}, "routing"=>{"type"=>"list", "description"=>"A comma-separated list of specific routing values"}, "scroll"=>{"type"=>"time", "description"=>"Specify how long a consistent view of the index should be maintained for scrolled search"}, "search_type"=>{"type"=>"enum", "options"=>["query_then_fetch", "dfs_query_then_fetch"], "description"=>"Search operation type"}, "size"=>{"type"=>"number", "description"=>"Number of hits to return (default: 10)"}, "sort"=>{"type"=>"list", "description"=>"A comma-separated list of <field>:<direction> pairs"}, "_source"=>{"type"=>"list", "description"=>"True or false to return the _source field or not, or a list of fields to return"}, "_source_excludes"=>{"type"=>"list", "description"=>"A list of fields to exclude from the returned _source field"}, "_source_includes"=>{"type"=>"list", "description"=>"A list of fields to extract and return from the _source field"}, "terminate_after"=>{"type"=>"number", "description"=>"The maximum number of documents to collect for each shard, upon reaching which the query execution will terminate early."}, "stats"=>{"type"=>"list", "description"=>"Specific 'tag' of the request for logging and statistical purposes"}, "suggest_field"=>{"type"=>"string", "description"=>"Specify which field to use for suggestions"}, "suggest_mode"=>{"type"=>"enum", "options"=>["missing", "popular", "always"], "default"=>"missing", "description"=>"Specify suggest mode"}, "suggest_size"=>{"type"=>"number", "description"=>"How many suggestions to return in response"}, "suggest_text"=>{"type"=>"string", "description"=>"The source text for which the suggestions should be returned"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "track_scores"=>{"type"=>"boolean", "description"=>"Whether to calculate and return scores even if they are not used for sorting"}, "track_total_hits"=>{"type"=>"boolean", "description"=>"Indicate if the number of documents that match the query should be tracked"}, "allow_partial_search_results"=>{"type"=>"boolean", "default"=>true, "description"=>"Indicate if an error should be returned if there is a partial search failure or timeout"}, "typed_keys"=>{"type"=>"boolean", "description"=>"Specify whether aggregation and suggester names should be prefixed by their respective types in the response"}, "version"=>{"type"=>"boolean", "description"=>"Specify whether to return document version as part of a hit"}, "seq_no_primary_term"=>{"type"=>"boolean", "description"=>"Specify whether to return sequence number and primary term of the last modification of each hit"}, "request_cache"=>{"type"=>"boolean", "description"=>"Specify if request cache should be used for this request or not, defaults to index level setting"}, "batched_reduce_size"=>{"type"=>"number", "description"=>"The number of shard results that should be reduced at once on the coordinating node. This value should be used as a protection mechanism to reduce the memory overhead per search request if the potential number of shards in the request can be large.", "default"=>512}, "max_concurrent_shard_requests"=>{"type"=>"number", "description"=>"The number of concurrent shard requests per node this search executes concurrently. This value should be used to limit the impact of the search on the cluster in order to limit the number of concurrent shard requests", "default"=>5}, "pre_filter_shard_size"=>{"type"=>"number", "description"=>"A threshold that enforces a pre-filter roundtrip to prefilter search shards based on query rewriting if the number of shards the search request expands to exceeds the threshold. This filter roundtrip can limit the number of shards significantly if for instance a shard can not match any documents based on its rewrite method ie. if date filters are mandatory to match but the shard bounds and the query are disjoint."}, "rest_total_hits_as_int"=>{"type"=>"boolean", "description"=>"Indicates whether hits.total should be rendered as an integer or an object in the rest search response", "default"=>false}, "min_compatible_shard_node"=>{"type"=>"string", "description"=>"The minimum compatible version that all shards involved in search should have for this request to be successful"}}, "body"=>{"description"=>"The search definition using the Query DSL"}}
        request(api_name, api_spec, params)
      end

      # search_mvt 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/search-vector-tile-api.html", "description"=>"Searches a vector tile for geospatial values. Returns results as a binary Mapbox vector tile."}
      def search_mvt(params = {})
        api_name = 'search_mvt'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/search-vector-tile-api.html", "description"=>"Searches a vector tile for geospatial values. Returns results as a binary Mapbox vector tile."}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/vnd.mapbox-vector-tile"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_mvt/{field}/{zoom}/{x}/{y}", "methods"=>["POST", "GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"Comma-separated list of data streams, indices, or aliases to search"}, "field"=>{"type"=>"string", "description"=>"Field containing geospatial data to return"}, "zoom"=>{"type"=>"int", "description"=>"Zoom level for the vector tile to search"}, "x"=>{"type"=>"int", "description"=>"X coordinate for the vector tile to search"}, "y"=>{"type"=>"int", "description"=>"Y coordinate for the vector tile to search"}}}]}, "params"=>{"exact_bounds"=>{"type"=>"boolean", "description"=>"If false, the meta layer's feature is the bounding box of the tile. If true, the meta layer's feature is a bounding box resulting from a `geo_bounds` aggregation.", "default"=>false}, "extent"=>{"type"=>"int", "description"=>"Size, in pixels, of a side of the vector tile.", "default"=>4096}, "grid_precision"=>{"type"=>"int", "description"=>"Additional zoom levels available through the aggs layer. Accepts 0-8.", "default"=>8}, "grid_type"=>{"type"=>"enum", "options"=>["grid", "point"], "description"=>"Determines the geometry type for features in the aggs layer.", "default"=>"grid"}, "size"=>{"type"=>"int", "description"=>"Maximum number of features to return in the hits layer. Accepts 0-10000.", "default"=>10000}}, "body"=>{"description"=>"Search request body.", "required"=>false}}
        request(api_name, api_spec, params)
      end

      # search_shards 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/search-shards.html", "description"=>"Returns information about the indices and shards that a search request would be executed against."}
      def search_shards(params = {})
        api_name = 'search_shards'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/search-shards.html", "description"=>"Returns information about the indices and shards that a search request would be executed against."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_search_shards", "methods"=>["GET", "POST"]}, {"path"=>"/{index}/_search_shards", "methods"=>["GET", "POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices"}}}]}, "params"=>{"preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"}, "routing"=>{"type"=>"string", "description"=>"Specific routing value"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}}}
        request(api_name, api_spec, params)
      end

      # search_template 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/search-template.html", "description"=>"Allows to use the Mustache language to pre-render a search definition."}
      def search_template(params = {})
        api_name = 'search_template'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/search-template.html", "description"=>"Allows to use the Mustache language to pre-render a search definition."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_search/template", "methods"=>["GET", "POST"]}, {"path"=>"/{index}/_search/template", "methods"=>["GET", "POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices"}}}, {"path"=>"/{index}/{type}/_search/template", "methods"=>["GET", "POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices"}, "type"=>{"type"=>"list", "description"=>"A comma-separated list of document types to search; leave empty to perform the operation on all types"}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}]}, "params"=>{"ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "ignore_throttled"=>{"type"=>"boolean", "description"=>"Whether specified concrete, expanded or aliased indices should be ignored when throttled"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"}, "routing"=>{"type"=>"list", "description"=>"A comma-separated list of specific routing values"}, "scroll"=>{"type"=>"time", "description"=>"Specify how long a consistent view of the index should be maintained for scrolled search"}, "search_type"=>{"type"=>"enum", "options"=>["query_then_fetch", "dfs_query_then_fetch"], "description"=>"Search operation type"}, "explain"=>{"type"=>"boolean", "description"=>"Specify whether to return detailed information about score computation as part of a hit"}, "profile"=>{"type"=>"boolean", "description"=>"Specify whether to profile the query execution"}, "typed_keys"=>{"type"=>"boolean", "description"=>"Specify whether aggregation and suggester names should be prefixed by their respective types in the response"}, "rest_total_hits_as_int"=>{"type"=>"boolean", "description"=>"Indicates whether hits.total should be rendered as an integer or an object in the rest search response", "default"=>false}, "ccs_minimize_roundtrips"=>{"type"=>"boolean", "description"=>"Indicates whether network round-trips should be minimized as part of cross-cluster search requests execution", "default"=>"true"}}, "body"=>{"description"=>"The search definition template and its params", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # searchable_snapshots.cache_stats 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/searchable-snapshots-apis.html", "description"=>"Retrieve node-level cache statistics about searchable snapshots."}
      def searchable_snapshots_cache_stats(params = {})
        api_name = 'searchable_snapshots.cache_stats'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/searchable-snapshots-apis.html", "description"=>"Retrieve node-level cache statistics about searchable snapshots."}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_searchable_snapshots/cache/stats", "methods"=>["GET"]}, {"path"=>"/_searchable_snapshots/{node_id}/cache/stats", "methods"=>["GET"], "parts"=>{"node_id"=>{"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"}}}]}}
        request(api_name, api_spec, params)
      end

      # searchable_snapshots.clear_cache 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/searchable-snapshots-apis.html", "description"=>"Clear the cache of searchable snapshots."}
      def searchable_snapshots_clear_cache(params = {})
        api_name = 'searchable_snapshots.clear_cache'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/searchable-snapshots-apis.html", "description"=>"Clear the cache of searchable snapshots."}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_searchable_snapshots/cache/clear", "methods"=>["POST"]}, {"path"=>"/{index}/_searchable_snapshots/cache/clear", "methods"=>["POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names"}}}]}, "params"=>{"ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "index"=>{"type"=>"list", "description"=>"A comma-separated list of index name to limit the operation"}}}
        request(api_name, api_spec, params)
      end

      # searchable_snapshots.mount 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/searchable-snapshots-api-mount-snapshot.html", "description"=>"Mount a snapshot as a searchable index."}
      def searchable_snapshots_mount(params = {})
        api_name = 'searchable_snapshots.mount'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/searchable-snapshots-api-mount-snapshot.html", "description"=>"Mount a snapshot as a searchable index."}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_snapshot/{repository}/{snapshot}/_mount", "methods"=>["POST"], "parts"=>{"repository"=>{"type"=>"string", "description"=>"The name of the repository containing the snapshot of the index to mount"}, "snapshot"=>{"type"=>"string", "description"=>"The name of the snapshot of the index to mount"}}}]}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "wait_for_completion"=>{"type"=>"boolean", "description"=>"Should this request wait until the operation has completed before returning", "default"=>false}, "storage"=>{"type"=>"string", "description"=>"Selects the kind of local storage used to accelerate searches. Experimental, and defaults to `full_copy`", "default"=>false}}, "body"=>{"description"=>"The restore configuration for mounting the snapshot as searchable", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # searchable_snapshots.repository_stats 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/searchable-snapshots-apis.html", "description"=>"DEPRECATED: This API is replaced by the Repositories Metering API."}
      def searchable_snapshots_repository_stats(params = {})
        api_name = 'searchable_snapshots.repository_stats'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/searchable-snapshots-apis.html", "description"=>"DEPRECATED: This API is replaced by the Repositories Metering API."}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_snapshot/{repository}/_stats", "methods"=>["GET"], "parts"=>{"repository"=>{"type"=>"string", "description"=>"The repository for which to get the stats for"}}}]}}
        request(api_name, api_spec, params)
      end

      # searchable_snapshots.stats 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/searchable-snapshots-apis.html", "description"=>"Retrieve shard-level statistics about searchable snapshots."}
      def searchable_snapshots_stats(params = {})
        api_name = 'searchable_snapshots.stats'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/searchable-snapshots-apis.html", "description"=>"Retrieve shard-level statistics about searchable snapshots."}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_searchable_snapshots/stats", "methods"=>["GET"]}, {"path"=>"/{index}/_searchable_snapshots/stats", "methods"=>["GET"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names"}}}]}, "params"=>{"level"=>{"type"=>"enum", "description"=>"Return stats aggregated at cluster, index or shard level", "options"=>["cluster", "indices", "shards"], "default"=>"indices"}}}
        request(api_name, api_spec, params)
      end

      # security.authenticate 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-authenticate.html", "description"=>"Enables authentication as a user and retrieve information about the authenticated user."}
      def security_authenticate(params = {})
        api_name = 'security.authenticate'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-authenticate.html", "description"=>"Enables authentication as a user and retrieve information about the authenticated user."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/_authenticate", "methods"=>["GET"]}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # security.change_password 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-change-password.html", "description"=>"Changes the passwords of users in the native realm and built-in users."}
      def security_change_password(params = {})
        api_name = 'security.change_password'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-change-password.html", "description"=>"Changes the passwords of users in the native realm and built-in users."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/user/{username}/_password", "methods"=>["PUT", "POST"], "parts"=>{"username"=>{"type"=>"string", "description"=>"The username of the user to change the password for"}}}, {"path"=>"/_security/user/_password", "methods"=>["PUT", "POST"]}]}, "params"=>{"refresh"=>{"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` (the default) then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` then do nothing with refreshes."}}, "body"=>{"description"=>"the new password for the user", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # security.clear_api_key_cache 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-clear-api-key-cache.html", "description"=>"Clear a subset or all entries from the API key cache."}
      def security_clear_api_key_cache(params = {})
        api_name = 'security.clear_api_key_cache'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-clear-api-key-cache.html", "description"=>"Clear a subset or all entries from the API key cache."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/api_key/{ids}/_clear_cache", "methods"=>["POST"], "parts"=>{"ids"=>{"type"=>"list", "description"=>"A comma-separated list of IDs of API keys to clear from the cache"}}}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # security.clear_cached_privileges 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-clear-privilege-cache.html", "description"=>"Evicts application privileges from the native application privileges cache."}
      def security_clear_cached_privileges(params = {})
        api_name = 'security.clear_cached_privileges'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-clear-privilege-cache.html", "description"=>"Evicts application privileges from the native application privileges cache."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/privilege/{application}/_clear_cache", "methods"=>["POST"], "parts"=>{"application"=>{"type"=>"list", "description"=>"A comma-separated list of application names"}}}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # security.clear_cached_realms 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-clear-cache.html", "description"=>"Evicts users from the user cache. Can completely clear the cache or evict specific users."}
      def security_clear_cached_realms(params = {})
        api_name = 'security.clear_cached_realms'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-clear-cache.html", "description"=>"Evicts users from the user cache. Can completely clear the cache or evict specific users."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/realm/{realms}/_clear_cache", "methods"=>["POST"], "parts"=>{"realms"=>{"type"=>"list", "description"=>"Comma-separated list of realms to clear"}}}]}, "params"=>{"usernames"=>{"type"=>"list", "description"=>"Comma-separated list of usernames to clear from the cache", "required"=>false}}}
        request(api_name, api_spec, params)
      end

      # security.clear_cached_roles 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-clear-role-cache.html", "description"=>"Evicts roles from the native role cache."}
      def security_clear_cached_roles(params = {})
        api_name = 'security.clear_cached_roles'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-clear-role-cache.html", "description"=>"Evicts roles from the native role cache."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/role/{name}/_clear_cache", "methods"=>["POST"], "parts"=>{"name"=>{"type"=>"list", "description"=>"Role name"}}}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # security.clear_cached_service_tokens 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-clear-service-token-caches.html", "description"=>"Evicts tokens from the service account token caches."}
      def security_clear_cached_service_tokens(params = {})
        api_name = 'security.clear_cached_service_tokens'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-clear-service-token-caches.html", "description"=>"Evicts tokens from the service account token caches."}, "stability"=>"beta", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/service/{namespace}/{service}/credential/token/{name}/_clear_cache", "methods"=>["POST"], "parts"=>{"namespace"=>{"type"=>"string", "description"=>"An identifier for the namespace"}, "service"=>{"type"=>"string", "description"=>"An identifier for the service name"}, "name"=>{"type"=>"list", "description"=>"A comma-separated list of service token names"}}}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # security.create_api_key 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-create-api-key.html", "description"=>"Creates an API key for access without requiring basic authentication."}
      def security_create_api_key(params = {})
        api_name = 'security.create_api_key'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-create-api-key.html", "description"=>"Creates an API key for access without requiring basic authentication."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/api_key", "methods"=>["PUT", "POST"]}]}, "params"=>{"refresh"=>{"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` (the default) then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` then do nothing with refreshes."}}, "body"=>{"description"=>"The api key request to create an API key", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # security.create_service_token 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-create-service-token.html", "description"=>"Creates a service account token for access without requiring basic authentication."}
      def security_create_service_token(params = {})
        api_name = 'security.create_service_token'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-create-service-token.html", "description"=>"Creates a service account token for access without requiring basic authentication."}, "stability"=>"beta", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/service/{namespace}/{service}/credential/token/{name}", "methods"=>["PUT", "POST"], "parts"=>{"namespace"=>{"type"=>"string", "description"=>"An identifier for the namespace"}, "service"=>{"type"=>"string", "description"=>"An identifier for the service name"}, "name"=>{"type"=>"string", "description"=>"An identifier for the token name"}}}, {"path"=>"/_security/service/{namespace}/{service}/credential/token", "methods"=>["POST"], "parts"=>{"namespace"=>{"type"=>"string", "description"=>"An identifier for the namespace"}, "service"=>{"type"=>"string", "description"=>"An identifier for the service name"}}}]}, "params"=>{"refresh"=>{"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` then refresh the affected shards to make this operation visible to search, if `wait_for` (the default) then wait for a refresh to make this operation visible to search, if `false` then do nothing with refreshes."}}}
        request(api_name, api_spec, params)
      end

      # security.delete_privileges 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-delete-privilege.html", "description"=>"Removes application privileges."}
      def security_delete_privileges(params = {})
        api_name = 'security.delete_privileges'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-delete-privilege.html", "description"=>"Removes application privileges."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/privilege/{application}/{name}", "methods"=>["DELETE"], "parts"=>{"application"=>{"type"=>"string", "description"=>"Application name"}, "name"=>{"type"=>"string", "description"=>"Privilege name"}}}]}, "params"=>{"refresh"=>{"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` (the default) then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` then do nothing with refreshes."}}}
        request(api_name, api_spec, params)
      end

      # security.delete_role 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-delete-role.html", "description"=>"Removes roles in the native realm."}
      def security_delete_role(params = {})
        api_name = 'security.delete_role'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-delete-role.html", "description"=>"Removes roles in the native realm."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/role/{name}", "methods"=>["DELETE"], "parts"=>{"name"=>{"type"=>"string", "description"=>"Role name"}}}]}, "params"=>{"refresh"=>{"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` (the default) then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` then do nothing with refreshes."}}}
        request(api_name, api_spec, params)
      end

      # security.delete_role_mapping 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-delete-role-mapping.html", "description"=>"Removes role mappings."}
      def security_delete_role_mapping(params = {})
        api_name = 'security.delete_role_mapping'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-delete-role-mapping.html", "description"=>"Removes role mappings."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/role_mapping/{name}", "methods"=>["DELETE"], "parts"=>{"name"=>{"type"=>"string", "description"=>"Role-mapping name"}}}]}, "params"=>{"refresh"=>{"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` (the default) then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` then do nothing with refreshes."}}}
        request(api_name, api_spec, params)
      end

      # security.delete_service_token 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-delete-service-token.html", "description"=>"Deletes a service account token."}
      def security_delete_service_token(params = {})
        api_name = 'security.delete_service_token'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-delete-service-token.html", "description"=>"Deletes a service account token."}, "stability"=>"beta", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/service/{namespace}/{service}/credential/token/{name}", "methods"=>["DELETE"], "parts"=>{"namespace"=>{"type"=>"string", "description"=>"An identifier for the namespace"}, "service"=>{"type"=>"string", "description"=>"An identifier for the service name"}, "name"=>{"type"=>"string", "description"=>"An identifier for the token name"}}}]}, "params"=>{"refresh"=>{"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` then refresh the affected shards to make this operation visible to search, if `wait_for` (the default) then wait for a refresh to make this operation visible to search, if `false` then do nothing with refreshes."}}}
        request(api_name, api_spec, params)
      end

      # security.delete_user 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-delete-user.html", "description"=>"Deletes users from the native realm."}
      def security_delete_user(params = {})
        api_name = 'security.delete_user'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-delete-user.html", "description"=>"Deletes users from the native realm."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/user/{username}", "methods"=>["DELETE"], "parts"=>{"username"=>{"type"=>"string", "description"=>"username"}}}]}, "params"=>{"refresh"=>{"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` (the default) then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` then do nothing with refreshes."}}}
        request(api_name, api_spec, params)
      end

      # security.disable_user 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-disable-user.html", "description"=>"Disables users in the native realm."}
      def security_disable_user(params = {})
        api_name = 'security.disable_user'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-disable-user.html", "description"=>"Disables users in the native realm."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/user/{username}/_disable", "methods"=>["PUT", "POST"], "parts"=>{"username"=>{"type"=>"string", "description"=>"The username of the user to disable"}}}]}, "params"=>{"refresh"=>{"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` (the default) then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` then do nothing with refreshes."}}}
        request(api_name, api_spec, params)
      end

      # security.enable_user 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-enable-user.html", "description"=>"Enables users in the native realm."}
      def security_enable_user(params = {})
        api_name = 'security.enable_user'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-enable-user.html", "description"=>"Enables users in the native realm."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/user/{username}/_enable", "methods"=>["PUT", "POST"], "parts"=>{"username"=>{"type"=>"string", "description"=>"The username of the user to enable"}}}]}, "params"=>{"refresh"=>{"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` (the default) then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` then do nothing with refreshes."}}}
        request(api_name, api_spec, params)
      end

      # security.get_api_key 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-api-key.html", "description"=>"Retrieves information for one or more API keys."}
      def security_get_api_key(params = {})
        api_name = 'security.get_api_key'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-api-key.html", "description"=>"Retrieves information for one or more API keys."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/api_key", "methods"=>["GET"]}]}, "params"=>{"id"=>{"type"=>"string", "description"=>"API key id of the API key to be retrieved"}, "name"=>{"type"=>"string", "description"=>"API key name of the API key to be retrieved"}, "username"=>{"type"=>"string", "description"=>"user name of the user who created this API key to be retrieved"}, "realm_name"=>{"type"=>"string", "description"=>"realm name of the user who created this API key to be retrieved"}, "owner"=>{"type"=>"boolean", "default"=>false, "description"=>"flag to query API keys owned by the currently authenticated user"}}}
        request(api_name, api_spec, params)
      end

      # security.get_builtin_privileges 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-builtin-privileges.html", "description"=>"Retrieves the list of cluster privileges and index privileges that are available in this version of Elasticsearch."}
      def security_get_builtin_privileges(params = {})
        api_name = 'security.get_builtin_privileges'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-builtin-privileges.html", "description"=>"Retrieves the list of cluster privileges and index privileges that are available in this version of Elasticsearch."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/privilege/_builtin", "methods"=>["GET"]}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # security.get_privileges 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-privileges.html", "description"=>"Retrieves application privileges."}
      def security_get_privileges(params = {})
        api_name = 'security.get_privileges'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-privileges.html", "description"=>"Retrieves application privileges."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/privilege", "methods"=>["GET"]}, {"path"=>"/_security/privilege/{application}", "methods"=>["GET"], "parts"=>{"application"=>{"type"=>"string", "description"=>"Application name"}}}, {"path"=>"/_security/privilege/{application}/{name}", "methods"=>["GET"], "parts"=>{"application"=>{"type"=>"string", "description"=>"Application name"}, "name"=>{"type"=>"string", "description"=>"Privilege name"}}}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # security.get_role 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-role.html", "description"=>"Retrieves roles in the native realm."}
      def security_get_role(params = {})
        api_name = 'security.get_role'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-role.html", "description"=>"Retrieves roles in the native realm."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/role/{name}", "methods"=>["GET"], "parts"=>{"name"=>{"type"=>"list", "description"=>"A comma-separated list of role names"}}}, {"path"=>"/_security/role", "methods"=>["GET"]}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # security.get_role_mapping 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-role-mapping.html", "description"=>"Retrieves role mappings."}
      def security_get_role_mapping(params = {})
        api_name = 'security.get_role_mapping'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-role-mapping.html", "description"=>"Retrieves role mappings."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/role_mapping/{name}", "methods"=>["GET"], "parts"=>{"name"=>{"type"=>"list", "description"=>"A comma-separated list of role-mapping names"}}}, {"path"=>"/_security/role_mapping", "methods"=>["GET"]}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # security.get_service_accounts 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-service-accounts.html", "description"=>"Retrieves information about service accounts."}
      def security_get_service_accounts(params = {})
        api_name = 'security.get_service_accounts'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-service-accounts.html", "description"=>"Retrieves information about service accounts."}, "stability"=>"beta", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/service/{namespace}/{service}", "methods"=>["GET"], "parts"=>{"namespace"=>{"type"=>"string", "description"=>"An identifier for the namespace"}, "service"=>{"type"=>"string", "description"=>"An identifier for the service name"}}}, {"path"=>"/_security/service/{namespace}", "methods"=>["GET"], "parts"=>{"namespace"=>{"type"=>"string", "description"=>"An identifier for the namespace"}}}, {"path"=>"/_security/service", "methods"=>["GET"]}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # security.get_service_credentials 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-service-credentials.html", "description"=>"Retrieves information of all service credentials for a service account."}
      def security_get_service_credentials(params = {})
        api_name = 'security.get_service_credentials'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-service-credentials.html", "description"=>"Retrieves information of all service credentials for a service account."}, "stability"=>"beta", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/service/{namespace}/{service}/credential", "methods"=>["GET"], "parts"=>{"namespace"=>{"type"=>"string", "description"=>"An identifier for the namespace"}, "service"=>{"type"=>"string", "description"=>"An identifier for the service name"}}}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # security.get_token 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-token.html", "description"=>"Creates a bearer token for access without requiring basic authentication."}
      def security_get_token(params = {})
        api_name = 'security.get_token'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-token.html", "description"=>"Creates a bearer token for access without requiring basic authentication."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/oauth2/token", "methods"=>["POST"]}]}, "params"=>{}, "body"=>{"description"=>"The token request to get", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # security.get_user 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-user.html", "description"=>"Retrieves information about users in the native realm and built-in users."}
      def security_get_user(params = {})
        api_name = 'security.get_user'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-user.html", "description"=>"Retrieves information about users in the native realm and built-in users."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/user/{username}", "methods"=>["GET"], "parts"=>{"username"=>{"type"=>"list", "description"=>"A comma-separated list of usernames"}}}, {"path"=>"/_security/user", "methods"=>["GET"]}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # security.get_user_privileges 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-user-privileges.html", "description"=>"Retrieves security privileges for the logged in user."}
      def security_get_user_privileges(params = {})
        api_name = 'security.get_user_privileges'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-user-privileges.html", "description"=>"Retrieves security privileges for the logged in user."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/user/_privileges", "methods"=>["GET"]}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # security.grant_api_key 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-grant-api-key.html", "description"=>"Creates an API key on behalf of another user."}
      def security_grant_api_key(params = {})
        api_name = 'security.grant_api_key'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-grant-api-key.html", "description"=>"Creates an API key on behalf of another user."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/api_key/grant", "methods"=>["POST"]}]}, "params"=>{"refresh"=>{"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` (the default) then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` then do nothing with refreshes."}}, "body"=>{"description"=>"The api key request to create an API key", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # security.has_privileges 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-has-privileges.html", "description"=>"Determines whether the specified user has a specified list of privileges."}
      def security_has_privileges(params = {})
        api_name = 'security.has_privileges'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-has-privileges.html", "description"=>"Determines whether the specified user has a specified list of privileges."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/user/_has_privileges", "methods"=>["GET", "POST"]}, {"path"=>"/_security/user/{user}/_has_privileges", "methods"=>["GET", "POST"], "parts"=>{"user"=>{"type"=>"string", "description"=>"Username"}}}]}, "params"=>{}, "body"=>{"description"=>"The privileges to test", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # security.invalidate_api_key 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-invalidate-api-key.html", "description"=>"Invalidates one or more API keys."}
      def security_invalidate_api_key(params = {})
        api_name = 'security.invalidate_api_key'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-invalidate-api-key.html", "description"=>"Invalidates one or more API keys."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/api_key", "methods"=>["DELETE"]}]}, "body"=>{"description"=>"The api key request to invalidate API key(s)", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # security.invalidate_token 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-invalidate-token.html", "description"=>"Invalidates one or more access tokens or refresh tokens."}
      def security_invalidate_token(params = {})
        api_name = 'security.invalidate_token'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-invalidate-token.html", "description"=>"Invalidates one or more access tokens or refresh tokens."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/oauth2/token", "methods"=>["DELETE"]}]}, "params"=>{}, "body"=>{"description"=>"The token to invalidate", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # security.put_privileges 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-put-privileges.html", "description"=>"Adds or updates application privileges."}
      def security_put_privileges(params = {})
        api_name = 'security.put_privileges'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-put-privileges.html", "description"=>"Adds or updates application privileges."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/privilege/", "methods"=>["PUT", "POST"]}]}, "params"=>{"refresh"=>{"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` (the default) then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` then do nothing with refreshes."}}, "body"=>{"description"=>"The privilege(s) to add", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # security.put_role 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-put-role.html", "description"=>"Adds and updates roles in the native realm."}
      def security_put_role(params = {})
        api_name = 'security.put_role'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-put-role.html", "description"=>"Adds and updates roles in the native realm."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/role/{name}", "methods"=>["PUT", "POST"], "parts"=>{"name"=>{"type"=>"string", "description"=>"Role name"}}}]}, "params"=>{"refresh"=>{"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` (the default) then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` then do nothing with refreshes."}}, "body"=>{"description"=>"The role to add", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # security.put_role_mapping 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-put-role-mapping.html", "description"=>"Creates and updates role mappings."}
      def security_put_role_mapping(params = {})
        api_name = 'security.put_role_mapping'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-put-role-mapping.html", "description"=>"Creates and updates role mappings."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/role_mapping/{name}", "methods"=>["PUT", "POST"], "parts"=>{"name"=>{"type"=>"string", "description"=>"Role-mapping name"}}}]}, "params"=>{"refresh"=>{"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` (the default) then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` then do nothing with refreshes."}}, "body"=>{"description"=>"The role mapping to add", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # security.put_user 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-put-user.html", "description"=>"Adds and updates users in the native realm. These users are commonly referred to as native users."}
      def security_put_user(params = {})
        api_name = 'security.put_user'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-put-user.html", "description"=>"Adds and updates users in the native realm. These users are commonly referred to as native users."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/user/{username}", "methods"=>["PUT", "POST"], "parts"=>{"username"=>{"type"=>"string", "description"=>"The username of the User"}}}]}, "params"=>{"refresh"=>{"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` (the default) then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` then do nothing with refreshes."}}, "body"=>{"description"=>"The user to add", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # security.query_api_keys 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-query-api-key.html", "description"=>"Retrieves information for API keys using a subset of query DSL"}
      def security_query_api_keys(params = {})
        api_name = 'security.query_api_keys'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-query-api-key.html", "description"=>"Retrieves information for API keys using a subset of query DSL"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/_query/api_key", "methods"=>["GET", "POST"]}]}, "params"=>{}, "body"=>{"description"=>"From, size, query, sort and search_after", "required"=>false}}
        request(api_name, api_spec, params)
      end

      # security.saml_authenticate 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-saml-authenticate.html", "description"=>"Exchanges a SAML Response message for an Elasticsearch access token and refresh token pair"}
      def security_saml_authenticate(params = {})
        api_name = 'security.saml_authenticate'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-saml-authenticate.html", "description"=>"Exchanges a SAML Response message for an Elasticsearch access token and refresh token pair"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/saml/authenticate", "methods"=>["POST"]}]}, "body"=>{"description"=>"The SAML response to authenticate", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # security.saml_complete_logout 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-saml-complete-logout.html", "description"=>"Verifies the logout response sent from the SAML IdP"}
      def security_saml_complete_logout(params = {})
        api_name = 'security.saml_complete_logout'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-saml-complete-logout.html", "description"=>"Verifies the logout response sent from the SAML IdP"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/saml/complete_logout", "methods"=>["POST"]}]}, "body"=>{"description"=>"The logout response to verify", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # security.saml_invalidate 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-saml-invalidate.html", "description"=>"Consumes a SAML LogoutRequest"}
      def security_saml_invalidate(params = {})
        api_name = 'security.saml_invalidate'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-saml-invalidate.html", "description"=>"Consumes a SAML LogoutRequest"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/saml/invalidate", "methods"=>["POST"]}]}, "body"=>{"description"=>"The LogoutRequest message", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # security.saml_logout 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-saml-logout.html", "description"=>"Invalidates an access token and a refresh token that were generated via the SAML Authenticate API"}
      def security_saml_logout(params = {})
        api_name = 'security.saml_logout'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-saml-logout.html", "description"=>"Invalidates an access token and a refresh token that were generated via the SAML Authenticate API"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/saml/logout", "methods"=>["POST"]}]}, "body"=>{"description"=>"The tokens to invalidate", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # security.saml_prepare_authentication 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-saml-prepare-authentication.html", "description"=>"Creates a SAML authentication request"}
      def security_saml_prepare_authentication(params = {})
        api_name = 'security.saml_prepare_authentication'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-saml-prepare-authentication.html", "description"=>"Creates a SAML authentication request"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/saml/prepare", "methods"=>["POST"]}]}, "body"=>{"description"=>"The realm for which to create the authentication request, identified by either its name or the ACS URL", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # security.saml_service_provider_metadata 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-saml-sp-metadata.html", "description"=>"Generates SAML metadata for the Elastic stack SAML 2.0 Service Provider"}
      def security_saml_service_provider_metadata(params = {})
        api_name = 'security.saml_service_provider_metadata'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-saml-sp-metadata.html", "description"=>"Generates SAML metadata for the Elastic stack SAML 2.0 Service Provider"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_security/saml/metadata/{realm_name}", "methods"=>["GET"], "parts"=>{"realm_name"=>{"type"=>"string", "description"=>"The name of the SAML realm to get the metadata for"}}}]}}
        request(api_name, api_spec, params)
      end

      # shutdown.delete_node 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current", "description"=>"Removes a node from the shutdown list"}
      def shutdown_delete_node(params = {})
        api_name = 'shutdown.delete_node'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current", "description"=>"Removes a node from the shutdown list"}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_nodes/{node_id}/shutdown", "methods"=>["DELETE"], "parts"=>{"node_id"=>{"type"=>"string", "description"=>"The node id of node to be removed from the shutdown state"}}}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # shutdown.get_node 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current", "description"=>"Retrieve status of a node or nodes that are currently marked as shutting down"}
      def shutdown_get_node(params = {})
        api_name = 'shutdown.get_node'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current", "description"=>"Retrieve status of a node or nodes that are currently marked as shutting down"}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_nodes/shutdown", "methods"=>["GET"], "parts"=>{}}, {"path"=>"/_nodes/{node_id}/shutdown", "methods"=>["GET"], "parts"=>{"node_id"=>{"type"=>"string", "description"=>"Which node for which to retrieve the shutdown status"}}}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # shutdown.put_node 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current", "description"=>"Adds a node to be shut down"}
      def shutdown_put_node(params = {})
        api_name = 'shutdown.put_node'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current", "description"=>"Adds a node to be shut down"}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_nodes/{node_id}/shutdown", "methods"=>["PUT"], "parts"=>{"node_id"=>{"type"=>"string", "description"=>"The node id of node to be shut down"}}}]}, "params"=>{}, "body"=>{"description"=>"The shutdown type definition to register", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # slm.delete_lifecycle 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-delete-policy.html", "description"=>"Deletes an existing snapshot lifecycle policy."}
      def slm_delete_lifecycle(params = {})
        api_name = 'slm.delete_lifecycle'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-delete-policy.html", "description"=>"Deletes an existing snapshot lifecycle policy."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_slm/policy/{policy_id}", "methods"=>["DELETE"], "parts"=>{"policy_id"=>{"type"=>"string", "description"=>"The id of the snapshot lifecycle policy to remove"}}}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # slm.execute_lifecycle 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-execute-lifecycle.html", "description"=>"Immediately creates a snapshot according to the lifecycle policy, without waiting for the scheduled time."}
      def slm_execute_lifecycle(params = {})
        api_name = 'slm.execute_lifecycle'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-execute-lifecycle.html", "description"=>"Immediately creates a snapshot according to the lifecycle policy, without waiting for the scheduled time."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_slm/policy/{policy_id}/_execute", "methods"=>["PUT"], "parts"=>{"policy_id"=>{"type"=>"string", "description"=>"The id of the snapshot lifecycle policy to be executed"}}}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # slm.execute_retention 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-execute-retention.html", "description"=>"Deletes any snapshots that are expired according to the policy's retention rules."}
      def slm_execute_retention(params = {})
        api_name = 'slm.execute_retention'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-execute-retention.html", "description"=>"Deletes any snapshots that are expired according to the policy's retention rules."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_slm/_execute_retention", "methods"=>["POST"]}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # slm.get_lifecycle 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-get-policy.html", "description"=>"Retrieves one or more snapshot lifecycle policy definitions and information about the latest snapshot attempts."}
      def slm_get_lifecycle(params = {})
        api_name = 'slm.get_lifecycle'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-get-policy.html", "description"=>"Retrieves one or more snapshot lifecycle policy definitions and information about the latest snapshot attempts."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_slm/policy/{policy_id}", "methods"=>["GET"], "parts"=>{"policy_id"=>{"type"=>"list", "description"=>"Comma-separated list of snapshot lifecycle policies to retrieve"}}}, {"path"=>"/_slm/policy", "methods"=>["GET"]}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # slm.get_stats 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/slm-api-get-stats.html", "description"=>"Returns global and policy-level statistics about actions taken by snapshot lifecycle management."}
      def slm_get_stats(params = {})
        api_name = 'slm.get_stats'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/slm-api-get-stats.html", "description"=>"Returns global and policy-level statistics about actions taken by snapshot lifecycle management."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_slm/stats", "methods"=>["GET"]}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # slm.get_status 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-get-status.html", "description"=>"Retrieves the status of snapshot lifecycle management (SLM)."}
      def slm_get_status(params = {})
        api_name = 'slm.get_status'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-get-status.html", "description"=>"Retrieves the status of snapshot lifecycle management (SLM)."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_slm/status", "methods"=>["GET"]}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # slm.put_lifecycle 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-put-policy.html", "description"=>"Creates or updates a snapshot lifecycle policy."}
      def slm_put_lifecycle(params = {})
        api_name = 'slm.put_lifecycle'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-put-policy.html", "description"=>"Creates or updates a snapshot lifecycle policy."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_slm/policy/{policy_id}", "methods"=>["PUT"], "parts"=>{"policy_id"=>{"type"=>"string", "description"=>"The id of the snapshot lifecycle policy"}}}]}, "params"=>{}, "body"=>{"description"=>"The snapshot lifecycle policy definition to register"}}
        request(api_name, api_spec, params)
      end

      # slm.start 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-start.html", "description"=>"Turns on snapshot lifecycle management (SLM)."}
      def slm_start(params = {})
        api_name = 'slm.start'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-start.html", "description"=>"Turns on snapshot lifecycle management (SLM)."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_slm/start", "methods"=>["POST"]}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # slm.stop 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-stop.html", "description"=>"Turns off snapshot lifecycle management (SLM)."}
      def slm_stop(params = {})
        api_name = 'slm.stop'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-stop.html", "description"=>"Turns off snapshot lifecycle management (SLM)."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_slm/stop", "methods"=>["POST"]}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # snapshot.cleanup_repository 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/clean-up-snapshot-repo-api.html", "description"=>"Removes stale data from repository."}
      def snapshot_cleanup_repository(params = {})
        api_name = 'snapshot.cleanup_repository'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/clean-up-snapshot-repo-api.html", "description"=>"Removes stale data from repository."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_snapshot/{repository}/_cleanup", "methods"=>["POST"], "parts"=>{"repository"=>{"type"=>"string", "description"=>"A repository name"}}}]}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}}}
        request(api_name, api_spec, params)
      end

      # snapshot.clone 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description"=>"Clones indices from one snapshot into another snapshot in the same repository."}
      def snapshot_clone(params = {})
        api_name = 'snapshot.clone'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description"=>"Clones indices from one snapshot into another snapshot in the same repository."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_snapshot/{repository}/{snapshot}/_clone/{target_snapshot}", "methods"=>["PUT"], "parts"=>{"repository"=>{"type"=>"string", "description"=>"A repository name"}, "snapshot"=>{"type"=>"string", "description"=>"The name of the snapshot to clone from"}, "target_snapshot"=>{"type"=>"string", "description"=>"The name of the cloned snapshot to create"}}}]}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}}, "body"=>{"description"=>"The snapshot clone definition", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # snapshot.create 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description"=>"Creates a snapshot in a repository."}
      def snapshot_create(params = {})
        api_name = 'snapshot.create'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description"=>"Creates a snapshot in a repository."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_snapshot/{repository}/{snapshot}", "methods"=>["PUT", "POST"], "parts"=>{"repository"=>{"type"=>"string", "description"=>"A repository name"}, "snapshot"=>{"type"=>"string", "description"=>"A snapshot name"}}}]}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "wait_for_completion"=>{"type"=>"boolean", "description"=>"Should this request wait until the operation has completed before returning", "default"=>false}}, "body"=>{"description"=>"The snapshot definition", "required"=>false}}
        request(api_name, api_spec, params)
      end

      # snapshot.create_repository 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description"=>"Creates a repository."}
      def snapshot_create_repository(params = {})
        api_name = 'snapshot.create_repository'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description"=>"Creates a repository."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_snapshot/{repository}", "methods"=>["PUT", "POST"], "parts"=>{"repository"=>{"type"=>"string", "description"=>"A repository name"}}}]}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "verify"=>{"type"=>"boolean", "description"=>"Whether to verify the repository after creation"}}, "body"=>{"description"=>"The repository definition", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # snapshot.delete 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description"=>"Deletes a snapshot."}
      def snapshot_delete(params = {})
        api_name = 'snapshot.delete'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description"=>"Deletes a snapshot."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_snapshot/{repository}/{snapshot}", "methods"=>["DELETE"], "parts"=>{"repository"=>{"type"=>"string", "description"=>"A repository name"}, "snapshot"=>{"type"=>"string", "description"=>"A snapshot name"}}}]}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}}}
        request(api_name, api_spec, params)
      end

      # snapshot.delete_repository 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description"=>"Deletes a repository."}
      def snapshot_delete_repository(params = {})
        api_name = 'snapshot.delete_repository'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description"=>"Deletes a repository."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_snapshot/{repository}", "methods"=>["DELETE"], "parts"=>{"repository"=>{"type"=>"list", "description"=>"Name of the snapshot repository to unregister. Wildcard (`*`) patterns are supported."}}}]}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}}}
        request(api_name, api_spec, params)
      end

      # snapshot.get 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description"=>"Returns information about a snapshot."}
      def snapshot_get(params = {})
        api_name = 'snapshot.get'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description"=>"Returns information about a snapshot."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_snapshot/{repository}/{snapshot}", "methods"=>["GET"], "parts"=>{"repository"=>{"type"=>"string", "description"=>"A repository name"}, "snapshot"=>{"type"=>"list", "description"=>"A comma-separated list of snapshot names"}}}]}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether to ignore unavailable snapshots, defaults to false which means a SnapshotMissingException is thrown"}, "index_details"=>{"type"=>"boolean", "description"=>"Whether to include details of each index in the snapshot, if those details are available. Defaults to false."}, "include_repository"=>{"type"=>"boolean", "description"=>"Whether to include the repository name in the snapshot info. Defaults to true."}, "verbose"=>{"type"=>"boolean", "description"=>"Whether to show verbose snapshot info or only show the basic info found in the repository index blob"}}}
        request(api_name, api_spec, params)
      end

      # snapshot.get_repository 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description"=>"Returns information about a repository."}
      def snapshot_get_repository(params = {})
        api_name = 'snapshot.get_repository'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description"=>"Returns information about a repository."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_snapshot", "methods"=>["GET"]}, {"path"=>"/_snapshot/{repository}", "methods"=>["GET"], "parts"=>{"repository"=>{"type"=>"list", "description"=>"A comma-separated list of repository names"}}}]}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}}}
        request(api_name, api_spec, params)
      end

      # snapshot.repository_analyze 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description"=>"Analyzes a repository for correctness and performance"}
      def snapshot_repository_analyze(params = {})
        api_name = 'snapshot.repository_analyze'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description"=>"Analyzes a repository for correctness and performance"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_snapshot/{repository}/_analyze", "methods"=>["POST"], "parts"=>{"repository"=>{"type"=>"string", "description"=>"A repository name"}}}]}, "params"=>{"blob_count"=>{"type"=>"number", "description"=>"Number of blobs to create during the test. Defaults to 100."}, "concurrency"=>{"type"=>"number", "description"=>"Number of operations to run concurrently during the test. Defaults to 10."}, "read_node_count"=>{"type"=>"number", "description"=>"Number of nodes on which to read a blob after writing. Defaults to 10."}, "early_read_node_count"=>{"type"=>"number", "description"=>"Number of nodes on which to perform an early read on a blob, i.e. before writing has completed. Early reads are rare actions so the 'rare_action_probability' parameter is also relevant. Defaults to 2."}, "seed"=>{"type"=>"number", "description"=>"Seed for the random number generator used to create the test workload. Defaults to a random value."}, "rare_action_probability"=>{"type"=>"number", "description"=>"Probability of taking a rare action such as an early read or an overwrite. Defaults to 0.02."}, "max_blob_size"=>{"type"=>"string", "description"=>"Maximum size of a blob to create during the test, e.g '1gb' or '100mb'. Defaults to '10mb'."}, "max_total_data_size"=>{"type"=>"string", "description"=>"Maximum total size of all blobs to create during the test, e.g '1tb' or '100gb'. Defaults to '1gb'."}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout. Defaults to '30s'."}, "detailed"=>{"type"=>"boolean", "description"=>"Whether to return detailed results or a summary. Defaults to 'false' so that only the summary is returned."}, "rarely_abort_writes"=>{"type"=>"boolean", "description"=>"Whether to rarely abort writes before they complete. Defaults to 'true'."}}}
        request(api_name, api_spec, params)
      end

      # snapshot.restore 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description"=>"Restores a snapshot."}
      def snapshot_restore(params = {})
        api_name = 'snapshot.restore'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description"=>"Restores a snapshot."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_snapshot/{repository}/{snapshot}/_restore", "methods"=>["POST"], "parts"=>{"repository"=>{"type"=>"string", "description"=>"A repository name"}, "snapshot"=>{"type"=>"string", "description"=>"A snapshot name"}}}]}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "wait_for_completion"=>{"type"=>"boolean", "description"=>"Should this request wait until the operation has completed before returning", "default"=>false}}, "body"=>{"description"=>"Details of what to restore", "required"=>false}}
        request(api_name, api_spec, params)
      end

      # snapshot.status 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description"=>"Returns information about the status of a snapshot."}
      def snapshot_status(params = {})
        api_name = 'snapshot.status'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description"=>"Returns information about the status of a snapshot."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_snapshot/_status", "methods"=>["GET"]}, {"path"=>"/_snapshot/{repository}/_status", "methods"=>["GET"], "parts"=>{"repository"=>{"type"=>"string", "description"=>"A repository name"}}}, {"path"=>"/_snapshot/{repository}/{snapshot}/_status", "methods"=>["GET"], "parts"=>{"repository"=>{"type"=>"string", "description"=>"A repository name"}, "snapshot"=>{"type"=>"list", "description"=>"A comma-separated list of snapshot names"}}}]}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether to ignore unavailable snapshots, defaults to false which means a SnapshotMissingException is thrown"}}}
        request(api_name, api_spec, params)
      end

      # snapshot.verify_repository 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description"=>"Verifies a repository."}
      def snapshot_verify_repository(params = {})
        api_name = 'snapshot.verify_repository'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description"=>"Verifies a repository."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_snapshot/{repository}/_verify", "methods"=>["POST"], "parts"=>{"repository"=>{"type"=>"string", "description"=>"A repository name"}}}]}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}}}
        request(api_name, api_spec, params)
      end

      # sql.clear_cursor 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/clear-sql-cursor-api.html", "description"=>"Clears the SQL cursor"}
      def sql_clear_cursor(params = {})
        api_name = 'sql.clear_cursor'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/clear-sql-cursor-api.html", "description"=>"Clears the SQL cursor"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_sql/close", "methods"=>["POST"]}]}, "body"=>{"description"=>"Specify the cursor value in the `cursor` element to clean the cursor.", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # sql.delete_async 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/delete-async-sql-search-api.html", "description"=>"Deletes an async SQL search or a stored synchronous SQL search. If the search is still running, the API cancels it."}
      def sql_delete_async(params = {})
        api_name = 'sql.delete_async'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/delete-async-sql-search-api.html", "description"=>"Deletes an async SQL search or a stored synchronous SQL search. If the search is still running, the API cancels it."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_sql/async/delete/{id}", "methods"=>["DELETE"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The async search ID"}}}]}}
        request(api_name, api_spec, params)
      end

      # sql.get_async 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/get-async-sql-search-api.html", "description"=>"Returns the current status and available results for an async SQL search or stored synchronous SQL search"}
      def sql_get_async(params = {})
        api_name = 'sql.get_async'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/get-async-sql-search-api.html", "description"=>"Returns the current status and available results for an async SQL search or stored synchronous SQL search"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_sql/async/{id}", "methods"=>["GET"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The async search ID"}}}]}, "params"=>{"delimiter"=>{"type"=>"string", "description"=>"Separator for CSV results", "default"=>","}, "format"=>{"type"=>"string", "description"=>"Short version of the Accept header, e.g. json, yaml"}, "keep_alive"=>{"type"=>"time", "description"=>"Retention period for the search and its results", "default"=>"5d"}, "wait_for_completion_timeout"=>{"type"=>"time", "description"=>"Duration to wait for complete results"}}}
        request(api_name, api_spec, params)
      end

      # sql.get_async_status 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/get-async-sql-search-status-api.html", "description"=>"Returns the current status of an async SQL search or a stored synchronous SQL search"}
      def sql_get_async_status(params = {})
        api_name = 'sql.get_async_status'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/get-async-sql-search-status-api.html", "description"=>"Returns the current status of an async SQL search or a stored synchronous SQL search"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_sql/async/status/{id}", "methods"=>["GET"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The async search ID"}}}]}}
        request(api_name, api_spec, params)
      end

      # sql.query 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/sql-search-api.html", "description"=>"Executes a SQL request"}
      def sql_query(params = {})
        api_name = 'sql.query'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/sql-search-api.html", "description"=>"Executes a SQL request"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_sql", "methods"=>["POST", "GET"]}]}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}}, "body"=>{"description"=>"Use the `query` element to start a query. Use the `cursor` element to continue a query.", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # sql.translate 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/sql-translate-api.html", "description"=>"Translates SQL into Elasticsearch queries"}
      def sql_translate(params = {})
        api_name = 'sql.translate'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/sql-translate-api.html", "description"=>"Translates SQL into Elasticsearch queries"}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_sql/translate", "methods"=>["POST", "GET"]}]}, "params"=>{}, "body"=>{"description"=>"Specify the query in the `query` element.", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # ssl.certificates 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-ssl.html", "description"=>"Retrieves information about the X.509 certificates used to encrypt communications in the cluster."}
      def ssl_certificates(params = {})
        api_name = 'ssl.certificates'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-ssl.html", "description"=>"Retrieves information about the X.509 certificates used to encrypt communications in the cluster."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_ssl/certificates", "methods"=>["GET"]}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # tasks.cancel 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/tasks.html", "description"=>"Cancels a task, if it can be cancelled through an API."}
      def tasks_cancel(params = {})
        api_name = 'tasks.cancel'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/tasks.html", "description"=>"Cancels a task, if it can be cancelled through an API."}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_tasks/_cancel", "methods"=>["POST"]}, {"path"=>"/_tasks/{task_id}/_cancel", "methods"=>["POST"], "parts"=>{"task_id"=>{"type"=>"string", "description"=>"Cancel the task with specified task id (node_id:task_number)"}}}]}, "params"=>{"nodes"=>{"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"}, "actions"=>{"type"=>"list", "description"=>"A comma-separated list of actions that should be cancelled. Leave empty to cancel all."}, "parent_task_id"=>{"type"=>"string", "description"=>"Cancel tasks with specified parent task id (node_id:task_number). Set to -1 to cancel all."}, "wait_for_completion"=>{"type"=>"boolean", "description"=>"Should the request block until the cancellation of the task and its descendant tasks is completed. Defaults to false"}}}
        request(api_name, api_spec, params)
      end

      # tasks.get 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/tasks.html", "description"=>"Returns information about a task."}
      def tasks_get(params = {})
        api_name = 'tasks.get'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/tasks.html", "description"=>"Returns information about a task."}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_tasks/{task_id}", "methods"=>["GET"], "parts"=>{"task_id"=>{"type"=>"string", "description"=>"Return the task with specified id (node_id:task_number)"}}}]}, "params"=>{"wait_for_completion"=>{"type"=>"boolean", "description"=>"Wait for the matching tasks to complete (default: false)"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}}}
        request(api_name, api_spec, params)
      end

      # tasks.list 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/tasks.html", "description"=>"Returns a list of tasks."}
      def tasks_list(params = {})
        api_name = 'tasks.list'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/tasks.html", "description"=>"Returns a list of tasks."}, "stability"=>"experimental", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_tasks", "methods"=>["GET"]}]}, "params"=>{"nodes"=>{"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"}, "actions"=>{"type"=>"list", "description"=>"A comma-separated list of actions that should be returned. Leave empty to return all."}, "detailed"=>{"type"=>"boolean", "description"=>"Return detailed task information (default: false)"}, "parent_task_id"=>{"type"=>"string", "description"=>"Return tasks with specified parent task id (node_id:task_number). Set to -1 to return all."}, "wait_for_completion"=>{"type"=>"boolean", "description"=>"Wait for the matching tasks to complete (default: false)"}, "group_by"=>{"type"=>"enum", "description"=>"Group tasks by nodes or parent/child relationships", "options"=>["nodes", "parents", "none"], "default"=>"nodes"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}}}
        request(api_name, api_spec, params)
      end

      # terms_enum 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/search-terms-enum.html", "description"=>"The terms enum API  can be used to discover terms in the index that begin with the provided string. It is designed for low-latency look-ups used in auto-complete scenarios."}
      def terms_enum(params = {})
        api_name = 'terms_enum'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/search-terms-enum.html", "description"=>"The terms enum API  can be used to discover terms in the index that begin with the provided string. It is designed for low-latency look-ups used in auto-complete scenarios."}, "stability"=>"beta", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_terms_enum", "methods"=>["GET", "POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices"}}}]}, "params"=>{}, "body"=>{"description"=>"field name, string which is the prefix expected in matching terms, timeout and size for max number of results"}}
        request(api_name, api_spec, params)
      end

      # termvectors 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-termvectors.html", "description"=>"Returns information and statistics about terms in the fields of a particular document."}
      def termvectors(params = {})
        api_name = 'termvectors'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-termvectors.html", "description"=>"Returns information and statistics about terms in the fields of a particular document."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_termvectors/{id}", "methods"=>["GET", "POST"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The index in which the document resides."}, "id"=>{"type"=>"string", "description"=>"The id of the document, when not specified a doc param should be supplied."}}}, {"path"=>"/{index}/_termvectors", "methods"=>["GET", "POST"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The index in which the document resides."}}}, {"path"=>"/{index}/{type}/{id}/_termvectors", "methods"=>["GET", "POST"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The index in which the document resides.", "required"=>true}, "type"=>{"type"=>"string", "description"=>"The type of the document.", "required"=>false}, "id"=>{"type"=>"string", "description"=>"The id of the document, when not specified a doc param should be supplied."}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}, {"path"=>"/{index}/{type}/_termvectors", "methods"=>["GET", "POST"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The index in which the document resides.", "required"=>true}, "type"=>{"type"=>"string", "description"=>"The type of the document.", "required"=>false}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}]}, "params"=>{"term_statistics"=>{"type"=>"boolean", "description"=>"Specifies if total term frequency and document frequency should be returned.", "default"=>false}, "field_statistics"=>{"type"=>"boolean", "description"=>"Specifies if document count, sum of document frequencies and sum of total term frequencies should be returned.", "default"=>true}, "fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields to return."}, "offsets"=>{"type"=>"boolean", "description"=>"Specifies if term offsets should be returned.", "default"=>true}, "positions"=>{"type"=>"boolean", "description"=>"Specifies if term positions should be returned.", "default"=>true}, "payloads"=>{"type"=>"boolean", "description"=>"Specifies if term payloads should be returned.", "default"=>true}, "preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)."}, "routing"=>{"type"=>"string", "description"=>"Specific routing value."}, "realtime"=>{"type"=>"boolean", "description"=>"Specifies if request is real-time as opposed to near-real-time (default: true)."}, "version"=>{"type"=>"number", "description"=>"Explicit version number for concurrency control"}, "version_type"=>{"type"=>"enum", "options"=>["internal", "external", "external_gte", "force"], "description"=>"Specific version type"}}, "body"=>{"description"=>"Define parameters and or supply a document to get termvectors for. See documentation.", "required"=>false}}
        request(api_name, api_spec, params)
      end

      # text_structure.find_structure 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/find-structure.html", "description"=>"Finds the structure of a text file. The text file must contain data that is suitable to be ingested into Elasticsearch."}
      def text_structure_find_structure(params = {})
        api_name = 'text_structure.find_structure'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/find-structure.html", "description"=>"Finds the structure of a text file. The text file must contain data that is suitable to be ingested into Elasticsearch."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/x-ndjson"]}, "url"=>{"paths"=>[{"path"=>"/_text_structure/find_structure", "methods"=>["POST"]}]}, "params"=>{"lines_to_sample"=>{"type"=>"int", "description"=>"How many lines of the file should be included in the analysis", "default"=>1000}, "line_merge_size_limit"=>{"type"=>"int", "description"=>"Maximum number of characters permitted in a single message when lines are merged to create messages.", "default"=>10000}, "timeout"=>{"type"=>"time", "description"=>"Timeout after which the analysis will be aborted", "default"=>"25s"}, "charset"=>{"type"=>"string", "description"=>"Optional parameter to specify the character set of the file"}, "format"=>{"type"=>"enum", "options"=>["ndjson", "xml", "delimited", "semi_structured_text"], "description"=>"Optional parameter to specify the high level file format"}, "has_header_row"=>{"type"=>"boolean", "description"=>"Optional parameter to specify whether a delimited file includes the column names in its first row"}, "column_names"=>{"type"=>"list", "description"=>"Optional parameter containing a comma separated list of the column names for a delimited file"}, "delimiter"=>{"type"=>"string", "description"=>"Optional parameter to specify the delimiter character for a delimited file - must be a single character"}, "quote"=>{"type"=>"string", "description"=>"Optional parameter to specify the quote character for a delimited file - must be a single character"}, "should_trim_fields"=>{"type"=>"boolean", "description"=>"Optional parameter to specify whether the values between delimiters in a delimited file should have whitespace trimmed from them"}, "grok_pattern"=>{"type"=>"string", "description"=>"Optional parameter to specify the Grok pattern that should be used to extract fields from messages in a semi-structured text file"}, "timestamp_field"=>{"type"=>"string", "description"=>"Optional parameter to specify the timestamp field in the file"}, "timestamp_format"=>{"type"=>"string", "description"=>"Optional parameter to specify the timestamp format in the file - may be either a Joda or Java time format"}, "explain"=>{"type"=>"boolean", "description"=>"Whether to include a commentary on how the structure was derived", "default"=>false}}, "body"=>{"description"=>"The contents of the file to be analyzed", "required"=>true, "serialize"=>"bulk"}}
        request(api_name, api_spec, params)
      end

      # transform.delete_transform 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/delete-transform.html", "description"=>"Deletes an existing transform."}
      def transform_delete_transform(params = {})
        api_name = 'transform.delete_transform'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/delete-transform.html", "description"=>"Deletes an existing transform."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_transform/{transform_id}", "methods"=>["DELETE"], "parts"=>{"transform_id"=>{"type"=>"string", "description"=>"The id of the transform to delete"}}}]}, "params"=>{"force"=>{"type"=>"boolean", "required"=>false, "description"=>"When `true`, the transform is deleted regardless of its current state. The default value is `false`, meaning that the transform must be `stopped` before it can be deleted."}}}
        request(api_name, api_spec, params)
      end

      # transform.get_transform 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/get-transform.html", "description"=>"Retrieves configuration information for transforms."}
      def transform_get_transform(params = {})
        api_name = 'transform.get_transform'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/get-transform.html", "description"=>"Retrieves configuration information for transforms."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_transform/{transform_id}", "methods"=>["GET"], "parts"=>{"transform_id"=>{"type"=>"string", "description"=>"The id or comma delimited list of id expressions of the transforms to get, '_all' or '*' implies get all transforms"}}}, {"path"=>"/_transform", "methods"=>["GET"]}]}, "params"=>{"from"=>{"type"=>"int", "required"=>false, "description"=>"skips a number of transform configs, defaults to 0"}, "size"=>{"type"=>"int", "required"=>false, "description"=>"specifies a max number of transforms to get, defaults to 100"}, "allow_no_match"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no transforms. (This includes `_all` string or when no transforms have been specified)"}, "exclude_generated"=>{"required"=>false, "type"=>"boolean", "default"=>false, "description"=>"Omits fields that are illegal to set on transform PUT"}}}
        request(api_name, api_spec, params)
      end

      # transform.get_transform_stats 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/get-transform-stats.html", "description"=>"Retrieves usage information for transforms."}
      def transform_get_transform_stats(params = {})
        api_name = 'transform.get_transform_stats'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/get-transform-stats.html", "description"=>"Retrieves usage information for transforms."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_transform/{transform_id}/_stats", "methods"=>["GET"], "parts"=>{"transform_id"=>{"type"=>"string", "description"=>"The id of the transform for which to get stats. '_all' or '*' implies all transforms"}}}]}, "params"=>{"from"=>{"type"=>"number", "required"=>false, "description"=>"skips a number of transform stats, defaults to 0"}, "size"=>{"type"=>"number", "required"=>false, "description"=>"specifies a max number of transform stats to get, defaults to 100"}, "allow_no_match"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no transforms. (This includes `_all` string or when no transforms have been specified)"}}}
        request(api_name, api_spec, params)
      end

      # transform.preview_transform 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/preview-transform.html", "description"=>"Previews a transform."}
      def transform_preview_transform(params = {})
        api_name = 'transform.preview_transform'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/preview-transform.html", "description"=>"Previews a transform."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_transform/_preview", "methods"=>["POST"]}]}, "body"=>{"description"=>"The definition for the transform to preview", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # transform.put_transform 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/put-transform.html", "description"=>"Instantiates a transform."}
      def transform_put_transform(params = {})
        api_name = 'transform.put_transform'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/put-transform.html", "description"=>"Instantiates a transform."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_transform/{transform_id}", "methods"=>["PUT"], "parts"=>{"transform_id"=>{"type"=>"string", "description"=>"The id of the new transform."}}}]}, "params"=>{"defer_validation"=>{"type"=>"boolean", "required"=>false, "description"=>"If validations should be deferred until transform starts, defaults to false."}}, "body"=>{"description"=>"The transform definition", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # transform.start_transform 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/start-transform.html", "description"=>"Starts one or more transforms."}
      def transform_start_transform(params = {})
        api_name = 'transform.start_transform'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/start-transform.html", "description"=>"Starts one or more transforms."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_transform/{transform_id}/_start", "methods"=>["POST"], "parts"=>{"transform_id"=>{"type"=>"string", "description"=>"The id of the transform to start"}}}]}, "params"=>{"timeout"=>{"type"=>"time", "required"=>false, "description"=>"Controls the time to wait for the transform to start"}}}
        request(api_name, api_spec, params)
      end

      # transform.stop_transform 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/stop-transform.html", "description"=>"Stops one or more transforms."}
      def transform_stop_transform(params = {})
        api_name = 'transform.stop_transform'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/stop-transform.html", "description"=>"Stops one or more transforms."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_transform/{transform_id}/_stop", "methods"=>["POST"], "parts"=>{"transform_id"=>{"type"=>"string", "description"=>"The id of the transform to stop"}}}]}, "params"=>{"force"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to force stop a failed transform or not. Default to false"}, "wait_for_completion"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to wait for the transform to fully stop before returning or not. Default to false"}, "timeout"=>{"type"=>"time", "required"=>false, "description"=>"Controls the time to wait until the transform has stopped. Default to 30 seconds"}, "allow_no_match"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to ignore if a wildcard expression matches no transforms. (This includes `_all` string or when no transforms have been specified)"}, "wait_for_checkpoint"=>{"type"=>"boolean", "required"=>false, "description"=>"Whether to wait for the transform to reach a checkpoint before stopping. Default to false"}}}
        request(api_name, api_spec, params)
      end

      # transform.update_transform 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/update-transform.html", "description"=>"Updates certain properties of a transform."}
      def transform_update_transform(params = {})
        api_name = 'transform.update_transform'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/update-transform.html", "description"=>"Updates certain properties of a transform."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_transform/{transform_id}/_update", "methods"=>["POST"], "parts"=>{"transform_id"=>{"type"=>"string", "required"=>true, "description"=>"The id of the transform."}}}]}, "params"=>{"defer_validation"=>{"type"=>"boolean", "required"=>false, "description"=>"If validations should be deferred until transform starts, defaults to false."}}, "body"=>{"description"=>"The update transform definition", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # update 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-update.html", "description"=>"Updates a document with a script or partial document."}
      def update(params = {})
        api_name = 'update'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-update.html", "description"=>"Updates a document with a script or partial document."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_update/{id}", "methods"=>["POST"], "parts"=>{"id"=>{"type"=>"string", "description"=>"Document ID"}, "index"=>{"type"=>"string", "description"=>"The name of the index"}}}, {"path"=>"/{index}/{type}/{id}/_update", "methods"=>["POST"], "parts"=>{"id"=>{"type"=>"string", "description"=>"Document ID"}, "index"=>{"type"=>"string", "description"=>"The name of the index"}, "type"=>{"type"=>"string", "description"=>"The type of the document", "deprecated"=>true}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}]}, "params"=>{"wait_for_active_shards"=>{"type"=>"string", "description"=>"Sets the number of shard copies that must be active before proceeding with the update operation. Defaults to 1, meaning the primary shard only. Set to `all` for all shard copies, otherwise set to any non-negative value less than or equal to the total number of copies for the shard (number of replicas + 1)"}, "_source"=>{"type"=>"list", "description"=>"True or false to return the _source field or not, or a list of fields to return"}, "_source_excludes"=>{"type"=>"list", "description"=>"A list of fields to exclude from the returned _source field"}, "_source_includes"=>{"type"=>"list", "description"=>"A list of fields to extract and return from the _source field"}, "lang"=>{"type"=>"string", "description"=>"The script language (default: painless)"}, "refresh"=>{"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` (the default) then do nothing with refreshes."}, "retry_on_conflict"=>{"type"=>"number", "description"=>"Specify how many times should the operation be retried when a conflict occurs (default: 0)"}, "routing"=>{"type"=>"string", "description"=>"Specific routing value"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "if_seq_no"=>{"type"=>"number", "description"=>"only perform the update operation if the last operation that has changed the document has the specified sequence number"}, "if_primary_term"=>{"type"=>"number", "description"=>"only perform the update operation if the last operation that has changed the document has the specified primary term"}, "require_alias"=>{"type"=>"boolean", "description"=>"When true, requires destination is an alias. Default is false"}}, "body"=>{"description"=>"The request definition requires either `script` or partial `doc`", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # update_by_query 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-update-by-query.html", "description"=>"Performs an update on every document in the index without changing the source,\nfor example to pick up a mapping change."}
      def update_by_query(params = {})
        api_name = 'update_by_query'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-update-by-query.html", "description"=>"Performs an update on every document in the index without changing the source,\nfor example to pick up a mapping change."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/{index}/_update_by_query", "methods"=>["POST"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices"}}}, {"path"=>"/{index}/{type}/_update_by_query", "methods"=>["POST"], "parts"=>{"index"=>{"required"=>true, "type"=>"list", "description"=>"A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices"}, "type"=>{"type"=>"list", "description"=>"A comma-separated list of document types to search; leave empty to perform the operation on all types"}}, "deprecated"=>{"version"=>"7.0.0", "description"=>"Specifying types in urls has been deprecated"}}]}, "params"=>{"analyzer"=>{"type"=>"string", "description"=>"The analyzer to use for the query string"}, "analyze_wildcard"=>{"type"=>"boolean", "description"=>"Specify whether wildcard and prefix queries should be analyzed (default: false)"}, "default_operator"=>{"type"=>"enum", "options"=>["AND", "OR"], "default"=>"OR", "description"=>"The default operator for query string query (AND or OR)"}, "df"=>{"type"=>"string", "description"=>"The field to use as default where no field prefix is given in the query string"}, "from"=>{"type"=>"number", "description"=>"Starting offset (default: 0)"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "conflicts"=>{"type"=>"enum", "options"=>["abort", "proceed"], "default"=>"abort", "description"=>"What to do when the update by query hits version conflicts?"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "hidden", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "lenient"=>{"type"=>"boolean", "description"=>"Specify whether format-based query failures (such as providing text to a numeric field) should be ignored"}, "pipeline"=>{"type"=>"string", "description"=>"Ingest pipeline to set on index requests made by this action. (default: none)"}, "preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"}, "q"=>{"type"=>"string", "description"=>"Query in the Lucene query string syntax"}, "routing"=>{"type"=>"list", "description"=>"A comma-separated list of specific routing values"}, "scroll"=>{"type"=>"time", "description"=>"Specify how long a consistent view of the index should be maintained for scrolled search"}, "search_type"=>{"type"=>"enum", "options"=>["query_then_fetch", "dfs_query_then_fetch"], "description"=>"Search operation type"}, "search_timeout"=>{"type"=>"time", "description"=>"Explicit timeout for each search request. Defaults to no timeout."}, "size"=>{"type"=>"number", "description"=>"Deprecated, please use `max_docs` instead"}, "max_docs"=>{"type"=>"number", "description"=>"Maximum number of documents to process (default: all documents)"}, "sort"=>{"type"=>"list", "description"=>"A comma-separated list of <field>:<direction> pairs"}, "_source"=>{"type"=>"list", "description"=>"True or false to return the _source field or not, or a list of fields to return"}, "_source_excludes"=>{"type"=>"list", "description"=>"A list of fields to exclude from the returned _source field"}, "_source_includes"=>{"type"=>"list", "description"=>"A list of fields to extract and return from the _source field"}, "terminate_after"=>{"type"=>"number", "description"=>"The maximum number of documents to collect for each shard, upon reaching which the query execution will terminate early."}, "stats"=>{"type"=>"list", "description"=>"Specific 'tag' of the request for logging and statistical purposes"}, "version"=>{"type"=>"boolean", "description"=>"Specify whether to return document version as part of a hit"}, "version_type"=>{"type"=>"boolean", "description"=>"Should the document increment the version number (internal) on hit or not (reindex)"}, "request_cache"=>{"type"=>"boolean", "description"=>"Specify if request cache should be used for this request or not, defaults to index level setting"}, "refresh"=>{"type"=>"boolean", "description"=>"Should the affected indexes be refreshed?"}, "timeout"=>{"type"=>"time", "default"=>"1m", "description"=>"Time each individual bulk request should wait for shards that are unavailable."}, "wait_for_active_shards"=>{"type"=>"string", "description"=>"Sets the number of shard copies that must be active before proceeding with the update by query operation. Defaults to 1, meaning the primary shard only. Set to `all` for all shard copies, otherwise set to any non-negative value less than or equal to the total number of copies for the shard (number of replicas + 1)"}, "scroll_size"=>{"type"=>"number", "default"=>100, "description"=>"Size on the scroll request powering the update by query"}, "wait_for_completion"=>{"type"=>"boolean", "default"=>true, "description"=>"Should the request should block until the update by query operation is complete."}, "requests_per_second"=>{"type"=>"number", "default"=>0, "description"=>"The throttle to set on this request in sub-requests per second. -1 means no throttle."}, "slices"=>{"type"=>"number|string", "default"=>1, "description"=>"The number of slices this task should be divided into. Defaults to 1, meaning the task isn't sliced into subtasks. Can be set to `auto`."}}, "body"=>{"description"=>"The search definition using the Query DSL"}}
        request(api_name, api_spec, params)
      end

      # update_by_query_rethrottle 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/docs-update-by-query.html", "description"=>"Changes the number of requests per second for a particular Update By Query operation."}
      def update_by_query_rethrottle(params = {})
        api_name = 'update_by_query_rethrottle'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/docs-update-by-query.html", "description"=>"Changes the number of requests per second for a particular Update By Query operation."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_update_by_query/{task_id}/_rethrottle", "methods"=>["POST"], "parts"=>{"task_id"=>{"type"=>"string", "description"=>"The task id to rethrottle"}}}]}, "params"=>{"requests_per_second"=>{"type"=>"number", "required"=>true, "description"=>"The throttle to set on this request in floating sub-requests per second. -1 means set no throttle."}}}
        request(api_name, api_spec, params)
      end

      # watcher.ack_watch 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-ack-watch.html", "description"=>"Acknowledges a watch, manually throttling the execution of the watch's actions."}
      def watcher_ack_watch(params = {})
        api_name = 'watcher.ack_watch'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-ack-watch.html", "description"=>"Acknowledges a watch, manually throttling the execution of the watch's actions."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_watcher/watch/{watch_id}/_ack", "methods"=>["PUT", "POST"], "parts"=>{"watch_id"=>{"type"=>"string", "description"=>"Watch ID"}}}, {"path"=>"/_watcher/watch/{watch_id}/_ack/{action_id}", "methods"=>["PUT", "POST"], "parts"=>{"watch_id"=>{"type"=>"string", "description"=>"Watch ID"}, "action_id"=>{"type"=>"list", "description"=>"A comma-separated list of the action ids to be acked"}}}]}}
        request(api_name, api_spec, params)
      end

      # watcher.activate_watch 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-activate-watch.html", "description"=>"Activates a currently inactive watch."}
      def watcher_activate_watch(params = {})
        api_name = 'watcher.activate_watch'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-activate-watch.html", "description"=>"Activates a currently inactive watch."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_watcher/watch/{watch_id}/_activate", "methods"=>["PUT", "POST"], "parts"=>{"watch_id"=>{"type"=>"string", "description"=>"Watch ID"}}}]}}
        request(api_name, api_spec, params)
      end

      # watcher.deactivate_watch 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-deactivate-watch.html", "description"=>"Deactivates a currently active watch."}
      def watcher_deactivate_watch(params = {})
        api_name = 'watcher.deactivate_watch'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-deactivate-watch.html", "description"=>"Deactivates a currently active watch."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_watcher/watch/{watch_id}/_deactivate", "methods"=>["PUT", "POST"], "parts"=>{"watch_id"=>{"type"=>"string", "description"=>"Watch ID"}}}]}}
        request(api_name, api_spec, params)
      end

      # watcher.delete_watch 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-delete-watch.html", "description"=>"Removes a watch from Watcher."}
      def watcher_delete_watch(params = {})
        api_name = 'watcher.delete_watch'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-delete-watch.html", "description"=>"Removes a watch from Watcher."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_watcher/watch/{id}", "methods"=>["DELETE"], "parts"=>{"id"=>{"type"=>"string", "description"=>"Watch ID"}}}]}}
        request(api_name, api_spec, params)
      end

      # watcher.execute_watch 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-execute-watch.html", "description"=>"Forces the execution of a stored watch."}
      def watcher_execute_watch(params = {})
        api_name = 'watcher.execute_watch'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-execute-watch.html", "description"=>"Forces the execution of a stored watch."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_watcher/watch/{id}/_execute", "methods"=>["PUT", "POST"], "parts"=>{"id"=>{"type"=>"string", "description"=>"Watch ID"}}}, {"path"=>"/_watcher/watch/_execute", "methods"=>["PUT", "POST"]}]}, "params"=>{"debug"=>{"type"=>"boolean", "description"=>"indicates whether the watch should execute in debug mode", "required"=>false}}, "body"=>{"description"=>"Execution control", "required"=>false}}
        request(api_name, api_spec, params)
      end

      # watcher.get_watch 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-get-watch.html", "description"=>"Retrieves a watch by its ID."}
      def watcher_get_watch(params = {})
        api_name = 'watcher.get_watch'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-get-watch.html", "description"=>"Retrieves a watch by its ID."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_watcher/watch/{id}", "methods"=>["GET"], "parts"=>{"id"=>{"type"=>"string", "description"=>"Watch ID"}}}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # watcher.put_watch 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-put-watch.html", "description"=>"Creates a new watch, or updates an existing one."}
      def watcher_put_watch(params = {})
        api_name = 'watcher.put_watch'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-put-watch.html", "description"=>"Creates a new watch, or updates an existing one."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_watcher/watch/{id}", "methods"=>["PUT", "POST"], "parts"=>{"id"=>{"type"=>"string", "description"=>"Watch ID"}}}]}, "params"=>{"active"=>{"type"=>"boolean", "description"=>"Specify whether the watch is in/active by default"}, "version"=>{"type"=>"number", "description"=>"Explicit version number for concurrency control"}, "if_seq_no"=>{"type"=>"number", "description"=>"only update the watch if the last operation that has changed the watch has the specified sequence number"}, "if_primary_term"=>{"type"=>"number", "description"=>"only update the watch if the last operation that has changed the watch has the specified primary term"}}, "body"=>{"description"=>"The watch", "required"=>false}}
        request(api_name, api_spec, params)
      end

      # watcher.query_watches 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-query-watches.html", "description"=>"Retrieves stored watches."}
      def watcher_query_watches(params = {})
        api_name = 'watcher.query_watches'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-query-watches.html", "description"=>"Retrieves stored watches."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"], "content_type"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_watcher/_query/watches", "methods"=>["GET", "POST"]}]}, "params"=>{}, "body"=>{"description"=>"From, size, query, sort and search_after", "required"=>false}}
        request(api_name, api_spec, params)
      end

      # watcher.start 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-start.html", "description"=>"Starts Watcher if it is not already running."}
      def watcher_start(params = {})
        api_name = 'watcher.start'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-start.html", "description"=>"Starts Watcher if it is not already running."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_watcher/_start", "methods"=>["POST"]}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # watcher.stats 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-stats.html", "description"=>"Retrieves the current Watcher metrics."}
      def watcher_stats(params = {})
        api_name = 'watcher.stats'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-stats.html", "description"=>"Retrieves the current Watcher metrics."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_watcher/stats", "methods"=>["GET"]}, {"path"=>"/_watcher/stats/{metric}", "methods"=>["GET"], "parts"=>{"metric"=>{"type"=>"list", "options"=>["_all", "queued_watches", "current_watches", "pending_watches"], "description"=>"Controls what additional stat metrics should be include in the response"}}}]}, "params"=>{"metric"=>{"type"=>"list", "options"=>["_all", "queued_watches", "current_watches", "pending_watches"], "description"=>"Controls what additional stat metrics should be include in the response"}, "emit_stacktraces"=>{"type"=>"boolean", "description"=>"Emits stack traces of currently running watches", "required"=>false}}}
        request(api_name, api_spec, params)
      end

      # watcher.stop 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-stop.html", "description"=>"Stops Watcher if it is running."}
      def watcher_stop(params = {})
        api_name = 'watcher.stop'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-stop.html", "description"=>"Stops Watcher if it is running."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_watcher/_stop", "methods"=>["POST"]}]}, "params"=>{}}
        request(api_name, api_spec, params)
      end

      # xpack.info 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/info-api.html", "description"=>"Retrieves information about the installed X-Pack features."}
      def xpack_info(params = {})
        api_name = 'xpack.info'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/info-api.html", "description"=>"Retrieves information about the installed X-Pack features."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_xpack", "methods"=>["GET"]}]}, "params"=>{"categories"=>{"type"=>"list", "description"=>"Comma-separated list of info categories. Can be any of: build, license, features"}, "accept_enterprise"=>{"type"=>"boolean", "description"=>"If an enterprise license is installed, return the type and mode as 'enterprise' (default: false)"}}}
        request(api_name, api_spec, params)
      end

      # xpack.usage 
      # {"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/usage-api.html", "description"=>"Retrieves usage information about the installed X-Pack features."}
      def xpack_usage(params = {})
        api_name = 'xpack.usage'
        api_spec = @api_specs[api_name] ||= {"documentation"=>{"url"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/usage-api.html", "description"=>"Retrieves usage information about the installed X-Pack features."}, "stability"=>"stable", "visibility"=>"public", "headers"=>{"accept"=>["application/json"]}, "url"=>{"paths"=>[{"path"=>"/_xpack/usage", "methods"=>["GET"]}]}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for watch write operation"}}}
        request(api_name, api_spec, params)
      end
    end
  end
end
