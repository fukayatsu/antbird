# Generated REST API methods file - DO NOT EDIT!
# opensearch version: 3.5.0

module Antbird
  module RestApi
    module RestApiOpensearchV3_5
      def common_params
        @common_params ||= {"documentation" => {"description" => "Parameters that are accepted by all API endpoints.", "url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/common-options.html"}, "params" => {"pretty" => {"type" => "boolean", "description" => "Pretty format the returned JSON response.", "default" => false}, "human" => {"type" => "boolean", "description" => "Return human readable values for statistics.", "default" => true}, "error_trace" => {"type" => "boolean", "description" => "Include the stack trace of returned errors.", "default" => false}, "source" => {"type" => "string", "description" => "The URL-encoded request definition. Useful for libraries that do not accept a request body for non-POST requests."}, "filter_path" => {"type" => "list", "description" => "A comma-separated list of filters used to reduce the response."}}}
      end


      # bulk 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-bulk.html", "description" => "Allows to perform multiple index/update/delete operations in a single request."}
      def bulk(params = {})
        api_name = 'bulk'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_bulk", "methods" => ["POST", "PUT"]}, {"path" => "/{index}/_bulk", "methods" => ["POST", "PUT"]}]}, "body" => {"required" => true}, "params" => {"wait_for_active_shards" => {"type" => "string"}, "refresh" => {"type" => "enum"}, "routing" => {"type" => "string"}, "timeout" => {"type" => "time"}, "type" => {"type" => "string"}, "_source" => {"type" => "list"}, "_source_excludes" => {"type" => "list"}, "_source_includes" => {"type" => "list"}, "pipeline" => {"type" => "string"}, "require_alias" => {"type" => "boolean"}, "batch_size" => {"type" => "int"}}}
        request(api_name, api_spec, params, [:index])
      end


      # cat.aliases 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cat/cat-aliases/", "description" => "Shows information about currently configured aliases to indices including filter and routing infos."}
      def cat_aliases(params = {})
        api_name = 'cat.aliases'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/aliases", "methods" => ["GET"]}, {"path" => "/_cat/aliases/{name}", "methods" => ["GET"]}]}, "params" => {"format" => {"type" => "string"}, "local" => {"type" => "boolean"}, "h" => {"type" => "list"}, "help" => {"type" => "boolean"}, "s" => {"type" => "list"}, "v" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}}}
        request(api_name, api_spec, params, [:name])
      end


      # cat.allocation 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cat/cat-allocation/", "description" => "Provides a snapshot of how many shards are allocated to each data node and how much disk space they are using."}
      def cat_allocation(params = {})
        api_name = 'cat.allocation'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/allocation", "methods" => ["GET"]}, {"path" => "/_cat/allocation/{node_id}", "methods" => ["GET"]}]}, "params" => {"format" => {"type" => "string"}, "bytes" => {"type" => "enum"}, "local" => {"type" => "boolean"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "h" => {"type" => "list"}, "help" => {"type" => "boolean"}, "s" => {"type" => "list"}, "v" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:node_id])
      end


      # cat.cluster_manager 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cat/cat-cluster_manager/", "description" => "Returns information about the cluster-manager node."}
      def cat_cluster_manager(params = {})
        api_name = 'cat.cluster_manager'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/cluster_manager", "methods" => ["GET"]}, {"path" => "/_cat/master", "methods" => ["GET"], "deprecated" => true}]}, "params" => {"format" => {"type" => "string"}, "local" => {"type" => "boolean"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "h" => {"type" => "list"}, "help" => {"type" => "boolean"}, "s" => {"type" => "list"}, "v" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [])
      end


      # cat.count 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cat/cat-count/", "description" => "Provides quick access to the document count of the entire cluster, or individual indices."}
      def cat_count(params = {})
        api_name = 'cat.count'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/count", "methods" => ["GET"]}, {"path" => "/_cat/count/{index}", "methods" => ["GET"]}]}, "params" => {"format" => {"type" => "string"}, "h" => {"type" => "list"}, "help" => {"type" => "boolean"}, "s" => {"type" => "list"}, "v" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:index])
      end


      # cat.fielddata 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cat/cat-field-data/", "description" => "Shows how much heap memory is currently being used by fielddata on every data node in the cluster."}
      def cat_fielddata(params = {})
        api_name = 'cat.fielddata'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/fielddata", "methods" => ["GET"]}, {"path" => "/_cat/fielddata/{fields}", "methods" => ["GET"]}]}, "params" => {"format" => {"type" => "string"}, "bytes" => {"type" => "enum"}, "h" => {"type" => "list"}, "help" => {"type" => "boolean"}, "s" => {"type" => "list"}, "v" => {"type" => "boolean"}, "fields" => {"type" => "list"}}}
        request(api_name, api_spec, params, [:fields])
      end


      # cat.health 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-health.html", "description" => "Returns a concise representation of the cluster health."}
      def cat_health(params = {})
        api_name = 'cat.health'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/health", "methods" => ["GET"]}]}, "params" => {"format" => {"type" => "string"}, "h" => {"type" => "list"}, "help" => {"type" => "boolean"}, "s" => {"type" => "list"}, "time" => {"type" => "enum"}, "ts" => {"type" => "boolean"}, "v" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [])
      end


      # cat.help 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cat/index/", "description" => "Returns help for the Cat APIs."}
      def cat_help(params = {})
        api_name = 'cat.help'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat", "methods" => ["GET"]}]}, "params" => {"help" => {"type" => "boolean"}, "s" => {"type" => "list"}}}
        request(api_name, api_spec, params, [])
      end


      # cat.indices 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cat/cat-indices/", "description" => "Returns information about indices: number of primaries and replicas, document counts, disk size, ..."}
      def cat_indices(params = {})
        api_name = 'cat.indices'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/indices", "methods" => ["GET"]}, {"path" => "/_cat/indices/{index}", "methods" => ["GET"]}]}, "params" => {"format" => {"type" => "string"}, "bytes" => {"type" => "enum"}, "local" => {"type" => "boolean"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "h" => {"type" => "list"}, "health" => {"type" => "enum"}, "help" => {"type" => "boolean"}, "pri" => {"type" => "boolean"}, "s" => {"type" => "list"}, "time" => {"type" => "enum"}, "v" => {"type" => "boolean"}, "include_unloaded_segments" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}}}
        request(api_name, api_spec, params, [:index])
      end


      # cat.nodeattrs 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cat/cat-nodeattrs/", "description" => "Returns information about custom node attributes."}
      def cat_nodeattrs(params = {})
        api_name = 'cat.nodeattrs'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/nodeattrs", "methods" => ["GET"]}]}, "params" => {"format" => {"type" => "string"}, "local" => {"type" => "boolean"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "h" => {"type" => "list"}, "help" => {"type" => "boolean"}, "s" => {"type" => "list"}, "v" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [])
      end


      # cat.nodes 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cat/cat-nodes/", "description" => "Returns basic statistics about performance of cluster nodes."}
      def cat_nodes(params = {})
        api_name = 'cat.nodes'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/nodes", "methods" => ["GET"]}]}, "params" => {"bytes" => {"type" => "enum"}, "format" => {"type" => "string"}, "full_id" => {"type" => "boolean"}, "local" => {"type" => "boolean"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "h" => {"type" => "list"}, "help" => {"type" => "boolean"}, "s" => {"type" => "list"}, "time" => {"type" => "enum"}, "v" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [])
      end


      # cat.pending_tasks 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cat/cat-pending-tasks/", "description" => "Returns a concise representation of the cluster pending tasks."}
      def cat_pending_tasks(params = {})
        api_name = 'cat.pending_tasks'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/pending_tasks", "methods" => ["GET"]}]}, "params" => {"format" => {"type" => "string"}, "local" => {"type" => "boolean"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "h" => {"type" => "list"}, "help" => {"type" => "boolean"}, "s" => {"type" => "list"}, "time" => {"type" => "enum"}, "v" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [])
      end


      # cat.plugins 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cat/cat-plugins/", "description" => "Returns information about installed plugins across nodes node."}
      def cat_plugins(params = {})
        api_name = 'cat.plugins'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/plugins", "methods" => ["GET"]}]}, "params" => {"format" => {"type" => "string"}, "local" => {"type" => "boolean"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "h" => {"type" => "list"}, "help" => {"type" => "boolean"}, "s" => {"type" => "list"}, "v" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [])
      end


      # cat.recovery 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cat/cat-recovery/", "description" => "Returns information about index shard recoveries, both on-going completed."}
      def cat_recovery(params = {})
        api_name = 'cat.recovery'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/recovery", "methods" => ["GET"]}, {"path" => "/_cat/recovery/{index}", "methods" => ["GET"]}]}, "params" => {"format" => {"type" => "string"}, "active_only" => {"type" => "boolean"}, "bytes" => {"type" => "enum"}, "detailed" => {"type" => "boolean"}, "h" => {"type" => "list"}, "help" => {"type" => "boolean"}, "index" => {"type" => "list"}, "s" => {"type" => "list"}, "time" => {"type" => "enum"}, "v" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:index])
      end


      # cat.repositories 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cat/cat-repositories/", "description" => "Returns information about snapshot repositories registered in the cluster."}
      def cat_repositories(params = {})
        api_name = 'cat.repositories'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/repositories", "methods" => ["GET"]}]}, "params" => {"format" => {"type" => "string"}, "local" => {"type" => "boolean"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "h" => {"type" => "list"}, "help" => {"type" => "boolean"}, "s" => {"type" => "list"}, "v" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [])
      end


      # cat.segment_replication 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cat/cat-segment-replication/", "description" => "Returns information about both on-going and latest completed Segment Replication events"}
      def cat_segment_replication(params = {})
        api_name = 'cat.segment_replication'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/segment_replication", "methods" => ["GET"]}, {"path" => "/_cat/segment_replication/{index}", "methods" => ["GET"]}]}, "params" => {"format" => {"type" => "string"}, "active_only" => {"type" => "boolean"}, "bytes" => {"type" => "enum"}, "detailed" => {"type" => "boolean"}, "shards" => {"type" => "list"}, "h" => {"type" => "list"}, "help" => {"type" => "boolean"}, "index" => {"type" => "list"}, "s" => {"type" => "list"}, "time" => {"type" => "enum"}, "v" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:index])
      end


      # cat.segments 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cat/cat-segments/", "description" => "Provides low-level information about the segments in the shards of an index."}
      def cat_segments(params = {})
        api_name = 'cat.segments'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/segments", "methods" => ["GET"]}, {"path" => "/_cat/segments/{index}", "methods" => ["GET"]}]}, "params" => {"format" => {"type" => "string"}, "bytes" => {"type" => "enum"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "h" => {"type" => "list"}, "help" => {"type" => "boolean"}, "s" => {"type" => "list"}, "v" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:index])
      end


      # cat.shards 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cat/cat-shards/", "description" => "Provides a detailed view of shard allocation on nodes."}
      def cat_shards(params = {})
        api_name = 'cat.shards'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/shards", "methods" => ["GET"]}, {"path" => "/_cat/shards/{index}", "methods" => ["GET"]}]}, "params" => {"format" => {"type" => "string"}, "bytes" => {"type" => "enum"}, "local" => {"type" => "boolean"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "h" => {"type" => "list"}, "help" => {"type" => "boolean"}, "s" => {"type" => "list"}, "time" => {"type" => "enum"}, "v" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:index])
      end


      # cat.snapshots 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cat/cat-snapshots/", "description" => "Returns all snapshots in a specific repository."}
      def cat_snapshots(params = {})
        api_name = 'cat.snapshots'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/snapshots", "methods" => ["GET"]}, {"path" => "/_cat/snapshots/{repository}", "methods" => ["GET"]}]}, "params" => {"format" => {"type" => "string"}, "ignore_unavailable" => {"type" => "boolean"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "h" => {"type" => "list"}, "help" => {"type" => "boolean"}, "s" => {"type" => "list"}, "time" => {"type" => "enum"}, "v" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:repository])
      end


      # cat.tasks 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cat/cat-tasks/", "description" => "Returns information about the tasks currently executing on one or more nodes in the cluster."}
      def cat_tasks(params = {})
        api_name = 'cat.tasks'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/tasks", "methods" => ["GET"]}]}, "params" => {"format" => {"type" => "string"}, "nodes" => {"type" => "list"}, "actions" => {"type" => "list"}, "detailed" => {"type" => "boolean"}, "parent_task_id" => {"type" => "string"}, "h" => {"type" => "list"}, "help" => {"type" => "boolean"}, "s" => {"type" => "list"}, "time" => {"type" => "enum"}, "v" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [])
      end


      # cat.templates 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cat/cat-templates/", "description" => "Returns information about existing templates."}
      def cat_templates(params = {})
        api_name = 'cat.templates'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/templates", "methods" => ["GET"]}, {"path" => "/_cat/templates/{name}", "methods" => ["GET"]}]}, "params" => {"format" => {"type" => "string"}, "local" => {"type" => "boolean"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "h" => {"type" => "list"}, "help" => {"type" => "boolean"}, "s" => {"type" => "list"}, "v" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:name])
      end


      # cat.thread_pool 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cat/cat-thread-pool/", "description" => "Returns cluster-wide thread pool statistics per node.\nBy default the active, queue and rejected statistics are returned for all thread pools."}
      def cat_thread_pool(params = {})
        api_name = 'cat.thread_pool'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/thread_pool", "methods" => ["GET"]}, {"path" => "/_cat/thread_pool/{thread_pool_patterns}", "methods" => ["GET"]}]}, "params" => {"format" => {"type" => "string"}, "size" => {"type" => "enum"}, "local" => {"type" => "boolean"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "h" => {"type" => "list"}, "help" => {"type" => "boolean"}, "s" => {"type" => "list"}, "v" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:thread_pool_patterns])
      end


      # clear_scroll 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/scroll/", "description" => "Explicitly clears the search context for a scroll."}
      def clear_scroll(params = {})
        api_name = 'clear_scroll'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_search/scroll", "methods" => ["DELETE"]}, {"path" => "/_search/scroll/{scroll_id}", "methods" => ["DELETE"], "deprecated" => true}]}, "params" => {}}
        request(api_name, api_spec, params, [:scroll_id])
      end


      # cluster.allocation_explain 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cluster-api/cluster-allocation/", "description" => "Provides explanations for shard allocations in the cluster."}
      def cluster_allocation_explain(params = {})
        api_name = 'cluster.allocation_explain'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cluster/allocation/explain", "methods" => ["GET", "POST"]}]}, "params" => {"include_yes_decisions" => {"type" => "boolean"}, "include_disk_info" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [])
      end


      # cluster.delete_component_template 
      # {"url" => "https://opensearch.org/docs/latest/im-plugin/index-templates/#create-a-component-template", "description" => "Deletes a component template"}
      def cluster_delete_component_template(params = {})
        api_name = 'cluster.delete_component_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_component_template/{name}", "methods" => ["DELETE"]}]}, "params" => {"timeout" => {"type" => "time"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:name])
      end


      # cluster.delete_decommission_awareness 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cluster-api/cluster-decommission/", "description" => "Delete any existing decommission."}
      def cluster_delete_decommission_awareness(params = {})
        api_name = 'cluster.delete_decommission_awareness'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cluster/decommission/awareness/", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [])
      end


      # cluster.delete_voting_config_exclusions 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/voting-config-exclusions.html", "description" => "Clears cluster voting config exclusions."}
      def cluster_delete_voting_config_exclusions(params = {})
        api_name = 'cluster.delete_voting_config_exclusions'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cluster/voting_config_exclusions", "methods" => ["DELETE"]}]}, "params" => {"wait_for_removal" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [])
      end


      # cluster.delete_weighted_routing 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cluster-api/cluster-awareness", "description" => "Delete weighted shard routing weights"}
      def cluster_delete_weighted_routing(params = {})
        api_name = 'cluster.delete_weighted_routing'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cluster/routing/awareness/weights", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [])
      end


      # cluster.exists_component_template 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-component-template.html", "description" => "Returns information about whether a particular component template exist"}
      def cluster_exists_component_template(params = {})
        api_name = 'cluster.exists_component_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_component_template/{name}", "methods" => ["HEAD"]}]}, "params" => {"master_timeout" => {"type" => "time"}, "local" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:name])
      end
      alias :cluster_exists_component_template? :cluster_exists_component_template


      # cluster.get_component_template 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-component-template.html", "description" => "Returns one or more component templates"}
      def cluster_get_component_template(params = {})
        api_name = 'cluster.get_component_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_component_template", "methods" => ["GET"]}, {"path" => "/_component_template/{name}", "methods" => ["GET"]}]}, "params" => {"master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "local" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:name])
      end


      # cluster.get_decommission_awareness 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cluster-api/cluster-decommission/", "description" => "Get details and status of decommissioned attribute"}
      def cluster_get_decommission_awareness(params = {})
        api_name = 'cluster.get_decommission_awareness'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cluster/decommission/awareness/{awareness_attribute_name}/_status", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:awareness_attribute_name])
      end


      # cluster.get_settings 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cluster-api/cluster-settings/", "description" => "Returns cluster settings."}
      def cluster_get_settings(params = {})
        api_name = 'cluster.get_settings'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cluster/settings", "methods" => ["GET"]}]}, "params" => {"flat_settings" => {"type" => "boolean"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "timeout" => {"type" => "time"}, "include_defaults" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [])
      end


      # cluster.get_weighted_routing 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cluster-api/cluster-awareness/", "description" => "Fetches weighted shard routing weights"}
      def cluster_get_weighted_routing(params = {})
        api_name = 'cluster.get_weighted_routing'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cluster/routing/awareness/{attribute}/weights", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:attribute])
      end


      # cluster.health 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cluster-api/cluster-health/", "description" => "Returns basic information about the health of the cluster."}
      def cluster_health(params = {})
        api_name = 'cluster.health'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cluster/health", "methods" => ["GET"]}, {"path" => "/_cluster/health/{index}", "methods" => ["GET"]}]}, "params" => {"expand_wildcards" => {"type" => "enum"}, "level" => {"type" => "enum"}, "local" => {"type" => "boolean"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "timeout" => {"type" => "time"}, "wait_for_active_shards" => {"type" => "string"}, "wait_for_nodes" => {"type" => "string"}, "wait_for_events" => {"type" => "enum"}, "wait_for_no_relocating_shards" => {"type" => "boolean"}, "wait_for_no_initializing_shards" => {"type" => "boolean"}, "wait_for_status" => {"type" => "enum"}, "awareness_attribute" => {"type" => "string"}, "ensure_node_weighed_in" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:index])
      end


      # cluster.pending_tasks 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-pending.html", "description" => "Returns a list of any cluster-level changes (e.g. create index, update mapping,\nallocate or fail shard) which have not yet been executed."}
      def cluster_pending_tasks(params = {})
        api_name = 'cluster.pending_tasks'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cluster/pending_tasks", "methods" => ["GET"]}]}, "params" => {"local" => {"type" => "boolean"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [])
      end


      # cluster.post_voting_config_exclusions 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/voting-config-exclusions.html", "description" => "Updates the cluster voting config exclusions by node ids or node names."}
      def cluster_post_voting_config_exclusions(params = {})
        api_name = 'cluster.post_voting_config_exclusions'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cluster/voting_config_exclusions", "methods" => ["POST"]}]}, "params" => {"node_ids" => {"type" => "string"}, "node_names" => {"type" => "string"}, "timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [])
      end


      # cluster.put_component_template 
      # {"url" => "https://opensearch.org/docs/latest/im-plugin/index-templates/#create-a-component-template", "description" => "Creates or updates a component template"}
      def cluster_put_component_template(params = {})
        api_name = 'cluster.put_component_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_component_template/{name}", "methods" => ["PUT", "POST"]}]}, "body" => {"required" => true}, "params" => {"create" => {"type" => "boolean"}, "timeout" => {"type" => "time"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:name])
      end


      # cluster.put_decommission_awareness 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cluster-api/cluster-decommission/", "description" => "Decommissions an awareness attribute"}
      def cluster_put_decommission_awareness(params = {})
        api_name = 'cluster.put_decommission_awareness'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cluster/decommission/awareness/{awareness_attribute_name}/{awareness_attribute_value}", "methods" => ["PUT"]}]}}
        request(api_name, api_spec, params, [:awareness_attribute_name, :awareness_attribute_value])
      end


      # cluster.put_settings 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cluster-api/cluster-settings/", "description" => "Updates the cluster settings."}
      def cluster_put_settings(params = {})
        api_name = 'cluster.put_settings'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cluster/settings", "methods" => ["PUT"]}]}, "body" => {"required" => true}, "params" => {"flat_settings" => {"type" => "boolean"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [])
      end


      # cluster.put_weighted_routing 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cluster-api/cluster-awareness", "description" => "Updates weighted shard routing weights"}
      def cluster_put_weighted_routing(params = {})
        api_name = 'cluster.put_weighted_routing'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cluster/routing/awareness/{attribute}/weights", "methods" => ["PUT"]}]}}
        request(api_name, api_spec, params, [:attribute])
      end


      # cluster.remote_info 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/remote-info/", "description" => "Returns the information about configured remote clusters."}
      def cluster_remote_info(params = {})
        api_name = 'cluster.remote_info'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_remote/info", "methods" => ["GET"]}]}, "params" => {}}
        request(api_name, api_spec, params, [])
      end


      # cluster.reroute 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-reroute.html", "description" => "Allows to manually change the allocation of individual shards in the cluster."}
      def cluster_reroute(params = {})
        api_name = 'cluster.reroute'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cluster/reroute", "methods" => ["POST"]}]}, "params" => {"dry_run" => {"type" => "boolean"}, "explain" => {"type" => "boolean"}, "retry_failed" => {"type" => "boolean"}, "metric" => {"type" => "list"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [])
      end


      # cluster.state 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/count/", "description" => "Returns a comprehensive information about the state of the cluster."}
      def cluster_state(params = {})
        api_name = 'cluster.state'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cluster/state", "methods" => ["GET"]}, {"path" => "/_cluster/state/{metric}", "methods" => ["GET"]}, {"path" => "/_cluster/state/{metric}/{index}", "methods" => ["GET"]}]}, "params" => {"local" => {"type" => "boolean"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "flat_settings" => {"type" => "boolean"}, "wait_for_metadata_version" => {"type" => "number"}, "wait_for_timeout" => {"type" => "time"}, "ignore_unavailable" => {"type" => "boolean"}, "allow_no_indices" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}}}
        request(api_name, api_spec, params, [:metric, :index])
      end


      # cluster.stats 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/cluster-api/cluster-stats/", "description" => "Returns high-level overview of cluster statistics."}
      def cluster_stats(params = {})
        api_name = 'cluster.stats'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cluster/stats", "methods" => ["GET"]}, {"path" => "/_cluster/stats/nodes/{node_id}", "methods" => ["GET"]}]}, "params" => {"flat_settings" => {"type" => "boolean"}, "timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:node_id])
      end


      # count 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/count/", "description" => "Returns number of documents matching a query."}
      def count(params = {})
        api_name = 'count'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_count", "methods" => ["POST", "GET"]}, {"path" => "/{index}/_count", "methods" => ["POST", "GET"]}]}, "params" => {"ignore_unavailable" => {"type" => "boolean"}, "ignore_throttled" => {"type" => "boolean"}, "allow_no_indices" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}, "min_score" => {"type" => "number"}, "preference" => {"type" => "string"}, "routing" => {"type" => "list"}, "q" => {"type" => "string"}, "analyzer" => {"type" => "string"}, "analyze_wildcard" => {"type" => "boolean"}, "default_operator" => {"type" => "enum"}, "df" => {"type" => "string"}, "lenient" => {"type" => "boolean"}, "terminate_after" => {"type" => "number"}}}
        request(api_name, api_spec, params, [:index])
      end


      # create 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/document-apis/index-document/", "description" => "Creates a new document in the index.\n\nReturns a 409 response when a document with a same ID already exists in the index."}
      def create(params = {})
        api_name = 'create'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_create/{id}", "methods" => ["PUT", "POST"]}]}, "body" => {"required" => true}, "params" => {"wait_for_active_shards" => {"type" => "string"}, "refresh" => {"type" => "enum"}, "routing" => {"type" => "string"}, "timeout" => {"type" => "time"}, "version" => {"type" => "number"}, "version_type" => {"type" => "enum"}, "pipeline" => {"type" => "string"}}}
        request(api_name, api_spec, params, [:id, :index])
      end


      # create_pit 
      # {"url" => "https://opensearch.org/docs/latest/search-plugins/searching-data/point-in-time-api", "description" => "Creates point in time context."}
      def create_pit(params = {})
        api_name = 'create_pit'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_search/point_in_time", "methods" => ["POST"]}]}, "params" => {"allow_partial_pit_creation" => {"type" => "boolean"}, "keep_alive" => {"type" => "string"}, "preference" => {"type" => "string"}, "routing" => {"type" => "list"}}}
        request(api_name, api_spec, params, [:index])
      end


      # dangling_indices.delete_dangling_index 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/index-apis/dangling-index/", "description" => "Deletes the specified dangling index"}
      def dangling_indices_delete_dangling_index(params = {})
        api_name = 'dangling_indices.delete_dangling_index'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_dangling/{index_uuid}", "methods" => ["DELETE"]}]}, "params" => {"accept_data_loss" => {"type" => "boolean"}, "timeout" => {"type" => "time"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:index_uuid])
      end


      # dangling_indices.import_dangling_index 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/index-apis/dangling-index/", "description" => "Imports the specified dangling index"}
      def dangling_indices_import_dangling_index(params = {})
        api_name = 'dangling_indices.import_dangling_index'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_dangling/{index_uuid}", "methods" => ["POST"]}]}, "params" => {"accept_data_loss" => {"type" => "boolean"}, "timeout" => {"type" => "time"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:index_uuid])
      end


      # dangling_indices.list_dangling_indices 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/index-apis/dangling-index/", "description" => "Returns all dangling indices."}
      def dangling_indices_list_dangling_indices(params = {})
        api_name = 'dangling_indices.list_dangling_indices'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_dangling", "methods" => ["GET"]}]}, "params" => {}}
        request(api_name, api_spec, params, [])
      end


      # delete 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/document-apis/delete-document/", "description" => "Removes a document from the index."}
      def delete(params = {})
        api_name = 'delete'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_doc/{id}", "methods" => ["DELETE"]}]}, "params" => {"wait_for_active_shards" => {"type" => "string"}, "refresh" => {"type" => "enum"}, "routing" => {"type" => "string"}, "timeout" => {"type" => "time"}, "if_seq_no" => {"type" => "number"}, "if_primary_term" => {"type" => "number"}, "version" => {"type" => "number"}, "version_type" => {"type" => "enum"}}}
        request(api_name, api_spec, params, [:id, :index])
      end


      # delete_all_pits 
      # {"url" => "https://opensearch.org/docs/latest/search-plugins/searching-data/point-in-time-api", "description" => "Deletes all active point in time searches."}
      def delete_all_pits(params = {})
        api_name = 'delete_all_pits'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_search/point_in_time/_all", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [])
      end


      # delete_by_query 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/document-apis/delete-by-query/", "description" => "Deletes documents matching the provided query."}
      def delete_by_query(params = {})
        api_name = 'delete_by_query'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_delete_by_query", "methods" => ["POST"]}]}, "body" => {"required" => true}, "params" => {"analyzer" => {"type" => "string"}, "analyze_wildcard" => {"type" => "boolean"}, "default_operator" => {"type" => "enum"}, "df" => {"type" => "string"}, "from" => {"type" => "number"}, "ignore_unavailable" => {"type" => "boolean"}, "allow_no_indices" => {"type" => "boolean"}, "conflicts" => {"type" => "enum"}, "expand_wildcards" => {"type" => "enum"}, "lenient" => {"type" => "boolean"}, "preference" => {"type" => "string"}, "q" => {"type" => "string"}, "routing" => {"type" => "list"}, "scroll" => {"type" => "time"}, "search_type" => {"type" => "enum"}, "search_timeout" => {"type" => "time"}, "size" => {"type" => "number"}, "max_docs" => {"type" => "number"}, "sort" => {"type" => "list"}, "_source" => {"type" => "list"}, "_source_excludes" => {"type" => "list"}, "_source_includes" => {"type" => "list"}, "terminate_after" => {"type" => "number"}, "stats" => {"type" => "list"}, "version" => {"type" => "boolean"}, "request_cache" => {"type" => "boolean"}, "refresh" => {"type" => "boolean"}, "timeout" => {"type" => "time"}, "wait_for_active_shards" => {"type" => "string"}, "scroll_size" => {"type" => "number"}, "wait_for_completion" => {"type" => "boolean"}, "requests_per_second" => {"type" => "number"}, "slices" => {"type" => "number|string"}}}
        request(api_name, api_spec, params, [:index])
      end


      # delete_by_query_rethrottle 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/document-apis/delete-by-query/", "description" => "Changes the number of requests per second for a particular Delete By Query operation."}
      def delete_by_query_rethrottle(params = {})
        api_name = 'delete_by_query_rethrottle'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_delete_by_query/{task_id}/_rethrottle", "methods" => ["POST"]}]}, "params" => {"requests_per_second" => {"type" => "number", "required" => true}}}
        request(api_name, api_spec, params, [:task_id])
      end


      # delete_pit 
      # {"url" => "https://opensearch.org/docs/latest/search-plugins/searching-data/point-in-time-api", "description" => "Deletes one or more point in time searches based on the IDs passed."}
      def delete_pit(params = {})
        api_name = 'delete_pit'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_search/point_in_time", "methods" => ["DELETE"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [])
      end


      # delete_script 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/script-apis/delete-script/", "description" => "Deletes a script."}
      def delete_script(params = {})
        api_name = 'delete_script'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_scripts/{id}", "methods" => ["DELETE"]}]}, "params" => {"timeout" => {"type" => "time"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:id])
      end


      # exists 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/document-apis/get-documents/", "description" => "Returns information about whether a document exists in an index."}
      def exists(params = {})
        api_name = 'exists'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_doc/{id}", "methods" => ["HEAD"]}]}, "params" => {"stored_fields" => {"type" => "list"}, "preference" => {"type" => "string"}, "realtime" => {"type" => "boolean"}, "refresh" => {"type" => "boolean"}, "routing" => {"type" => "string"}, "_source" => {"type" => "list"}, "_source_excludes" => {"type" => "list"}, "_source_includes" => {"type" => "list"}, "version" => {"type" => "number"}, "version_type" => {"type" => "enum"}}}
        request(api_name, api_spec, params, [:id, :index])
      end
      alias :exists? :exists


      # exists_source 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/document-apis/get-documents/", "description" => "Returns information about whether a document source exists in an index."}
      def exists_source(params = {})
        api_name = 'exists_source'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_source/{id}", "methods" => ["HEAD"]}]}, "params" => {"preference" => {"type" => "string"}, "realtime" => {"type" => "boolean"}, "refresh" => {"type" => "boolean"}, "routing" => {"type" => "string"}, "_source" => {"type" => "list"}, "_source_excludes" => {"type" => "list"}, "_source_includes" => {"type" => "list"}, "version" => {"type" => "number"}, "version_type" => {"type" => "enum"}}}
        request(api_name, api_spec, params, [:id, :index])
      end
      alias :exists_source? :exists_source


      # explain 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/explain/", "description" => "Returns information about why a specific matches (or doesn't match) a query."}
      def explain(params = {})
        api_name = 'explain'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_explain/{id}", "methods" => ["GET", "POST"]}]}, "params" => {"analyze_wildcard" => {"type" => "boolean"}, "analyzer" => {"type" => "string"}, "default_operator" => {"type" => "enum"}, "df" => {"type" => "string"}, "stored_fields" => {"type" => "list"}, "lenient" => {"type" => "boolean"}, "preference" => {"type" => "string"}, "q" => {"type" => "string"}, "routing" => {"type" => "string"}, "_source" => {"type" => "list"}, "_source_excludes" => {"type" => "list"}, "_source_includes" => {"type" => "list"}}}
        request(api_name, api_spec, params, [:id, :index])
      end


      # field_caps 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/search-field-caps.html", "description" => "Returns the information about the capabilities of fields among multiple indices."}
      def field_caps(params = {})
        api_name = 'field_caps'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_field_caps", "methods" => ["GET", "POST"]}, {"path" => "/{index}/_field_caps", "methods" => ["GET", "POST"]}]}, "params" => {"fields" => {"type" => "list"}, "ignore_unavailable" => {"type" => "boolean"}, "allow_no_indices" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}, "include_unmapped" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:index])
      end


      # get 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/document-apis/get-documents/", "description" => "Returns a document."}
      def get(params = {})
        api_name = 'get'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_doc/{id}", "methods" => ["GET"]}]}, "params" => {"stored_fields" => {"type" => "list"}, "preference" => {"type" => "string"}, "realtime" => {"type" => "boolean"}, "refresh" => {"type" => "boolean"}, "routing" => {"type" => "string"}, "_source" => {"type" => "list"}, "_source_excludes" => {"type" => "list"}, "_source_includes" => {"type" => "list"}, "version" => {"type" => "number"}, "version_type" => {"type" => "enum"}}}
        request(api_name, api_spec, params, [:id, :index])
      end


      # get_all_pits 
      # {"url" => "https://opensearch.org/docs/latest/search-plugins/searching-data/point-in-time-api", "description" => "Lists all active point in time searches."}
      def get_all_pits(params = {})
        api_name = 'get_all_pits'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_search/point_in_time/_all", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # get_script 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-scripting.html", "description" => "Returns a script."}
      def get_script(params = {})
        api_name = 'get_script'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_scripts/{id}", "methods" => ["GET"]}]}, "params" => {"master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:id])
      end


      # get_script_context 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/script-apis/get-script-language/", "description" => "Returns all script contexts."}
      def get_script_context(params = {})
        api_name = 'get_script_context'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_script_context", "methods" => ["GET"]}]}, "params" => {}}
        request(api_name, api_spec, params, [])
      end


      # get_script_languages 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/script-apis/get-script-language/", "description" => "Returns available script types, languages and contexts"}
      def get_script_languages(params = {})
        api_name = 'get_script_languages'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_script_language", "methods" => ["GET"]}]}, "params" => {}}
        request(api_name, api_spec, params, [])
      end


      # get_source 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/document-apis/get-documents/", "description" => "Returns the source of a document."}
      def get_source(params = {})
        api_name = 'get_source'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_source/{id}", "methods" => ["GET"]}]}, "params" => {"preference" => {"type" => "string"}, "realtime" => {"type" => "boolean"}, "refresh" => {"type" => "boolean"}, "routing" => {"type" => "string"}, "_source" => {"type" => "list"}, "_source_excludes" => {"type" => "list"}, "_source_includes" => {"type" => "list"}, "version" => {"type" => "number"}, "version_type" => {"type" => "enum"}}}
        request(api_name, api_spec, params, [:id, :index])
      end


      # index 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/document-apis/index-document/", "description" => "Creates or updates a document in an index."}
      def index(params = {})
        api_name = 'index'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_doc/{id}", "methods" => ["PUT", "POST"]}, {"path" => "/{index}/_doc", "methods" => ["POST"]}]}, "body" => {"required" => true}, "params" => {"wait_for_active_shards" => {"type" => "string"}, "op_type" => {"type" => "enum"}, "refresh" => {"type" => "enum"}, "routing" => {"type" => "string"}, "timeout" => {"type" => "time"}, "version" => {"type" => "number"}, "version_type" => {"type" => "enum"}, "if_seq_no" => {"type" => "number"}, "if_primary_term" => {"type" => "number"}, "pipeline" => {"type" => "string"}, "require_alias" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:id, :index])
      end


      # indices.add_block 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/index-modules-blocks.html", "description" => "Adds a block to an index."}
      def indices_add_block(params = {})
        api_name = 'indices.add_block'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_block/{block}", "methods" => ["PUT"]}]}, "params" => {"timeout" => {"type" => "time"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "ignore_unavailable" => {"type" => "boolean"}, "allow_no_indices" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}}}
        request(api_name, api_spec, params, [:index, :block])
      end


      # indices.analyze 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/analyze-apis/", "description" => "Performs the analysis process on a text and return the tokens breakdown of the text."}
      def indices_analyze(params = {})
        api_name = 'indices.analyze'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_analyze", "methods" => ["GET", "POST"]}, {"path" => "/{index}/_analyze", "methods" => ["GET", "POST"]}]}, "params" => {"index" => {"type" => "string"}}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.clear_cache 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/index-apis/clear-index-cache/", "description" => "Clears all or specific caches for one or more indices."}
      def indices_clear_cache(params = {})
        api_name = 'indices.clear_cache'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cache/clear", "methods" => ["POST"]}, {"path" => "/{index}/_cache/clear", "methods" => ["POST"]}]}, "params" => {"fielddata" => {"type" => "boolean"}, "fields" => {"type" => "list"}, "query" => {"type" => "boolean"}, "ignore_unavailable" => {"type" => "boolean"}, "allow_no_indices" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}, "index" => {"type" => "list"}, "request" => {"type" => "boolean"}, "file" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.clone 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/index-apis/clone/", "description" => "Clones an index"}
      def indices_clone(params = {})
        api_name = 'indices.clone'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_clone/{target}", "methods" => ["PUT", "POST"]}]}, "params" => {"timeout" => {"type" => "time"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "wait_for_active_shards" => {"type" => "string"}, "wait_for_completion" => {"type" => "boolean"}, "task_execution_timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:index, :target])
      end


      # indices.close 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/index-apis/close-index/", "description" => "Closes an index."}
      def indices_close(params = {})
        api_name = 'indices.close'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_close", "methods" => ["POST"]}]}, "params" => {"timeout" => {"type" => "time"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "ignore_unavailable" => {"type" => "boolean"}, "allow_no_indices" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}, "wait_for_active_shards" => {"type" => "string"}}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.create 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/index-apis/create-index/", "description" => "Creates an index with optional settings and mappings."}
      def indices_create(params = {})
        api_name = 'indices.create'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}", "methods" => ["PUT"]}]}, "params" => {"wait_for_active_shards" => {"type" => "string"}, "timeout" => {"type" => "time"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.create_data_stream 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/data-streams.html", "description" => "Creates or updates a data stream"}
      def indices_create_data_stream(params = {})
        api_name = 'indices.create_data_stream'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_data_stream/{name}", "methods" => ["PUT"]}]}, "params" => {}}
        request(api_name, api_spec, params, [:name])
      end


      # indices.data_streams_stats 
      # {"url" => "https://opensearch.org/docs/latest/im-plugin/data-streams/", "description" => "Provides statistics on operations happening in a data stream."}
      def indices_data_streams_stats(params = {})
        api_name = 'indices.data_streams_stats'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_data_stream/_stats", "methods" => ["GET"]}, {"path" => "/_data_stream/{name}/_stats", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # indices.delete 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/index-apis/delete-index/", "description" => "Deletes an index."}
      def indices_delete(params = {})
        api_name = 'indices.delete'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}", "methods" => ["DELETE"]}]}, "params" => {"timeout" => {"type" => "time"}, "master_timeout" => {"type" => "time"}, "ignore_unavailable" => {"type" => "boolean"}, "allow_no_indices" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.delete_alias 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html", "description" => "Deletes an alias."}
      def indices_delete_alias(params = {})
        api_name = 'indices.delete_alias'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_alias/{name}", "methods" => ["DELETE"]}, {"path" => "/{index}/_aliases/{name}", "methods" => ["DELETE"]}]}, "params" => {"timeout" => {"type" => "time"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:index, :name])
      end


      # indices.delete_data_stream 
      # {"url" => "https://opensearch.org/docs/latest/im-plugin/data-streams/", "description" => "Deletes a data stream."}
      def indices_delete_data_stream(params = {})
        api_name = 'indices.delete_data_stream'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_data_stream/{name}", "methods" => ["DELETE"]}]}, "params" => {}}
        request(api_name, api_spec, params, [:name])
      end


      # indices.delete_index_template 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description" => "Deletes an index template."}
      def indices_delete_index_template(params = {})
        api_name = 'indices.delete_index_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_index_template/{name}", "methods" => ["DELETE"]}]}, "params" => {"timeout" => {"type" => "time"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:name])
      end


      # indices.delete_template 
      # {"url" => "https://opensearch.org/docs/latest/im-plugin/index-templates", "description" => "Deletes an index template."}
      def indices_delete_template(params = {})
        api_name = 'indices.delete_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_template/{name}", "methods" => ["DELETE"]}]}, "params" => {"timeout" => {"type" => "time"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:name])
      end


      # indices.exists 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/index-apis/exists/", "description" => "Returns information about whether a particular index exists."}
      def indices_exists(params = {})
        api_name = 'indices.exists'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}", "methods" => ["HEAD"]}]}, "params" => {"local" => {"type" => "boolean"}, "ignore_unavailable" => {"type" => "boolean"}, "allow_no_indices" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}, "flat_settings" => {"type" => "boolean"}, "include_defaults" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:index])
      end
      alias :indices_exists? :indices_exists


      # indices.exists_alias 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/index-apis/alias/", "description" => "Returns information about whether a particular alias exists."}
      def indices_exists_alias(params = {})
        api_name = 'indices.exists_alias'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_alias/{name}", "methods" => ["HEAD"]}, {"path" => "/{index}/_alias/{name}", "methods" => ["HEAD"]}]}, "params" => {"ignore_unavailable" => {"type" => "boolean"}, "allow_no_indices" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}, "local" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:name, :index])
      end
      alias :indices_exists_alias? :indices_exists_alias


      # indices.exists_index_template 
      # {"url" => "https://opensearch.org/docs/latest/im-plugin/index-templates", "description" => "Returns information about whether a particular index template exists."}
      def indices_exists_index_template(params = {})
        api_name = 'indices.exists_index_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_index_template/{name}", "methods" => ["HEAD"]}]}, "params" => {"flat_settings" => {"type" => "boolean"}, "master_timeout" => {"type" => "time"}, "local" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:name])
      end
      alias :indices_exists_index_template? :indices_exists_index_template


      # indices.exists_template 
      # {"url" => "https://opensearch.org/docs/latest/im-plugin/index-templates", "description" => "Returns information about whether a particular index template exists."}
      def indices_exists_template(params = {})
        api_name = 'indices.exists_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_template/{name}", "methods" => ["HEAD"]}]}, "params" => {"flat_settings" => {"type" => "boolean"}, "master_timeout" => {"type" => "time"}, "local" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:name])
      end
      alias :indices_exists_template? :indices_exists_template


      # indices.flush 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-flush.html", "description" => "Performs the flush operation on one or more indices."}
      def indices_flush(params = {})
        api_name = 'indices.flush'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_flush", "methods" => ["POST", "GET"]}, {"path" => "/{index}/_flush", "methods" => ["POST", "GET"]}]}, "params" => {"force" => {"type" => "boolean"}, "wait_if_ongoing" => {"type" => "boolean"}, "ignore_unavailable" => {"type" => "boolean"}, "allow_no_indices" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.forcemerge 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/index-apis/force-merge/", "description" => "Performs the force merge operation on one or more indices."}
      def indices_forcemerge(params = {})
        api_name = 'indices.forcemerge'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_forcemerge", "methods" => ["POST"]}, {"path" => "/{index}/_forcemerge", "methods" => ["POST"]}]}, "params" => {"flush" => {"type" => "boolean"}, "ignore_unavailable" => {"type" => "boolean"}, "allow_no_indices" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}, "max_num_segments" => {"type" => "number"}, "only_expunge_deletes" => {"type" => "boolean"}, "wait_for_completion" => {"type" => "boolean"}, "primary_only" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.get 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/index-apis/get-index/", "description" => "Returns information about one or more indices."}
      def indices_get(params = {})
        api_name = 'indices.get'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}", "methods" => ["GET"]}]}, "params" => {"local" => {"type" => "boolean"}, "ignore_unavailable" => {"type" => "boolean"}, "allow_no_indices" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}, "flat_settings" => {"type" => "boolean"}, "include_defaults" => {"type" => "boolean"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.get_alias 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html", "description" => "Returns an alias."}
      def indices_get_alias(params = {})
        api_name = 'indices.get_alias'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_alias", "methods" => ["GET"]}, {"path" => "/_alias/{name}", "methods" => ["GET"]}, {"path" => "/{index}/_alias/{name}", "methods" => ["GET"]}, {"path" => "/{index}/_alias", "methods" => ["GET"]}]}, "params" => {"ignore_unavailable" => {"type" => "boolean"}, "allow_no_indices" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}, "local" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:name, :index])
      end


      # indices.get_data_stream 
      # {"url" => "https://opensearch.org/docs/latest/im-plugin/data-streams/", "description" => "Returns data streams."}
      def indices_get_data_stream(params = {})
        api_name = 'indices.get_data_stream'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_data_stream", "methods" => ["GET"]}, {"path" => "/_data_stream/{name}", "methods" => ["GET"]}]}, "params" => {}}
        request(api_name, api_spec, params, [:name])
      end


      # indices.get_field_mapping 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/index-apis/put-mapping/", "description" => "Returns mapping for one or more fields."}
      def indices_get_field_mapping(params = {})
        api_name = 'indices.get_field_mapping'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_mapping/field/{fields}", "methods" => ["GET"]}, {"path" => "/{index}/_mapping/field/{fields}", "methods" => ["GET"]}]}, "params" => {"include_defaults" => {"type" => "boolean"}, "ignore_unavailable" => {"type" => "boolean"}, "allow_no_indices" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}, "local" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:fields, :index])
      end


      # indices.get_index_template 
      # {"url" => "https://opensearch.org/docs/latest/im-plugin/index-templates", "description" => "Returns an index template."}
      def indices_get_index_template(params = {})
        api_name = 'indices.get_index_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_index_template", "methods" => ["GET"]}, {"path" => "/_index_template/{name}", "methods" => ["GET"]}]}, "params" => {"flat_settings" => {"type" => "boolean"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "local" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:name])
      end


      # indices.get_mapping 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/index-apis/put-mapping/", "description" => "Returns mappings for one or more indices."}
      def indices_get_mapping(params = {})
        api_name = 'indices.get_mapping'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_mapping", "methods" => ["GET"]}, {"path" => "/{index}/_mapping", "methods" => ["GET"]}]}, "params" => {"ignore_unavailable" => {"type" => "boolean"}, "allow_no_indices" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "local" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.get_settings 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/index-apis/get-settings/", "description" => "Returns settings for one or more indices."}
      def indices_get_settings(params = {})
        api_name = 'indices.get_settings'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_settings", "methods" => ["GET"]}, {"path" => "/{index}/_settings", "methods" => ["GET"]}, {"path" => "/{index}/_settings/{name}", "methods" => ["GET"]}, {"path" => "/_settings/{name}", "methods" => ["GET"]}]}, "params" => {"master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "ignore_unavailable" => {"type" => "boolean"}, "allow_no_indices" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}, "flat_settings" => {"type" => "boolean"}, "local" => {"type" => "boolean"}, "include_defaults" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:index, :name])
      end


      # indices.get_template 
      # {"url" => "https://opensearch.org/docs/latest/im-plugin/index-templates", "description" => "Returns an index template."}
      def indices_get_template(params = {})
        api_name = 'indices.get_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_template", "methods" => ["GET"]}, {"path" => "/_template/{name}", "methods" => ["GET"]}]}, "params" => {"flat_settings" => {"type" => "boolean"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "local" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:name])
      end


      # indices.get_upgrade 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-upgrade.html", "description" => "The _upgrade API is no longer useful and will be removed."}
      def indices_get_upgrade(params = {})
        api_name = 'indices.get_upgrade'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_upgrade", "methods" => ["GET"]}, {"path" => "/{index}/_upgrade", "methods" => ["GET"]}]}, "params" => {"ignore_unavailable" => {"type" => "boolean"}, "allow_no_indices" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.open 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/index-apis/open-index/", "description" => "Opens an index."}
      def indices_open(params = {})
        api_name = 'indices.open'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_open", "methods" => ["POST"]}]}, "params" => {"timeout" => {"type" => "time"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "ignore_unavailable" => {"type" => "boolean"}, "allow_no_indices" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}, "wait_for_active_shards" => {"type" => "string"}, "wait_for_completion" => {"type" => "boolean"}, "task_execution_timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.put_alias 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/index-apis/update-alias/", "description" => "Creates or updates an alias."}
      def indices_put_alias(params = {})
        api_name = 'indices.put_alias'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_alias/{name}", "methods" => ["PUT", "POST"]}, {"path" => "/{index}/_aliases/{name}", "methods" => ["PUT", "POST"]}, {"path" => "/{index}/_alias", "methods" => ["PUT"]}, {"path" => "/{index}/_aliases", "methods" => ["PUT"]}, {"path" => "/_alias/{name}", "methods" => ["PUT", "POST"]}, {"path" => "/_aliases/{name}", "methods" => ["PUT", "POST"]}, {"path" => "/_alias", "methods" => ["PUT"]}]}, "params" => {"timeout" => {"type" => "time"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:index, :name])
      end


      # indices.put_index_template 
      # {"url" => "https://opensearch.org/docs/latest/im-plugin/index-templates", "description" => "Creates or updates an index template."}
      def indices_put_index_template(params = {})
        api_name = 'indices.put_index_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_index_template/{name}", "methods" => ["PUT", "POST"]}]}, "body" => {"required" => true}, "params" => {"create" => {"type" => "boolean"}, "cause" => {"type" => "string"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:name])
      end


      # indices.put_mapping 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/index-apis/put-mapping/", "description" => "Updates the index mappings."}
      def indices_put_mapping(params = {})
        api_name = 'indices.put_mapping'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_mapping", "methods" => ["PUT", "POST"]}]}, "body" => {"required" => true}, "params" => {"timeout" => {"type" => "time"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "ignore_unavailable" => {"type" => "boolean"}, "allow_no_indices" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}, "write_index_only" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.put_settings 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-update-settings.html", "description" => "Updates the index settings."}
      def indices_put_settings(params = {})
        api_name = 'indices.put_settings'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_settings", "methods" => ["PUT"]}, {"path" => "/{index}/_settings", "methods" => ["PUT"]}]}, "body" => {"required" => true}, "params" => {"master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "timeout" => {"type" => "time"}, "preserve_existing" => {"type" => "boolean"}, "ignore_unavailable" => {"type" => "boolean"}, "allow_no_indices" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}, "flat_settings" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.put_template 
      # {"url" => "https://opensearch.org/docs/latest/im-plugin/index-templates", "description" => "Creates or updates an index template."}
      def indices_put_template(params = {})
        api_name = 'indices.put_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_template/{name}", "methods" => ["PUT", "POST"]}]}, "body" => {"required" => true}, "params" => {"order" => {"type" => "number"}, "create" => {"type" => "boolean"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:name])
      end


      # indices.recovery 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-recovery.html", "description" => "Returns information about ongoing index shard recoveries."}
      def indices_recovery(params = {})
        api_name = 'indices.recovery'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_recovery", "methods" => ["GET"]}, {"path" => "/{index}/_recovery", "methods" => ["GET"]}]}, "params" => {"detailed" => {"type" => "boolean"}, "active_only" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.refresh 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-refresh.html", "description" => "Performs the refresh operation in one or more indices."}
      def indices_refresh(params = {})
        api_name = 'indices.refresh'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_refresh", "methods" => ["POST", "GET"]}, {"path" => "/{index}/_refresh", "methods" => ["POST", "GET"]}]}, "params" => {"ignore_unavailable" => {"type" => "boolean"}, "allow_no_indices" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.resolve_index 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-resolve-index-api.html", "description" => "Returns information about any matching indices, aliases, and data streams"}
      def indices_resolve_index(params = {})
        api_name = 'indices.resolve_index'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_resolve/index/{name}", "methods" => ["GET"]}]}, "params" => {"expand_wildcards" => {"type" => "enum"}}}
        request(api_name, api_spec, params, [:name])
      end


      # indices.rollover 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-rollover-index.html", "description" => "Updates an alias to point to a new index when the existing index\nis considered to be too large or too old."}
      def indices_rollover(params = {})
        api_name = 'indices.rollover'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{alias}/_rollover", "methods" => ["POST"]}, {"path" => "/{alias}/_rollover/{new_index}", "methods" => ["POST"]}]}, "params" => {"timeout" => {"type" => "time"}, "dry_run" => {"type" => "boolean"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "wait_for_active_shards" => {"type" => "string"}}}
        request(api_name, api_spec, params, [:alias, :new_index])
      end


      # indices.segments 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-segments.html", "description" => "Provides low-level information about segments in a Lucene index."}
      def indices_segments(params = {})
        api_name = 'indices.segments'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_segments", "methods" => ["GET"]}, {"path" => "/{index}/_segments", "methods" => ["GET"]}]}, "params" => {"ignore_unavailable" => {"type" => "boolean"}, "allow_no_indices" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}, "verbose" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.shard_stores 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-shards-stores.html", "description" => "Provides store information for shard copies of indices."}
      def indices_shard_stores(params = {})
        api_name = 'indices.shard_stores'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_shard_stores", "methods" => ["GET"]}, {"path" => "/{index}/_shard_stores", "methods" => ["GET"]}]}, "params" => {"status" => {"type" => "list"}, "ignore_unavailable" => {"type" => "boolean"}, "allow_no_indices" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.shrink 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/index-apis/shrink-index/", "description" => "Allow to shrink an existing index into a new index with fewer primary shards."}
      def indices_shrink(params = {})
        api_name = 'indices.shrink'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_shrink/{target}", "methods" => ["PUT", "POST"]}]}, "params" => {"copy_settings" => {"type" => "boolean"}, "timeout" => {"type" => "time"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "wait_for_active_shards" => {"type" => "string"}, "wait_for_completion" => {"type" => "boolean"}, "task_execution_timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:index, :target])
      end


      # indices.simulate_index_template 
      # {"url" => "https://opensearch.org/docs/latest/im-plugin/index-templates", "description" => "Simulate matching the given index name against the index templates in the system"}
      def indices_simulate_index_template(params = {})
        api_name = 'indices.simulate_index_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_index_template/_simulate_index/{name}", "methods" => ["POST"]}]}, "params" => {"create" => {"type" => "boolean"}, "cause" => {"type" => "string"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:name])
      end


      # indices.simulate_template 
      # {"url" => "https://opensearch.org/docs/latest/im-plugin/index-templates", "description" => "Simulate resolving the given template name or body"}
      def indices_simulate_template(params = {})
        api_name = 'indices.simulate_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_index_template/_simulate", "methods" => ["POST"]}, {"path" => "/_index_template/_simulate/{name}", "methods" => ["POST"]}]}, "params" => {"create" => {"type" => "boolean"}, "cause" => {"type" => "string"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:name])
      end


      # indices.split 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/index-apis/split/", "description" => "Allows you to split an existing index into a new index with more primary shards."}
      def indices_split(params = {})
        api_name = 'indices.split'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_split/{target}", "methods" => ["PUT", "POST"]}]}, "params" => {"copy_settings" => {"type" => "boolean"}, "timeout" => {"type" => "time"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "wait_for_active_shards" => {"type" => "string"}, "wait_for_completion" => {"type" => "boolean"}, "task_execution_timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:index, :target])
      end


      # indices.stats 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/index-apis/stats/", "description" => "Provides statistics on operations happening in an index."}
      def indices_stats(params = {})
        api_name = 'indices.stats'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_stats", "methods" => ["GET"]}, {"path" => "/_stats/{metric}", "methods" => ["GET"]}, {"path" => "/{index}/_stats", "methods" => ["GET"]}, {"path" => "/{index}/_stats/{metric}", "methods" => ["GET"]}]}, "params" => {"completion_fields" => {"type" => "list"}, "fielddata_fields" => {"type" => "list"}, "fields" => {"type" => "list"}, "groups" => {"type" => "list"}, "level" => {"type" => "enum"}, "include_segment_file_sizes" => {"type" => "boolean"}, "include_unloaded_segments" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}, "forbid_closed_indices" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:metric, :index])
      end


      # indices.update_aliases 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/index-apis/alias/", "description" => "Updates index aliases."}
      def indices_update_aliases(params = {})
        api_name = 'indices.update_aliases'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_aliases", "methods" => ["POST"]}]}, "body" => {"required" => true}, "params" => {"timeout" => {"type" => "time"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [])
      end


      # indices.upgrade 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-upgrade.html", "description" => "The _upgrade API is no longer useful and will be removed."}
      def indices_upgrade(params = {})
        api_name = 'indices.upgrade'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_upgrade", "methods" => ["POST"]}, {"path" => "/{index}/_upgrade", "methods" => ["POST"]}]}, "params" => {"allow_no_indices" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}, "ignore_unavailable" => {"type" => "boolean"}, "wait_for_completion" => {"type" => "boolean"}, "only_ancient_segments" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.validate_query 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/search-validate.html", "description" => "Allows a user to validate a potentially expensive query without executing it."}
      def indices_validate_query(params = {})
        api_name = 'indices.validate_query'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_validate/query", "methods" => ["GET", "POST"]}, {"path" => "/{index}/_validate/query", "methods" => ["GET", "POST"]}]}, "params" => {"explain" => {"type" => "boolean"}, "ignore_unavailable" => {"type" => "boolean"}, "allow_no_indices" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}, "q" => {"type" => "string"}, "analyzer" => {"type" => "string"}, "analyze_wildcard" => {"type" => "boolean"}, "default_operator" => {"type" => "enum"}, "df" => {"type" => "string"}, "lenient" => {"type" => "boolean"}, "rewrite" => {"type" => "boolean"}, "all_shards" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:index])
      end


      # info 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html", "description" => "Returns basic information about the cluster."}
      def info(params = {})
        api_name = 'info'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/", "methods" => ["GET"]}]}, "params" => {}}
        request(api_name, api_spec, params, [])
      end


      # ingest.delete_pipeline 
      # {"url" => "https://opensearch.org/docs/latest/ingest-pipelines/delete-ingest/", "description" => "Deletes a pipeline."}
      def ingest_delete_pipeline(params = {})
        api_name = 'ingest.delete_pipeline'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ingest/pipeline/{id}", "methods" => ["DELETE"]}]}, "params" => {"master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:id])
      end


      # ingest.get_pipeline 
      # {"url" => "https://opensearch.org/docs/latest/ingest-pipelines/get-ingest/", "description" => "Returns a pipeline."}
      def ingest_get_pipeline(params = {})
        api_name = 'ingest.get_pipeline'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ingest/pipeline", "methods" => ["GET"]}, {"path" => "/_ingest/pipeline/{id}", "methods" => ["GET"]}]}, "params" => {"master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:id])
      end


      # ingest.processor_grok 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/grok-processor.html#grok-processor-rest-get", "description" => "Returns a list of the built-in patterns."}
      def ingest_processor_grok(params = {})
        api_name = 'ingest.processor_grok'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ingest/processor/grok", "methods" => ["GET"]}]}, "params" => {}}
        request(api_name, api_spec, params, [])
      end


      # ingest.put_pipeline 
      # {"url" => "https://opensearch.org/docs/latest/ingest-pipelines/create-ingest/", "description" => "Creates or updates a pipeline."}
      def ingest_put_pipeline(params = {})
        api_name = 'ingest.put_pipeline'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ingest/pipeline/{id}", "methods" => ["PUT"]}]}, "body" => {"required" => true}, "params" => {"master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:id])
      end


      # ingest.simulate 
      # {"url" => "https://opensearch.org/docs/latest/ingest-pipelines/simulate-ingest/", "description" => "Allows to simulate a pipeline with example documents."}
      def ingest_simulate(params = {})
        api_name = 'ingest.simulate'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ingest/pipeline/_simulate", "methods" => ["GET", "POST"]}, {"path" => "/_ingest/pipeline/{id}/_simulate", "methods" => ["GET", "POST"]}]}, "body" => {"required" => true}, "params" => {"verbose" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:id])
      end


      # mget 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-multi-get.html", "description" => "Allows to get multiple documents in one request."}
      def mget(params = {})
        api_name = 'mget'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_mget", "methods" => ["GET", "POST"]}, {"path" => "/{index}/_mget", "methods" => ["GET", "POST"]}]}, "body" => {"required" => true}, "params" => {"stored_fields" => {"type" => "list"}, "preference" => {"type" => "string"}, "realtime" => {"type" => "boolean"}, "refresh" => {"type" => "boolean"}, "routing" => {"type" => "string"}, "_source" => {"type" => "list"}, "_source_excludes" => {"type" => "list"}, "_source_includes" => {"type" => "list"}}}
        request(api_name, api_spec, params, [:index])
      end


      # msearch 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/multi-search/", "description" => "Allows to execute several search operations in one request."}
      def msearch(params = {})
        api_name = 'msearch'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_msearch", "methods" => ["GET", "POST"]}, {"path" => "/{index}/_msearch", "methods" => ["GET", "POST"]}]}, "body" => {"required" => true}, "params" => {"search_type" => {"type" => "enum"}, "max_concurrent_searches" => {"type" => "number"}, "typed_keys" => {"type" => "boolean"}, "pre_filter_shard_size" => {"type" => "number"}, "max_concurrent_shard_requests" => {"type" => "number"}, "rest_total_hits_as_int" => {"type" => "boolean"}, "ccs_minimize_roundtrips" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:index])
      end


      # msearch_template 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/search-template/", "description" => "Allows to execute several search template operations in one request."}
      def msearch_template(params = {})
        api_name = 'msearch_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_msearch/template", "methods" => ["GET", "POST"]}, {"path" => "/{index}/_msearch/template", "methods" => ["GET", "POST"]}]}, "body" => {"required" => true}, "params" => {"search_type" => {"type" => "enum"}, "typed_keys" => {"type" => "boolean"}, "max_concurrent_searches" => {"type" => "number"}, "rest_total_hits_as_int" => {"type" => "boolean"}, "ccs_minimize_roundtrips" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:index])
      end


      # mtermvectors 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-multi-termvectors.html", "description" => "Returns multiple termvectors in one request."}
      def mtermvectors(params = {})
        api_name = 'mtermvectors'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_mtermvectors", "methods" => ["GET", "POST"]}, {"path" => "/{index}/_mtermvectors", "methods" => ["GET", "POST"]}]}, "params" => {"ids" => {"type" => "list"}, "term_statistics" => {"type" => "boolean"}, "field_statistics" => {"type" => "boolean"}, "fields" => {"type" => "list"}, "offsets" => {"type" => "boolean"}, "positions" => {"type" => "boolean"}, "payloads" => {"type" => "boolean"}, "preference" => {"type" => "string"}, "routing" => {"type" => "string"}, "realtime" => {"type" => "boolean"}, "version" => {"type" => "number"}, "version_type" => {"type" => "enum"}}}
        request(api_name, api_spec, params, [:index])
      end


      # nodes.hot_threads 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/nodes-apis/nodes-hot-threads/", "description" => "Returns information about hot threads on each node in the cluster."}
      def nodes_hot_threads(params = {})
        api_name = 'nodes.hot_threads'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_nodes/hot_threads", "methods" => ["GET"]}, {"path" => "/_nodes/{node_id}/hot_threads", "methods" => ["GET"]}, {"path" => "/_cluster/nodes/hotthreads", "methods" => ["GET"], "deprecated" => true}, {"path" => "/_cluster/nodes/{node_id}/hotthreads", "methods" => ["GET"], "deprecated" => true}, {"path" => "/_nodes/hotthreads", "methods" => ["GET"], "deprecated" => true}, {"path" => "/_nodes/{node_id}/hotthreads", "methods" => ["GET"], "deprecated" => true}, {"path" => "/_cluster/nodes/hot_threads", "methods" => ["GET"], "deprecated" => true}, {"path" => "/_cluster/nodes/{node_id}/hot_threads", "methods" => ["GET"], "deprecated" => true}]}, "params" => {"interval" => {"type" => "time"}, "snapshots" => {"type" => "number"}, "threads" => {"type" => "number"}, "ignore_idle_threads" => {"type" => "boolean"}, "type" => {"type" => "enum"}, "timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:node_id])
      end


      # nodes.info 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/nodes-apis/nodes-info/", "description" => "Returns information about nodes in the cluster."}
      def nodes_info(params = {})
        api_name = 'nodes.info'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_nodes", "methods" => ["GET"]}, {"path" => "/_nodes/{node_id}", "methods" => ["GET"]}, {"path" => "/_nodes/{metric}", "methods" => ["GET"]}, {"path" => "/_nodes/{node_id}/{metric}", "methods" => ["GET"]}]}, "params" => {"flat_settings" => {"type" => "boolean"}, "timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:node_id, :metric])
      end


      # nodes.reload_secure_settings 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/nodes-apis/nodes-reload-secure/", "description" => "Reloads secure settings."}
      def nodes_reload_secure_settings(params = {})
        api_name = 'nodes.reload_secure_settings'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_nodes/reload_secure_settings", "methods" => ["POST"]}, {"path" => "/_nodes/{node_id}/reload_secure_settings", "methods" => ["POST"]}]}, "params" => {"timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:node_id])
      end


      # nodes.stats 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/nodes-apis/nodes-stats/", "description" => "Returns statistical information about nodes in the cluster."}
      def nodes_stats(params = {})
        api_name = 'nodes.stats'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_nodes/stats", "methods" => ["GET"]}, {"path" => "/_nodes/{node_id}/stats", "methods" => ["GET"]}, {"path" => "/_nodes/stats/{metric}", "methods" => ["GET"]}, {"path" => "/_nodes/{node_id}/stats/{metric}", "methods" => ["GET"]}, {"path" => "/_nodes/stats/{metric}/{index_metric}", "methods" => ["GET"]}, {"path" => "/_nodes/{node_id}/stats/{metric}/{index_metric}", "methods" => ["GET"]}]}, "params" => {"completion_fields" => {"type" => "list"}, "fielddata_fields" => {"type" => "list"}, "fields" => {"type" => "list"}, "groups" => {"type" => "boolean"}, "level" => {"type" => "enum"}, "types" => {"type" => "list"}, "timeout" => {"type" => "time"}, "include_segment_file_sizes" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:node_id, :metric, :index_metric])
      end


      # nodes.usage 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/nodes-apis/nodes-usage/", "description" => "Returns low-level information about REST actions usage on nodes."}
      def nodes_usage(params = {})
        api_name = 'nodes.usage'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_nodes/usage", "methods" => ["GET"]}, {"path" => "/_nodes/{node_id}/usage", "methods" => ["GET"]}, {"path" => "/_nodes/usage/{metric}", "methods" => ["GET"]}, {"path" => "/_nodes/{node_id}/usage/{metric}", "methods" => ["GET"]}]}, "params" => {"timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:node_id, :metric])
      end


      # ping 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html", "description" => "Returns whether the cluster is running."}
      def ping(params = {})
        api_name = 'ping'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/", "methods" => ["HEAD"]}]}, "params" => {}}
        request(api_name, api_spec, params, [])
      end
      alias :ping? :ping


      # put_script 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/nodes-apis/nodes-usage/", "description" => "Creates or updates a script."}
      def put_script(params = {})
        api_name = 'put_script'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_scripts/{id}", "methods" => ["PUT", "POST"]}, {"path" => "/_scripts/{id}/{context}", "methods" => ["PUT", "POST"]}]}, "body" => {"required" => true}, "params" => {"timeout" => {"type" => "time"}, "master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "context" => {"type" => "string"}}}
        request(api_name, api_spec, params, [:id, :context])
      end


      # rank_eval 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/rank-eval/", "description" => "Allows to evaluate the quality of ranked search results over a set of typical search queries"}
      def rank_eval(params = {})
        api_name = 'rank_eval'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_rank_eval", "methods" => ["GET", "POST"]}, {"path" => "/{index}/_rank_eval", "methods" => ["GET", "POST"]}]}, "body" => {"required" => true}, "params" => {"ignore_unavailable" => {"type" => "boolean"}, "allow_no_indices" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}, "search_type" => {"type" => "enum"}}}
        request(api_name, api_spec, params, [:index])
      end


      # reindex 
      # {"url" => "https://opensearch.org/docs/latest/im-plugin/reindex-data/", "description" => "Allows to copy documents from one index to another, optionally filtering the source\ndocuments by a query, changing the destination index settings, or fetching the\ndocuments from a remote cluster."}
      def reindex(params = {})
        api_name = 'reindex'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_reindex", "methods" => ["POST"]}]}, "body" => {"required" => true}, "params" => {"refresh" => {"type" => "boolean"}, "timeout" => {"type" => "time"}, "wait_for_active_shards" => {"type" => "string"}, "wait_for_completion" => {"type" => "boolean"}, "requests_per_second" => {"type" => "number"}, "scroll" => {"type" => "time"}, "slices" => {"type" => "number|string"}, "max_docs" => {"type" => "number"}}}
        request(api_name, api_spec, params, [])
      end


      # reindex_rethrottle 
      # {"url" => "https://opensearch.org/docs/latest/im-plugin/reindex-data/", "description" => "Changes the number of requests per second for a particular Reindex operation."}
      def reindex_rethrottle(params = {})
        api_name = 'reindex_rethrottle'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_reindex/{task_id}/_rethrottle", "methods" => ["POST"]}]}, "params" => {"requests_per_second" => {"type" => "number", "required" => true}}}
        request(api_name, api_spec, params, [:task_id])
      end


      # remote_store.restore 
      # {"url" => "https://opensearch.org/docs/latest/tuning-your-cluster/availability-and-recovery/remote-store/index/#restoring-from-a-backup", "description" => "Restores from remote store."}
      def remote_store_restore(params = {})
        api_name = 'remote_store.restore'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_remotestore/_restore", "methods" => ["POST"]}]}, "body" => {"required" => true}, "params" => {"cluster_manager_timeout" => {"type" => "time"}, "wait_for_completion" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [])
      end


      # remote_store.stats 
      # {"url" => "https://opensearch.org/docs/latest/tuning-your-cluster/availability-and-recovery/remote-store/remote-store-stats-api/", "description" => "Stats for remote store."}
      def remote_store_stats(params = {})
        api_name = 'remote_store.stats'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_remotestore/stats/{index}", "methods" => ["GET"]}, {"path" => "/_remotestore/stats/{index}/{shard_id}", "methods" => ["GET"]}]}, "params" => {"timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:index, :shard_id])
      end


      # render_search_template 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/search-template/", "description" => "Allows to use the Mustache language to pre-render a search definition."}
      def render_search_template(params = {})
        api_name = 'render_search_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_render/template", "methods" => ["GET", "POST"]}, {"path" => "/_render/template/{id}", "methods" => ["GET", "POST"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # scripts_painless_execute 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/script-apis/exec-stored-script/", "description" => "Allows an arbitrary script to be executed and a result to be returned"}
      def scripts_painless_execute(params = {})
        api_name = 'scripts_painless_execute'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_scripts/painless/_execute", "methods" => ["GET", "POST"]}]}, "params" => {}}
        request(api_name, api_spec, params, [])
      end


      # scroll 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/scroll/", "description" => "Allows to retrieve a large numbers of results from a single search request."}
      def scroll(params = {})
        api_name = 'scroll'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_search/scroll", "methods" => ["GET", "POST"]}, {"path" => "/_search/scroll/{scroll_id}", "methods" => ["GET", "POST"], "deprecated" => true}]}, "params" => {"scroll" => {"type" => "time"}, "scroll_id" => {"type" => "string"}, "rest_total_hits_as_int" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:scroll_id])
      end


      # search 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/search/", "description" => "Returns results matching a query."}
      def search(params = {})
        api_name = 'search'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_search", "methods" => ["GET", "POST"]}, {"path" => "/{index}/_search", "methods" => ["GET", "POST"]}]}, "params" => {"analyzer" => {"type" => "string"}, "analyze_wildcard" => {"type" => "boolean"}, "ccs_minimize_roundtrips" => {"type" => "boolean"}, "default_operator" => {"type" => "enum"}, "df" => {"type" => "string"}, "explain" => {"type" => "boolean"}, "stored_fields" => {"type" => "list"}, "docvalue_fields" => {"type" => "list"}, "from" => {"type" => "number"}, "ignore_unavailable" => {"type" => "boolean"}, "ignore_throttled" => {"type" => "boolean"}, "allow_no_indices" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}, "lenient" => {"type" => "boolean"}, "preference" => {"type" => "string"}, "q" => {"type" => "string"}, "routing" => {"type" => "list"}, "scroll" => {"type" => "time"}, "search_type" => {"type" => "enum"}, "size" => {"type" => "number"}, "sort" => {"type" => "list"}, "_source" => {"type" => "list"}, "_source_excludes" => {"type" => "list"}, "_source_includes" => {"type" => "list"}, "terminate_after" => {"type" => "number"}, "stats" => {"type" => "list"}, "suggest_field" => {"type" => "string"}, "suggest_mode" => {"type" => "enum"}, "suggest_size" => {"type" => "number"}, "suggest_text" => {"type" => "string"}, "timeout" => {"type" => "time"}, "track_scores" => {"type" => "boolean"}, "track_total_hits" => {"type" => "boolean"}, "allow_partial_search_results" => {"type" => "boolean"}, "typed_keys" => {"type" => "boolean"}, "version" => {"type" => "boolean"}, "seq_no_primary_term" => {"type" => "boolean"}, "request_cache" => {"type" => "boolean"}, "batched_reduce_size" => {"type" => "number"}, "max_concurrent_shard_requests" => {"type" => "number"}, "pre_filter_shard_size" => {"type" => "number"}, "rest_total_hits_as_int" => {"type" => "boolean"}, "search_pipeline" => {"type" => "string"}, "include_named_queries_score" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:index])
      end


      # search_pipeline.delete 
      # {"description" => "Deletes a search pipeline.", "url" => "https://opensearch.org/docs/latest/search-plugins/search-pipelines/index/"}
      def search_pipeline_delete(params = {})
        api_name = 'search_pipeline.delete'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_search/pipeline/{id}", "methods" => ["DELETE"]}]}, "params" => {"cluster_manager_timeout" => {"type" => "time"}, "timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:id])
      end


      # search_pipeline.get 
      # {"description" => "Returns a search pipeline", "url" => "https://opensearch.org/docs/latest/search-plugins/search-pipelines/retrieving-search-pipeline/"}
      def search_pipeline_get(params = {})
        api_name = 'search_pipeline.get'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_search/pipeline", "methods" => ["GET"]}, {"path" => "/_search/pipeline/{id}", "methods" => ["GET"]}]}, "params" => {"cluster_manager_timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:id])
      end


      # search_pipeline.put 
      # {"description" => "Creates or updates a search pipeline.", "url" => "https://opensearch.org/docs/latest/search-plugins/search-pipelines/creating-search-pipeline/"}
      def search_pipeline_put(params = {})
        api_name = 'search_pipeline.put'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_search/pipeline/{id}", "methods" => ["PUT"]}]}, "body" => {"required" => true}, "params" => {"cluster_manager_timeout" => {"type" => "time"}, "timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:id])
      end


      # search_shards 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/search-shards.html", "description" => "Returns information about the indices and shards that a search request would be executed against."}
      def search_shards(params = {})
        api_name = 'search_shards'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_search_shards", "methods" => ["GET", "POST"]}, {"path" => "/{index}/_search_shards", "methods" => ["GET", "POST"]}]}, "params" => {"preference" => {"type" => "string"}, "routing" => {"type" => "string"}, "local" => {"type" => "boolean"}, "ignore_unavailable" => {"type" => "boolean"}, "allow_no_indices" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}}}
        request(api_name, api_spec, params, [:index])
      end


      # search_template 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/search-template/", "description" => "Allows to use the Mustache language to pre-render a search definition."}
      def search_template(params = {})
        api_name = 'search_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_search/template", "methods" => ["GET", "POST"]}, {"path" => "/{index}/_search/template", "methods" => ["GET", "POST"]}]}, "body" => {"required" => true}, "params" => {"ignore_unavailable" => {"type" => "boolean"}, "ignore_throttled" => {"type" => "boolean"}, "allow_no_indices" => {"type" => "boolean"}, "expand_wildcards" => {"type" => "enum"}, "preference" => {"type" => "string"}, "routing" => {"type" => "list"}, "scroll" => {"type" => "time"}, "search_type" => {"type" => "enum"}, "explain" => {"type" => "boolean"}, "profile" => {"type" => "boolean"}, "typed_keys" => {"type" => "boolean"}, "rest_total_hits_as_int" => {"type" => "boolean"}, "ccs_minimize_roundtrips" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:index])
      end


      # snapshot.cleanup_repository 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/snapshots/index/", "description" => "Removes stale data from repository."}
      def snapshot_cleanup_repository(params = {})
        api_name = 'snapshot.cleanup_repository'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_snapshot/{repository}/_cleanup", "methods" => ["POST"]}]}, "params" => {"master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:repository])
      end


      # snapshot.clone 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/snapshots/index/", "description" => "Clones indices from one snapshot into another snapshot in the same repository."}
      def snapshot_clone(params = {})
        api_name = 'snapshot.clone'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_snapshot/{repository}/{snapshot}/_clone/{target_snapshot}", "methods" => ["PUT"]}]}, "body" => {"required" => true}, "params" => {"master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:repository, :snapshot, :target_snapshot])
      end


      # snapshot.create 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/snapshots/create-snapshot/", "description" => "Creates a snapshot in a repository."}
      def snapshot_create(params = {})
        api_name = 'snapshot.create'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_snapshot/{repository}/{snapshot}", "methods" => ["PUT", "POST"]}]}, "params" => {"master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "wait_for_completion" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:repository, :snapshot])
      end


      # snapshot.create_repository 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/snapshots/create-repository/", "description" => "Creates a repository."}
      def snapshot_create_repository(params = {})
        api_name = 'snapshot.create_repository'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_snapshot/{repository}", "methods" => ["PUT", "POST"]}]}, "body" => {"required" => true}, "params" => {"master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "timeout" => {"type" => "time"}, "verify" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:repository])
      end


      # snapshot.delete 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/snapshots/delete-snapshot/", "description" => "Deletes a snapshot."}
      def snapshot_delete(params = {})
        api_name = 'snapshot.delete'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_snapshot/{repository}/{snapshot}", "methods" => ["DELETE"]}]}, "params" => {"master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:repository, :snapshot])
      end


      # snapshot.delete_repository 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/snapshots/delete-snapshot-repository/", "description" => "Deletes a repository."}
      def snapshot_delete_repository(params = {})
        api_name = 'snapshot.delete_repository'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_snapshot/{repository}", "methods" => ["DELETE"]}]}, "params" => {"master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:repository])
      end


      # snapshot.get 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/snapshots/get-snapshot/", "description" => "Returns information about a snapshot."}
      def snapshot_get(params = {})
        api_name = 'snapshot.get'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_snapshot/{repository}/{snapshot}", "methods" => ["GET"]}]}, "params" => {"master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "ignore_unavailable" => {"type" => "boolean"}, "verbose" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:repository, :snapshot])
      end


      # snapshot.get_repository 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/snapshots/get-snapshot-repository/", "description" => "Returns information about a repository."}
      def snapshot_get_repository(params = {})
        api_name = 'snapshot.get_repository'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_snapshot", "methods" => ["GET"]}, {"path" => "/_snapshot/{repository}", "methods" => ["GET"]}]}, "params" => {"master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "local" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:repository])
      end


      # snapshot.restore 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/snapshots/restore-snapshot/", "description" => "Restores a snapshot."}
      def snapshot_restore(params = {})
        api_name = 'snapshot.restore'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_snapshot/{repository}/{snapshot}/_restore", "methods" => ["POST"]}]}, "params" => {"master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "wait_for_completion" => {"type" => "boolean"}, "source_remote_store_repository" => {"type" => "string"}}}
        request(api_name, api_spec, params, [:repository, :snapshot])
      end


      # snapshot.status 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/snapshots/get-snapshot-status/", "description" => "Returns information about the status of a snapshot."}
      def snapshot_status(params = {})
        api_name = 'snapshot.status'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_snapshot/_status", "methods" => ["GET"]}, {"path" => "/_snapshot/{repository}/_status", "methods" => ["GET"]}, {"path" => "/_snapshot/{repository}/{snapshot}/_status", "methods" => ["GET"]}, {"path" => "/_snapshot/{repository}/{snapshot}/{index}/_status", "methods" => ["GET"]}]}, "params" => {"master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "ignore_unavailable" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:repository, :snapshot, :index])
      end


      # snapshot.verify_repository 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/snapshots/verify-snapshot-repository/", "description" => "Verifies a repository."}
      def snapshot_verify_repository(params = {})
        api_name = 'snapshot.verify_repository'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_snapshot/{repository}/_verify", "methods" => ["POST"]}]}, "params" => {"master_timeout" => {"type" => "time"}, "cluster_manager_timeout" => {"type" => "time"}, "timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:repository])
      end


      # tasks.cancel 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/tasks/", "description" => "Cancels a task, if it can be cancelled through an API."}
      def tasks_cancel(params = {})
        api_name = 'tasks.cancel'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_tasks/_cancel", "methods" => ["POST"]}, {"path" => "/_tasks/{task_id}/_cancel", "methods" => ["POST"]}]}, "params" => {"nodes" => {"type" => "list"}, "actions" => {"type" => "list"}, "parent_task_id" => {"type" => "string"}, "wait_for_completion" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:task_id])
      end


      # tasks.get 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/tasks/", "description" => "Returns information about a task."}
      def tasks_get(params = {})
        api_name = 'tasks.get'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_tasks/{task_id}", "methods" => ["GET"]}]}, "params" => {"wait_for_completion" => {"type" => "boolean"}, "timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [:task_id])
      end


      # tasks.list 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/tasks/", "description" => "Returns a list of tasks."}
      def tasks_list(params = {})
        api_name = 'tasks.list'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_tasks", "methods" => ["GET"]}]}, "params" => {"nodes" => {"type" => "list"}, "actions" => {"type" => "list"}, "detailed" => {"type" => "boolean"}, "parent_task_id" => {"type" => "string"}, "wait_for_completion" => {"type" => "boolean"}, "group_by" => {"type" => "enum"}, "timeout" => {"type" => "time"}}}
        request(api_name, api_spec, params, [])
      end


      # termvectors 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-termvectors.html", "description" => "Returns information and statistics about terms in the fields of a particular document."}
      def termvectors(params = {})
        api_name = 'termvectors'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_termvectors/{id}", "methods" => ["GET", "POST"]}, {"path" => "/{index}/_termvectors", "methods" => ["GET", "POST"]}]}, "params" => {"term_statistics" => {"type" => "boolean"}, "field_statistics" => {"type" => "boolean"}, "fields" => {"type" => "list"}, "offsets" => {"type" => "boolean"}, "positions" => {"type" => "boolean"}, "payloads" => {"type" => "boolean"}, "preference" => {"type" => "string"}, "routing" => {"type" => "string"}, "realtime" => {"type" => "boolean"}, "version" => {"type" => "number"}, "version_type" => {"type" => "enum"}}}
        request(api_name, api_spec, params, [:index, :id])
      end


      # update 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/document-apis/update-document/", "description" => "Updates a document with a script or partial document."}
      def update(params = {})
        api_name = 'update'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_update/{id}", "methods" => ["POST"]}]}, "body" => {"required" => true}, "params" => {"wait_for_active_shards" => {"type" => "string"}, "_source" => {"type" => "list"}, "_source_excludes" => {"type" => "list"}, "_source_includes" => {"type" => "list"}, "lang" => {"type" => "string"}, "refresh" => {"type" => "enum"}, "retry_on_conflict" => {"type" => "number"}, "routing" => {"type" => "string"}, "timeout" => {"type" => "time"}, "if_seq_no" => {"type" => "number"}, "if_primary_term" => {"type" => "number"}, "require_alias" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [:id, :index])
      end


      # update_by_query 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/document-apis/update-by-query/", "description" => "Performs an update on every document in the index without changing the source,\nfor example to pick up a mapping change."}
      def update_by_query(params = {})
        api_name = 'update_by_query'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_update_by_query", "methods" => ["POST"]}]}, "params" => {"analyzer" => {"type" => "string"}, "analyze_wildcard" => {"type" => "boolean"}, "default_operator" => {"type" => "enum"}, "df" => {"type" => "string"}, "from" => {"type" => "number"}, "ignore_unavailable" => {"type" => "boolean"}, "allow_no_indices" => {"type" => "boolean"}, "conflicts" => {"type" => "enum"}, "expand_wildcards" => {"type" => "enum"}, "lenient" => {"type" => "boolean"}, "pipeline" => {"type" => "string"}, "preference" => {"type" => "string"}, "q" => {"type" => "string"}, "routing" => {"type" => "list"}, "scroll" => {"type" => "time"}, "search_type" => {"type" => "enum"}, "search_timeout" => {"type" => "time"}, "size" => {"type" => "number"}, "max_docs" => {"type" => "number"}, "sort" => {"type" => "list"}, "_source" => {"type" => "list"}, "_source_excludes" => {"type" => "list"}, "_source_includes" => {"type" => "list"}, "terminate_after" => {"type" => "number"}, "stats" => {"type" => "list"}, "version" => {"type" => "boolean"}, "version_type" => {"type" => "boolean"}, "request_cache" => {"type" => "boolean"}, "refresh" => {"type" => "boolean"}, "timeout" => {"type" => "time"}, "wait_for_active_shards" => {"type" => "string"}, "scroll_size" => {"type" => "number"}, "wait_for_completion" => {"type" => "boolean"}, "requests_per_second" => {"type" => "number"}, "slices" => {"type" => "number|string"}}}
        request(api_name, api_spec, params, [:index])
      end


      # update_by_query_rethrottle 
      # {"url" => "https://opensearch.org/docs/latest/api-reference/document-apis/update-by-query/", "description" => "Changes the number of requests per second for a particular Update By Query operation."}
      def update_by_query_rethrottle(params = {})
        api_name = 'update_by_query_rethrottle'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_update_by_query/{task_id}/_rethrottle", "methods" => ["POST"]}]}, "params" => {"requests_per_second" => {"type" => "number", "required" => true}}}
        request(api_name, api_spec, params, [:task_id])
      end


      # wlm_stats_list 
      # {"url" => "https://docs.opensearch.org/docs/latest/tuning-your-cluster/availability-and-recovery/workload-management/wlm-feature-overview/", "description" => "This API endpoint returns a list of WLM stats with pagination support."}
      def wlm_stats_list(params = {})
        api_name = 'wlm_stats_list'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_list/wlm_stats", "methods" => ["GET"]}]}, "params" => {"size" => {"type" => "int"}, "next_token" => {"type" => "string"}, "sort" => {"type" => "string"}, "order" => {"type" => "string"}, "v" => {"type" => "boolean"}}}
        request(api_name, api_spec, params, [])
      end
    end
  end
end
