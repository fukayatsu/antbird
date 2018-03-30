# Generated REST API methods file - DO NOT EDIT!
# Date: 2018-03-30
# ES version: 5.5.3

module Antbird
  module RestApi
    module RestApiV5_5
      def common_params
        @common_params ||= {"description"=>"Parameters that are accepted by all API endpoints.", "documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/common-options.html", "params"=>{"pretty"=>{"type"=>"boolean", "description"=>"Pretty format the returned JSON response.", "default"=>false}, "human"=>{"type"=>"boolean", "description"=>"Return human readable values for statistics.", "default"=>true}, "error_trace"=>{"type"=>"boolean", "description"=>"Include the stack trace of returned errors.", "default"=>false}, "source"=>{"type"=>"string", "description"=>"The URL-encoded request definition. Useful for libraries that do not accept a request body for non-POST requests."}, "filter_path"=>{"type"=>"list", "description"=>"A comma-separated list of filters used to reduce the respone."}}}
      end

      # bulk ["POST", "PUT"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/docs-bulk.html
      def _bulk(params = {})

        api_name = 'bulk'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/docs-bulk.html", "methods"=>["POST", "PUT"], "url"=>{"path"=>"/_bulk", "paths"=>["/_bulk", "/{index}/_bulk", "/{index}/{type}/_bulk"], "parts"=>{"index"=>{"type"=>"string", "description"=>"Default index for items which don't provide one"}, "type"=>{"type"=>"string", "description"=>"Default document type for items which don't provide one"}}, "params"=>{"wait_for_active_shards"=>{"type"=>"string", "description"=>"Sets the number of shard copies that must be active before proceeding with the bulk operation. Defaults to 1, meaning the primary shard only. Set to `all` for all shard copies, otherwise set to any non-negative value less than or equal to the total number of copies for the shard (number of replicas + 1)"}, "refresh"=>{"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` then refresh the effected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` (the default) then do nothing with refreshes."}, "routing"=>{"type"=>"string", "description"=>"Specific routing value"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "type"=>{"type"=>"string", "description"=>"Default document type for items which don't provide one"}, "fields"=>{"type"=>"list", "description"=>"Default comma-separated list of fields to return in the response for updates, can be overridden on each sub-request"}, "_source"=>{"type"=>"list", "description"=>"True or false to return the _source field or not, or default list of fields to return, can be overridden on each sub-request"}, "_source_exclude"=>{"type"=>"list", "description"=>"Default list of fields to exclude from the returned _source field, can be overridden on each sub-request"}, "_source_include"=>{"type"=>"list", "description"=>"Default list of fields to extract and return from the _source field, can be overridden on each sub-request"}, "pipeline"=>{"type"=>"string", "description"=>"The pipeline id to preprocess incoming documents with"}}}, "body"=>{"description"=>"The operation definition and data (action-data pairs), separated by newlines", "required"=>true, "serialize"=>"bulk"}}
        request(api_name, api_spec, params)
      end

      # cat.aliases ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-alias.html
      def _cat_aliases(params = {})

        api_name = 'cat.aliases'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-alias.html", "methods"=>["GET"], "url"=>{"path"=>"/_cat/aliases", "paths"=>["/_cat/aliases", "/_cat/aliases/{name}"], "parts"=>{"name"=>{"type"=>"list", "description"=>"A comma-separated list of alias names to return"}}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # cat.allocation ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-allocation.html
      def _cat_allocation(params = {})

        api_name = 'cat.allocation'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-allocation.html", "methods"=>["GET"], "url"=>{"path"=>"/_cat/allocation", "paths"=>["/_cat/allocation", "/_cat/allocation/{node_id}"], "parts"=>{"node_id"=>{"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information"}}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "bytes"=>{"type"=>"enum", "description"=>"The unit in which to display byte values", "options"=>["b", "k", "kb", "m", "mb", "g", "gb", "t", "tb", "p", "pb"]}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # cat.count ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-count.html
      def _cat_count(params = {})

        api_name = 'cat.count'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-count.html", "methods"=>["GET"], "url"=>{"path"=>"/_cat/count", "paths"=>["/_cat/count", "/_cat/count/{index}"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to limit the returned information"}}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # cat.fielddata ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-fielddata.html
      def _cat_fielddata(params = {})

        api_name = 'cat.fielddata'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-fielddata.html", "methods"=>["GET"], "url"=>{"path"=>"/_cat/fielddata", "paths"=>["/_cat/fielddata", "/_cat/fielddata/{fields}"], "parts"=>{"fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields to return the fielddata size"}}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "bytes"=>{"type"=>"enum", "description"=>"The unit in which to display byte values", "options"=>["b", "k", "kb", "m", "mb", "g", "gb", "t", "tb", "p", "pb"]}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}, "fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields to return in the output"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # cat.health ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-health.html
      def _cat_health(params = {})

        api_name = 'cat.health'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-health.html", "methods"=>["GET"], "url"=>{"path"=>"/_cat/health", "paths"=>["/_cat/health"], "parts"=>{}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "ts"=>{"type"=>"boolean", "description"=>"Set to false to disable timestamping", "default"=>true}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # cat.help ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat.html
      def _cat_help(params = {})

        api_name = 'cat.help'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat.html", "methods"=>["GET"], "url"=>{"path"=>"/_cat", "paths"=>["/_cat"], "parts"=>{}, "params"=>{"help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # cat.indices ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-indices.html
      def _cat_indices(params = {})

        api_name = 'cat.indices'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-indices.html", "methods"=>["GET"], "url"=>{"path"=>"/_cat/indices", "paths"=>["/_cat/indices", "/_cat/indices/{index}"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to limit the returned information"}}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "bytes"=>{"type"=>"enum", "description"=>"The unit in which to display byte values", "options"=>["b", "k", "m", "g"]}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "health"=>{"type"=>"enum", "options"=>["green", "yellow", "red"], "default"=>nil, "description"=>"A health status (\"green\", \"yellow\", or \"red\" to filter only indices matching the specified health status"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "pri"=>{"type"=>"boolean", "description"=>"Set to true to return stats only for primary shards", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # cat.master ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-master.html
      def _cat_master(params = {})

        api_name = 'cat.master'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-master.html", "methods"=>["GET"], "url"=>{"path"=>"/_cat/master", "paths"=>["/_cat/master"], "parts"=>{}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # cat.nodeattrs ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-nodeattrs.html
      def _cat_nodeattrs(params = {})

        api_name = 'cat.nodeattrs'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-nodeattrs.html", "methods"=>["GET"], "url"=>{"path"=>"/_cat/nodeattrs", "paths"=>["/_cat/nodeattrs"], "parts"=>{}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # cat.nodes ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-nodes.html
      def _cat_nodes(params = {})

        api_name = 'cat.nodes'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-nodes.html", "methods"=>["GET"], "url"=>{"path"=>"/_cat/nodes", "paths"=>["/_cat/nodes"], "parts"=>{}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "full_id"=>{"type"=>"boolean", "description"=>"Return the full node ID instead of the shortened version (default: false)"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # cat.pending_tasks ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-pending-tasks.html
      def _cat_pending_tasks(params = {})

        api_name = 'cat.pending_tasks'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-pending-tasks.html", "methods"=>["GET"], "url"=>{"path"=>"/_cat/pending_tasks", "paths"=>["/_cat/pending_tasks"], "parts"=>{}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # cat.plugins ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-plugins.html
      def _cat_plugins(params = {})

        api_name = 'cat.plugins'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-plugins.html", "methods"=>["GET"], "url"=>{"path"=>"/_cat/plugins", "paths"=>["/_cat/plugins"], "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # cat.recovery ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-recovery.html
      def _cat_recovery(params = {})

        api_name = 'cat.recovery'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-recovery.html", "methods"=>["GET"], "url"=>{"path"=>"/_cat/recovery", "paths"=>["/_cat/recovery", "/_cat/recovery/{index}"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to limit the returned information"}}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "bytes"=>{"type"=>"enum", "description"=>"The unit in which to display byte values", "options"=>["b", "k", "kb", "m", "mb", "g", "gb", "t", "tb", "p", "pb"]}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # cat.repositories ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-repositories.html
      def _cat_repositories(params = {})

        api_name = 'cat.repositories'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-repositories.html", "methods"=>["GET"], "url"=>{"path"=>"/_cat/repositories", "paths"=>["/_cat/repositories"], "parts"=>{}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node", "default"=>false}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # cat.segments ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-segments.html
      def _cat_segments(params = {})

        api_name = 'cat.segments'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-segments.html", "methods"=>["GET"], "url"=>{"path"=>"/_cat/segments", "paths"=>["/_cat/segments", "/_cat/segments/{index}"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to limit the returned information"}}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # cat.shards ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-shards.html
      def _cat_shards(params = {})

        api_name = 'cat.shards'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-shards.html", "methods"=>["GET"], "url"=>{"path"=>"/_cat/shards", "paths"=>["/_cat/shards", "/_cat/shards/{index}"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to limit the returned information"}}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # cat.snapshots ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-snapshots.html
      def _cat_snapshots(params = {})

        api_name = 'cat.snapshots'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-snapshots.html", "methods"=>["GET"], "url"=>{"path"=>"/_cat/snapshots", "paths"=>["/_cat/snapshots", "/_cat/snapshots/{repository}"], "parts"=>{"repository"=>{"type"=>"list", "required"=>true, "description"=>"Name of repository from which to fetch the snapshot information"}}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Set to true to ignore unavailable snapshots", "default"=>false}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # cat.tasks ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/tasks.html
      def _cat_tasks(params = {})

        api_name = 'cat.tasks'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/tasks.html", "methods"=>["GET"], "url"=>{"path"=>"/_cat/tasks", "paths"=>["/_cat/tasks"], "parts"=>{}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "node_id"=>{"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"}, "actions"=>{"type"=>"list", "description"=>"A comma-separated list of actions that should be returned. Leave empty to return all."}, "detailed"=>{"type"=>"boolean", "description"=>"Return detailed task information (default: false)"}, "parent_node"=>{"type"=>"string", "description"=>"Return tasks with specified parent node."}, "parent_task"=>{"type"=>"number", "description"=>"Return tasks with specified parent task id. Set to -1 to return all."}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # cat.templates ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-templates.html
      def _cat_templates(params = {})

        api_name = 'cat.templates'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-templates.html", "methods"=>["GET"], "url"=>{"path"=>"/_cat/templates", "paths"=>["/_cat/templates", "/_cat/templates/{name}"], "parts"=>{"name"=>{"type"=>"string", "description"=>"A pattern that returned template names must match"}}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # cat.thread_pool ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-thread-pool.html
      def _cat_thread_pool(params = {})

        api_name = 'cat.thread_pool'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cat-thread-pool.html", "methods"=>["GET"], "url"=>{"path"=>"/_cat/thread_pool", "paths"=>["/_cat/thread_pool", "/_cat/thread_pool/{thread_pool_patterns}"], "parts"=>{"thread_pool_patterns"=>{"type"=>"list", "description"=>"A comma-separated list of regular-expressions to filter the thread pools in the output"}}, "params"=>{"format"=>{"type"=>"string", "description"=>"a short version of the Accept header, e.g. json, yaml"}, "size"=>{"type"=>"enum", "description"=>"The multiplier in which to display values", "options"=>["", "k", "m", "g", "t", "p"]}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "h"=>{"type"=>"list", "description"=>"Comma-separated list of column names to display"}, "help"=>{"type"=>"boolean", "description"=>"Return help information", "default"=>false}, "s"=>{"type"=>"list", "description"=>"Comma-separated list of column names or column aliases to sort by"}, "v"=>{"type"=>"boolean", "description"=>"Verbose mode. Display column headers", "default"=>false}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # clear_scroll ["DELETE"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-request-scroll.html
      def _clear_scroll(params = {})

        api_name = 'clear_scroll'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-request-scroll.html", "methods"=>["DELETE"], "url"=>{"path"=>"/_search/scroll/{scroll_id}", "paths"=>["/_search/scroll/{scroll_id}", "/_search/scroll"], "parts"=>{"scroll_id"=>{"type"=>"list", "description"=>"A comma-separated list of scroll IDs to clear"}}, "params"=>{}}, "body"=>{"description"=>"A comma-separated list of scroll IDs to clear if none was specified via the scroll_id parameter"}}
        request(api_name, api_spec, params)
      end

      # cluster.allocation_explain ["GET", "POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cluster-allocation-explain.html
      def _cluster_allocation_explain(params = {})

        api_name = 'cluster.allocation_explain'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cluster-allocation-explain.html", "methods"=>["GET", "POST"], "url"=>{"path"=>"/_cluster/allocation/explain", "paths"=>["/_cluster/allocation/explain"], "parts"=>{}, "params"=>{"include_yes_decisions"=>{"type"=>"boolean", "description"=>"Return 'YES' decisions in explanation (default: false)"}, "include_disk_info"=>{"type"=>"boolean", "description"=>"Return information about disk usage and shard sizes (default: false)"}}}, "body"=>{"description"=>"The index, shard, and primary flag to explain. Empty means 'explain the first unassigned shard'"}}
        request(api_name, api_spec, params)
      end

      # cluster.get_settings ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cluster-update-settings.html
      def _cluster_get_settings(params = {})

        api_name = 'cluster.get_settings'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cluster-update-settings.html", "methods"=>["GET"], "url"=>{"path"=>"/_cluster/settings", "paths"=>["/_cluster/settings"], "parts"=>{}, "params"=>{"flat_settings"=>{"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "include_defaults"=>{"type"=>"boolean", "description"=>"Whether to return all default clusters setting.", "default"=>false}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # cluster.health ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cluster-health.html
      def _cluster_health(params = {})

        api_name = 'cluster.health'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cluster-health.html", "methods"=>["GET"], "url"=>{"path"=>"/_cluster/health", "paths"=>["/_cluster/health", "/_cluster/health/{index}"], "parts"=>{"index"=>{"type"=>"list", "description"=>"Limit the information returned to a specific index"}}, "params"=>{"level"=>{"type"=>"enum", "options"=>["cluster", "indices", "shards"], "default"=>"cluster", "description"=>"Specify the level of detail for returned information"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "wait_for_active_shards"=>{"type"=>"string", "description"=>"Wait until the specified number of shards is active"}, "wait_for_nodes"=>{"type"=>"string", "description"=>"Wait until the specified number of nodes is available"}, "wait_for_events"=>{"type"=>"enum", "options"=>["immediate", "urgent", "high", "normal", "low", "languid"], "description"=>"Wait until all currently queued events with the given priority are processed"}, "wait_for_no_relocating_shards"=>{"type"=>"boolean", "description"=>"Whether to wait until there are no relocating shards in the cluster"}, "wait_for_status"=>{"type"=>"enum", "options"=>["green", "yellow", "red"], "default"=>nil, "description"=>"Wait until cluster is in a specific state"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # cluster.pending_tasks ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cluster-pending.html
      def _cluster_pending_tasks(params = {})

        api_name = 'cluster.pending_tasks'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cluster-pending.html", "methods"=>["GET"], "url"=>{"path"=>"/_cluster/pending_tasks", "paths"=>["/_cluster/pending_tasks"], "parts"=>{}, "params"=>{"local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # cluster.put_settings ["PUT"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cluster-update-settings.html
      def _cluster_put_settings(params = {})

        api_name = 'cluster.put_settings'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cluster-update-settings.html", "methods"=>["PUT"], "url"=>{"path"=>"/_cluster/settings", "paths"=>["/_cluster/settings"], "parts"=>{}, "params"=>{"flat_settings"=>{"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}}}, "body"=>{"description"=>"The settings to be updated. Can be either `transient` or `persistent` (survives cluster restart)."}}
        request(api_name, api_spec, params)
      end

      # cluster.reroute ["POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cluster-reroute.html
      def _cluster_reroute(params = {})

        api_name = 'cluster.reroute'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cluster-reroute.html", "methods"=>["POST"], "url"=>{"path"=>"/_cluster/reroute", "paths"=>["/_cluster/reroute"], "parts"=>{}, "params"=>{"dry_run"=>{"type"=>"boolean", "description"=>"Simulate the operation only and return the resulting state"}, "explain"=>{"type"=>"boolean", "description"=>"Return an explanation of why the commands can or cannot be executed"}, "retry_failed"=>{"type"=>"boolean", "description"=>"Retries allocation of shards that are blocked due to too many subsequent allocation failures"}, "metric"=>{"type"=>"list", "options"=>["_all", "blocks", "metadata", "nodes", "routing_table", "master_node", "version"], "description"=>"Limit the information returned to the specified metrics. Defaults to all but metadata"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}}}, "body"=>{"description"=>"The definition of `commands` to perform (`move`, `cancel`, `allocate`)"}}
        request(api_name, api_spec, params)
      end

      # cluster.state ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cluster-state.html
      def _cluster_state(params = {})

        api_name = 'cluster.state'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cluster-state.html", "methods"=>["GET"], "url"=>{"path"=>"/_cluster/state", "paths"=>["/_cluster/state", "/_cluster/state/{metric}", "/_cluster/state/{metric}/{index}"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"}, "metric"=>{"type"=>"list", "options"=>["_all", "blocks", "metadata", "nodes", "routing_table", "routing_nodes", "master_node", "version"], "description"=>"Limit the information returned to the specified metrics"}}, "params"=>{"local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}, "flat_settings"=>{"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # cluster.stats ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cluster-stats.html
      def _cluster_stats(params = {})

        api_name = 'cluster.stats'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cluster-stats.html", "methods"=>["GET"], "url"=>{"path"=>"/_cluster/stats", "paths"=>["/_cluster/stats", "/_cluster/stats/nodes/{node_id}"], "parts"=>{"node_id"=>{"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"}}, "params"=>{"flat_settings"=>{"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # count ["POST", "GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-count.html
      def _count(params = {})

        api_name = 'count'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-count.html", "methods"=>["POST", "GET"], "url"=>{"path"=>"/_count", "paths"=>["/_count", "/{index}/_count", "/{index}/{type}/_count"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of indices to restrict the results"}, "type"=>{"type"=>"list", "description"=>"A comma-separated list of types to restrict the results"}}, "params"=>{"ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "min_score"=>{"type"=>"number", "description"=>"Include only documents with a specific `_score` value in the result"}, "preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"}, "routing"=>{"type"=>"string", "description"=>"Specific routing value"}, "q"=>{"type"=>"string", "description"=>"Query in the Lucene query string syntax"}, "analyzer"=>{"type"=>"string", "description"=>"The analyzer to use for the query string"}, "analyze_wildcard"=>{"type"=>"boolean", "description"=>"Specify whether wildcard and prefix queries should be analyzed (default: false)"}, "default_operator"=>{"type"=>"enum", "options"=>["AND", "OR"], "default"=>"OR", "description"=>"The default operator for query string query (AND or OR)"}, "df"=>{"type"=>"string", "description"=>"The field to use as default where no field prefix is given in the query string"}, "lenient"=>{"type"=>"boolean", "description"=>"Specify whether format-based query failures (such as providing text to a numeric field) should be ignored"}}}, "body"=>{"description"=>"A query to restrict the results specified with the Query DSL (optional)"}}
        request(api_name, api_spec, params)
      end

      # count_percolate ["GET", "POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-percolate.html
      def _count_percolate(params = {})

        api_name = 'count_percolate'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-percolate.html", "methods"=>["GET", "POST"], "url"=>{"path"=>"/{index}/{type}/_percolate/count", "paths"=>["/{index}/{type}/_percolate/count", "/{index}/{type}/{id}/_percolate/count"], "parts"=>{"index"=>{"type"=>"string", "required"=>true, "description"=>"The index of the document being count percolated."}, "type"=>{"type"=>"string", "required"=>true, "description"=>"The type of the document being count percolated."}, "id"=>{"type"=>"string", "required"=>false, "description"=>"Substitute the document in the request body with a document that is known by the specified id. On top of the id, the index and type parameter will be used to retrieve the document from within the cluster."}}, "params"=>{"routing"=>{"type"=>"list", "description"=>"A comma-separated list of specific routing values"}, "preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "percolate_index"=>{"type"=>"string", "description"=>"The index to count percolate the document into. Defaults to index."}, "percolate_type"=>{"type"=>"string", "description"=>"The type to count percolate document into. Defaults to type."}, "version"=>{"type"=>"number", "description"=>"Explicit version number for concurrency control"}, "version_type"=>{"type"=>"enum", "options"=>["internal", "external", "external_gte", "force"], "description"=>"Specific version type"}}}, "body"=>{"description"=>"The count percolator request definition using the percolate DSL", "required"=>false}}
        request(api_name, api_spec, params)
      end

      # create ["PUT", "POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/docs-index_.html
      def _create(params = {})

        api_name = 'create'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/docs-index_.html", "methods"=>["PUT", "POST"], "url"=>{"path"=>"/{index}/{type}/{id}/_create", "paths"=>["/{index}/{type}/{id}/_create"], "parts"=>{"id"=>{"type"=>"string", "required"=>true, "description"=>"Document ID"}, "index"=>{"type"=>"string", "required"=>true, "description"=>"The name of the index"}, "type"=>{"type"=>"string", "required"=>true, "description"=>"The type of the document"}}, "params"=>{"wait_for_active_shards"=>{"type"=>"string", "description"=>"Sets the number of shard copies that must be active before proceeding with the index operation. Defaults to 1, meaning the primary shard only. Set to `all` for all shard copies, otherwise set to any non-negative value less than or equal to the total number of copies for the shard (number of replicas + 1)"}, "parent"=>{"type"=>"string", "description"=>"ID of the parent document"}, "refresh"=>{"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` (the default) then do nothing with refreshes."}, "routing"=>{"type"=>"string", "description"=>"Specific routing value"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "timestamp"=>{"type"=>"time", "description"=>"Explicit timestamp for the document"}, "ttl"=>{"type"=>"time", "description"=>"Expiration time for the document"}, "version"=>{"type"=>"number", "description"=>"Explicit version number for concurrency control"}, "version_type"=>{"type"=>"enum", "options"=>["internal", "external", "external_gte", "force"], "description"=>"Specific version type"}, "pipeline"=>{"type"=>"string", "description"=>"The pipeline id to preprocess incoming documents with"}}}, "body"=>{"description"=>"The document", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # delete ["DELETE"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/docs-delete.html
      def _delete(params = {})

        api_name = 'delete'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/docs-delete.html", "methods"=>["DELETE"], "url"=>{"path"=>"/{index}/{type}/{id}", "paths"=>["/{index}/{type}/{id}"], "parts"=>{"id"=>{"type"=>"string", "required"=>true, "description"=>"The document ID"}, "index"=>{"type"=>"string", "required"=>true, "description"=>"The name of the index"}, "type"=>{"type"=>"string", "required"=>true, "description"=>"The type of the document"}}, "params"=>{"wait_for_active_shards"=>{"type"=>"string", "description"=>"Sets the number of shard copies that must be active before proceeding with the delete operation. Defaults to 1, meaning the primary shard only. Set to `all` for all shard copies, otherwise set to any non-negative value less than or equal to the total number of copies for the shard (number of replicas + 1)"}, "parent"=>{"type"=>"string", "description"=>"ID of parent document"}, "refresh"=>{"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` then refresh the effected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` (the default) then do nothing with refreshes."}, "routing"=>{"type"=>"string", "description"=>"Specific routing value"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "version"=>{"type"=>"number", "description"=>"Explicit version number for concurrency control"}, "version_type"=>{"type"=>"enum", "options"=>["internal", "external", "external_gte", "force"], "description"=>"Specific version type"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # delete_by_query ["POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/docs-delete-by-query.html
      def _delete_by_query(params = {})

        api_name = 'delete_by_query'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/docs-delete-by-query.html", "methods"=>["POST"], "url"=>{"path"=>"/{index}/_delete_by_query", "paths"=>["/{index}/_delete_by_query", "/{index}/{type}/_delete_by_query"], "comment"=>"most things below this are just copied from search.json", "parts"=>{"index"=>{"required"=>true, "type"=>"list", "description"=>"A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices"}, "type"=>{"type"=>"list", "description"=>"A comma-separated list of document types to search; leave empty to perform the operation on all types"}}, "params"=>{"analyzer"=>{"type"=>"string", "description"=>"The analyzer to use for the query string"}, "analyze_wildcard"=>{"type"=>"boolean", "description"=>"Specify whether wildcard and prefix queries should be analyzed (default: false)"}, "default_operator"=>{"type"=>"enum", "options"=>["AND", "OR"], "default"=>"OR", "description"=>"The default operator for query string query (AND or OR)"}, "df"=>{"type"=>"string", "description"=>"The field to use as default where no field prefix is given in the query string"}, "from"=>{"type"=>"number", "description"=>"Starting offset (default: 0)"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "conflicts"=>{"note"=>"This is not copied from search", "type"=>"enum", "options"=>["abort", "proceed"], "default"=>"abort", "description"=>"What to do when the delete-by-query hits version conflicts?"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "lenient"=>{"type"=>"boolean", "description"=>"Specify whether format-based query failures (such as providing text to a numeric field) should be ignored"}, "preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"}, "q"=>{"type"=>"string", "description"=>"Query in the Lucene query string syntax"}, "routing"=>{"type"=>"list", "description"=>"A comma-separated list of specific routing values"}, "scroll"=>{"type"=>"time", "description"=>"Specify how long a consistent view of the index should be maintained for scrolled search"}, "search_type"=>{"type"=>"enum", "options"=>["query_then_fetch", "dfs_query_then_fetch"], "description"=>"Search operation type"}, "search_timeout"=>{"type"=>"time", "description"=>"Explicit timeout for each search request. Defaults to no timeout."}, "size"=>{"type"=>"number", "description"=>"Number of hits to return (default: 10)"}, "sort"=>{"type"=>"list", "description"=>"A comma-separated list of <field>:<direction> pairs"}, "_source"=>{"type"=>"list", "description"=>"True or false to return the _source field or not, or a list of fields to return"}, "_source_exclude"=>{"type"=>"list", "description"=>"A list of fields to exclude from the returned _source field"}, "_source_include"=>{"type"=>"list", "description"=>"A list of fields to extract and return from the _source field"}, "terminate_after"=>{"type"=>"number", "description"=>"The maximum number of documents to collect for each shard, upon reaching which the query execution will terminate early."}, "stats"=>{"type"=>"list", "description"=>"Specific 'tag' of the request for logging and statistical purposes"}, "version"=>{"type"=>"boolean", "description"=>"Specify whether to return document version as part of a hit"}, "request_cache"=>{"type"=>"boolean", "description"=>"Specify if request cache should be used for this request or not, defaults to index level setting"}, "refresh"=>{"type"=>"boolean", "description"=>"Should the effected indexes be refreshed?"}, "timeout"=>{"type"=>"time", "default"=>"1m", "description"=>"Time each individual bulk request should wait for shards that are unavailable."}, "wait_for_active_shards"=>{"type"=>"string", "description"=>"Sets the number of shard copies that must be active before proceeding with the delete by query operation. Defaults to 1, meaning the primary shard only. Set to `all` for all shard copies, otherwise set to any non-negative value less than or equal to the total number of copies for the shard (number of replicas + 1)"}, "scroll_size"=>{"type"=>"number", "defaut_value"=>100, "description"=>"Size on the scroll request powering the update_by_query"}, "wait_for_completion"=>{"type"=>"boolean", "default"=>true, "description"=>"Should the request should block until the delete-by-query is complete."}, "requests_per_second"=>{"type"=>"number", "default"=>0, "description"=>"The throttle for this request in sub-requests per second. -1 means no throttle."}, "slices"=>{"type"=>"number", "default"=>1, "description"=>"The number of slices this task should be divided into. Defaults to 1 meaning the task isn't sliced into subtasks."}}}, "body"=>{"description"=>"The search definition using the Query DSL", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # delete_script ["DELETE"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/modules-scripting.html
      def _delete_script(params = {})

        api_name = 'delete_script'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/modules-scripting.html", "methods"=>["DELETE"], "url"=>{"path"=>"/_scripts/{lang}", "paths"=>["/_scripts/{lang}", "/_scripts/{lang}/{id}"], "parts"=>{"id"=>{"type"=>"string", "description"=>"Script ID", "required"=>true}, "lang"=>{"type"=>"string", "description"=>"Script language", "required"=>true}}, "params"=>{}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # delete_template ["DELETE"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-template.html
      def _delete_template(params = {})

        api_name = 'delete_template'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-template.html", "methods"=>["DELETE"], "url"=>{"path"=>"/_search/template/{id}", "paths"=>["/_search/template/{id}"], "parts"=>{"id"=>{"type"=>"string", "description"=>"Template ID", "required"=>true}}, "params"=>{}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # exists ["HEAD"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/docs-get.html
      def _exists(params = {})

        api_name = 'exists'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/docs-get.html", "methods"=>["HEAD"], "url"=>{"path"=>"/{index}/{type}/{id}", "paths"=>["/{index}/{type}/{id}"], "parts"=>{"id"=>{"type"=>"string", "required"=>true, "description"=>"The document ID"}, "index"=>{"type"=>"string", "required"=>true, "description"=>"The name of the index"}, "type"=>{"type"=>"string", "required"=>true, "description"=>"The type of the document (use `_all` to fetch the first document matching the ID across all types)"}}, "params"=>{"stored_fields"=>{"type"=>"list", "description"=>"A comma-separated list of stored fields to return in the response"}, "parent"=>{"type"=>"string", "description"=>"The ID of the parent document"}, "preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"}, "realtime"=>{"type"=>"boolean", "description"=>"Specify whether to perform the operation in realtime or search mode"}, "refresh"=>{"type"=>"boolean", "description"=>"Refresh the shard containing the document before performing the operation"}, "routing"=>{"type"=>"string", "description"=>"Specific routing value"}, "_source"=>{"type"=>"list", "description"=>"True or false to return the _source field or not, or a list of fields to return"}, "_source_exclude"=>{"type"=>"list", "description"=>"A list of fields to exclude from the returned _source field"}, "_source_include"=>{"type"=>"list", "description"=>"A list of fields to extract and return from the _source field"}, "version"=>{"type"=>"number", "description"=>"Explicit version number for concurrency control"}, "version_type"=>{"type"=>"enum", "options"=>["internal", "external", "external_gte", "force"], "description"=>"Specific version type"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # exists_source ["HEAD"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/5.5/docs-get.html
      def _exists_source(params = {})

        api_name = 'exists_source'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"http://www.elastic.co/guide/en/elasticsearch/reference/5.5/docs-get.html", "methods"=>["HEAD"], "url"=>{"path"=>"/{index}/{type}/{id}/_source", "paths"=>["/{index}/{type}/{id}/_source"], "parts"=>{"id"=>{"type"=>"string", "required"=>true, "description"=>"The document ID"}, "index"=>{"type"=>"string", "required"=>true, "description"=>"The name of the index"}, "type"=>{"type"=>"string", "required"=>true, "description"=>"The type of the document; use `_all` to fetch the first document matching the ID across all types"}}, "params"=>{"parent"=>{"type"=>"string", "description"=>"The ID of the parent document"}, "preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"}, "realtime"=>{"type"=>"boolean", "description"=>"Specify whether to perform the operation in realtime or search mode"}, "refresh"=>{"type"=>"boolean", "description"=>"Refresh the shard containing the document before performing the operation"}, "routing"=>{"type"=>"string", "description"=>"Specific routing value"}, "_source"=>{"type"=>"list", "description"=>"True or false to return the _source field or not, or a list of fields to return"}, "_source_exclude"=>{"type"=>"list", "description"=>"A list of fields to exclude from the returned _source field"}, "_source_include"=>{"type"=>"list", "description"=>"A list of fields to extract and return from the _source field"}, "version"=>{"type"=>"number", "description"=>"Explicit version number for concurrency control"}, "version_type"=>{"type"=>"enum", "options"=>["internal", "external", "external_gte", "force"], "description"=>"Specific version type"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # explain ["GET", "POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-explain.html
      def _explain(params = {})

        api_name = 'explain'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-explain.html", "methods"=>["GET", "POST"], "url"=>{"path"=>"/{index}/{type}/{id}/_explain", "paths"=>["/{index}/{type}/{id}/_explain"], "parts"=>{"id"=>{"type"=>"string", "required"=>true, "description"=>"The document ID"}, "index"=>{"type"=>"string", "required"=>true, "description"=>"The name of the index"}, "type"=>{"type"=>"string", "required"=>true, "description"=>"The type of the document"}}, "params"=>{"analyze_wildcard"=>{"type"=>"boolean", "description"=>"Specify whether wildcards and prefix queries in the query string query should be analyzed (default: false)"}, "analyzer"=>{"type"=>"string", "description"=>"The analyzer for the query string query"}, "default_operator"=>{"type"=>"enum", "options"=>["AND", "OR"], "default"=>"OR", "description"=>"The default operator for query string query (AND or OR)"}, "df"=>{"type"=>"string", "description"=>"The default field for query string query (default: _all)"}, "stored_fields"=>{"type"=>"list", "description"=>"A comma-separated list of stored fields to return in the response"}, "lenient"=>{"type"=>"boolean", "description"=>"Specify whether format-based query failures (such as providing text to a numeric field) should be ignored"}, "parent"=>{"type"=>"string", "description"=>"The ID of the parent document"}, "preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"}, "q"=>{"type"=>"string", "description"=>"Query in the Lucene query string syntax"}, "routing"=>{"type"=>"string", "description"=>"Specific routing value"}, "_source"=>{"type"=>"list", "description"=>"True or false to return the _source field or not, or a list of fields to return"}, "_source_exclude"=>{"type"=>"list", "description"=>"A list of fields to exclude from the returned _source field"}, "_source_include"=>{"type"=>"list", "description"=>"A list of fields to extract and return from the _source field"}}}, "body"=>{"description"=>"The query definition using the Query DSL"}}
        request(api_name, api_spec, params)
      end

      # field_caps ["GET", "POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/5.5/search-field-caps.html
      def _field_caps(params = {})

        api_name = 'field_caps'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"http://www.elastic.co/guide/en/elasticsearch/reference/5.5/search-field-caps.html", "methods"=>["GET", "POST"], "url"=>{"path"=>"/_field_caps", "paths"=>["/_field_caps", "/{index}/_field_caps"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"}}, "params"=>{"fields"=>{"type"=>"list", "description"=>"A comma-separated list of field names"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}}}, "body"=>{"description"=>"Field json objects containing an array of field names", "required"=>false}}
        request(api_name, api_spec, params)
      end

      # field_stats ["GET", "POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-field-stats.html
      def _field_stats(params = {})

        api_name = 'field_stats'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-field-stats.html", "methods"=>["GET", "POST"], "url"=>{"path"=>"/_field_stats", "paths"=>["/_field_stats", "/{index}/_field_stats"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"}}, "params"=>{"fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields for to get field statistics for (min value, max value, and more)"}, "level"=>{"type"=>"enum", "options"=>["indices", "cluster"], "default"=>"cluster", "description"=>"Defines if field stats should be returned on a per index level or on a cluster wide level"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}}}, "body"=>{"description"=>"Field json objects containing the name and optionally a range to filter out indices result, that have results outside the defined bounds", "required"=>false}}
        request(api_name, api_spec, params)
      end

      # get ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/docs-get.html
      def _get(params = {})

        api_name = 'get'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/docs-get.html", "methods"=>["GET"], "url"=>{"path"=>"/{index}/{type}/{id}", "paths"=>["/{index}/{type}/{id}"], "parts"=>{"id"=>{"type"=>"string", "required"=>true, "description"=>"The document ID"}, "index"=>{"type"=>"string", "required"=>true, "description"=>"The name of the index"}, "type"=>{"type"=>"string", "required"=>true, "description"=>"The type of the document (use `_all` to fetch the first document matching the ID across all types)"}}, "params"=>{"stored_fields"=>{"type"=>"list", "description"=>"A comma-separated list of stored fields to return in the response"}, "parent"=>{"type"=>"string", "description"=>"The ID of the parent document"}, "preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"}, "realtime"=>{"type"=>"boolean", "description"=>"Specify whether to perform the operation in realtime or search mode"}, "refresh"=>{"type"=>"boolean", "description"=>"Refresh the shard containing the document before performing the operation"}, "routing"=>{"type"=>"string", "description"=>"Specific routing value"}, "_source"=>{"type"=>"list", "description"=>"True or false to return the _source field or not, or a list of fields to return"}, "_source_exclude"=>{"type"=>"list", "description"=>"A list of fields to exclude from the returned _source field"}, "_source_include"=>{"type"=>"list", "description"=>"A list of fields to extract and return from the _source field"}, "version"=>{"type"=>"number", "description"=>"Explicit version number for concurrency control"}, "version_type"=>{"type"=>"enum", "options"=>["internal", "external", "external_gte", "force"], "description"=>"Specific version type"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # get_script ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/modules-scripting.html
      def _get_script(params = {})

        api_name = 'get_script'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/modules-scripting.html", "methods"=>["GET"], "url"=>{"path"=>"/_scripts/{lang}", "paths"=>["/_scripts/{lang}", "/_scripts/{lang}/{id}"], "parts"=>{"id"=>{"type"=>"string", "description"=>"Script ID", "required"=>true}, "lang"=>{"type"=>"string", "description"=>"Script language", "required"=>true}}, "params"=>{}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # get_source ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/docs-get.html
      def _get_source(params = {})

        api_name = 'get_source'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/docs-get.html", "methods"=>["GET"], "url"=>{"path"=>"/{index}/{type}/{id}/_source", "paths"=>["/{index}/{type}/{id}/_source"], "parts"=>{"id"=>{"type"=>"string", "required"=>true, "description"=>"The document ID"}, "index"=>{"type"=>"string", "required"=>true, "description"=>"The name of the index"}, "type"=>{"type"=>"string", "required"=>true, "description"=>"The type of the document; use `_all` to fetch the first document matching the ID across all types"}}, "params"=>{"parent"=>{"type"=>"string", "description"=>"The ID of the parent document"}, "preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"}, "realtime"=>{"type"=>"boolean", "description"=>"Specify whether to perform the operation in realtime or search mode"}, "refresh"=>{"type"=>"boolean", "description"=>"Refresh the shard containing the document before performing the operation"}, "routing"=>{"type"=>"string", "description"=>"Specific routing value"}, "_source"=>{"type"=>"list", "description"=>"True or false to return the _source field or not, or a list of fields to return"}, "_source_exclude"=>{"type"=>"list", "description"=>"A list of fields to exclude from the returned _source field"}, "_source_include"=>{"type"=>"list", "description"=>"A list of fields to extract and return from the _source field"}, "version"=>{"type"=>"number", "description"=>"Explicit version number for concurrency control"}, "version_type"=>{"type"=>"enum", "options"=>["internal", "external", "external_gte", "force"], "description"=>"Specific version type"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # get_template ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-template.html
      def _get_template(params = {})

        api_name = 'get_template'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-template.html", "methods"=>["GET"], "url"=>{"path"=>"/_search/template/{id}", "paths"=>["/_search/template/{id}"], "parts"=>{"id"=>{"type"=>"string", "description"=>"Template ID", "required"=>true}}, "params"=>{}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # index ["POST", "PUT"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/docs-index_.html
      def _index(params = {})

        api_name = 'index'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/docs-index_.html", "methods"=>["POST", "PUT"], "url"=>{"path"=>"/{index}/{type}", "paths"=>["/{index}/{type}", "/{index}/{type}/{id}"], "parts"=>{"id"=>{"type"=>"string", "description"=>"Document ID"}, "index"=>{"type"=>"string", "required"=>true, "description"=>"The name of the index"}, "type"=>{"type"=>"string", "required"=>true, "description"=>"The type of the document"}}, "params"=>{"wait_for_active_shards"=>{"type"=>"string", "description"=>"Sets the number of shard copies that must be active before proceeding with the index operation. Defaults to 1, meaning the primary shard only. Set to `all` for all shard copies, otherwise set to any non-negative value less than or equal to the total number of copies for the shard (number of replicas + 1)"}, "op_type"=>{"type"=>"enum", "options"=>["index", "create"], "default"=>"index", "description"=>"Explicit operation type"}, "parent"=>{"type"=>"string", "description"=>"ID of the parent document"}, "refresh"=>{"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` then refresh the affected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` (the default) then do nothing with refreshes."}, "routing"=>{"type"=>"string", "description"=>"Specific routing value"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "timestamp"=>{"type"=>"time", "description"=>"Explicit timestamp for the document"}, "ttl"=>{"type"=>"time", "description"=>"Expiration time for the document"}, "version"=>{"type"=>"number", "description"=>"Explicit version number for concurrency control"}, "version_type"=>{"type"=>"enum", "options"=>["internal", "external", "external_gte", "force"], "description"=>"Specific version type"}, "pipeline"=>{"type"=>"string", "description"=>"The pipeline id to preprocess incoming documents with"}}}, "body"=>{"description"=>"The document", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # indices.analyze ["GET", "POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-analyze.html
      def _indices_analyze(params = {})

        api_name = 'indices.analyze'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-analyze.html", "methods"=>["GET", "POST"], "url"=>{"path"=>"/_analyze", "paths"=>["/_analyze", "/{index}/_analyze"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The name of the index to scope the operation"}}, "params"=>{"analyzer"=>{"type"=>"string", "description"=>"The name of the analyzer to use"}, "char_filter"=>{"type"=>"list", "description"=>"A comma-separated list of character filters to use for the analysis"}, "field"=>{"type"=>"string", "description"=>"Use the analyzer configured for this field (instead of passing the analyzer name)"}, "filter"=>{"type"=>"list", "description"=>"A comma-separated list of filters to use for the analysis"}, "index"=>{"type"=>"string", "description"=>"The name of the index to scope the operation"}, "prefer_local"=>{"type"=>"boolean", "description"=>"With `true`, specify that a local shard should be used if available, with `false`, use a random shard (default: true)"}, "text"=>{"type"=>"list", "description"=>"The text on which the analysis should be performed (when request body is not used)"}, "tokenizer"=>{"type"=>"string", "description"=>"The name of the tokenizer to use for the analysis"}, "explain"=>{"type"=>"boolean", "description"=>"With `true`, outputs more advanced details. (default: false)"}, "attributes"=>{"type"=>"list", "description"=>"A comma-separated list of token attributes to output, this parameter works only with `explain=true`"}, "format"=>{"type"=>"enum", "options"=>["detailed", "text"], "default"=>"detailed", "description"=>"Format of the output"}}}, "body"=>{"description"=>"The text on which the analysis should be performed"}}
        request(api_name, api_spec, params)
      end

      # indices.clear_cache ["POST", "GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-clearcache.html
      def _indices_clear_cache(params = {})

        api_name = 'indices.clear_cache'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-clearcache.html", "methods"=>["POST", "GET"], "url"=>{"path"=>"/_cache/clear", "paths"=>["/_cache/clear", "/{index}/_cache/clear"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index name to limit the operation"}}, "params"=>{"field_data"=>{"type"=>"boolean", "description"=>"Clear field data"}, "fielddata"=>{"type"=>"boolean", "description"=>"Clear field data"}, "fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields to clear when using the `field_data` parameter (default: all)"}, "query"=>{"type"=>"boolean", "description"=>"Clear query caches"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "index"=>{"type"=>"list", "description"=>"A comma-separated list of index name to limit the operation"}, "recycler"=>{"type"=>"boolean", "description"=>"Clear the recycler cache"}, "request_cache"=>{"type"=>"boolean", "description"=>"Clear request cache"}, "request"=>{"type"=>"boolean", "description"=>"Clear request cache"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # indices.close ["POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-open-close.html
      def _indices_close(params = {})

        api_name = 'indices.close'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-open-close.html", "methods"=>["POST"], "url"=>{"path"=>"/{index}/_close", "paths"=>["/{index}/_close"], "parts"=>{"index"=>{"type"=>"list", "required"=>true, "description"=>"A comma separated list of indices to close"}}, "params"=>{"timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # indices.create ["PUT"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-create-index.html
      def _indices_create(params = {})

        api_name = 'indices.create'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-create-index.html", "methods"=>["PUT"], "url"=>{"path"=>"/{index}", "paths"=>["/{index}"], "parts"=>{"index"=>{"type"=>"string", "required"=>true, "description"=>"The name of the index"}}, "params"=>{"wait_for_active_shards"=>{"type"=>"string", "description"=>"Set the number of active shards to wait for before the operation returns."}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}, "update_all_types"=>{"type"=>"boolean", "description"=>"Whether to update the mapping for all fields with the same name across all types or not"}}}, "body"=>{"description"=>"The configuration for the index (`settings` and `mappings`)"}}
        request(api_name, api_spec, params)
      end

      # indices.delete ["DELETE"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-delete-index.html
      def _indices_delete(params = {})

        api_name = 'indices.delete'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-delete-index.html", "methods"=>["DELETE"], "url"=>{"path"=>"/{index}", "paths"=>["/{index}"], "parts"=>{"index"=>{"type"=>"list", "required"=>true, "description"=>"A comma-separated list of indices to delete; use `_all` or `*` string to delete all indices"}}, "params"=>{"timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # indices.delete_alias ["DELETE"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-aliases.html
      def _indices_delete_alias(params = {})

        api_name = 'indices.delete_alias'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-aliases.html", "methods"=>["DELETE"], "url"=>{"path"=>"/{index}/_alias/{name}", "paths"=>["/{index}/_alias/{name}", "/{index}/_aliases/{name}"], "parts"=>{"index"=>{"type"=>"list", "required"=>true, "description"=>"A comma-separated list of index names (supports wildcards); use `_all` for all indices"}, "name"=>{"type"=>"list", "required"=>true, "description"=>"A comma-separated list of aliases to delete (supports wildcards); use `_all` to delete all aliases for the specified indices."}}, "params"=>{"timeout"=>{"type"=>"time", "description"=>"Explicit timestamp for the document"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # indices.delete_template ["DELETE"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-templates.html
      def _indices_delete_template(params = {})

        api_name = 'indices.delete_template'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-templates.html", "methods"=>["DELETE"], "url"=>{"path"=>"/_template/{name}", "paths"=>["/_template/{name}"], "parts"=>{"name"=>{"type"=>"string", "required"=>true, "description"=>"The name of the template"}}, "params"=>{"timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # indices.exists ["HEAD"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-exists.html
      def _indices_exists(params = {})

        api_name = 'indices.exists'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"http://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-exists.html", "methods"=>["HEAD"], "url"=>{"path"=>"/{index}", "paths"=>["/{index}"], "parts"=>{"index"=>{"type"=>"list", "required"=>true, "description"=>"A comma-separated list of index names"}}, "params"=>{"local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Ignore unavailable indexes (default: false)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Ignore if a wildcard expression resolves to no concrete indices (default: false)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether wildcard expressions should get expanded to open or closed indices (default: open)"}, "flat_settings"=>{"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"}, "include_defaults"=>{"type"=>"boolean", "description"=>"Whether to return all default setting for each of the indices.", "default"=>false}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # indices.exists_alias ["HEAD"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-aliases.html
      def _indices_exists_alias(params = {})

        api_name = 'indices.exists_alias'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-aliases.html", "methods"=>["HEAD"], "url"=>{"path"=>"/_alias/{name}", "paths"=>["/_alias/{name}", "/{index}/_alias/{name}"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to filter aliases"}, "name"=>{"type"=>"list", "description"=>"A comma-separated list of alias names to return"}}, "params"=>{"ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"all", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # indices.exists_template ["HEAD"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-templates.html
      def _indices_exists_template(params = {})

        api_name = 'indices.exists_template'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-templates.html", "methods"=>["HEAD"], "url"=>{"path"=>"/_template/{name}", "paths"=>["/_template/{name}"], "parts"=>{"name"=>{"type"=>"list", "required"=>false, "description"=>"The comma separated names of the index templates"}}, "params"=>{"flat_settings"=>{"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # indices.exists_type ["HEAD"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-types-exists.html
      def _indices_exists_type(params = {})

        api_name = 'indices.exists_type'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-types-exists.html", "methods"=>["HEAD"], "url"=>{"path"=>"/{index}/_mapping/{type}", "paths"=>["/{index}/_mapping/{type}"], "parts"=>{"index"=>{"type"=>"list", "required"=>true, "description"=>"A comma-separated list of index names; use `_all` to check the types across all indices"}, "type"=>{"type"=>"list", "required"=>true, "description"=>"A comma-separated list of document types to check"}}, "params"=>{"ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # indices.flush ["POST", "GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-flush.html
      def _indices_flush(params = {})

        api_name = 'indices.flush'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-flush.html", "methods"=>["POST", "GET"], "url"=>{"path"=>"/_flush", "paths"=>["/_flush", "/{index}/_flush"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string for all indices"}}, "params"=>{"force"=>{"type"=>"boolean", "description"=>"Whether a flush should be forced even if it is not necessarily needed ie. if no changes will be committed to the index. This is useful if transaction log IDs should be incremented even if no uncommitted changes are present. (This setting can be considered as internal)"}, "wait_if_ongoing"=>{"type"=>"boolean", "description"=>"If set to true the flush operation will block until the flush can be executed if another flush operation is already executing. The default is true. If set to false the flush will be skipped iff if another flush operation is already running."}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # indices.flush_synced ["POST", "GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-synced-flush.html
      def _indices_flush_synced(params = {})

        api_name = 'indices.flush_synced'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-synced-flush.html", "methods"=>["POST", "GET"], "url"=>{"path"=>"/_flush/synced", "paths"=>["/_flush/synced", "/{index}/_flush/synced"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string for all indices"}}, "params"=>{"ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # indices.forcemerge ["POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-forcemerge.html
      def _indices_forcemerge(params = {})

        api_name = 'indices.forcemerge'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-forcemerge.html", "methods"=>["POST"], "url"=>{"path"=>"/_forcemerge", "paths"=>["/_forcemerge", "/{index}/_forcemerge"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"}}, "params"=>{"flush"=>{"type"=>"boolean", "description"=>"Specify whether the index should be flushed after performing the operation (default: true)"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "max_num_segments"=>{"type"=>"number", "description"=>"The number of segments the index should be merged into (default: dynamic)"}, "only_expunge_deletes"=>{"type"=>"boolean", "description"=>"Specify whether the operation should only expunge deleted documents"}, "operation_threading"=>{"description"=>"TODO: ?"}, "wait_for_merge"=>{"type"=>"boolean", "description"=>"Specify whether the request should block until the merge process is finished (default: true)"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # indices.get ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-get-index.html
      def _indices_get(params = {})

        api_name = 'indices.get'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-get-index.html", "methods"=>["GET"], "url"=>{"path"=>"/{index}", "paths"=>["/{index}", "/{index}/{feature}"], "parts"=>{"index"=>{"type"=>"list", "required"=>true, "description"=>"A comma-separated list of index names"}, "feature"=>{"type"=>"list", "description"=>"A comma-separated list of features", "options"=>["_settings", "_mappings", "_aliases"]}}, "params"=>{"local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Ignore unavailable indexes (default: false)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Ignore if a wildcard expression resolves to no concrete indices (default: false)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether wildcard expressions should get expanded to open or closed indices (default: open)"}, "flat_settings"=>{"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"}, "include_defaults"=>{"type"=>"boolean", "description"=>"Whether to return all default setting for each of the indices.", "default"=>false}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # indices.get_alias ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-aliases.html
      def _indices_get_alias(params = {})

        api_name = 'indices.get_alias'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-aliases.html", "methods"=>["GET"], "url"=>{"path"=>"/_alias/", "paths"=>["/_alias", "/_alias/{name}", "/{index}/_alias/{name}", "/{index}/_alias"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to filter aliases"}, "name"=>{"type"=>"list", "description"=>"A comma-separated list of alias names to return"}}, "params"=>{"ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"all", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # indices.get_field_mapping ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-get-field-mapping.html
      def _indices_get_field_mapping(params = {})

        api_name = 'indices.get_field_mapping'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-get-field-mapping.html", "methods"=>["GET"], "url"=>{"path"=>"/_mapping/field/{fields}", "paths"=>["/_mapping/field/{fields}", "/{index}/_mapping/field/{fields}", "/_mapping/{type}/field/{fields}", "/{index}/_mapping/{type}/field/{fields}"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names"}, "type"=>{"type"=>"list", "description"=>"A comma-separated list of document types"}, "fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields", "required"=>true}}, "params"=>{"include_defaults"=>{"type"=>"boolean", "description"=>"Whether the default mapping values should be returned as well"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # indices.get_mapping ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-get-mapping.html
      def _indices_get_mapping(params = {})

        api_name = 'indices.get_mapping'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-get-mapping.html", "methods"=>["GET"], "url"=>{"path"=>"/_mapping", "paths"=>["/_mapping", "/{index}/_mapping", "/_mapping/{type}", "/{index}/_mapping/{type}"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names"}, "type"=>{"type"=>"list", "description"=>"A comma-separated list of document types"}}, "params"=>{"ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # indices.get_settings ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-get-settings.html
      def _indices_get_settings(params = {})

        api_name = 'indices.get_settings'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-get-settings.html", "methods"=>["GET"], "url"=>{"path"=>"/_settings", "paths"=>["/_settings", "/{index}/_settings", "/{index}/_settings/{name}", "/_settings/{name}"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"}, "name"=>{"type"=>"list", "description"=>"The name of the settings that should be included"}}, "params"=>{"ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>["open", "closed"], "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "flat_settings"=>{"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "include_defaults"=>{"type"=>"boolean", "description"=>"Whether to return all default setting for each of the indices.", "default"=>false}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # indices.get_template ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-templates.html
      def _indices_get_template(params = {})

        api_name = 'indices.get_template'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-templates.html", "methods"=>["GET"], "url"=>{"path"=>"/_template/{name}", "paths"=>["/_template", "/_template/{name}"], "parts"=>{"name"=>{"type"=>"list", "required"=>false, "description"=>"The comma separated names of the index templates"}}, "params"=>{"flat_settings"=>{"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"}, "master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # indices.get_upgrade ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-upgrade.html
      def _indices_get_upgrade(params = {})

        api_name = 'indices.get_upgrade'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-upgrade.html", "methods"=>["GET"], "url"=>{"path"=>"/_upgrade", "paths"=>["/_upgrade", "/{index}/_upgrade"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"}}, "params"=>{"ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # indices.open ["POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-open-close.html
      def _indices_open(params = {})

        api_name = 'indices.open'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-open-close.html", "methods"=>["POST"], "url"=>{"path"=>"/{index}/_open", "paths"=>["/{index}/_open"], "parts"=>{"index"=>{"type"=>"list", "required"=>true, "description"=>"A comma separated list of indices to open"}}, "params"=>{"timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"closed", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # indices.put_alias ["PUT", "POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-aliases.html
      def _indices_put_alias(params = {})

        api_name = 'indices.put_alias'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-aliases.html", "methods"=>["PUT", "POST"], "url"=>{"path"=>"/{index}/_alias/{name}", "paths"=>["/{index}/_alias/{name}", "/{index}/_aliases/{name}"], "parts"=>{"index"=>{"type"=>"list", "required"=>true, "description"=>"A comma-separated list of index names the alias should point to (supports wildcards); use `_all` to perform the operation on all indices."}, "name"=>{"type"=>"string", "required"=>true, "description"=>"The name of the alias to be created or updated"}}, "params"=>{"timeout"=>{"type"=>"time", "description"=>"Explicit timestamp for the document"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}}}, "body"=>{"description"=>"The settings for the alias, such as `routing` or `filter`", "required"=>false}}
        request(api_name, api_spec, params)
      end

      # indices.put_mapping ["PUT", "POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-put-mapping.html
      def _indices_put_mapping(params = {})

        api_name = 'indices.put_mapping'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-put-mapping.html", "methods"=>["PUT", "POST"], "url"=>{"path"=>"/{index}/{type}/_mapping", "paths"=>["/{index}/{type}/_mapping", "/{index}/_mapping/{type}", "/_mapping/{type}", "/{index}/{type}/_mappings", "/{index}/_mappings/{type}", "/_mappings/{type}"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names the mapping should be added to (supports wildcards); use `_all` or omit to add the mapping on all indices."}, "type"=>{"type"=>"string", "required"=>true, "description"=>"The name of the document type"}}, "params"=>{"timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "update_all_types"=>{"type"=>"boolean", "description"=>"Whether to update the mapping for all fields with the same name across all types or not"}}}, "body"=>{"description"=>"The mapping definition", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # indices.put_settings ["PUT"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-update-settings.html
      def _indices_put_settings(params = {})

        api_name = 'indices.put_settings'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-update-settings.html", "methods"=>["PUT"], "url"=>{"path"=>"/_settings", "paths"=>["/_settings", "/{index}/_settings"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"}}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}, "preserve_existing"=>{"type"=>"boolean", "description"=>"Whether to update existing settings. If set to `true` existing settings on an index remain unchanged, the default is `false`"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "flat_settings"=>{"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"}}}, "body"=>{"description"=>"The index settings to be updated", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # indices.put_template ["PUT", "POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-templates.html
      def _indices_put_template(params = {})

        api_name = 'indices.put_template'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-templates.html", "methods"=>["PUT", "POST"], "url"=>{"path"=>"/_template/{name}", "paths"=>["/_template/{name}"], "parts"=>{"name"=>{"type"=>"string", "required"=>true, "description"=>"The name of the template"}}, "params"=>{"order"=>{"type"=>"number", "description"=>"The order for this template when merging multiple matching ones (higher numbers are merged later, overriding the lower numbers)"}, "create"=>{"type"=>"boolean", "description"=>"Whether the index template should only be added if new or can also replace an existing one", "default"=>false}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}, "flat_settings"=>{"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"}}}, "body"=>{"description"=>"The template definition", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # indices.recovery ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-recovery.html
      def _indices_recovery(params = {})

        api_name = 'indices.recovery'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-recovery.html", "methods"=>["GET"], "url"=>{"path"=>"/_recovery", "paths"=>["/_recovery", "/{index}/_recovery"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"}}, "params"=>{"detailed"=>{"type"=>"boolean", "description"=>"Whether to display detailed information about shard recovery", "default"=>false}, "active_only"=>{"type"=>"boolean", "description"=>"Display only those recoveries that are currently on-going", "default"=>false}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # indices.refresh ["POST", "GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-refresh.html
      def _indices_refresh(params = {})

        api_name = 'indices.refresh'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-refresh.html", "methods"=>["POST", "GET"], "url"=>{"path"=>"/_refresh", "paths"=>["/_refresh", "/{index}/_refresh"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"}}, "params"=>{"ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # indices.rollover ["POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-rollover-index.html
      def _indices_rollover(params = {})

        api_name = 'indices.rollover'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-rollover-index.html", "methods"=>["POST"], "url"=>{"path"=>"/{alias}/_rollover", "paths"=>["/{alias}/_rollover", "/{alias}/_rollover/{new_index}"], "parts"=>{"alias"=>{"type"=>"string", "required"=>true, "description"=>"The name of the alias to rollover"}, "new_index"=>{"type"=>"string", "required"=>false, "description"=>"The name of the rollover index"}}, "params"=>{"timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "dry_run"=>{"type"=>"boolean", "description"=>"If set to true the rollover action will only be validated but not actually performed even if a condition matches. The default is false"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}, "wait_for_active_shards"=>{"type"=>"string", "description"=>"Set the number of active shards to wait for on the newly created rollover index before the operation returns."}}}, "body"=>{"description"=>"The conditions that needs to be met for executing rollover"}}
        request(api_name, api_spec, params)
      end

      # indices.segments ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-segments.html
      def _indices_segments(params = {})

        api_name = 'indices.segments'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-segments.html", "methods"=>["GET"], "url"=>{"path"=>"/_segments", "paths"=>["/_segments", "/{index}/_segments"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"}}, "params"=>{"ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "operation_threading"=>{"description"=>"TODO: ?"}, "verbose"=>{"type"=>"boolean", "description"=>"Includes detailed memory usage by Lucene.", "default"=>false}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # indices.shard_stores ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-shards-stores.html
      def _indices_shard_stores(params = {})

        api_name = 'indices.shard_stores'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-shards-stores.html", "methods"=>["GET"], "url"=>{"path"=>"/_shard_stores", "paths"=>["/_shard_stores", "/{index}/_shard_stores"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"}}, "params"=>{"status"=>{"type"=>"list", "options"=>["green", "yellow", "red", "all"], "description"=>"A comma-separated list of statuses used to filter on shards to get store information for"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "operation_threading"=>{"description"=>"TODO: ?"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # indices.shrink ["PUT", "POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-shrink-index.html
      def _indices_shrink(params = {})

        api_name = 'indices.shrink'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-shrink-index.html", "methods"=>["PUT", "POST"], "url"=>{"path"=>"/{index}/_shrink/{target}", "paths"=>["/{index}/_shrink/{target}"], "parts"=>{"index"=>{"type"=>"string", "required"=>true, "description"=>"The name of the source index to shrink"}, "target"=>{"type"=>"string", "required"=>true, "description"=>"The name of the target index to shrink into"}}, "params"=>{"timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}, "wait_for_active_shards"=>{"type"=>"string", "description"=>"Set the number of active shards to wait for on the shrunken index before the operation returns."}}}, "body"=>{"description"=>"The configuration for the target index (`settings` and `aliases`)"}}
        request(api_name, api_spec, params)
      end

      # indices.stats ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-stats.html
      def _indices_stats(params = {})

        api_name = 'indices.stats'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-stats.html", "methods"=>["GET"], "url"=>{"path"=>"/_stats", "paths"=>["/_stats", "/_stats/{metric}", "/{index}/_stats", "/{index}/_stats/{metric}"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"}, "metric"=>{"type"=>"list", "options"=>["_all", "completion", "docs", "fielddata", "query_cache", "flush", "get", "indexing", "merge", "percolate", "request_cache", "refresh", "search", "segments", "store", "warmer", "suggest"], "description"=>"Limit the information returned the specific metrics."}}, "params"=>{"completion_fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields for `fielddata` and `suggest` index metric (supports wildcards)"}, "fielddata_fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields for `fielddata` index metric (supports wildcards)"}, "fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields for `fielddata` and `completion` index metric (supports wildcards)"}, "groups"=>{"type"=>"list", "description"=>"A comma-separated list of search groups for `search` index metric"}, "level"=>{"type"=>"enum", "description"=>"Return stats aggregated at cluster, index or shard level", "options"=>["cluster", "indices", "shards"], "default"=>"indices"}, "types"=>{"type"=>"list", "description"=>"A comma-separated list of document types for the `indexing` index metric"}, "include_segment_file_sizes"=>{"type"=>"boolean", "description"=>"Whether to report the aggregated disk usage of each one of the Lucene index files (only applies if segment stats are requested)", "default"=>false}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # indices.update_aliases ["POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-aliases.html
      def _indices_update_aliases(params = {})

        api_name = 'indices.update_aliases'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-aliases.html", "methods"=>["POST"], "url"=>{"path"=>"/_aliases", "paths"=>["/_aliases"], "parts"=>{}, "params"=>{"timeout"=>{"type"=>"time", "description"=>"Request timeout"}, "master_timeout"=>{"type"=>"time", "description"=>"Specify timeout for connection to master"}}}, "body"=>{"description"=>"The definition of `actions` to perform", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # indices.upgrade ["POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-upgrade.html
      def _indices_upgrade(params = {})

        api_name = 'indices.upgrade'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/indices-upgrade.html", "methods"=>["POST"], "url"=>{"path"=>"/_upgrade", "paths"=>["/_upgrade", "/{index}/_upgrade"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices"}}, "params"=>{"allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "wait_for_completion"=>{"type"=>"boolean", "description"=>"Specify whether the request should block until the all segments are upgraded (default: false)"}, "only_ancient_segments"=>{"type"=>"boolean", "description"=>"If true, only ancient (an older Lucene major release) segments will be upgraded"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # indices.validate_query ["GET", "POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-validate.html
      def _indices_validate_query(params = {})

        api_name = 'indices.validate_query'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-validate.html", "methods"=>["GET", "POST"], "url"=>{"path"=>"/_validate/query", "paths"=>["/_validate/query", "/{index}/_validate/query", "/{index}/{type}/_validate/query"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to restrict the operation; use `_all` or empty string to perform the operation on all indices"}, "type"=>{"type"=>"list", "description"=>"A comma-separated list of document types to restrict the operation; leave empty to perform the operation on all types"}}, "params"=>{"explain"=>{"type"=>"boolean", "description"=>"Return detailed information about the error"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "operation_threading"=>{"description"=>"TODO: ?"}, "q"=>{"type"=>"string", "description"=>"Query in the Lucene query string syntax"}, "analyzer"=>{"type"=>"string", "description"=>"The analyzer to use for the query string"}, "analyze_wildcard"=>{"type"=>"boolean", "description"=>"Specify whether wildcard and prefix queries should be analyzed (default: false)"}, "default_operator"=>{"type"=>"enum", "options"=>["AND", "OR"], "default"=>"OR", "description"=>"The default operator for query string query (AND or OR)"}, "df"=>{"type"=>"string", "description"=>"The field to use as default where no field prefix is given in the query string"}, "lenient"=>{"type"=>"boolean", "description"=>"Specify whether format-based query failures (such as providing text to a numeric field) should be ignored"}, "rewrite"=>{"type"=>"boolean", "description"=>"Provide a more detailed explanation showing the actual Lucene query that will be executed."}, "all_shards"=>{"type"=>"boolean", "description"=>"Execute validation on all shards instead of one random shard per index"}}}, "body"=>{"description"=>"The query definition specified with the Query DSL"}}
        request(api_name, api_spec, params)
      end

      # info ["GET"]
      # https://www.elastic.co/guide/
      def _info(params = {})

        api_name = 'info'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/", "methods"=>["GET"], "url"=>{"path"=>"/", "paths"=>["/"], "parts"=>{}, "params"=>{}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # ingest.delete_pipeline ["DELETE"]
      # https://www.elastic.co/guide/en/elasticsearch/plugins/5.x/ingest.html
      def _ingest_delete_pipeline(params = {})

        api_name = 'ingest.delete_pipeline'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/plugins/5.x/ingest.html", "methods"=>["DELETE"], "url"=>{"path"=>"/_ingest/pipeline/{id}", "paths"=>["/_ingest/pipeline/{id}"], "parts"=>{"id"=>{"type"=>"string", "description"=>"Pipeline ID", "required"=>true}}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # ingest.get_pipeline ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/plugins/5.x/ingest.html
      def _ingest_get_pipeline(params = {})

        api_name = 'ingest.get_pipeline'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/plugins/5.x/ingest.html", "methods"=>["GET"], "url"=>{"path"=>"/_ingest/pipeline/{id}", "paths"=>["/_ingest/pipeline", "/_ingest/pipeline/{id}"], "parts"=>{"id"=>{"type"=>"string", "description"=>"Comma separated list of pipeline ids. Wildcards supported"}}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # ingest.put_pipeline ["PUT"]
      # https://www.elastic.co/guide/en/elasticsearch/plugins/5.x/ingest.html
      def _ingest_put_pipeline(params = {})

        api_name = 'ingest.put_pipeline'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/plugins/5.x/ingest.html", "methods"=>["PUT"], "url"=>{"path"=>"/_ingest/pipeline/{id}", "paths"=>["/_ingest/pipeline/{id}"], "parts"=>{"id"=>{"type"=>"string", "description"=>"Pipeline ID", "required"=>true}}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}}}, "body"=>{"description"=>"The ingest definition", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # ingest.simulate ["GET", "POST"]
      # https://www.elastic.co/guide/en/elasticsearch/plugins/5.x/ingest.html
      def _ingest_simulate(params = {})

        api_name = 'ingest.simulate'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/plugins/5.x/ingest.html", "methods"=>["GET", "POST"], "url"=>{"path"=>"/_ingest/pipeline/_simulate", "paths"=>["/_ingest/pipeline/_simulate", "/_ingest/pipeline/{id}/_simulate"], "parts"=>{"id"=>{"type"=>"string", "description"=>"Pipeline ID", "required"=>false}}, "params"=>{"verbose"=>{"type"=>"boolean", "description"=>"Verbose mode. Display data output for each processor in executed pipeline", "default"=>false}}}, "body"=>{"description"=>"The simulate definition", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # mget ["GET", "POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/docs-multi-get.html
      def _mget(params = {})

        api_name = 'mget'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/docs-multi-get.html", "methods"=>["GET", "POST"], "url"=>{"path"=>"/_mget", "paths"=>["/_mget", "/{index}/_mget", "/{index}/{type}/_mget"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The name of the index"}, "type"=>{"type"=>"string", "description"=>"The type of the document"}}, "params"=>{"stored_fields"=>{"type"=>"list", "description"=>"A comma-separated list of stored fields to return in the response"}, "preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"}, "realtime"=>{"type"=>"boolean", "description"=>"Specify whether to perform the operation in realtime or search mode"}, "refresh"=>{"type"=>"boolean", "description"=>"Refresh the shard containing the document before performing the operation"}, "routing"=>{"type"=>"string", "description"=>"Specific routing value"}, "_source"=>{"type"=>"list", "description"=>"True or false to return the _source field or not, or a list of fields to return"}, "_source_exclude"=>{"type"=>"list", "description"=>"A list of fields to exclude from the returned _source field"}, "_source_include"=>{"type"=>"list", "description"=>"A list of fields to extract and return from the _source field"}}}, "body"=>{"description"=>"Document identifiers; can be either `docs` (containing full document information) or `ids` (when index and type is provided in the URL.", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # mpercolate ["GET", "POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-percolate.html
      def _mpercolate(params = {})

        api_name = 'mpercolate'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-percolate.html", "methods"=>["GET", "POST"], "url"=>{"path"=>"/_mpercolate", "paths"=>["/_mpercolate", "/{index}/_mpercolate", "/{index}/{type}/_mpercolate"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The index of the document being count percolated to use as default"}, "type"=>{"type"=>"string", "description"=>"The type of the document being percolated to use as default."}}, "params"=>{"ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}}}, "body"=>{"description"=>"The percolate request definitions (header & body pair), separated by newlines", "required"=>true, "serialize"=>"bulk"}}
        request(api_name, api_spec, params)
      end

      # msearch ["GET", "POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-multi-search.html
      def _msearch(params = {})

        api_name = 'msearch'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-multi-search.html", "methods"=>["GET", "POST"], "url"=>{"path"=>"/_msearch", "paths"=>["/_msearch", "/{index}/_msearch", "/{index}/{type}/_msearch"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to use as default"}, "type"=>{"type"=>"list", "description"=>"A comma-separated list of document types to use as default"}}, "params"=>{"search_type"=>{"type"=>"enum", "options"=>["query_then_fetch", "query_and_fetch", "dfs_query_then_fetch", "dfs_query_and_fetch"], "description"=>"Search operation type"}, "max_concurrent_searches"=>{"type"=>"number", "description"=>"Controls the maximum number of concurrent searches the multi search api will execute"}, "typed_keys"=>{"type"=>"boolean", "description"=>"Specify whether aggregation and suggester names should be prefixed by their respective types in the response"}}}, "body"=>{"description"=>"The request definitions (metadata-search request definition pairs), separated by newlines", "required"=>true, "serialize"=>"bulk"}}
        request(api_name, api_spec, params)
      end

      # msearch_template ["GET", "POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/current/search-template.html
      def _msearch_template(params = {})

        api_name = 'msearch_template'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/search-template.html", "methods"=>["GET", "POST"], "url"=>{"path"=>"/_msearch/template", "paths"=>["/_msearch/template", "/{index}/_msearch/template", "/{index}/{type}/_msearch/template"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to use as default"}, "type"=>{"type"=>"list", "description"=>"A comma-separated list of document types to use as default"}}, "params"=>{"search_type"=>{"type"=>"enum", "options"=>["query_then_fetch", "query_and_fetch", "dfs_query_then_fetch", "dfs_query_and_fetch"], "description"=>"Search operation type"}, "typed_keys"=>{"type"=>"boolean", "description"=>"Specify whether aggregation and suggester names should be prefixed by their respective types in the response"}, "max_concurrent_searches"=>{"type"=>"number", "description"=>"Controls the maximum number of concurrent searches the multi search api will execute"}}}, "body"=>{"description"=>"The request definitions (metadata-search request definition pairs), separated by newlines", "required"=>true, "serialize"=>"bulk"}}
        request(api_name, api_spec, params)
      end

      # mtermvectors ["GET", "POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/docs-multi-termvectors.html
      def _mtermvectors(params = {})

        api_name = 'mtermvectors'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/docs-multi-termvectors.html", "methods"=>["GET", "POST"], "url"=>{"path"=>"/_mtermvectors", "paths"=>["/_mtermvectors", "/{index}/_mtermvectors", "/{index}/{type}/_mtermvectors"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The index in which the document resides."}, "type"=>{"type"=>"string", "description"=>"The type of the document."}}, "params"=>{"ids"=>{"type"=>"list", "description"=>"A comma-separated list of documents ids. You must define ids as parameter or set \"ids\" or \"docs\" in the request body", "required"=>false}, "term_statistics"=>{"type"=>"boolean", "description"=>"Specifies if total term frequency and document frequency should be returned. Applies to all returned documents unless otherwise specified in body \"params\" or \"docs\".", "default"=>false, "required"=>false}, "field_statistics"=>{"type"=>"boolean", "description"=>"Specifies if document count, sum of document frequencies and sum of total term frequencies should be returned. Applies to all returned documents unless otherwise specified in body \"params\" or \"docs\".", "default"=>true, "required"=>false}, "fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields to return. Applies to all returned documents unless otherwise specified in body \"params\" or \"docs\".", "required"=>false}, "offsets"=>{"type"=>"boolean", "description"=>"Specifies if term offsets should be returned. Applies to all returned documents unless otherwise specified in body \"params\" or \"docs\".", "default"=>true, "required"=>false}, "positions"=>{"type"=>"boolean", "description"=>"Specifies if term positions should be returned. Applies to all returned documents unless otherwise specified in body \"params\" or \"docs\".", "default"=>true, "required"=>false}, "payloads"=>{"type"=>"boolean", "description"=>"Specifies if term payloads should be returned. Applies to all returned documents unless otherwise specified in body \"params\" or \"docs\".", "default"=>true, "required"=>false}, "preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random) .Applies to all returned documents unless otherwise specified in body \"params\" or \"docs\".", "required"=>false}, "routing"=>{"type"=>"string", "description"=>"Specific routing value. Applies to all returned documents unless otherwise specified in body \"params\" or \"docs\".", "required"=>false}, "parent"=>{"type"=>"string", "description"=>"Parent id of documents. Applies to all returned documents unless otherwise specified in body \"params\" or \"docs\".", "required"=>false}, "realtime"=>{"type"=>"boolean", "description"=>"Specifies if requests are real-time as opposed to near-real-time (default: true).", "required"=>false}, "version"=>{"type"=>"number", "description"=>"Explicit version number for concurrency control"}, "version_type"=>{"type"=>"enum", "options"=>["internal", "external", "external_gte", "force"], "description"=>"Specific version type"}}}, "body"=>{"description"=>"Define ids, documents, parameters or a list of parameters per document here. You must at least provide a list of document ids. See documentation.", "required"=>false}}
        request(api_name, api_spec, params)
      end

      # nodes.hot_threads ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cluster-nodes-hot-threads.html
      def _nodes_hot_threads(params = {})

        api_name = 'nodes.hot_threads'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cluster-nodes-hot-threads.html", "methods"=>["GET"], "url"=>{"path"=>"/_nodes/hot_threads", "paths"=>["/_cluster/nodes/hotthreads", "/_cluster/nodes/hot_threads", "/_cluster/nodes/{node_id}/hotthreads", "/_cluster/nodes/{node_id}/hot_threads", "/_nodes/hotthreads", "/_nodes/hot_threads", "/_nodes/{node_id}/hotthreads", "/_nodes/{node_id}/hot_threads"], "parts"=>{"node_id"=>{"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"}}, "params"=>{"interval"=>{"type"=>"time", "description"=>"The interval for the second sampling of threads"}, "snapshots"=>{"type"=>"number", "description"=>"Number of samples of thread stacktrace (default: 10)"}, "threads"=>{"type"=>"number", "description"=>"Specify the number of threads to provide information for (default: 3)"}, "ignore_idle_threads"=>{"type"=>"boolean", "description"=>"Don't show threads that are in known-idle places, such as waiting on a socket select or pulling from an empty task queue (default: true)"}, "type"=>{"type"=>"enum", "options"=>["cpu", "wait", "block"], "description"=>"The type to sample (default: cpu)"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # nodes.info ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cluster-nodes-info.html
      def _nodes_info(params = {})

        api_name = 'nodes.info'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cluster-nodes-info.html", "methods"=>["GET"], "url"=>{"path"=>"/_nodes", "paths"=>["/_nodes", "/_nodes/{node_id}", "/_nodes/{metric}", "/_nodes/{node_id}/{metric}"], "parts"=>{"node_id"=>{"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"}, "metric"=>{"type"=>"list", "options"=>["settings", "os", "process", "jvm", "thread_pool", "transport", "http", "plugins", "ingest"], "description"=>"A comma-separated list of metrics you wish returned. Leave empty to return all."}}, "params"=>{"flat_settings"=>{"type"=>"boolean", "description"=>"Return settings in flat format (default: false)"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # nodes.stats ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cluster-nodes-stats.html
      def _nodes_stats(params = {})

        api_name = 'nodes.stats'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/cluster-nodes-stats.html", "methods"=>["GET"], "url"=>{"path"=>"/_nodes/stats", "paths"=>["/_nodes/stats", "/_nodes/{node_id}/stats", "/_nodes/stats/{metric}", "/_nodes/{node_id}/stats/{metric}", "/_nodes/stats/{metric}/{index_metric}", "/_nodes/{node_id}/stats/{metric}/{index_metric}"], "parts"=>{"metric"=>{"type"=>"list", "options"=>["_all", "breaker", "fs", "http", "indices", "jvm", "os", "process", "thread_pool", "transport", "discovery"], "description"=>"Limit the information returned to the specified metrics"}, "index_metric"=>{"type"=>"list", "options"=>["_all", "completion", "docs", "fielddata", "query_cache", "flush", "get", "indexing", "merge", "percolate", "request_cache", "refresh", "search", "segments", "store", "warmer", "suggest"], "description"=>"Limit the information returned for `indices` metric to the specific index metrics. Isn't used if `indices` (or `all`) metric isn't specified."}, "node_id"=>{"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"}}, "params"=>{"completion_fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields for `fielddata` and `suggest` index metric (supports wildcards)"}, "fielddata_fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields for `fielddata` index metric (supports wildcards)"}, "fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields for `fielddata` and `completion` index metric (supports wildcards)"}, "groups"=>{"type"=>"boolean", "description"=>"A comma-separated list of search groups for `search` index metric"}, "level"=>{"type"=>"enum", "description"=>"Return indices stats aggregated at index, node or shard level", "options"=>["indices", "node", "shards"], "default"=>"node"}, "types"=>{"type"=>"list", "description"=>"A comma-separated list of document types for the `indexing` index metric"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "include_segment_file_sizes"=>{"type"=>"boolean", "description"=>"Whether to report the aggregated disk usage of each one of the Lucene index files (only applies if segment stats are requested)", "default"=>false}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # percolate ["GET", "POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-percolate.html
      def _percolate(params = {})

        api_name = 'percolate'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-percolate.html", "methods"=>["GET", "POST"], "url"=>{"path"=>"/{index}/{type}/_percolate", "paths"=>["/{index}/{type}/_percolate", "/{index}/{type}/{id}/_percolate"], "parts"=>{"index"=>{"type"=>"string", "required"=>true, "description"=>"The index of the document being percolated."}, "type"=>{"type"=>"string", "required"=>true, "description"=>"The type of the document being percolated."}, "id"=>{"type"=>"string", "required"=>false, "description"=>"Substitute the document in the request body with a document that is known by the specified id. On top of the id, the index and type parameter will be used to retrieve the document from within the cluster."}}, "params"=>{"routing"=>{"type"=>"list", "description"=>"A comma-separated list of specific routing values"}, "preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "percolate_index"=>{"type"=>"string", "description"=>"The index to percolate the document into. Defaults to index."}, "percolate_type"=>{"type"=>"string", "description"=>"The type to percolate document into. Defaults to type."}, "percolate_routing"=>{"type"=>"string", "description"=>"The routing value to use when percolating the existing document."}, "percolate_preference"=>{"type"=>"string", "description"=>"Which shard to prefer when executing the percolate request."}, "percolate_format"=>{"type"=>"enum", "options"=>["ids"], "description"=>"Return an array of matching query IDs instead of objects"}, "version"=>{"type"=>"number", "description"=>"Explicit version number for concurrency control"}, "version_type"=>{"type"=>"enum", "options"=>["internal", "external", "external_gte", "force"], "description"=>"Specific version type"}}}, "body"=>{"description"=>"The percolator request definition using the percolate DSL", "required"=>false}}
        request(api_name, api_spec, params)
      end

      # ping ["HEAD"]
      # https://www.elastic.co/guide/
      def _ping(params = {})

        api_name = 'ping'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/", "methods"=>["HEAD"], "url"=>{"path"=>"/", "paths"=>["/"], "parts"=>{}, "params"=>{}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # put_script ["PUT", "POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/modules-scripting.html
      def _put_script(params = {})

        api_name = 'put_script'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/modules-scripting.html", "methods"=>["PUT", "POST"], "url"=>{"path"=>"/_scripts/{lang}", "paths"=>["/_scripts/{lang}", "/_scripts/{lang}/{id}"], "parts"=>{"id"=>{"type"=>"string", "description"=>"Script ID", "required"=>true}, "lang"=>{"type"=>"string", "description"=>"Script language", "required"=>true}}, "params"=>{}}, "body"=>{"description"=>"The document", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # put_template ["PUT", "POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-template.html
      def _put_template(params = {})

        api_name = 'put_template'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-template.html", "methods"=>["PUT", "POST"], "url"=>{"path"=>"/_search/template/{id}", "paths"=>["/_search/template/{id}"], "parts"=>{"id"=>{"type"=>"string", "description"=>"Template ID", "required"=>true}}, "params"=>{}}, "body"=>{"description"=>"The document", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # reindex ["POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/docs-reindex.html
      def _reindex(params = {})

        api_name = 'reindex'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/docs-reindex.html", "methods"=>["POST"], "url"=>{"path"=>"/_reindex", "paths"=>["/_reindex"], "parts"=>{}, "params"=>{"refresh"=>{"type"=>"boolean", "description"=>"Should the effected indexes be refreshed?"}, "timeout"=>{"type"=>"time", "default"=>"1m", "description"=>"Time each individual bulk request should wait for shards that are unavailable."}, "wait_for_active_shards"=>{"type"=>"string", "description"=>"Sets the number of shard copies that must be active before proceeding with the reindex operation. Defaults to 1, meaning the primary shard only. Set to `all` for all shard copies, otherwise set to any non-negative value less than or equal to the total number of copies for the shard (number of replicas + 1)"}, "wait_for_completion"=>{"type"=>"boolean", "default"=>true, "description"=>"Should the request should block until the reindex is complete."}, "requests_per_second"=>{"type"=>"number", "default"=>0, "description"=>"The throttle to set on this request in sub-requests per second. -1 means no throttle."}, "slices"=>{"type"=>"number", "default"=>1, "description"=>"The number of slices this task should be divided into. Defaults to 1 meaning the task isn't sliced into subtasks."}}}, "body"=>{"description"=>"The search definition using the Query DSL and the prototype for the index request.", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # reindex_rethrottle ["POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/docs-reindex.html
      def _reindex_rethrottle(params = {})

        api_name = 'reindex_rethrottle'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/docs-reindex.html", "methods"=>["POST"], "url"=>{"path"=>"/_reindex/{task_id}/_rethrottle", "paths"=>["/_reindex/{task_id}/_rethrottle", "/_update_by_query/{task_id}/_rethrottle", "/_delete_by_query/{task_id}/_rethrottle"], "parts"=>{"task_id"=>{"type"=>"string", "description"=>"The task id to rethrottle"}}, "params"=>{"requests_per_second"=>{"type"=>"number", "required"=>true, "description"=>"The throttle to set on this request in floating sub-requests per second. -1 means set no throttle."}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # remote.info ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/5.5/cluster-remote-info.html
      def _remote_info(params = {})

        api_name = 'remote.info'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"http://www.elastic.co/guide/en/elasticsearch/reference/5.5/cluster-remote-info.html", "methods"=>["GET"], "url"=>{"path"=>"/_remote/info", "paths"=>["/_remote/info"], "params"=>{}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # render_search_template ["GET", "POST"]
      # http://www.elasticsearch.org/guide/en/elasticsearch/reference/5.x/search-template.html
      def _render_search_template(params = {})

        api_name = 'render_search_template'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"http://www.elasticsearch.org/guide/en/elasticsearch/reference/5.x/search-template.html", "methods"=>["GET", "POST"], "url"=>{"path"=>"/_render/template", "paths"=>["/_render/template", "/_render/template/{id}"], "parts"=>{"id"=>{"type"=>"string", "description"=>"The id of the stored search template"}}}, "body"=>{"description"=>"The search definition template and its params"}}
        request(api_name, api_spec, params)
      end

      # scroll ["GET", "POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-request-scroll.html
      def _scroll(params = {})

        api_name = 'scroll'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-request-scroll.html", "methods"=>["GET", "POST"], "url"=>{"path"=>"/_search/scroll", "paths"=>["/_search/scroll", "/_search/scroll/{scroll_id}"], "parts"=>{"scroll_id"=>{"type"=>"string", "description"=>"The scroll ID"}}, "params"=>{"scroll"=>{"type"=>"time", "description"=>"Specify how long a consistent view of the index should be maintained for scrolled search"}, "scroll_id"=>{"type"=>"string", "description"=>"The scroll ID for scrolled search"}}}, "body"=>{"description"=>"The scroll ID if not passed by URL or query parameter."}}
        request(api_name, api_spec, params)
      end

      # search ["GET", "POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-search.html
      def _search(params = {})

        api_name = 'search'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-search.html", "methods"=>["GET", "POST"], "url"=>{"path"=>"/_search", "paths"=>["/_search", "/{index}/_search", "/{index}/{type}/_search"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices"}, "type"=>{"type"=>"list", "description"=>"A comma-separated list of document types to search; leave empty to perform the operation on all types"}}, "params"=>{"analyzer"=>{"type"=>"string", "description"=>"The analyzer to use for the query string"}, "analyze_wildcard"=>{"type"=>"boolean", "description"=>"Specify whether wildcard and prefix queries should be analyzed (default: false)"}, "default_operator"=>{"type"=>"enum", "options"=>["AND", "OR"], "default"=>"OR", "description"=>"The default operator for query string query (AND or OR)"}, "df"=>{"type"=>"string", "description"=>"The field to use as default where no field prefix is given in the query string"}, "explain"=>{"type"=>"boolean", "description"=>"Specify whether to return detailed information about score computation as part of a hit"}, "stored_fields"=>{"type"=>"list", "description"=>"A comma-separated list of stored fields to return as part of a hit"}, "docvalue_fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields to return as the docvalue representation of a field for each hit"}, "fielddata_fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields to return as the docvalue representation of a field for each hit"}, "from"=>{"type"=>"number", "description"=>"Starting offset (default: 0)"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "lenient"=>{"type"=>"boolean", "description"=>"Specify whether format-based query failures (such as providing text to a numeric field) should be ignored"}, "preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"}, "q"=>{"type"=>"string", "description"=>"Query in the Lucene query string syntax"}, "routing"=>{"type"=>"list", "description"=>"A comma-separated list of specific routing values"}, "scroll"=>{"type"=>"time", "description"=>"Specify how long a consistent view of the index should be maintained for scrolled search"}, "search_type"=>{"type"=>"enum", "options"=>["query_then_fetch", "dfs_query_then_fetch"], "description"=>"Search operation type"}, "size"=>{"type"=>"number", "description"=>"Number of hits to return (default: 10)"}, "sort"=>{"type"=>"list", "description"=>"A comma-separated list of <field>:<direction> pairs"}, "_source"=>{"type"=>"list", "description"=>"True or false to return the _source field or not, or a list of fields to return"}, "_source_exclude"=>{"type"=>"list", "description"=>"A list of fields to exclude from the returned _source field"}, "_source_include"=>{"type"=>"list", "description"=>"A list of fields to extract and return from the _source field"}, "terminate_after"=>{"type"=>"number", "description"=>"The maximum number of documents to collect for each shard, upon reaching which the query execution will terminate early."}, "stats"=>{"type"=>"list", "description"=>"Specific 'tag' of the request for logging and statistical purposes"}, "suggest_field"=>{"type"=>"string", "description"=>"Specify which field to use for suggestions"}, "suggest_mode"=>{"type"=>"enum", "options"=>["missing", "popular", "always"], "default"=>"missing", "description"=>"Specify suggest mode"}, "suggest_size"=>{"type"=>"number", "description"=>"How many suggestions to return in response"}, "suggest_text"=>{"type"=>"string", "description"=>"The source text for which the suggestions should be returned"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "track_scores"=>{"type"=>"boolean", "description"=>"Whether to calculate and return scores even if they are not used for sorting"}, "typed_keys"=>{"type"=>"boolean", "description"=>"Specify whether aggregation and suggester names should be prefixed by their respective types in the response"}, "version"=>{"type"=>"boolean", "description"=>"Specify whether to return document version as part of a hit"}, "request_cache"=>{"type"=>"boolean", "description"=>"Specify if request cache should be used for this request or not, defaults to index level setting"}, "batched_reduce_size"=>{"type"=>"number", "description"=>"The number of shard results that should be reduced at once on the coordinating node. This value should be used as a protection mechanism to reduce the memory overhead per search request if the potential number of shards in the request can be large.", "default"=>512}}}, "body"=>{"description"=>"The search definition using the Query DSL"}}
        request(api_name, api_spec, params)
      end

      # search_shards ["GET", "POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-shards.html
      def _search_shards(params = {})

        api_name = 'search_shards'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-shards.html", "methods"=>["GET", "POST"], "url"=>{"path"=>"/{index}/{type}/_search_shards", "paths"=>["/_search_shards", "/{index}/_search_shards", "/{index}/{type}/_search_shards"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices"}, "type"=>{"type"=>"list", "description"=>"A comma-separated list of document types to search; leave empty to perform the operation on all types"}}, "params"=>{"preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"}, "routing"=>{"type"=>"string", "description"=>"Specific routing value"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # search_template ["GET", "POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/current/search-template.html
      def _search_template(params = {})

        api_name = 'search_template'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/current/search-template.html", "methods"=>["GET", "POST"], "url"=>{"path"=>"/_search/template", "paths"=>["/_search/template", "/{index}/_search/template", "/{index}/{type}/_search/template"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices"}, "type"=>{"type"=>"list", "description"=>"A comma-separated list of document types to search; leave empty to perform the operation on all types"}}, "params"=>{"ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"}, "routing"=>{"type"=>"list", "description"=>"A comma-separated list of specific routing values"}, "scroll"=>{"type"=>"time", "description"=>"Specify how long a consistent view of the index should be maintained for scrolled search"}, "search_type"=>{"type"=>"enum", "options"=>["query_then_fetch", "query_and_fetch", "dfs_query_then_fetch", "dfs_query_and_fetch"], "description"=>"Search operation type"}, "explain"=>{"type"=>"boolean", "description"=>"Specify whether to return detailed information about score computation as part of a hit"}, "profile"=>{"type"=>"boolean", "description"=>"Specify whether to profile the query execution"}, "typed_keys"=>{"type"=>"boolean", "description"=>"Specify whether aggregation and suggester names should be prefixed by their respective types in the response"}}}, "body"=>{"description"=>"The search definition template and its params"}}
        request(api_name, api_spec, params)
      end

      # snapshot.create ["PUT", "POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/modules-snapshots.html
      def _snapshot_create(params = {})

        api_name = 'snapshot.create'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/modules-snapshots.html", "methods"=>["PUT", "POST"], "url"=>{"path"=>"/_snapshot/{repository}/{snapshot}", "paths"=>["/_snapshot/{repository}/{snapshot}"], "parts"=>{"repository"=>{"type"=>"string", "required"=>true, "description"=>"A repository name"}, "snapshot"=>{"type"=>"string", "required"=>true, "description"=>"A snapshot name"}}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "wait_for_completion"=>{"type"=>"boolean", "description"=>"Should this request wait until the operation has completed before returning", "default"=>false}}}, "body"=>{"description"=>"The snapshot definition", "required"=>false}}
        request(api_name, api_spec, params)
      end

      # snapshot.create_repository ["PUT", "POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/modules-snapshots.html
      def _snapshot_create_repository(params = {})

        api_name = 'snapshot.create_repository'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/modules-snapshots.html", "methods"=>["PUT", "POST"], "url"=>{"path"=>"/_snapshot/{repository}", "paths"=>["/_snapshot/{repository}"], "parts"=>{"repository"=>{"type"=>"string", "required"=>true, "description"=>"A repository name"}}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "verify"=>{"type"=>"boolean", "description"=>"Whether to verify the repository after creation"}}}, "body"=>{"description"=>"The repository definition", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # snapshot.delete ["DELETE"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/modules-snapshots.html
      def _snapshot_delete(params = {})

        api_name = 'snapshot.delete'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/modules-snapshots.html", "methods"=>["DELETE"], "url"=>{"path"=>"/_snapshot/{repository}/{snapshot}", "paths"=>["/_snapshot/{repository}/{snapshot}"], "parts"=>{"repository"=>{"type"=>"string", "required"=>true, "description"=>"A repository name"}, "snapshot"=>{"type"=>"string", "required"=>true, "description"=>"A snapshot name"}}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # snapshot.delete_repository ["DELETE"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/modules-snapshots.html
      def _snapshot_delete_repository(params = {})

        api_name = 'snapshot.delete_repository'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/modules-snapshots.html", "methods"=>["DELETE"], "url"=>{"path"=>"/_snapshot/{repository}", "paths"=>["/_snapshot/{repository}"], "parts"=>{"repository"=>{"type"=>"list", "required"=>true, "description"=>"A comma-separated list of repository names"}}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # snapshot.get ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/modules-snapshots.html
      def _snapshot_get(params = {})

        api_name = 'snapshot.get'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/modules-snapshots.html", "methods"=>["GET"], "url"=>{"path"=>"/_snapshot/{repository}/{snapshot}", "paths"=>["/_snapshot/{repository}/{snapshot}"], "parts"=>{"repository"=>{"type"=>"string", "required"=>true, "description"=>"A repository name"}, "snapshot"=>{"type"=>"list", "required"=>true, "description"=>"A comma-separated list of snapshot names"}}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether to ignore unavailable snapshots, defaults to false which means a SnapshotMissingException is thrown"}, "verbose"=>{"type"=>"boolean", "description"=>"Whether to show verbose snapshot info or only show the basic info found in the repository index blob"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # snapshot.get_repository ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/modules-snapshots.html
      def _snapshot_get_repository(params = {})

        api_name = 'snapshot.get_repository'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/modules-snapshots.html", "methods"=>["GET"], "url"=>{"path"=>"/_snapshot", "paths"=>["/_snapshot", "/_snapshot/{repository}"], "parts"=>{"repository"=>{"type"=>"list", "description"=>"A comma-separated list of repository names"}}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "local"=>{"type"=>"boolean", "description"=>"Return local information, do not retrieve the state from master node (default: false)"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # snapshot.restore ["POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/modules-snapshots.html
      def _snapshot_restore(params = {})

        api_name = 'snapshot.restore'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/modules-snapshots.html", "methods"=>["POST"], "url"=>{"path"=>"/_snapshot/{repository}/{snapshot}/_restore", "paths"=>["/_snapshot/{repository}/{snapshot}/_restore"], "parts"=>{"repository"=>{"type"=>"string", "required"=>true, "description"=>"A repository name"}, "snapshot"=>{"type"=>"string", "required"=>true, "description"=>"A snapshot name"}}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "wait_for_completion"=>{"type"=>"boolean", "description"=>"Should this request wait until the operation has completed before returning", "default"=>false}}}, "body"=>{"description"=>"Details of what to restore", "required"=>false}}
        request(api_name, api_spec, params)
      end

      # snapshot.status ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/modules-snapshots.html
      def _snapshot_status(params = {})

        api_name = 'snapshot.status'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/modules-snapshots.html", "methods"=>["GET"], "url"=>{"path"=>"/_snapshot/_status", "paths"=>["/_snapshot/_status", "/_snapshot/{repository}/_status", "/_snapshot/{repository}/{snapshot}/_status"], "parts"=>{"repository"=>{"type"=>"string", "description"=>"A repository name"}, "snapshot"=>{"type"=>"list", "description"=>"A comma-separated list of snapshot names"}}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether to ignore unavailable snapshots, defaults to false which means a SnapshotMissingException is thrown"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # snapshot.verify_repository ["POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/modules-snapshots.html
      def _snapshot_verify_repository(params = {})

        api_name = 'snapshot.verify_repository'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/modules-snapshots.html", "methods"=>["POST"], "url"=>{"path"=>"/_snapshot/{repository}/_verify", "paths"=>["/_snapshot/{repository}/_verify"], "parts"=>{"repository"=>{"type"=>"string", "required"=>true, "description"=>"A repository name"}}, "params"=>{"master_timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout for connection to master node"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # suggest ["POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-suggesters.html
      def _suggest(params = {})

        api_name = 'suggest'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/search-suggesters.html", "methods"=>["POST"], "url"=>{"path"=>"/_suggest", "paths"=>["/_suggest", "/{index}/_suggest"], "parts"=>{"index"=>{"type"=>"list", "description"=>"A comma-separated list of index names to restrict the operation; use `_all` or empty string to perform the operation on all indices"}}, "params"=>{"ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"}, "routing"=>{"type"=>"string", "description"=>"Specific routing value"}}}, "body"=>{"description"=>"The request definition", "required"=>true}}
        request(api_name, api_spec, params)
      end

      # tasks.cancel ["POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/tasks.html
      def _tasks_cancel(params = {})

        api_name = 'tasks.cancel'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/tasks.html", "methods"=>["POST"], "url"=>{"path"=>"/_tasks", "paths"=>["/_tasks/_cancel", "/_tasks/{task_id}/_cancel"], "parts"=>{"task_id"=>{"type"=>"string", "description"=>"Cancel the task with specified task id (node_id:task_number)"}}, "params"=>{"node_id"=>{"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"}, "actions"=>{"type"=>"list", "description"=>"A comma-separated list of actions that should be cancelled. Leave empty to cancel all."}, "parent_node"=>{"type"=>"string", "description"=>"Cancel tasks with specified parent node."}, "parent_task"=>{"type"=>"string", "description"=>"Cancel tasks with specified parent task id (node_id:task_number). Set to -1 to cancel all."}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # tasks.get ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/tasks.html
      def _tasks_get(params = {})

        api_name = 'tasks.get'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/tasks.html", "methods"=>["GET"], "url"=>{"path"=>"/_tasks/{task_id}", "paths"=>["/_tasks/{task_id}"], "parts"=>{"task_id"=>{"type"=>"string", "description"=>"Return the task with specified id (node_id:task_number)"}}, "params"=>{"wait_for_completion"=>{"type"=>"boolean", "description"=>"Wait for the matching tasks to complete (default: false)"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # tasks.list ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/tasks.html
      def _tasks_list(params = {})

        api_name = 'tasks.list'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/tasks.html", "methods"=>["GET"], "url"=>{"path"=>"/_tasks", "paths"=>["/_tasks"], "parts"=>{}, "params"=>{"node_id"=>{"type"=>"list", "description"=>"A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes"}, "actions"=>{"type"=>"list", "description"=>"A comma-separated list of actions that should be returned. Leave empty to return all."}, "detailed"=>{"type"=>"boolean", "description"=>"Return detailed task information (default: false)"}, "parent_node"=>{"type"=>"string", "description"=>"Return tasks with specified parent node."}, "parent_task"=>{"type"=>"string", "description"=>"Return tasks with specified parent task id (node_id:task_number). Set to -1 to return all."}, "wait_for_completion"=>{"type"=>"boolean", "description"=>"Wait for the matching tasks to complete (default: false)"}, "group_by"=>{"type"=>"enum", "description"=>"Group tasks by nodes or parent/child relationships", "options"=>["nodes", "parents"], "default"=>"nodes"}}}, "body"=>nil}
        request(api_name, api_spec, params)
      end

      # termvectors ["GET", "POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/docs-termvectors.html
      def _termvectors(params = {})

        api_name = 'termvectors'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/docs-termvectors.html", "methods"=>["GET", "POST"], "url"=>{"path"=>"/{index}/{type}/_termvectors", "paths"=>["/{index}/{type}/_termvectors", "/{index}/{type}/{id}/_termvectors"], "parts"=>{"index"=>{"type"=>"string", "description"=>"The index in which the document resides.", "required"=>true}, "type"=>{"type"=>"string", "description"=>"The type of the document.", "required"=>true}, "id"=>{"type"=>"string", "description"=>"The id of the document, when not specified a doc param should be supplied."}}, "params"=>{"term_statistics"=>{"type"=>"boolean", "description"=>"Specifies if total term frequency and document frequency should be returned.", "default"=>false, "required"=>false}, "field_statistics"=>{"type"=>"boolean", "description"=>"Specifies if document count, sum of document frequencies and sum of total term frequencies should be returned.", "default"=>true, "required"=>false}, "fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields to return.", "required"=>false}, "offsets"=>{"type"=>"boolean", "description"=>"Specifies if term offsets should be returned.", "default"=>true, "required"=>false}, "positions"=>{"type"=>"boolean", "description"=>"Specifies if term positions should be returned.", "default"=>true, "required"=>false}, "payloads"=>{"type"=>"boolean", "description"=>"Specifies if term payloads should be returned.", "default"=>true, "required"=>false}, "preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random).", "required"=>false}, "routing"=>{"type"=>"string", "description"=>"Specific routing value.", "required"=>false}, "parent"=>{"type"=>"string", "description"=>"Parent id of documents.", "required"=>false}, "realtime"=>{"type"=>"boolean", "description"=>"Specifies if request is real-time as opposed to near-real-time (default: true).", "required"=>false}, "version"=>{"type"=>"number", "description"=>"Explicit version number for concurrency control"}, "version_type"=>{"type"=>"enum", "options"=>["internal", "external", "external_gte", "force"], "description"=>"Specific version type"}}}, "body"=>{"description"=>"Define parameters and or supply a document to get termvectors for. See documentation.", "required"=>false}}
        request(api_name, api_spec, params)
      end

      # update ["POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/docs-update.html
      def _update(params = {})

        api_name = 'update'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/docs-update.html", "methods"=>["POST"], "url"=>{"path"=>"/{index}/{type}/{id}/_update", "paths"=>["/{index}/{type}/{id}/_update"], "parts"=>{"id"=>{"type"=>"string", "required"=>true, "description"=>"Document ID"}, "index"=>{"type"=>"string", "required"=>true, "description"=>"The name of the index"}, "type"=>{"type"=>"string", "required"=>true, "description"=>"The type of the document"}}, "params"=>{"wait_for_active_shards"=>{"type"=>"string", "description"=>"Sets the number of shard copies that must be active before proceeding with the update operation. Defaults to 1, meaning the primary shard only. Set to `all` for all shard copies, otherwise set to any non-negative value less than or equal to the total number of copies for the shard (number of replicas + 1)"}, "fields"=>{"type"=>"list", "description"=>"A comma-separated list of fields to return in the response"}, "_source"=>{"type"=>"list", "description"=>"True or false to return the _source field or not, or a list of fields to return"}, "_source_exclude"=>{"type"=>"list", "description"=>"A list of fields to exclude from the returned _source field"}, "_source_include"=>{"type"=>"list", "description"=>"A list of fields to extract and return from the _source field"}, "lang"=>{"type"=>"string", "description"=>"The script language (default: painless)"}, "parent"=>{"type"=>"string", "description"=>"ID of the parent document. Is is only used for routing and when for the upsert request"}, "refresh"=>{"type"=>"enum", "options"=>["true", "false", "wait_for"], "description"=>"If `true` then refresh the effected shards to make this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to search, if `false` (the default) then do nothing with refreshes."}, "retry_on_conflict"=>{"type"=>"number", "description"=>"Specify how many times should the operation be retried when a conflict occurs (default: 0)"}, "routing"=>{"type"=>"string", "description"=>"Specific routing value"}, "timeout"=>{"type"=>"time", "description"=>"Explicit operation timeout"}, "timestamp"=>{"type"=>"time", "description"=>"Explicit timestamp for the document"}, "ttl"=>{"type"=>"time", "description"=>"Expiration time for the document"}, "version"=>{"type"=>"number", "description"=>"Explicit version number for concurrency control"}, "version_type"=>{"type"=>"enum", "options"=>["internal", "force"], "description"=>"Specific version type"}}}, "body"=>{"description"=>"The request definition using either `script` or partial `doc`"}}
        request(api_name, api_spec, params)
      end

      # update_by_query ["POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/5.x/docs-update-by-query.html
      def _update_by_query(params = {})

        api_name = 'update_by_query'
        api_spec = @api_specs[api_name] ||= {"documentation"=>"https://www.elastic.co/guide/en/elasticsearch/reference/5.x/docs-update-by-query.html", "methods"=>["POST"], "url"=>{"path"=>"/{index}/_update_by_query", "paths"=>["/{index}/_update_by_query", "/{index}/{type}/_update_by_query"], "comment"=>"most things below this are just copied from search.json", "parts"=>{"index"=>{"required"=>true, "type"=>"list", "description"=>"A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices"}, "type"=>{"type"=>"list", "description"=>"A comma-separated list of document types to search; leave empty to perform the operation on all types"}}, "params"=>{"analyzer"=>{"type"=>"string", "description"=>"The analyzer to use for the query string"}, "analyze_wildcard"=>{"type"=>"boolean", "description"=>"Specify whether wildcard and prefix queries should be analyzed (default: false)"}, "default_operator"=>{"type"=>"enum", "options"=>["AND", "OR"], "default"=>"OR", "description"=>"The default operator for query string query (AND or OR)"}, "df"=>{"type"=>"string", "description"=>"The field to use as default where no field prefix is given in the query string"}, "from"=>{"type"=>"number", "description"=>"Starting offset (default: 0)"}, "ignore_unavailable"=>{"type"=>"boolean", "description"=>"Whether specified concrete indices should be ignored when unavailable (missing or closed)"}, "allow_no_indices"=>{"type"=>"boolean", "description"=>"Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes `_all` string or when no indices have been specified)"}, "conflicts"=>{"note"=>"This is not copied from search", "type"=>"enum", "options"=>["abort", "proceed"], "default"=>"abort", "description"=>"What to do when the update by query hits version conflicts?"}, "expand_wildcards"=>{"type"=>"enum", "options"=>["open", "closed", "none", "all"], "default"=>"open", "description"=>"Whether to expand wildcard expression to concrete indices that are open, closed or both."}, "lenient"=>{"type"=>"boolean", "description"=>"Specify whether format-based query failures (such as providing text to a numeric field) should be ignored"}, "pipeline"=>{"type"=>"string", "description"=>"Ingest pipeline to set on index requests made by this action. (default: none)"}, "preference"=>{"type"=>"string", "description"=>"Specify the node or shard the operation should be performed on (default: random)"}, "q"=>{"type"=>"string", "description"=>"Query in the Lucene query string syntax"}, "routing"=>{"type"=>"list", "description"=>"A comma-separated list of specific routing values"}, "scroll"=>{"type"=>"time", "description"=>"Specify how long a consistent view of the index should be maintained for scrolled search"}, "search_type"=>{"type"=>"enum", "options"=>["query_then_fetch", "dfs_query_then_fetch"], "description"=>"Search operation type"}, "search_timeout"=>{"type"=>"time", "description"=>"Explicit timeout for each search request. Defaults to no timeout."}, "size"=>{"type"=>"number", "description"=>"Number of hits to return (default: 10)"}, "sort"=>{"type"=>"list", "description"=>"A comma-separated list of <field>:<direction> pairs"}, "_source"=>{"type"=>"list", "description"=>"True or false to return the _source field or not, or a list of fields to return"}, "_source_exclude"=>{"type"=>"list", "description"=>"A list of fields to exclude from the returned _source field"}, "_source_include"=>{"type"=>"list", "description"=>"A list of fields to extract and return from the _source field"}, "terminate_after"=>{"type"=>"number", "description"=>"The maximum number of documents to collect for each shard, upon reaching which the query execution will terminate early."}, "stats"=>{"type"=>"list", "description"=>"Specific 'tag' of the request for logging and statistical purposes"}, "version"=>{"type"=>"boolean", "description"=>"Specify whether to return document version as part of a hit"}, "version_type"=>{"type"=>"boolean", "description"=>"Should the document increment the version number (internal) on hit or not (reindex)"}, "request_cache"=>{"type"=>"boolean", "description"=>"Specify if request cache should be used for this request or not, defaults to index level setting"}, "refresh"=>{"type"=>"boolean", "description"=>"Should the effected indexes be refreshed?"}, "timeout"=>{"type"=>"time", "default"=>"1m", "description"=>"Time each individual bulk request should wait for shards that are unavailable."}, "wait_for_active_shards"=>{"type"=>"string", "description"=>"Sets the number of shard copies that must be active before proceeding with the update by query operation. Defaults to 1, meaning the primary shard only. Set to `all` for all shard copies, otherwise set to any non-negative value less than or equal to the total number of copies for the shard (number of replicas + 1)"}, "scroll_size"=>{"type"=>"number", "defaut_value"=>100, "description"=>"Size on the scroll request powering the update_by_query"}, "wait_for_completion"=>{"type"=>"boolean", "default"=>true, "description"=>"Should the request should block until the update by query operation is complete."}, "requests_per_second"=>{"type"=>"number", "default"=>0, "description"=>"The throttle to set on this request in sub-requests per second. -1 means no throttle."}, "slices"=>{"type"=>"number", "default"=>1, "description"=>"The number of slices this task should be divided into. Defaults to 1 meaning the task isn't sliced into subtasks."}}}, "body"=>{"description"=>"The search definition using the Query DSL"}}
        request(api_name, api_spec, params)
      end
    end
  end
end
