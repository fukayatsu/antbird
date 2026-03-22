# Generated REST API methods file - DO NOT EDIT!
# elasticsearch version: 7.14.2

module Antbird
  module RestApi
    module RestApiV7_14
      def common_params
        @common_params ||= {"documentation" => {"description" => "Parameters that are accepted by all API endpoints.", "url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/common-options.html"}, "params" => {"pretty" => {"type" => "boolean", "description" => "Pretty format the returned JSON response.", "default" => false}, "human" => {"type" => "boolean", "description" => "Return human readable values for statistics.", "default" => true}, "error_trace" => {"type" => "boolean", "description" => "Include the stack trace of returned errors.", "default" => false}, "source" => {"type" => "string", "description" => "The URL-encoded request definition. Useful for libraries that do not accept a request body for non-POST requests."}, "filter_path" => {"type" => "list", "description" => "A comma-separated list of filters used to reduce the response."}}}
      end


      # async_search.delete 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/async-search.html", "description" => "Deletes an async search by ID. If the search is still running, the search request will be cancelled. Otherwise, the saved search results are deleted."}
      def async_search_delete(params = {})
        api_name = 'async_search.delete'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_async_search/{id}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # async_search.get 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/async-search.html", "description" => "Retrieves the results of a previously submitted async search request given its ID."}
      def async_search_get(params = {})
        api_name = 'async_search.get'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_async_search/{id}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # async_search.status 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/async-search.html", "description" => "Retrieves the status of a previously submitted async search request given its ID."}
      def async_search_status(params = {})
        api_name = 'async_search.status'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_async_search/status/{id}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # async_search.submit 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/async-search.html", "description" => "Executes a search request asynchronously."}
      def async_search_submit(params = {})
        api_name = 'async_search.submit'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_async_search", "methods" => ["POST"]}, {"path" => "/{index}/_async_search", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # autoscaling.delete_autoscaling_policy 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/autoscaling-delete-autoscaling-policy.html", "description" => "Deletes an autoscaling policy. Designed for indirect use by ECE/ESS and ECK. Direct use is not supported."}
      def autoscaling_delete_autoscaling_policy(params = {})
        api_name = 'autoscaling.delete_autoscaling_policy'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_autoscaling/policy/{name}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # autoscaling.get_autoscaling_capacity 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/autoscaling-get-autoscaling-capacity.html", "description" => "Gets the current autoscaling capacity based on the configured autoscaling policy. Designed for indirect use by ECE/ESS and ECK. Direct use is not supported."}
      def autoscaling_get_autoscaling_capacity(params = {})
        api_name = 'autoscaling.get_autoscaling_capacity'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_autoscaling/capacity", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # autoscaling.get_autoscaling_policy 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/autoscaling-get-autoscaling-policy.html", "description" => "Retrieves an autoscaling policy. Designed for indirect use by ECE/ESS and ECK. Direct use is not supported."}
      def autoscaling_get_autoscaling_policy(params = {})
        api_name = 'autoscaling.get_autoscaling_policy'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_autoscaling/policy/{name}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # autoscaling.put_autoscaling_policy 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/autoscaling-put-autoscaling-policy.html", "description" => "Creates a new autoscaling policy. Designed for indirect use by ECE/ESS and ECK. Direct use is not supported."}
      def autoscaling_put_autoscaling_policy(params = {})
        api_name = 'autoscaling.put_autoscaling_policy'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_autoscaling/policy/{name}", "methods" => ["PUT"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:name])
      end


      # bulk 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-bulk.html", "description" => "Allows to perform multiple index/update/delete operations in a single request."}
      def bulk(params = {})
        api_name = 'bulk'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_bulk", "methods" => ["POST", "PUT"]}, {"path" => "/{index}/_bulk", "methods" => ["POST", "PUT"]}, {"path" => "/{index}/{type}/_bulk", "methods" => ["POST", "PUT"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:index, :type])
      end


      # cat.aliases 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-alias.html", "description" => "Shows information about currently configured aliases to indices including filter and routing infos."}
      def cat_aliases(params = {})
        api_name = 'cat.aliases'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/aliases", "methods" => ["GET"]}, {"path" => "/_cat/aliases/{name}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # cat.allocation 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-allocation.html", "description" => "Provides a snapshot of how many shards are allocated to each data node and how much disk space they are using."}
      def cat_allocation(params = {})
        api_name = 'cat.allocation'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/allocation", "methods" => ["GET"]}, {"path" => "/_cat/allocation/{node_id}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:node_id])
      end


      # cat.count 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-count.html", "description" => "Provides quick access to the document count of the entire cluster, or individual indices."}
      def cat_count(params = {})
        api_name = 'cat.count'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/count", "methods" => ["GET"]}, {"path" => "/_cat/count/{index}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # cat.fielddata 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-fielddata.html", "description" => "Shows how much heap memory is currently being used by fielddata on every data node in the cluster."}
      def cat_fielddata(params = {})
        api_name = 'cat.fielddata'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/fielddata", "methods" => ["GET"]}, {"path" => "/_cat/fielddata/{fields}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:fields])
      end


      # cat.health 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-health.html", "description" => "Returns a concise representation of the cluster health."}
      def cat_health(params = {})
        api_name = 'cat.health'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/health", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # cat.help 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat.html", "description" => "Returns help for the Cat APIs."}
      def cat_help(params = {})
        api_name = 'cat.help'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # cat.indices 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-indices.html", "description" => "Returns information about indices: number of primaries and replicas, document counts, disk size, ..."}
      def cat_indices(params = {})
        api_name = 'cat.indices'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/indices", "methods" => ["GET"]}, {"path" => "/_cat/indices/{index}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # cat.master 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-master.html", "description" => "Returns information about the master node."}
      def cat_master(params = {})
        api_name = 'cat.master'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/master", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # cat.ml_data_frame_analytics 
      # {"url" => "http://www.elastic.co/guide/en/elasticsearch/reference/current/cat-dfanalytics.html", "description" => "Gets configuration and usage information about data frame analytics jobs."}
      def cat_ml_data_frame_analytics(params = {})
        api_name = 'cat.ml_data_frame_analytics'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/ml/data_frame/analytics", "methods" => ["GET"]}, {"path" => "/_cat/ml/data_frame/analytics/{id}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # cat.ml_datafeeds 
      # {"url" => "http://www.elastic.co/guide/en/elasticsearch/reference/current/cat-datafeeds.html", "description" => "Gets configuration and usage information about datafeeds."}
      def cat_ml_datafeeds(params = {})
        api_name = 'cat.ml_datafeeds'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/ml/datafeeds", "methods" => ["GET"]}, {"path" => "/_cat/ml/datafeeds/{datafeed_id}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:datafeed_id])
      end


      # cat.ml_jobs 
      # {"url" => "http://www.elastic.co/guide/en/elasticsearch/reference/current/cat-anomaly-detectors.html", "description" => "Gets configuration and usage information about anomaly detection jobs."}
      def cat_ml_jobs(params = {})
        api_name = 'cat.ml_jobs'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/ml/anomaly_detectors", "methods" => ["GET"]}, {"path" => "/_cat/ml/anomaly_detectors/{job_id}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:job_id])
      end


      # cat.ml_trained_models 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/cat-trained-model.html", "description" => "Gets configuration and usage information about inference trained models."}
      def cat_ml_trained_models(params = {})
        api_name = 'cat.ml_trained_models'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/ml/trained_models", "methods" => ["GET"]}, {"path" => "/_cat/ml/trained_models/{model_id}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:model_id])
      end


      # cat.nodeattrs 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-nodeattrs.html", "description" => "Returns information about custom node attributes."}
      def cat_nodeattrs(params = {})
        api_name = 'cat.nodeattrs'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/nodeattrs", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # cat.nodes 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-nodes.html", "description" => "Returns basic statistics about performance of cluster nodes."}
      def cat_nodes(params = {})
        api_name = 'cat.nodes'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/nodes", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # cat.pending_tasks 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-pending-tasks.html", "description" => "Returns a concise representation of the cluster pending tasks."}
      def cat_pending_tasks(params = {})
        api_name = 'cat.pending_tasks'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/pending_tasks", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # cat.plugins 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-plugins.html", "description" => "Returns information about installed plugins across nodes node."}
      def cat_plugins(params = {})
        api_name = 'cat.plugins'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/plugins", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # cat.recovery 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-recovery.html", "description" => "Returns information about index shard recoveries, both on-going completed."}
      def cat_recovery(params = {})
        api_name = 'cat.recovery'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/recovery", "methods" => ["GET"]}, {"path" => "/_cat/recovery/{index}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # cat.repositories 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-repositories.html", "description" => "Returns information about snapshot repositories registered in the cluster."}
      def cat_repositories(params = {})
        api_name = 'cat.repositories'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/repositories", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # cat.segments 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-segments.html", "description" => "Provides low-level information about the segments in the shards of an index."}
      def cat_segments(params = {})
        api_name = 'cat.segments'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/segments", "methods" => ["GET"]}, {"path" => "/_cat/segments/{index}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # cat.shards 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-shards.html", "description" => "Provides a detailed view of shard allocation on nodes."}
      def cat_shards(params = {})
        api_name = 'cat.shards'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/shards", "methods" => ["GET"]}, {"path" => "/_cat/shards/{index}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # cat.snapshots 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-snapshots.html", "description" => "Returns all snapshots in a specific repository."}
      def cat_snapshots(params = {})
        api_name = 'cat.snapshots'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/snapshots", "methods" => ["GET"]}, {"path" => "/_cat/snapshots/{repository}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:repository])
      end


      # cat.tasks 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/tasks.html", "description" => "Returns information about the tasks currently executing on one or more nodes in the cluster."}
      def cat_tasks(params = {})
        api_name = 'cat.tasks'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/tasks", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # cat.templates 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-templates.html", "description" => "Returns information about existing templates."}
      def cat_templates(params = {})
        api_name = 'cat.templates'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/templates", "methods" => ["GET"]}, {"path" => "/_cat/templates/{name}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # cat.thread_pool 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cat-thread-pool.html", "description" => "Returns cluster-wide thread pool statistics per node.\nBy default the active, queue and rejected statistics are returned for all thread pools."}
      def cat_thread_pool(params = {})
        api_name = 'cat.thread_pool'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/thread_pool", "methods" => ["GET"]}, {"path" => "/_cat/thread_pool/{thread_pool_patterns}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:thread_pool_patterns])
      end


      # cat.transforms 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/cat-transforms.html", "description" => "Gets configuration and usage information about transforms."}
      def cat_transforms(params = {})
        api_name = 'cat.transforms'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cat/transforms", "methods" => ["GET"]}, {"path" => "/_cat/transforms/{transform_id}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:transform_id])
      end


      # ccr.delete_auto_follow_pattern 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-delete-auto-follow-pattern.html", "description" => "Deletes auto-follow patterns."}
      def ccr_delete_auto_follow_pattern(params = {})
        api_name = 'ccr.delete_auto_follow_pattern'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ccr/auto_follow/{name}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # ccr.follow 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-put-follow.html", "description" => "Creates a new follower index configured to follow the referenced leader index."}
      def ccr_follow(params = {})
        api_name = 'ccr.follow'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_ccr/follow", "methods" => ["PUT"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:index])
      end


      # ccr.follow_info 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-get-follow-info.html", "description" => "Retrieves information about all follower indices, including parameters and status for each follower index"}
      def ccr_follow_info(params = {})
        api_name = 'ccr.follow_info'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_ccr/info", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # ccr.follow_stats 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-get-follow-stats.html", "description" => "Retrieves follower stats. return shard-level stats about the following tasks associated with each shard for the specified indices."}
      def ccr_follow_stats(params = {})
        api_name = 'ccr.follow_stats'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_ccr/stats", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # ccr.forget_follower 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-post-forget-follower.html", "description" => "Removes the follower retention leases from the leader."}
      def ccr_forget_follower(params = {})
        api_name = 'ccr.forget_follower'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_ccr/forget_follower", "methods" => ["POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:index])
      end


      # ccr.get_auto_follow_pattern 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-get-auto-follow-pattern.html", "description" => "Gets configured auto-follow patterns. Returns the specified auto-follow pattern collection."}
      def ccr_get_auto_follow_pattern(params = {})
        api_name = 'ccr.get_auto_follow_pattern'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ccr/auto_follow", "methods" => ["GET"]}, {"path" => "/_ccr/auto_follow/{name}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # ccr.pause_auto_follow_pattern 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-pause-auto-follow-pattern.html", "description" => "Pauses an auto-follow pattern"}
      def ccr_pause_auto_follow_pattern(params = {})
        api_name = 'ccr.pause_auto_follow_pattern'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ccr/auto_follow/{name}/pause", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # ccr.pause_follow 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-post-pause-follow.html", "description" => "Pauses a follower index. The follower index will not fetch any additional operations from the leader index."}
      def ccr_pause_follow(params = {})
        api_name = 'ccr.pause_follow'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_ccr/pause_follow", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # ccr.put_auto_follow_pattern 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-put-auto-follow-pattern.html", "description" => "Creates a new named collection of auto-follow patterns against a specified remote cluster. Newly created indices on the remote cluster matching any of the specified patterns will be automatically configured as follower indices."}
      def ccr_put_auto_follow_pattern(params = {})
        api_name = 'ccr.put_auto_follow_pattern'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ccr/auto_follow/{name}", "methods" => ["PUT"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:name])
      end


      # ccr.resume_auto_follow_pattern 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-resume-auto-follow-pattern.html", "description" => "Resumes an auto-follow pattern that has been paused"}
      def ccr_resume_auto_follow_pattern(params = {})
        api_name = 'ccr.resume_auto_follow_pattern'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ccr/auto_follow/{name}/resume", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # ccr.resume_follow 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-post-resume-follow.html", "description" => "Resumes a follower index that has been paused"}
      def ccr_resume_follow(params = {})
        api_name = 'ccr.resume_follow'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_ccr/resume_follow", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # ccr.stats 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-get-stats.html", "description" => "Gets all stats related to cross-cluster replication."}
      def ccr_stats(params = {})
        api_name = 'ccr.stats'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ccr/stats", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # ccr.unfollow 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ccr-post-unfollow.html", "description" => "Stops the following task associated with a follower index and removes index metadata and settings associated with cross-cluster replication."}
      def ccr_unfollow(params = {})
        api_name = 'ccr.unfollow'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_ccr/unfollow", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # clear_scroll 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/clear-scroll-api.html", "description" => "Explicitly clears the search context for a scroll."}
      def clear_scroll(params = {})
        api_name = 'clear_scroll'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_search/scroll", "methods" => ["DELETE"]}, {"path" => "/_search/scroll/{scroll_id}", "methods" => ["DELETE"], "deprecated" => true}]}}
        request(api_name, api_spec, params, [:scroll_id])
      end


      # close_point_in_time 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/point-in-time-api.html", "description" => "Close a point in time"}
      def close_point_in_time(params = {})
        api_name = 'close_point_in_time'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_pit", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [])
      end


      # cluster.allocation_explain 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-allocation-explain.html", "description" => "Provides explanations for shard allocations in the cluster."}
      def cluster_allocation_explain(params = {})
        api_name = 'cluster.allocation_explain'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cluster/allocation/explain", "methods" => ["GET", "POST"]}]}}
        request(api_name, api_spec, params, [])
      end


      # cluster.delete_component_template 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-component-template.html", "description" => "Deletes a component template"}
      def cluster_delete_component_template(params = {})
        api_name = 'cluster.delete_component_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_component_template/{name}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # cluster.delete_voting_config_exclusions 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/voting-config-exclusions.html", "description" => "Clears cluster voting config exclusions."}
      def cluster_delete_voting_config_exclusions(params = {})
        api_name = 'cluster.delete_voting_config_exclusions'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cluster/voting_config_exclusions", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [])
      end


      # cluster.exists_component_template 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-component-template.html", "description" => "Returns information about whether a particular component template exist"}
      def cluster_exists_component_template(params = {})
        api_name = 'cluster.exists_component_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_component_template/{name}", "methods" => ["HEAD"]}]}}
        request(api_name, api_spec, params, [:name])
      end
      alias :cluster_exists_component_template? :cluster_exists_component_template


      # cluster.get_component_template 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-component-template.html", "description" => "Returns one or more component templates"}
      def cluster_get_component_template(params = {})
        api_name = 'cluster.get_component_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_component_template", "methods" => ["GET"]}, {"path" => "/_component_template/{name}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # cluster.get_settings 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-get-settings.html", "description" => "Returns cluster settings."}
      def cluster_get_settings(params = {})
        api_name = 'cluster.get_settings'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cluster/settings", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # cluster.health 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-health.html", "description" => "Returns basic information about the health of the cluster."}
      def cluster_health(params = {})
        api_name = 'cluster.health'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cluster/health", "methods" => ["GET"]}, {"path" => "/_cluster/health/{index}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # cluster.pending_tasks 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-pending.html", "description" => "Returns a list of any cluster-level changes (e.g. create index, update mapping,\nallocate or fail shard) which have not yet been executed."}
      def cluster_pending_tasks(params = {})
        api_name = 'cluster.pending_tasks'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cluster/pending_tasks", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # cluster.post_voting_config_exclusions 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/voting-config-exclusions.html", "description" => "Updates the cluster voting config exclusions by node ids or node names."}
      def cluster_post_voting_config_exclusions(params = {})
        api_name = 'cluster.post_voting_config_exclusions'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cluster/voting_config_exclusions", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [])
      end


      # cluster.put_component_template 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-component-template.html", "description" => "Creates or updates a component template"}
      def cluster_put_component_template(params = {})
        api_name = 'cluster.put_component_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_component_template/{name}", "methods" => ["PUT", "POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:name])
      end


      # cluster.put_settings 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-update-settings.html", "description" => "Updates the cluster settings."}
      def cluster_put_settings(params = {})
        api_name = 'cluster.put_settings'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cluster/settings", "methods" => ["PUT"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [])
      end


      # cluster.remote_info 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-remote-info.html", "description" => "Returns the information about configured remote clusters."}
      def cluster_remote_info(params = {})
        api_name = 'cluster.remote_info'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_remote/info", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # cluster.reroute 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-reroute.html", "description" => "Allows to manually change the allocation of individual shards in the cluster."}
      def cluster_reroute(params = {})
        api_name = 'cluster.reroute'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cluster/reroute", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [])
      end


      # cluster.state 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-state.html", "description" => "Returns a comprehensive information about the state of the cluster."}
      def cluster_state(params = {})
        api_name = 'cluster.state'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cluster/state", "methods" => ["GET"]}, {"path" => "/_cluster/state/{metric}", "methods" => ["GET"]}, {"path" => "/_cluster/state/{metric}/{index}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:metric, :index])
      end


      # cluster.stats 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-stats.html", "description" => "Returns high-level overview of cluster statistics."}
      def cluster_stats(params = {})
        api_name = 'cluster.stats'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cluster/stats", "methods" => ["GET"]}, {"path" => "/_cluster/stats/nodes/{node_id}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:node_id])
      end


      # count 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/search-count.html", "description" => "Returns number of documents matching a query."}
      def count(params = {})
        api_name = 'count'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_count", "methods" => ["POST", "GET"]}, {"path" => "/{index}/_count", "methods" => ["POST", "GET"]}, {"path" => "/{index}/{type}/_count", "methods" => ["POST", "GET"], "deprecated" => true}]}}
        request(api_name, api_spec, params, [:index, :type])
      end


      # create 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-index_.html", "description" => "Creates a new document in the index.\n\nReturns a 409 response when a document with a same ID already exists in the index."}
      def create(params = {})
        api_name = 'create'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_create/{id}", "methods" => ["PUT", "POST"]}, {"path" => "/{index}/{type}/{id}/_create", "methods" => ["PUT", "POST"], "deprecated" => true}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:id, :index, :type])
      end


      # dangling_indices.delete_dangling_index 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-gateway-dangling-indices.html", "description" => "Deletes the specified dangling index"}
      def dangling_indices_delete_dangling_index(params = {})
        api_name = 'dangling_indices.delete_dangling_index'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_dangling/{index_uuid}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:index_uuid])
      end


      # dangling_indices.import_dangling_index 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-gateway-dangling-indices.html", "description" => "Imports the specified dangling index"}
      def dangling_indices_import_dangling_index(params = {})
        api_name = 'dangling_indices.import_dangling_index'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_dangling/{index_uuid}", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:index_uuid])
      end


      # dangling_indices.list_dangling_indices 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-gateway-dangling-indices.html", "description" => "Returns all dangling indices."}
      def dangling_indices_list_dangling_indices(params = {})
        api_name = 'dangling_indices.list_dangling_indices'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_dangling", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # data_frame_transform_deprecated.delete_transform 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/delete-transform.html", "description" => "Deletes an existing transform."}
      def data_frame_transform_deprecated_delete_transform(params = {})
        api_name = 'data_frame_transform_deprecated.delete_transform'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_data_frame/transforms/{transform_id}", "methods" => ["DELETE"], "deprecated" => true}]}}
        request(api_name, api_spec, params, [:transform_id])
      end


      # data_frame_transform_deprecated.get_transform 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/get-transform.html", "description" => "Retrieves configuration information for transforms."}
      def data_frame_transform_deprecated_get_transform(params = {})
        api_name = 'data_frame_transform_deprecated.get_transform'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_data_frame/transforms/{transform_id}", "methods" => ["GET"], "deprecated" => true}, {"path" => "/_data_frame/transforms", "methods" => ["GET"], "deprecated" => true}]}}
        request(api_name, api_spec, params, [:transform_id])
      end


      # data_frame_transform_deprecated.get_transform_stats 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/get-transform-stats.html", "description" => "Retrieves usage information for transforms."}
      def data_frame_transform_deprecated_get_transform_stats(params = {})
        api_name = 'data_frame_transform_deprecated.get_transform_stats'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_data_frame/transforms/{transform_id}/_stats", "methods" => ["GET"], "deprecated" => true}]}}
        request(api_name, api_spec, params, [:transform_id])
      end


      # data_frame_transform_deprecated.preview_transform 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/preview-transform.html", "description" => "Previews a transform."}
      def data_frame_transform_deprecated_preview_transform(params = {})
        api_name = 'data_frame_transform_deprecated.preview_transform'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_data_frame/transforms/_preview", "methods" => ["POST"], "deprecated" => true}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [])
      end


      # data_frame_transform_deprecated.put_transform 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/put-transform.html", "description" => "Instantiates a transform."}
      def data_frame_transform_deprecated_put_transform(params = {})
        api_name = 'data_frame_transform_deprecated.put_transform'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_data_frame/transforms/{transform_id}", "methods" => ["PUT"], "deprecated" => true}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:transform_id])
      end


      # data_frame_transform_deprecated.start_transform 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/start-transform.html", "description" => "Starts one or more transforms."}
      def data_frame_transform_deprecated_start_transform(params = {})
        api_name = 'data_frame_transform_deprecated.start_transform'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_data_frame/transforms/{transform_id}/_start", "methods" => ["POST"], "deprecated" => true}]}}
        request(api_name, api_spec, params, [:transform_id])
      end


      # data_frame_transform_deprecated.stop_transform 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/stop-transform.html", "description" => "Stops one or more transforms."}
      def data_frame_transform_deprecated_stop_transform(params = {})
        api_name = 'data_frame_transform_deprecated.stop_transform'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_data_frame/transforms/{transform_id}/_stop", "methods" => ["POST"], "deprecated" => true}]}}
        request(api_name, api_spec, params, [:transform_id])
      end


      # data_frame_transform_deprecated.update_transform 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/update-transform.html", "description" => "Updates certain properties of a transform."}
      def data_frame_transform_deprecated_update_transform(params = {})
        api_name = 'data_frame_transform_deprecated.update_transform'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_data_frame/transforms/{transform_id}/_update", "methods" => ["POST"], "deprecated" => true}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:transform_id])
      end


      # delete 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-delete.html", "description" => "Removes a document from the index."}
      def delete(params = {})
        api_name = 'delete'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_doc/{id}", "methods" => ["DELETE"]}, {"path" => "/{index}/{type}/{id}", "methods" => ["DELETE"], "deprecated" => true}]}}
        request(api_name, api_spec, params, [:id, :index, :type])
      end


      # delete_by_query 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-delete-by-query.html", "description" => "Deletes documents matching the provided query."}
      def delete_by_query(params = {})
        api_name = 'delete_by_query'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_delete_by_query", "methods" => ["POST"]}, {"path" => "/{index}/{type}/_delete_by_query", "methods" => ["POST"], "deprecated" => true}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:index, :type])
      end


      # delete_by_query_rethrottle 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/docs-delete-by-query.html", "description" => "Changes the number of requests per second for a particular Delete By Query operation."}
      def delete_by_query_rethrottle(params = {})
        api_name = 'delete_by_query_rethrottle'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_delete_by_query/{task_id}/_rethrottle", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:task_id])
      end


      # delete_script 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-scripting.html", "description" => "Deletes a script."}
      def delete_script(params = {})
        api_name = 'delete_script'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_scripts/{id}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # enrich.delete_policy 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/delete-enrich-policy-api.html", "description" => "Deletes an existing enrich policy and its enrich index."}
      def enrich_delete_policy(params = {})
        api_name = 'enrich.delete_policy'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_enrich/policy/{name}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # enrich.execute_policy 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/execute-enrich-policy-api.html", "description" => "Creates the enrich index for an existing enrich policy."}
      def enrich_execute_policy(params = {})
        api_name = 'enrich.execute_policy'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_enrich/policy/{name}/_execute", "methods" => ["PUT"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # enrich.get_policy 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/get-enrich-policy-api.html", "description" => "Gets information about an enrich policy."}
      def enrich_get_policy(params = {})
        api_name = 'enrich.get_policy'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_enrich/policy/{name}", "methods" => ["GET"]}, {"path" => "/_enrich/policy/", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # enrich.put_policy 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/put-enrich-policy-api.html", "description" => "Creates a new enrich policy."}
      def enrich_put_policy(params = {})
        api_name = 'enrich.put_policy'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_enrich/policy/{name}", "methods" => ["PUT"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:name])
      end


      # enrich.stats 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/enrich-stats-api.html", "description" => "Gets enrich coordinator statistics and information about enrich policies that are currently executing."}
      def enrich_stats(params = {})
        api_name = 'enrich.stats'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_enrich/_stats", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # eql.delete 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/eql-search-api.html", "description" => "Deletes an async EQL search by ID. If the search is still running, the search request will be cancelled. Otherwise, the saved search results are deleted."}
      def eql_delete(params = {})
        api_name = 'eql.delete'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_eql/search/{id}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # eql.get 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/eql-search-api.html", "description" => "Returns async results from previously executed Event Query Language (EQL) search"}
      def eql_get(params = {})
        api_name = 'eql.get'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_eql/search/{id}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # eql.get_status 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/eql-search-api.html", "description" => "Returns the status of a previously submitted async or stored Event Query Language (EQL) search"}
      def eql_get_status(params = {})
        api_name = 'eql.get_status'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_eql/search/status/{id}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # eql.search 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/eql-search-api.html", "description" => "Returns results matching a query expressed in Event Query Language (EQL)"}
      def eql_search(params = {})
        api_name = 'eql.search'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_eql/search", "methods" => ["GET", "POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:index])
      end


      # exists 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-get.html", "description" => "Returns information about whether a document exists in an index."}
      def exists(params = {})
        api_name = 'exists'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_doc/{id}", "methods" => ["HEAD"]}, {"path" => "/{index}/{type}/{id}", "methods" => ["HEAD"], "deprecated" => true}]}}
        request(api_name, api_spec, params, [:id, :index, :type])
      end
      alias :exists? :exists


      # exists_source 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-get.html", "description" => "Returns information about whether a document source exists in an index."}
      def exists_source(params = {})
        api_name = 'exists_source'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_source/{id}", "methods" => ["HEAD"]}, {"path" => "/{index}/{type}/{id}/_source", "methods" => ["HEAD"], "deprecated" => true}]}}
        request(api_name, api_spec, params, [:id, :index, :type])
      end
      alias :exists_source? :exists_source


      # explain 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/search-explain.html", "description" => "Returns information about why a specific matches (or doesn't match) a query."}
      def explain(params = {})
        api_name = 'explain'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_explain/{id}", "methods" => ["GET", "POST"]}, {"path" => "/{index}/{type}/{id}/_explain", "methods" => ["GET", "POST"], "deprecated" => true}]}}
        request(api_name, api_spec, params, [:id, :index, :type])
      end


      # features.get_features 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/get-features-api.html", "description" => "Gets a list of features which can be included in snapshots using the feature_states field when creating a snapshot"}
      def features_get_features(params = {})
        api_name = 'features.get_features'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_features", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # features.reset_features 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description" => "Resets the internal state of features, usually by deleting system indices"}
      def features_reset_features(params = {})
        api_name = 'features.reset_features'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_features/_reset", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [])
      end


      # field_caps 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/search-field-caps.html", "description" => "Returns the information about the capabilities of fields among multiple indices."}
      def field_caps(params = {})
        api_name = 'field_caps'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_field_caps", "methods" => ["GET", "POST"]}, {"path" => "/{index}/_field_caps", "methods" => ["GET", "POST"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # fleet.global_checkpoints 
      # {"url" => nil, "description" => "Returns the current global checkpoints for an index. This API is design for internal use by the fleet server project."}
      def fleet_global_checkpoints(params = {})
        api_name = 'fleet.global_checkpoints'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_fleet/global_checkpoints", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # get 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-get.html", "description" => "Returns a document."}
      def get(params = {})
        api_name = 'get'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_doc/{id}", "methods" => ["GET"]}, {"path" => "/{index}/{type}/{id}", "methods" => ["GET"], "deprecated" => true}]}}
        request(api_name, api_spec, params, [:id, :index, :type])
      end


      # get_script 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-scripting.html", "description" => "Returns a script."}
      def get_script(params = {})
        api_name = 'get_script'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_scripts/{id}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # get_script_context 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/painless/master/painless-contexts.html", "description" => "Returns all script contexts."}
      def get_script_context(params = {})
        api_name = 'get_script_context'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_script_context", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # get_script_languages 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-scripting.html", "description" => "Returns available script types, languages and contexts"}
      def get_script_languages(params = {})
        api_name = 'get_script_languages'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_script_language", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # get_source 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-get.html", "description" => "Returns the source of a document."}
      def get_source(params = {})
        api_name = 'get_source'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_source/{id}", "methods" => ["GET"]}, {"path" => "/{index}/{type}/{id}/_source", "methods" => ["GET"], "deprecated" => true}]}}
        request(api_name, api_spec, params, [:id, :index, :type])
      end


      # graph.explore 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/graph-explore-api.html", "description" => "Explore extracted and summarized information about the documents and terms in an index."}
      def graph_explore(params = {})
        api_name = 'graph.explore'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_graph/explore", "methods" => ["GET", "POST"]}, {"path" => "/{index}/{type}/_graph/explore", "methods" => ["GET", "POST"], "deprecated" => true}]}}
        request(api_name, api_spec, params, [:index, :type])
      end


      # ilm.delete_lifecycle 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-delete-lifecycle.html", "description" => "Deletes the specified lifecycle policy definition. A currently used policy cannot be deleted."}
      def ilm_delete_lifecycle(params = {})
        api_name = 'ilm.delete_lifecycle'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ilm/policy/{policy}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:policy])
      end


      # ilm.explain_lifecycle 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-explain-lifecycle.html", "description" => "Retrieves information about the index's current lifecycle state, such as the currently executing phase, action, and step."}
      def ilm_explain_lifecycle(params = {})
        api_name = 'ilm.explain_lifecycle'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_ilm/explain", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # ilm.get_lifecycle 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-get-lifecycle.html", "description" => "Returns the specified policy definition. Includes the policy version and last modified date."}
      def ilm_get_lifecycle(params = {})
        api_name = 'ilm.get_lifecycle'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ilm/policy/{policy}", "methods" => ["GET"]}, {"path" => "/_ilm/policy", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:policy])
      end


      # ilm.get_status 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-get-status.html", "description" => "Retrieves the current index lifecycle management (ILM) status."}
      def ilm_get_status(params = {})
        api_name = 'ilm.get_status'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ilm/status", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # ilm.migrate_to_data_tiers 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-migrate-to-data-tiers.html", "description" => "Migrates the indices and ILM policies away from custom node attribute allocation routing to data tiers routing"}
      def ilm_migrate_to_data_tiers(params = {})
        api_name = 'ilm.migrate_to_data_tiers'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ilm/migrate_to_data_tiers", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [])
      end


      # ilm.move_to_step 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-move-to-step.html", "description" => "Manually moves an index into the specified step and executes that step."}
      def ilm_move_to_step(params = {})
        api_name = 'ilm.move_to_step'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ilm/move/{index}", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # ilm.put_lifecycle 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-put-lifecycle.html", "description" => "Creates a lifecycle policy"}
      def ilm_put_lifecycle(params = {})
        api_name = 'ilm.put_lifecycle'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ilm/policy/{policy}", "methods" => ["PUT"]}]}}
        request(api_name, api_spec, params, [:policy])
      end


      # ilm.remove_policy 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-remove-policy.html", "description" => "Removes the assigned lifecycle policy and stops managing the specified index"}
      def ilm_remove_policy(params = {})
        api_name = 'ilm.remove_policy'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_ilm/remove", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # ilm.retry 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-retry-policy.html", "description" => "Retries executing the policy for an index that is in the ERROR step."}
      def ilm_retry(params = {})
        api_name = 'ilm.retry'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_ilm/retry", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # ilm.start 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-start.html", "description" => "Start the index lifecycle management (ILM) plugin."}
      def ilm_start(params = {})
        api_name = 'ilm.start'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ilm/start", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [])
      end


      # ilm.stop 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-stop.html", "description" => "Halts all lifecycle management operations and stops the index lifecycle management (ILM) plugin"}
      def ilm_stop(params = {})
        api_name = 'ilm.stop'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ilm/stop", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [])
      end


      # index 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-index_.html", "description" => "Creates or updates a document in an index."}
      def index(params = {})
        api_name = 'index'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_doc/{id}", "methods" => ["PUT", "POST"]}, {"path" => "/{index}/_doc", "methods" => ["POST"]}, {"path" => "/{index}/{type}", "methods" => ["POST"], "deprecated" => true}, {"path" => "/{index}/{type}/{id}", "methods" => ["PUT", "POST"], "deprecated" => true}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:id, :index, :type])
      end


      # indices.add_block 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/index-modules-blocks.html", "description" => "Adds a block to an index."}
      def indices_add_block(params = {})
        api_name = 'indices.add_block'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_block/{block}", "methods" => ["PUT"]}]}}
        request(api_name, api_spec, params, [:index, :block])
      end


      # indices.analyze 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-analyze.html", "description" => "Performs the analysis process on a text and return the tokens breakdown of the text."}
      def indices_analyze(params = {})
        api_name = 'indices.analyze'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_analyze", "methods" => ["GET", "POST"]}, {"path" => "/{index}/_analyze", "methods" => ["GET", "POST"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.clear_cache 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-clearcache.html", "description" => "Clears all or specific caches for one or more indices."}
      def indices_clear_cache(params = {})
        api_name = 'indices.clear_cache'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_cache/clear", "methods" => ["POST"]}, {"path" => "/{index}/_cache/clear", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.clone 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-clone-index.html", "description" => "Clones an index"}
      def indices_clone(params = {})
        api_name = 'indices.clone'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_clone/{target}", "methods" => ["PUT", "POST"]}]}}
        request(api_name, api_spec, params, [:index, :target])
      end


      # indices.close 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-open-close.html", "description" => "Closes an index."}
      def indices_close(params = {})
        api_name = 'indices.close'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_close", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.create 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-create-index.html", "description" => "Creates an index with optional settings and mappings."}
      def indices_create(params = {})
        api_name = 'indices.create'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}", "methods" => ["PUT"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.create_data_stream 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/data-streams.html", "description" => "Creates a data stream"}
      def indices_create_data_stream(params = {})
        api_name = 'indices.create_data_stream'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_data_stream/{name}", "methods" => ["PUT"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # indices.data_streams_stats 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/data-streams.html", "description" => "Provides statistics on operations happening in a data stream."}
      def indices_data_streams_stats(params = {})
        api_name = 'indices.data_streams_stats'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_data_stream/_stats", "methods" => ["GET"]}, {"path" => "/_data_stream/{name}/_stats", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # indices.delete 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-delete-index.html", "description" => "Deletes an index."}
      def indices_delete(params = {})
        api_name = 'indices.delete'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.delete_alias 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html", "description" => "Deletes an alias."}
      def indices_delete_alias(params = {})
        api_name = 'indices.delete_alias'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_alias/{name}", "methods" => ["DELETE"]}, {"path" => "/{index}/_aliases/{name}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:index, :name])
      end


      # indices.delete_data_stream 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/data-streams.html", "description" => "Deletes a data stream."}
      def indices_delete_data_stream(params = {})
        api_name = 'indices.delete_data_stream'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_data_stream/{name}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # indices.delete_index_template 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description" => "Deletes an index template."}
      def indices_delete_index_template(params = {})
        api_name = 'indices.delete_index_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_index_template/{name}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # indices.delete_template 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description" => "Deletes an index template."}
      def indices_delete_template(params = {})
        api_name = 'indices.delete_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_template/{name}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # indices.exists 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-exists.html", "description" => "Returns information about whether a particular index exists."}
      def indices_exists(params = {})
        api_name = 'indices.exists'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}", "methods" => ["HEAD"]}]}}
        request(api_name, api_spec, params, [:index])
      end
      alias :indices_exists? :indices_exists


      # indices.exists_alias 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html", "description" => "Returns information about whether a particular alias exists."}
      def indices_exists_alias(params = {})
        api_name = 'indices.exists_alias'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_alias/{name}", "methods" => ["HEAD"]}, {"path" => "/{index}/_alias/{name}", "methods" => ["HEAD"]}]}}
        request(api_name, api_spec, params, [:name, :index])
      end
      alias :indices_exists_alias? :indices_exists_alias


      # indices.exists_index_template 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description" => "Returns information about whether a particular index template exists."}
      def indices_exists_index_template(params = {})
        api_name = 'indices.exists_index_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_index_template/{name}", "methods" => ["HEAD"]}]}}
        request(api_name, api_spec, params, [:name])
      end
      alias :indices_exists_index_template? :indices_exists_index_template


      # indices.exists_template 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description" => "Returns information about whether a particular index template exists."}
      def indices_exists_template(params = {})
        api_name = 'indices.exists_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_template/{name}", "methods" => ["HEAD"]}]}}
        request(api_name, api_spec, params, [:name])
      end
      alias :indices_exists_template? :indices_exists_template


      # indices.exists_type 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-types-exists.html", "description" => "Returns information about whether a particular document type exists. (DEPRECATED)"}
      def indices_exists_type(params = {})
        api_name = 'indices.exists_type'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_mapping/{type}", "methods" => ["HEAD"]}]}}
        request(api_name, api_spec, params, [:index, :type])
      end
      alias :indices_exists_type? :indices_exists_type


      # indices.flush 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-flush.html", "description" => "Performs the flush operation on one or more indices."}
      def indices_flush(params = {})
        api_name = 'indices.flush'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_flush", "methods" => ["POST", "GET"]}, {"path" => "/{index}/_flush", "methods" => ["POST", "GET"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.flush_synced 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-synced-flush-api.html", "description" => "Performs a synced flush operation on one or more indices. Synced flush is deprecated and will be removed in 8.0. Use flush instead"}
      def indices_flush_synced(params = {})
        api_name = 'indices.flush_synced'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_flush/synced", "methods" => ["POST", "GET"], "deprecated" => true}, {"path" => "/{index}/_flush/synced", "methods" => ["POST", "GET"], "deprecated" => true}]}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.forcemerge 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-forcemerge.html", "description" => "Performs the force merge operation on one or more indices."}
      def indices_forcemerge(params = {})
        api_name = 'indices.forcemerge'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_forcemerge", "methods" => ["POST"]}, {"path" => "/{index}/_forcemerge", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.freeze 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/freeze-index-api.html", "description" => "Freezes an index. A frozen index has almost no overhead on the cluster (except for maintaining its metadata in memory) and is read-only."}
      def indices_freeze(params = {})
        api_name = 'indices.freeze'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_freeze", "methods" => ["POST"], "deprecated" => true}]}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.get 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-index.html", "description" => "Returns information about one or more indices."}
      def indices_get(params = {})
        api_name = 'indices.get'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.get_alias 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html", "description" => "Returns an alias."}
      def indices_get_alias(params = {})
        api_name = 'indices.get_alias'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_alias", "methods" => ["GET"]}, {"path" => "/_alias/{name}", "methods" => ["GET"]}, {"path" => "/{index}/_alias/{name}", "methods" => ["GET"]}, {"path" => "/{index}/_alias", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:name, :index])
      end


      # indices.get_data_stream 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/data-streams.html", "description" => "Returns data streams."}
      def indices_get_data_stream(params = {})
        api_name = 'indices.get_data_stream'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_data_stream", "methods" => ["GET"]}, {"path" => "/_data_stream/{name}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # indices.get_field_mapping 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-field-mapping.html", "description" => "Returns mapping for one or more fields."}
      def indices_get_field_mapping(params = {})
        api_name = 'indices.get_field_mapping'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_mapping/field/{fields}", "methods" => ["GET"]}, {"path" => "/{index}/_mapping/field/{fields}", "methods" => ["GET"]}, {"path" => "/_mapping/{type}/field/{fields}", "methods" => ["GET"], "deprecated" => true}, {"path" => "/{index}/_mapping/{type}/field/{fields}", "methods" => ["GET"], "deprecated" => true}]}}
        request(api_name, api_spec, params, [:fields, :index, :type])
      end


      # indices.get_index_template 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description" => "Returns an index template."}
      def indices_get_index_template(params = {})
        api_name = 'indices.get_index_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_index_template", "methods" => ["GET"]}, {"path" => "/_index_template/{name}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # indices.get_mapping 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-mapping.html", "description" => "Returns mappings for one or more indices."}
      def indices_get_mapping(params = {})
        api_name = 'indices.get_mapping'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_mapping", "methods" => ["GET"]}, {"path" => "/{index}/_mapping", "methods" => ["GET"]}, {"path" => "/_mapping/{type}", "methods" => ["GET"], "deprecated" => true}, {"path" => "/{index}/_mapping/{type}", "methods" => ["GET"], "deprecated" => true}]}}
        request(api_name, api_spec, params, [:index, :type])
      end


      # indices.get_settings 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-settings.html", "description" => "Returns settings for one or more indices."}
      def indices_get_settings(params = {})
        api_name = 'indices.get_settings'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_settings", "methods" => ["GET"]}, {"path" => "/{index}/_settings", "methods" => ["GET"]}, {"path" => "/{index}/_settings/{name}", "methods" => ["GET"]}, {"path" => "/_settings/{name}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:index, :name])
      end


      # indices.get_template 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description" => "Returns an index template."}
      def indices_get_template(params = {})
        api_name = 'indices.get_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_template", "methods" => ["GET"]}, {"path" => "/_template/{name}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # indices.get_upgrade 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-upgrade.html", "description" => "DEPRECATED Returns a progress status of current upgrade."}
      def indices_get_upgrade(params = {})
        api_name = 'indices.get_upgrade'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_upgrade", "methods" => ["GET"], "deprecated" => true}, {"path" => "/{index}/_upgrade", "methods" => ["GET"], "deprecated" => true}]}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.migrate_to_data_stream 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/data-streams.html", "description" => "Migrates an alias to a data stream"}
      def indices_migrate_to_data_stream(params = {})
        api_name = 'indices.migrate_to_data_stream'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_data_stream/_migrate/{name}", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # indices.open 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-open-close.html", "description" => "Opens an index."}
      def indices_open(params = {})
        api_name = 'indices.open'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_open", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.promote_data_stream 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/data-streams.html", "description" => "Promotes a data stream from a replicated data stream managed by CCR to a regular data stream"}
      def indices_promote_data_stream(params = {})
        api_name = 'indices.promote_data_stream'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_data_stream/_promote/{name}", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # indices.put_alias 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html", "description" => "Creates or updates an alias."}
      def indices_put_alias(params = {})
        api_name = 'indices.put_alias'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_alias/{name}", "methods" => ["PUT", "POST"]}, {"path" => "/{index}/_aliases/{name}", "methods" => ["PUT", "POST"]}]}}
        request(api_name, api_spec, params, [:index, :name])
      end


      # indices.put_index_template 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description" => "Creates or updates an index template."}
      def indices_put_index_template(params = {})
        api_name = 'indices.put_index_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_index_template/{name}", "methods" => ["PUT", "POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:name])
      end


      # indices.put_mapping 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-put-mapping.html", "description" => "Updates the index mappings."}
      def indices_put_mapping(params = {})
        api_name = 'indices.put_mapping'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_mapping", "methods" => ["PUT", "POST"]}, {"path" => "/{index}/{type}/_mapping", "methods" => ["PUT", "POST"], "deprecated" => true}, {"path" => "/{index}/_mapping/{type}", "methods" => ["PUT", "POST"], "deprecated" => true}, {"path" => "/{index}/{type}/_mappings", "methods" => ["PUT", "POST"], "deprecated" => true}, {"path" => "/{index}/_mappings/{type}", "methods" => ["PUT", "POST"], "deprecated" => true}, {"path" => "/_mappings/{type}", "methods" => ["PUT", "POST"], "deprecated" => true}, {"path" => "/{index}/_mappings", "methods" => ["PUT", "POST"], "deprecated" => true}, {"path" => "/_mapping/{type}", "methods" => ["PUT", "POST"], "deprecated" => true}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:index, :type])
      end


      # indices.put_settings 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-update-settings.html", "description" => "Updates the index settings."}
      def indices_put_settings(params = {})
        api_name = 'indices.put_settings'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_settings", "methods" => ["PUT"]}, {"path" => "/{index}/_settings", "methods" => ["PUT"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.put_template 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description" => "Creates or updates an index template."}
      def indices_put_template(params = {})
        api_name = 'indices.put_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_template/{name}", "methods" => ["PUT", "POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:name])
      end


      # indices.recovery 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-recovery.html", "description" => "Returns information about ongoing index shard recoveries."}
      def indices_recovery(params = {})
        api_name = 'indices.recovery'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_recovery", "methods" => ["GET"]}, {"path" => "/{index}/_recovery", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.refresh 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-refresh.html", "description" => "Performs the refresh operation in one or more indices."}
      def indices_refresh(params = {})
        api_name = 'indices.refresh'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_refresh", "methods" => ["POST", "GET"]}, {"path" => "/{index}/_refresh", "methods" => ["POST", "GET"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.reload_search_analyzers 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-reload-analyzers.html", "description" => "Reloads an index's search analyzers and their resources."}
      def indices_reload_search_analyzers(params = {})
        api_name = 'indices.reload_search_analyzers'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_reload_search_analyzers", "methods" => ["GET", "POST"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.resolve_index 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-resolve-index-api.html", "description" => "Returns information about any matching indices, aliases, and data streams"}
      def indices_resolve_index(params = {})
        api_name = 'indices.resolve_index'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_resolve/index/{name}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # indices.rollover 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-rollover-index.html", "description" => "Updates an alias to point to a new index when the existing index\nis considered to be too large or too old."}
      def indices_rollover(params = {})
        api_name = 'indices.rollover'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{alias}/_rollover", "methods" => ["POST"]}, {"path" => "/{alias}/_rollover/{new_index}", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:alias, :new_index])
      end


      # indices.segments 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-segments.html", "description" => "Provides low-level information about segments in a Lucene index."}
      def indices_segments(params = {})
        api_name = 'indices.segments'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_segments", "methods" => ["GET"]}, {"path" => "/{index}/_segments", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.shard_stores 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-shards-stores.html", "description" => "Provides store information for shard copies of indices."}
      def indices_shard_stores(params = {})
        api_name = 'indices.shard_stores'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_shard_stores", "methods" => ["GET"]}, {"path" => "/{index}/_shard_stores", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.shrink 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-shrink-index.html", "description" => "Allow to shrink an existing index into a new index with fewer primary shards."}
      def indices_shrink(params = {})
        api_name = 'indices.shrink'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_shrink/{target}", "methods" => ["PUT", "POST"]}]}}
        request(api_name, api_spec, params, [:index, :target])
      end


      # indices.simulate_index_template 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description" => "Simulate matching the given index name against the index templates in the system"}
      def indices_simulate_index_template(params = {})
        api_name = 'indices.simulate_index_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_index_template/_simulate_index/{name}", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # indices.simulate_template 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html", "description" => "Simulate resolving the given template name or body"}
      def indices_simulate_template(params = {})
        api_name = 'indices.simulate_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_index_template/_simulate", "methods" => ["POST"]}, {"path" => "/_index_template/_simulate/{name}", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # indices.split 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-split-index.html", "description" => "Allows you to split an existing index into a new index with more primary shards."}
      def indices_split(params = {})
        api_name = 'indices.split'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_split/{target}", "methods" => ["PUT", "POST"]}]}}
        request(api_name, api_spec, params, [:index, :target])
      end


      # indices.stats 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-stats.html", "description" => "Provides statistics on operations happening in an index."}
      def indices_stats(params = {})
        api_name = 'indices.stats'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_stats", "methods" => ["GET"]}, {"path" => "/_stats/{metric}", "methods" => ["GET"]}, {"path" => "/{index}/_stats", "methods" => ["GET"]}, {"path" => "/{index}/_stats/{metric}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:metric, :index])
      end


      # indices.unfreeze 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/unfreeze-index-api.html", "description" => "Unfreezes an index. When a frozen index is unfrozen, the index goes through the normal recovery process and becomes writeable again."}
      def indices_unfreeze(params = {})
        api_name = 'indices.unfreeze'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_unfreeze", "methods" => ["POST"], "deprecated" => true}]}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.update_aliases 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html", "description" => "Updates index aliases."}
      def indices_update_aliases(params = {})
        api_name = 'indices.update_aliases'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_aliases", "methods" => ["POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [])
      end


      # indices.upgrade 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/indices-upgrade.html", "description" => "DEPRECATED Upgrades to the current version of Lucene."}
      def indices_upgrade(params = {})
        api_name = 'indices.upgrade'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_upgrade", "methods" => ["POST"], "deprecated" => true}, {"path" => "/{index}/_upgrade", "methods" => ["POST"], "deprecated" => true}]}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.validate_query 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/search-validate.html", "description" => "Allows a user to validate a potentially expensive query without executing it."}
      def indices_validate_query(params = {})
        api_name = 'indices.validate_query'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_validate/query", "methods" => ["GET", "POST"]}, {"path" => "/{index}/_validate/query", "methods" => ["GET", "POST"]}, {"path" => "/{index}/{type}/_validate/query", "methods" => ["GET", "POST"], "deprecated" => true}]}}
        request(api_name, api_spec, params, [:index, :type])
      end


      # info 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html", "description" => "Returns basic information about the cluster."}
      def info(params = {})
        api_name = 'info'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # ingest.delete_pipeline 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/delete-pipeline-api.html", "description" => "Deletes a pipeline."}
      def ingest_delete_pipeline(params = {})
        api_name = 'ingest.delete_pipeline'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ingest/pipeline/{id}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # ingest.geo_ip_stats 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/geoip-stats-api.html", "description" => "Returns statistical information about geoip databases"}
      def ingest_geo_ip_stats(params = {})
        api_name = 'ingest.geo_ip_stats'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ingest/geoip/stats", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # ingest.get_pipeline 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/get-pipeline-api.html", "description" => "Returns a pipeline."}
      def ingest_get_pipeline(params = {})
        api_name = 'ingest.get_pipeline'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ingest/pipeline", "methods" => ["GET"]}, {"path" => "/_ingest/pipeline/{id}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # ingest.processor_grok 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/grok-processor.html#grok-processor-rest-get", "description" => "Returns a list of the built-in patterns."}
      def ingest_processor_grok(params = {})
        api_name = 'ingest.processor_grok'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ingest/processor/grok", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # ingest.put_pipeline 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/put-pipeline-api.html", "description" => "Creates or updates a pipeline."}
      def ingest_put_pipeline(params = {})
        api_name = 'ingest.put_pipeline'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ingest/pipeline/{id}", "methods" => ["PUT"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:id])
      end


      # ingest.simulate 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/simulate-pipeline-api.html", "description" => "Allows to simulate a pipeline with example documents."}
      def ingest_simulate(params = {})
        api_name = 'ingest.simulate'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ingest/pipeline/_simulate", "methods" => ["GET", "POST"]}, {"path" => "/_ingest/pipeline/{id}/_simulate", "methods" => ["GET", "POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:id])
      end


      # license.delete 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/delete-license.html", "description" => "Deletes licensing information for the cluster"}
      def license_delete(params = {})
        api_name = 'license.delete'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_license", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [])
      end


      # license.get 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/get-license.html", "description" => "Retrieves licensing information for the cluster"}
      def license_get(params = {})
        api_name = 'license.get'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_license", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # license.get_basic_status 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/get-basic-status.html", "description" => "Retrieves information about the status of the basic license."}
      def license_get_basic_status(params = {})
        api_name = 'license.get_basic_status'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_license/basic_status", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # license.get_trial_status 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/get-trial-status.html", "description" => "Retrieves information about the status of the trial license."}
      def license_get_trial_status(params = {})
        api_name = 'license.get_trial_status'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_license/trial_status", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # license.post 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/update-license.html", "description" => "Updates the license for the cluster."}
      def license_post(params = {})
        api_name = 'license.post'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_license", "methods" => ["PUT", "POST"]}]}}
        request(api_name, api_spec, params, [])
      end


      # license.post_start_basic 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/start-basic.html", "description" => "Starts an indefinite basic license."}
      def license_post_start_basic(params = {})
        api_name = 'license.post_start_basic'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_license/start_basic", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [])
      end


      # license.post_start_trial 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/start-trial.html", "description" => "starts a limited time trial license."}
      def license_post_start_trial(params = {})
        api_name = 'license.post_start_trial'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_license/start_trial", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [])
      end


      # logstash.delete_pipeline 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/logstash-api-delete-pipeline.html", "description" => "Deletes Logstash Pipelines used by Central Management"}
      def logstash_delete_pipeline(params = {})
        api_name = 'logstash.delete_pipeline'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_logstash/pipeline/{id}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # logstash.get_pipeline 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/logstash-api-get-pipeline.html", "description" => "Retrieves Logstash Pipelines used by Central Management"}
      def logstash_get_pipeline(params = {})
        api_name = 'logstash.get_pipeline'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_logstash/pipeline/{id}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # logstash.put_pipeline 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/logstash-api-put-pipeline.html", "description" => "Adds and updates Logstash Pipelines used for Central Management"}
      def logstash_put_pipeline(params = {})
        api_name = 'logstash.put_pipeline'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_logstash/pipeline/{id}", "methods" => ["PUT"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:id])
      end


      # mget 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-multi-get.html", "description" => "Allows to get multiple documents in one request."}
      def mget(params = {})
        api_name = 'mget'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_mget", "methods" => ["GET", "POST"]}, {"path" => "/{index}/_mget", "methods" => ["GET", "POST"]}, {"path" => "/{index}/{type}/_mget", "methods" => ["GET", "POST"], "deprecated" => true}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:index, :type])
      end


      # migration.deprecations 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/migration-api-deprecation.html", "description" => "Retrieves information about different cluster, node, and index level settings that use deprecated features that will be removed or changed in the next major version."}
      def migration_deprecations(params = {})
        api_name = 'migration.deprecations'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_migration/deprecations", "methods" => ["GET"]}, {"path" => "/{index}/_migration/deprecations", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # ml.close_job 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-close-job.html", "description" => "Closes one or more anomaly detection jobs. A job can be opened and closed multiple times throughout its lifecycle."}
      def ml_close_job(params = {})
        api_name = 'ml.close_job'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/anomaly_detectors/{job_id}/_close", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:job_id])
      end


      # ml.delete_calendar 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-calendar.html", "description" => "Deletes a calendar."}
      def ml_delete_calendar(params = {})
        api_name = 'ml.delete_calendar'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/calendars/{calendar_id}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:calendar_id])
      end


      # ml.delete_calendar_event 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-calendar-event.html", "description" => "Deletes scheduled events from a calendar."}
      def ml_delete_calendar_event(params = {})
        api_name = 'ml.delete_calendar_event'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/calendars/{calendar_id}/events/{event_id}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:calendar_id, :event_id])
      end


      # ml.delete_calendar_job 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-calendar-job.html", "description" => "Deletes anomaly detection jobs from a calendar."}
      def ml_delete_calendar_job(params = {})
        api_name = 'ml.delete_calendar_job'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/calendars/{calendar_id}/jobs/{job_id}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:calendar_id, :job_id])
      end


      # ml.delete_data_frame_analytics 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/delete-dfanalytics.html", "description" => "Deletes an existing data frame analytics job."}
      def ml_delete_data_frame_analytics(params = {})
        api_name = 'ml.delete_data_frame_analytics'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/data_frame/analytics/{id}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # ml.delete_datafeed 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-datafeed.html", "description" => "Deletes an existing datafeed."}
      def ml_delete_datafeed(params = {})
        api_name = 'ml.delete_datafeed'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/datafeeds/{datafeed_id}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:datafeed_id])
      end


      # ml.delete_expired_data 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-expired-data.html", "description" => "Deletes expired and unused machine learning data."}
      def ml_delete_expired_data(params = {})
        api_name = 'ml.delete_expired_data'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/_delete_expired_data/{job_id}", "methods" => ["DELETE"]}, {"path" => "/_ml/_delete_expired_data", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:job_id])
      end


      # ml.delete_filter 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-filter.html", "description" => "Deletes a filter."}
      def ml_delete_filter(params = {})
        api_name = 'ml.delete_filter'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/filters/{filter_id}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:filter_id])
      end


      # ml.delete_forecast 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-forecast.html", "description" => "Deletes forecasts from a machine learning job."}
      def ml_delete_forecast(params = {})
        api_name = 'ml.delete_forecast'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/anomaly_detectors/{job_id}/_forecast", "methods" => ["DELETE"]}, {"path" => "/_ml/anomaly_detectors/{job_id}/_forecast/{forecast_id}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:job_id, :forecast_id])
      end


      # ml.delete_job 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-job.html", "description" => "Deletes an existing anomaly detection job."}
      def ml_delete_job(params = {})
        api_name = 'ml.delete_job'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/anomaly_detectors/{job_id}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:job_id])
      end


      # ml.delete_model_snapshot 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-delete-snapshot.html", "description" => "Deletes an existing model snapshot."}
      def ml_delete_model_snapshot(params = {})
        api_name = 'ml.delete_model_snapshot'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/anomaly_detectors/{job_id}/model_snapshots/{snapshot_id}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:job_id, :snapshot_id])
      end


      # ml.delete_trained_model 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/delete-trained-models.html", "description" => "Deletes an existing trained inference model that is currently not referenced by an ingest pipeline."}
      def ml_delete_trained_model(params = {})
        api_name = 'ml.delete_trained_model'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/trained_models/{model_id}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:model_id])
      end


      # ml.delete_trained_model_alias 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/delete-trained-models-aliases.html", "description" => "Deletes a model alias that refers to the trained model"}
      def ml_delete_trained_model_alias(params = {})
        api_name = 'ml.delete_trained_model_alias'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/trained_models/{model_id}/model_aliases/{model_alias}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:model_alias, :model_id])
      end


      # ml.estimate_model_memory 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-apis.html", "description" => "Estimates the model memory"}
      def ml_estimate_model_memory(params = {})
        api_name = 'ml.estimate_model_memory'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/anomaly_detectors/_estimate_model_memory", "methods" => ["POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [])
      end


      # ml.evaluate_data_frame 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/evaluate-dfanalytics.html", "description" => "Evaluates the data frame analytics for an annotated index."}
      def ml_evaluate_data_frame(params = {})
        api_name = 'ml.evaluate_data_frame'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/data_frame/_evaluate", "methods" => ["POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [])
      end


      # ml.explain_data_frame_analytics 
      # {"url" => "http://www.elastic.co/guide/en/elasticsearch/reference/current/explain-dfanalytics.html", "description" => "Explains a data frame analytics config."}
      def ml_explain_data_frame_analytics(params = {})
        api_name = 'ml.explain_data_frame_analytics'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/data_frame/analytics/_explain", "methods" => ["GET", "POST"]}, {"path" => "/_ml/data_frame/analytics/{id}/_explain", "methods" => ["GET", "POST"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # ml.find_file_structure 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/find-structure.html", "description" => "Finds the structure of a text file. The text file must contain data that is suitable to be ingested into Elasticsearch."}
      def ml_find_file_structure(params = {})
        api_name = 'ml.find_file_structure'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/find_file_structure", "methods" => ["POST"], "deprecated" => true}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [])
      end


      # ml.flush_job 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-flush-job.html", "description" => "Forces any buffered data to be processed by the job."}
      def ml_flush_job(params = {})
        api_name = 'ml.flush_job'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/anomaly_detectors/{job_id}/_flush", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:job_id])
      end


      # ml.forecast 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-forecast.html", "description" => "Predicts the future behavior of a time series by using its historical behavior."}
      def ml_forecast(params = {})
        api_name = 'ml.forecast'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/anomaly_detectors/{job_id}/_forecast", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:job_id])
      end


      # ml.get_buckets 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-bucket.html", "description" => "Retrieves anomaly detection job results for one or more buckets."}
      def ml_get_buckets(params = {})
        api_name = 'ml.get_buckets'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/anomaly_detectors/{job_id}/results/buckets/{timestamp}", "methods" => ["GET", "POST"]}, {"path" => "/_ml/anomaly_detectors/{job_id}/results/buckets", "methods" => ["GET", "POST"]}]}}
        request(api_name, api_spec, params, [:job_id, :timestamp])
      end


      # ml.get_calendar_events 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-calendar-event.html", "description" => "Retrieves information about the scheduled events in calendars."}
      def ml_get_calendar_events(params = {})
        api_name = 'ml.get_calendar_events'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/calendars/{calendar_id}/events", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:calendar_id])
      end


      # ml.get_calendars 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-calendar.html", "description" => "Retrieves configuration information for calendars."}
      def ml_get_calendars(params = {})
        api_name = 'ml.get_calendars'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/calendars", "methods" => ["GET", "POST"]}, {"path" => "/_ml/calendars/{calendar_id}", "methods" => ["GET", "POST"]}]}}
        request(api_name, api_spec, params, [:calendar_id])
      end


      # ml.get_categories 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-category.html", "description" => "Retrieves anomaly detection job results for one or more categories."}
      def ml_get_categories(params = {})
        api_name = 'ml.get_categories'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/anomaly_detectors/{job_id}/results/categories/{category_id}", "methods" => ["GET", "POST"]}, {"path" => "/_ml/anomaly_detectors/{job_id}/results/categories/", "methods" => ["GET", "POST"]}]}}
        request(api_name, api_spec, params, [:job_id, :category_id])
      end


      # ml.get_data_frame_analytics 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/get-dfanalytics.html", "description" => "Retrieves configuration information for data frame analytics jobs."}
      def ml_get_data_frame_analytics(params = {})
        api_name = 'ml.get_data_frame_analytics'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/data_frame/analytics/{id}", "methods" => ["GET"]}, {"path" => "/_ml/data_frame/analytics", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # ml.get_data_frame_analytics_stats 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/get-dfanalytics-stats.html", "description" => "Retrieves usage information for data frame analytics jobs."}
      def ml_get_data_frame_analytics_stats(params = {})
        api_name = 'ml.get_data_frame_analytics_stats'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/data_frame/analytics/_stats", "methods" => ["GET"]}, {"path" => "/_ml/data_frame/analytics/{id}/_stats", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # ml.get_datafeed_stats 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-datafeed-stats.html", "description" => "Retrieves usage information for datafeeds."}
      def ml_get_datafeed_stats(params = {})
        api_name = 'ml.get_datafeed_stats'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/datafeeds/{datafeed_id}/_stats", "methods" => ["GET"]}, {"path" => "/_ml/datafeeds/_stats", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:datafeed_id])
      end


      # ml.get_datafeeds 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-datafeed.html", "description" => "Retrieves configuration information for datafeeds."}
      def ml_get_datafeeds(params = {})
        api_name = 'ml.get_datafeeds'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/datafeeds/{datafeed_id}", "methods" => ["GET"]}, {"path" => "/_ml/datafeeds", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:datafeed_id])
      end


      # ml.get_filters 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-filter.html", "description" => "Retrieves filters."}
      def ml_get_filters(params = {})
        api_name = 'ml.get_filters'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/filters", "methods" => ["GET"]}, {"path" => "/_ml/filters/{filter_id}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:filter_id])
      end


      # ml.get_influencers 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-influencer.html", "description" => "Retrieves anomaly detection job results for one or more influencers."}
      def ml_get_influencers(params = {})
        api_name = 'ml.get_influencers'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/anomaly_detectors/{job_id}/results/influencers", "methods" => ["GET", "POST"]}]}}
        request(api_name, api_spec, params, [:job_id])
      end


      # ml.get_job_stats 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-job-stats.html", "description" => "Retrieves usage information for anomaly detection jobs."}
      def ml_get_job_stats(params = {})
        api_name = 'ml.get_job_stats'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/anomaly_detectors/_stats", "methods" => ["GET"]}, {"path" => "/_ml/anomaly_detectors/{job_id}/_stats", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:job_id])
      end


      # ml.get_jobs 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-job.html", "description" => "Retrieves configuration information for anomaly detection jobs."}
      def ml_get_jobs(params = {})
        api_name = 'ml.get_jobs'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/anomaly_detectors/{job_id}", "methods" => ["GET"]}, {"path" => "/_ml/anomaly_detectors", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:job_id])
      end


      # ml.get_model_snapshots 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-snapshot.html", "description" => "Retrieves information about model snapshots."}
      def ml_get_model_snapshots(params = {})
        api_name = 'ml.get_model_snapshots'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/anomaly_detectors/{job_id}/model_snapshots/{snapshot_id}", "methods" => ["GET", "POST"]}, {"path" => "/_ml/anomaly_detectors/{job_id}/model_snapshots", "methods" => ["GET", "POST"]}]}}
        request(api_name, api_spec, params, [:job_id, :snapshot_id])
      end


      # ml.get_overall_buckets 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-overall-buckets.html", "description" => "Retrieves overall bucket results that summarize the bucket results of multiple anomaly detection jobs."}
      def ml_get_overall_buckets(params = {})
        api_name = 'ml.get_overall_buckets'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/anomaly_detectors/{job_id}/results/overall_buckets", "methods" => ["GET", "POST"]}]}}
        request(api_name, api_spec, params, [:job_id])
      end


      # ml.get_records 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-get-record.html", "description" => "Retrieves anomaly records for an anomaly detection job."}
      def ml_get_records(params = {})
        api_name = 'ml.get_records'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/anomaly_detectors/{job_id}/results/records", "methods" => ["GET", "POST"]}]}}
        request(api_name, api_spec, params, [:job_id])
      end


      # ml.get_trained_models 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/get-trained-models.html", "description" => "Retrieves configuration information for a trained inference model."}
      def ml_get_trained_models(params = {})
        api_name = 'ml.get_trained_models'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/trained_models/{model_id}", "methods" => ["GET"]}, {"path" => "/_ml/trained_models", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:model_id])
      end


      # ml.get_trained_models_stats 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/get-trained-models-stats.html", "description" => "Retrieves usage information for trained inference models."}
      def ml_get_trained_models_stats(params = {})
        api_name = 'ml.get_trained_models_stats'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/trained_models/{model_id}/_stats", "methods" => ["GET"]}, {"path" => "/_ml/trained_models/_stats", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:model_id])
      end


      # ml.info 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/get-ml-info.html", "description" => "Returns defaults and limits used by machine learning."}
      def ml_info(params = {})
        api_name = 'ml.info'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/info", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # ml.open_job 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-open-job.html", "description" => "Opens one or more anomaly detection jobs."}
      def ml_open_job(params = {})
        api_name = 'ml.open_job'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/anomaly_detectors/{job_id}/_open", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:job_id])
      end


      # ml.post_calendar_events 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-post-calendar-event.html", "description" => "Posts scheduled events in a calendar."}
      def ml_post_calendar_events(params = {})
        api_name = 'ml.post_calendar_events'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/calendars/{calendar_id}/events", "methods" => ["POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:calendar_id])
      end


      # ml.post_data 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-post-data.html", "description" => "Sends data to an anomaly detection job for analysis."}
      def ml_post_data(params = {})
        api_name = 'ml.post_data'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/anomaly_detectors/{job_id}/_data", "methods" => ["POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:job_id])
      end


      # ml.preview_data_frame_analytics 
      # {"url" => "http://www.elastic.co/guide/en/elasticsearch/reference/current/preview-dfanalytics.html", "description" => "Previews that will be analyzed given a data frame analytics config."}
      def ml_preview_data_frame_analytics(params = {})
        api_name = 'ml.preview_data_frame_analytics'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/data_frame/analytics/_preview", "methods" => ["GET", "POST"]}, {"path" => "/_ml/data_frame/analytics/{id}/_preview", "methods" => ["GET", "POST"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # ml.preview_datafeed 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-preview-datafeed.html", "description" => "Previews a datafeed."}
      def ml_preview_datafeed(params = {})
        api_name = 'ml.preview_datafeed'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/datafeeds/{datafeed_id}/_preview", "methods" => ["GET", "POST"]}, {"path" => "/_ml/datafeeds/_preview", "methods" => ["GET", "POST"]}]}}
        request(api_name, api_spec, params, [:datafeed_id])
      end


      # ml.put_calendar 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-put-calendar.html", "description" => "Instantiates a calendar."}
      def ml_put_calendar(params = {})
        api_name = 'ml.put_calendar'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/calendars/{calendar_id}", "methods" => ["PUT"]}]}}
        request(api_name, api_spec, params, [:calendar_id])
      end


      # ml.put_calendar_job 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-put-calendar-job.html", "description" => "Adds an anomaly detection job to a calendar."}
      def ml_put_calendar_job(params = {})
        api_name = 'ml.put_calendar_job'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/calendars/{calendar_id}/jobs/{job_id}", "methods" => ["PUT"]}]}}
        request(api_name, api_spec, params, [:calendar_id, :job_id])
      end


      # ml.put_data_frame_analytics 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/put-dfanalytics.html", "description" => "Instantiates a data frame analytics job."}
      def ml_put_data_frame_analytics(params = {})
        api_name = 'ml.put_data_frame_analytics'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/data_frame/analytics/{id}", "methods" => ["PUT"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:id])
      end


      # ml.put_datafeed 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-put-datafeed.html", "description" => "Instantiates a datafeed."}
      def ml_put_datafeed(params = {})
        api_name = 'ml.put_datafeed'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/datafeeds/{datafeed_id}", "methods" => ["PUT"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:datafeed_id])
      end


      # ml.put_filter 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-put-filter.html", "description" => "Instantiates a filter."}
      def ml_put_filter(params = {})
        api_name = 'ml.put_filter'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/filters/{filter_id}", "methods" => ["PUT"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:filter_id])
      end


      # ml.put_job 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-put-job.html", "description" => "Instantiates an anomaly detection job."}
      def ml_put_job(params = {})
        api_name = 'ml.put_job'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/anomaly_detectors/{job_id}", "methods" => ["PUT"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:job_id])
      end


      # ml.put_trained_model 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/put-trained-models.html", "description" => "Creates an inference trained model."}
      def ml_put_trained_model(params = {})
        api_name = 'ml.put_trained_model'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/trained_models/{model_id}", "methods" => ["PUT"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:model_id])
      end


      # ml.put_trained_model_alias 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/put-trained-models-aliases.html", "description" => "Creates a new model alias (or reassigns an existing one) to refer to the trained model"}
      def ml_put_trained_model_alias(params = {})
        api_name = 'ml.put_trained_model_alias'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/trained_models/{model_id}/model_aliases/{model_alias}", "methods" => ["PUT"]}]}}
        request(api_name, api_spec, params, [:model_alias, :model_id])
      end


      # ml.reset_job 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-reset-job.html", "description" => "Resets an existing anomaly detection job."}
      def ml_reset_job(params = {})
        api_name = 'ml.reset_job'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/anomaly_detectors/{job_id}/_reset", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:job_id])
      end


      # ml.revert_model_snapshot 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-revert-snapshot.html", "description" => "Reverts to a specific snapshot."}
      def ml_revert_model_snapshot(params = {})
        api_name = 'ml.revert_model_snapshot'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/anomaly_detectors/{job_id}/model_snapshots/{snapshot_id}/_revert", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:job_id, :snapshot_id])
      end


      # ml.set_upgrade_mode 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-set-upgrade-mode.html", "description" => "Sets a cluster wide upgrade_mode setting that prepares machine learning indices for an upgrade."}
      def ml_set_upgrade_mode(params = {})
        api_name = 'ml.set_upgrade_mode'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/set_upgrade_mode", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [])
      end


      # ml.start_data_frame_analytics 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/start-dfanalytics.html", "description" => "Starts a data frame analytics job."}
      def ml_start_data_frame_analytics(params = {})
        api_name = 'ml.start_data_frame_analytics'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/data_frame/analytics/{id}/_start", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # ml.start_datafeed 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-start-datafeed.html", "description" => "Starts one or more datafeeds."}
      def ml_start_datafeed(params = {})
        api_name = 'ml.start_datafeed'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/datafeeds/{datafeed_id}/_start", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:datafeed_id])
      end


      # ml.stop_data_frame_analytics 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/stop-dfanalytics.html", "description" => "Stops one or more data frame analytics jobs."}
      def ml_stop_data_frame_analytics(params = {})
        api_name = 'ml.stop_data_frame_analytics'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/data_frame/analytics/{id}/_stop", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # ml.stop_datafeed 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-stop-datafeed.html", "description" => "Stops one or more datafeeds."}
      def ml_stop_datafeed(params = {})
        api_name = 'ml.stop_datafeed'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/datafeeds/{datafeed_id}/_stop", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:datafeed_id])
      end


      # ml.update_data_frame_analytics 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/update-dfanalytics.html", "description" => "Updates certain properties of a data frame analytics job."}
      def ml_update_data_frame_analytics(params = {})
        api_name = 'ml.update_data_frame_analytics'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/data_frame/analytics/{id}/_update", "methods" => ["POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:id])
      end


      # ml.update_datafeed 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-update-datafeed.html", "description" => "Updates certain properties of a datafeed."}
      def ml_update_datafeed(params = {})
        api_name = 'ml.update_datafeed'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/datafeeds/{datafeed_id}/_update", "methods" => ["POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:datafeed_id])
      end


      # ml.update_filter 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-update-filter.html", "description" => "Updates the description of a filter, adds items, or removes items."}
      def ml_update_filter(params = {})
        api_name = 'ml.update_filter'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/filters/{filter_id}/_update", "methods" => ["POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:filter_id])
      end


      # ml.update_job 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-update-job.html", "description" => "Updates certain properties of an anomaly detection job."}
      def ml_update_job(params = {})
        api_name = 'ml.update_job'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/anomaly_detectors/{job_id}/_update", "methods" => ["POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:job_id])
      end


      # ml.update_model_snapshot 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-update-snapshot.html", "description" => "Updates certain properties of a snapshot."}
      def ml_update_model_snapshot(params = {})
        api_name = 'ml.update_model_snapshot'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/anomaly_detectors/{job_id}/model_snapshots/{snapshot_id}/_update", "methods" => ["POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:job_id, :snapshot_id])
      end


      # ml.upgrade_job_snapshot 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/ml-upgrade-job-model-snapshot.html", "description" => "Upgrades a given job snapshot to the current major version."}
      def ml_upgrade_job_snapshot(params = {})
        api_name = 'ml.upgrade_job_snapshot'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/anomaly_detectors/{job_id}/model_snapshots/{snapshot_id}/_upgrade", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:job_id, :snapshot_id])
      end


      # ml.validate 
      # {"url" => "https://www.elastic.co/guide/en/machine-learning/current/ml-jobs.html", "description" => "Validates an anomaly detection job."}
      def ml_validate(params = {})
        api_name = 'ml.validate'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/anomaly_detectors/_validate", "methods" => ["POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [])
      end


      # ml.validate_detector 
      # {"url" => "https://www.elastic.co/guide/en/machine-learning/current/ml-jobs.html", "description" => "Validates an anomaly detection detector."}
      def ml_validate_detector(params = {})
        api_name = 'ml.validate_detector'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ml/anomaly_detectors/_validate/detector", "methods" => ["POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [])
      end


      # monitoring.bulk 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/monitor-elasticsearch-cluster.html", "description" => "Used by the monitoring features to send monitoring data."}
      def monitoring_bulk(params = {})
        api_name = 'monitoring.bulk'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_monitoring/bulk", "methods" => ["POST", "PUT"]}, {"path" => "/_monitoring/{type}/bulk", "methods" => ["POST", "PUT"], "deprecated" => true}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:type])
      end


      # msearch 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/search-multi-search.html", "description" => "Allows to execute several search operations in one request."}
      def msearch(params = {})
        api_name = 'msearch'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_msearch", "methods" => ["GET", "POST"]}, {"path" => "/{index}/_msearch", "methods" => ["GET", "POST"]}, {"path" => "/{index}/{type}/_msearch", "methods" => ["GET", "POST"], "deprecated" => true}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:index, :type])
      end


      # msearch_template 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/search-multi-search.html", "description" => "Allows to execute several search template operations in one request."}
      def msearch_template(params = {})
        api_name = 'msearch_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_msearch/template", "methods" => ["GET", "POST"]}, {"path" => "/{index}/_msearch/template", "methods" => ["GET", "POST"]}, {"path" => "/{index}/{type}/_msearch/template", "methods" => ["GET", "POST"], "deprecated" => true}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:index, :type])
      end


      # mtermvectors 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-multi-termvectors.html", "description" => "Returns multiple termvectors in one request."}
      def mtermvectors(params = {})
        api_name = 'mtermvectors'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_mtermvectors", "methods" => ["GET", "POST"]}, {"path" => "/{index}/_mtermvectors", "methods" => ["GET", "POST"]}, {"path" => "/{index}/{type}/_mtermvectors", "methods" => ["GET", "POST"], "deprecated" => true}]}}
        request(api_name, api_spec, params, [:index, :type])
      end


      # nodes.hot_threads 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-hot-threads.html", "description" => "Returns information about hot threads on each node in the cluster."}
      def nodes_hot_threads(params = {})
        api_name = 'nodes.hot_threads'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_nodes/hot_threads", "methods" => ["GET"]}, {"path" => "/_nodes/{node_id}/hot_threads", "methods" => ["GET"]}, {"path" => "/_cluster/nodes/hotthreads", "methods" => ["GET"], "deprecated" => true}, {"path" => "/_cluster/nodes/{node_id}/hotthreads", "methods" => ["GET"], "deprecated" => true}, {"path" => "/_nodes/hotthreads", "methods" => ["GET"], "deprecated" => true}, {"path" => "/_nodes/{node_id}/hotthreads", "methods" => ["GET"], "deprecated" => true}, {"path" => "/_cluster/nodes/hot_threads", "methods" => ["GET"], "deprecated" => true}, {"path" => "/_cluster/nodes/{node_id}/hot_threads", "methods" => ["GET"], "deprecated" => true}]}}
        request(api_name, api_spec, params, [:node_id])
      end


      # nodes.info 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-info.html", "description" => "Returns information about nodes in the cluster."}
      def nodes_info(params = {})
        api_name = 'nodes.info'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_nodes", "methods" => ["GET"]}, {"path" => "/_nodes/{node_id}", "methods" => ["GET"]}, {"path" => "/_nodes/{metric}", "methods" => ["GET"]}, {"path" => "/_nodes/{node_id}/{metric}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:node_id, :metric])
      end


      # nodes.reload_secure_settings 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/secure-settings.html#reloadable-secure-settings", "description" => "Reloads secure settings."}
      def nodes_reload_secure_settings(params = {})
        api_name = 'nodes.reload_secure_settings'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_nodes/reload_secure_settings", "methods" => ["POST"]}, {"path" => "/_nodes/{node_id}/reload_secure_settings", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:node_id])
      end


      # nodes.stats 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-stats.html", "description" => "Returns statistical information about nodes in the cluster."}
      def nodes_stats(params = {})
        api_name = 'nodes.stats'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_nodes/stats", "methods" => ["GET"]}, {"path" => "/_nodes/{node_id}/stats", "methods" => ["GET"]}, {"path" => "/_nodes/stats/{metric}", "methods" => ["GET"]}, {"path" => "/_nodes/{node_id}/stats/{metric}", "methods" => ["GET"]}, {"path" => "/_nodes/stats/{metric}/{index_metric}", "methods" => ["GET"]}, {"path" => "/_nodes/{node_id}/stats/{metric}/{index_metric}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:node_id, :metric, :index_metric])
      end


      # nodes.usage 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-usage.html", "description" => "Returns low-level information about REST actions usage on nodes."}
      def nodes_usage(params = {})
        api_name = 'nodes.usage'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_nodes/usage", "methods" => ["GET"]}, {"path" => "/_nodes/{node_id}/usage", "methods" => ["GET"]}, {"path" => "/_nodes/usage/{metric}", "methods" => ["GET"]}, {"path" => "/_nodes/{node_id}/usage/{metric}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:node_id, :metric])
      end


      # open_point_in_time 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/point-in-time-api.html", "description" => "Open a point in time that can be used in subsequent searches"}
      def open_point_in_time(params = {})
        api_name = 'open_point_in_time'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_pit", "methods" => ["POST"]}, {"path" => "/{index}/_pit", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # ping 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html", "description" => "Returns whether the cluster is running."}
      def ping(params = {})
        api_name = 'ping'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/", "methods" => ["HEAD"]}]}}
        request(api_name, api_spec, params, [])
      end
      alias :ping? :ping


      # put_script 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-scripting.html", "description" => "Creates or updates a script."}
      def put_script(params = {})
        api_name = 'put_script'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_scripts/{id}", "methods" => ["PUT", "POST"]}, {"path" => "/_scripts/{id}/{context}", "methods" => ["PUT", "POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:id, :context])
      end


      # rank_eval 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/search-rank-eval.html", "description" => "Allows to evaluate the quality of ranked search results over a set of typical search queries"}
      def rank_eval(params = {})
        api_name = 'rank_eval'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_rank_eval", "methods" => ["GET", "POST"]}, {"path" => "/{index}/_rank_eval", "methods" => ["GET", "POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:index])
      end


      # reindex 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-reindex.html", "description" => "Allows to copy documents from one index to another, optionally filtering the source\ndocuments by a query, changing the destination index settings, or fetching the\ndocuments from a remote cluster."}
      def reindex(params = {})
        api_name = 'reindex'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_reindex", "methods" => ["POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [])
      end


      # reindex_rethrottle 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-reindex.html", "description" => "Changes the number of requests per second for a particular Reindex operation."}
      def reindex_rethrottle(params = {})
        api_name = 'reindex_rethrottle'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_reindex/{task_id}/_rethrottle", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:task_id])
      end


      # render_search_template 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/render-search-template-api.html", "description" => "Allows to use the Mustache language to pre-render a search definition."}
      def render_search_template(params = {})
        api_name = 'render_search_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_render/template", "methods" => ["GET", "POST"]}, {"path" => "/_render/template/{id}", "methods" => ["GET", "POST"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # rollup.delete_job 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-delete-job.html", "description" => "Deletes an existing rollup job."}
      def rollup_delete_job(params = {})
        api_name = 'rollup.delete_job'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_rollup/job/{id}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # rollup.get_jobs 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-get-job.html", "description" => "Retrieves the configuration, stats, and status of rollup jobs."}
      def rollup_get_jobs(params = {})
        api_name = 'rollup.get_jobs'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_rollup/job/{id}", "methods" => ["GET"]}, {"path" => "/_rollup/job/", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # rollup.get_rollup_caps 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-get-rollup-caps.html", "description" => "Returns the capabilities of any rollup jobs that have been configured for a specific index or index pattern."}
      def rollup_get_rollup_caps(params = {})
        api_name = 'rollup.get_rollup_caps'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_rollup/data/{id}", "methods" => ["GET"]}, {"path" => "/_rollup/data/", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # rollup.get_rollup_index_caps 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-get-rollup-index-caps.html", "description" => "Returns the rollup capabilities of all jobs inside of a rollup index (e.g. the index where rollup data is stored)."}
      def rollup_get_rollup_index_caps(params = {})
        api_name = 'rollup.get_rollup_index_caps'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_rollup/data", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # rollup.put_job 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-put-job.html", "description" => "Creates a rollup job."}
      def rollup_put_job(params = {})
        api_name = 'rollup.put_job'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_rollup/job/{id}", "methods" => ["PUT"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:id])
      end


      # rollup.rollup 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/xpack-rollup.html", "description" => "Rollup an index"}
      def rollup_rollup(params = {})
        api_name = 'rollup.rollup'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_rollup/{rollup_index}", "methods" => ["POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:index, :rollup_index])
      end


      # rollup.rollup_search 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-search.html", "description" => "Enables searching rolled-up data using the standard query DSL."}
      def rollup_rollup_search(params = {})
        api_name = 'rollup.rollup_search'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_rollup_search", "methods" => ["GET", "POST"]}, {"path" => "/{index}/{type}/_rollup_search", "methods" => ["GET", "POST"], "deprecated" => true}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:index, :type])
      end


      # rollup.start_job 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-start-job.html", "description" => "Starts an existing, stopped rollup job."}
      def rollup_start_job(params = {})
        api_name = 'rollup.start_job'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_rollup/job/{id}/_start", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # rollup.stop_job 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/rollup-stop-job.html", "description" => "Stops an existing, started rollup job."}
      def rollup_stop_job(params = {})
        api_name = 'rollup.stop_job'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_rollup/job/{id}/_stop", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # scripts_painless_execute 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/painless/master/painless-execute-api.html", "description" => "Allows an arbitrary script to be executed and a result to be returned"}
      def scripts_painless_execute(params = {})
        api_name = 'scripts_painless_execute'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_scripts/painless/_execute", "methods" => ["GET", "POST"]}]}}
        request(api_name, api_spec, params, [])
      end


      # scroll 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/search-request-body.html#request-body-search-scroll", "description" => "Allows to retrieve a large numbers of results from a single search request."}
      def scroll(params = {})
        api_name = 'scroll'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_search/scroll", "methods" => ["GET", "POST"]}, {"path" => "/_search/scroll/{scroll_id}", "methods" => ["GET", "POST"], "deprecated" => true}]}}
        request(api_name, api_spec, params, [:scroll_id])
      end


      # search 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/search-search.html", "description" => "Returns results matching a query."}
      def search(params = {})
        api_name = 'search'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_search", "methods" => ["GET", "POST"]}, {"path" => "/{index}/_search", "methods" => ["GET", "POST"]}, {"path" => "/{index}/{type}/_search", "methods" => ["GET", "POST"], "deprecated" => true}]}}
        request(api_name, api_spec, params, [:index, :type])
      end


      # search_shards 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/search-shards.html", "description" => "Returns information about the indices and shards that a search request would be executed against."}
      def search_shards(params = {})
        api_name = 'search_shards'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_search_shards", "methods" => ["GET", "POST"]}, {"path" => "/{index}/_search_shards", "methods" => ["GET", "POST"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # search_template 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/search-template.html", "description" => "Allows to use the Mustache language to pre-render a search definition."}
      def search_template(params = {})
        api_name = 'search_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_search/template", "methods" => ["GET", "POST"]}, {"path" => "/{index}/_search/template", "methods" => ["GET", "POST"]}, {"path" => "/{index}/{type}/_search/template", "methods" => ["GET", "POST"], "deprecated" => true}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:index, :type])
      end


      # searchable_snapshots.cache_stats 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/searchable-snapshots-apis.html", "description" => "Retrieve node-level cache statistics about searchable snapshots."}
      def searchable_snapshots_cache_stats(params = {})
        api_name = 'searchable_snapshots.cache_stats'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_searchable_snapshots/cache/stats", "methods" => ["GET"]}, {"path" => "/_searchable_snapshots/{node_id}/cache/stats", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:node_id])
      end


      # searchable_snapshots.clear_cache 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/searchable-snapshots-apis.html", "description" => "Clear the cache of searchable snapshots."}
      def searchable_snapshots_clear_cache(params = {})
        api_name = 'searchable_snapshots.clear_cache'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_searchable_snapshots/cache/clear", "methods" => ["POST"]}, {"path" => "/{index}/_searchable_snapshots/cache/clear", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # searchable_snapshots.mount 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/searchable-snapshots-api-mount-snapshot.html", "description" => "Mount a snapshot as a searchable index."}
      def searchable_snapshots_mount(params = {})
        api_name = 'searchable_snapshots.mount'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_snapshot/{repository}/{snapshot}/_mount", "methods" => ["POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:repository, :snapshot])
      end


      # searchable_snapshots.repository_stats 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/searchable-snapshots-apis.html", "description" => "DEPRECATED: This API is replaced by the Repositories Metering API."}
      def searchable_snapshots_repository_stats(params = {})
        api_name = 'searchable_snapshots.repository_stats'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_snapshot/{repository}/_stats", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:repository])
      end


      # searchable_snapshots.stats 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/searchable-snapshots-apis.html", "description" => "Retrieve shard-level statistics about searchable snapshots."}
      def searchable_snapshots_stats(params = {})
        api_name = 'searchable_snapshots.stats'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_searchable_snapshots/stats", "methods" => ["GET"]}, {"path" => "/{index}/_searchable_snapshots/stats", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # security.authenticate 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-authenticate.html", "description" => "Enables authentication as a user and retrieve information about the authenticated user."}
      def security_authenticate(params = {})
        api_name = 'security.authenticate'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/_authenticate", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # security.change_password 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-change-password.html", "description" => "Changes the passwords of users in the native realm and built-in users."}
      def security_change_password(params = {})
        api_name = 'security.change_password'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/user/{username}/_password", "methods" => ["PUT", "POST"]}, {"path" => "/_security/user/_password", "methods" => ["PUT", "POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:username])
      end


      # security.clear_api_key_cache 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-clear-api-key-cache.html", "description" => "Clear a subset or all entries from the API key cache."}
      def security_clear_api_key_cache(params = {})
        api_name = 'security.clear_api_key_cache'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/api_key/{ids}/_clear_cache", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:ids])
      end


      # security.clear_cached_privileges 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-clear-privilege-cache.html", "description" => "Evicts application privileges from the native application privileges cache."}
      def security_clear_cached_privileges(params = {})
        api_name = 'security.clear_cached_privileges'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/privilege/{application}/_clear_cache", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:application])
      end


      # security.clear_cached_realms 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-clear-cache.html", "description" => "Evicts users from the user cache. Can completely clear the cache or evict specific users."}
      def security_clear_cached_realms(params = {})
        api_name = 'security.clear_cached_realms'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/realm/{realms}/_clear_cache", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:realms])
      end


      # security.clear_cached_roles 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-clear-role-cache.html", "description" => "Evicts roles from the native role cache."}
      def security_clear_cached_roles(params = {})
        api_name = 'security.clear_cached_roles'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/role/{name}/_clear_cache", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # security.clear_cached_service_tokens 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-clear-service-token-caches.html", "description" => "Evicts tokens from the service account token caches."}
      def security_clear_cached_service_tokens(params = {})
        api_name = 'security.clear_cached_service_tokens'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/service/{namespace}/{service}/credential/token/{name}/_clear_cache", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:namespace, :service, :name])
      end


      # security.create_api_key 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-create-api-key.html", "description" => "Creates an API key for access without requiring basic authentication."}
      def security_create_api_key(params = {})
        api_name = 'security.create_api_key'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/api_key", "methods" => ["PUT", "POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [])
      end


      # security.create_service_token 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-create-service-token.html", "description" => "Creates a service account token for access without requiring basic authentication."}
      def security_create_service_token(params = {})
        api_name = 'security.create_service_token'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/service/{namespace}/{service}/credential/token/{name}", "methods" => ["PUT", "POST"]}, {"path" => "/_security/service/{namespace}/{service}/credential/token", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:namespace, :service, :name])
      end


      # security.delete_privileges 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-delete-privilege.html", "description" => "Removes application privileges."}
      def security_delete_privileges(params = {})
        api_name = 'security.delete_privileges'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/privilege/{application}/{name}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:application, :name])
      end


      # security.delete_role 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-delete-role.html", "description" => "Removes roles in the native realm."}
      def security_delete_role(params = {})
        api_name = 'security.delete_role'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/role/{name}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # security.delete_role_mapping 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-delete-role-mapping.html", "description" => "Removes role mappings."}
      def security_delete_role_mapping(params = {})
        api_name = 'security.delete_role_mapping'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/role_mapping/{name}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # security.delete_service_token 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-delete-service-token.html", "description" => "Deletes a service account token."}
      def security_delete_service_token(params = {})
        api_name = 'security.delete_service_token'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/service/{namespace}/{service}/credential/token/{name}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:namespace, :service, :name])
      end


      # security.delete_user 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-delete-user.html", "description" => "Deletes users from the native realm."}
      def security_delete_user(params = {})
        api_name = 'security.delete_user'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/user/{username}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:username])
      end


      # security.disable_user 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-disable-user.html", "description" => "Disables users in the native realm."}
      def security_disable_user(params = {})
        api_name = 'security.disable_user'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/user/{username}/_disable", "methods" => ["PUT", "POST"]}]}}
        request(api_name, api_spec, params, [:username])
      end


      # security.enable_user 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-enable-user.html", "description" => "Enables users in the native realm."}
      def security_enable_user(params = {})
        api_name = 'security.enable_user'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/user/{username}/_enable", "methods" => ["PUT", "POST"]}]}}
        request(api_name, api_spec, params, [:username])
      end


      # security.get_api_key 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-api-key.html", "description" => "Retrieves information for one or more API keys."}
      def security_get_api_key(params = {})
        api_name = 'security.get_api_key'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/api_key", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # security.get_builtin_privileges 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-builtin-privileges.html", "description" => "Retrieves the list of cluster privileges and index privileges that are available in this version of Elasticsearch."}
      def security_get_builtin_privileges(params = {})
        api_name = 'security.get_builtin_privileges'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/privilege/_builtin", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # security.get_privileges 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-privileges.html", "description" => "Retrieves application privileges."}
      def security_get_privileges(params = {})
        api_name = 'security.get_privileges'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/privilege", "methods" => ["GET"]}, {"path" => "/_security/privilege/{application}", "methods" => ["GET"]}, {"path" => "/_security/privilege/{application}/{name}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:application, :name])
      end


      # security.get_role 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-role.html", "description" => "Retrieves roles in the native realm."}
      def security_get_role(params = {})
        api_name = 'security.get_role'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/role/{name}", "methods" => ["GET"]}, {"path" => "/_security/role", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # security.get_role_mapping 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-role-mapping.html", "description" => "Retrieves role mappings."}
      def security_get_role_mapping(params = {})
        api_name = 'security.get_role_mapping'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/role_mapping/{name}", "methods" => ["GET"]}, {"path" => "/_security/role_mapping", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:name])
      end


      # security.get_service_accounts 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-service-accounts.html", "description" => "Retrieves information about service accounts."}
      def security_get_service_accounts(params = {})
        api_name = 'security.get_service_accounts'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/service/{namespace}/{service}", "methods" => ["GET"]}, {"path" => "/_security/service/{namespace}", "methods" => ["GET"]}, {"path" => "/_security/service", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:namespace, :service])
      end


      # security.get_service_credentials 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-service-credentials.html", "description" => "Retrieves information of all service credentials for a service account."}
      def security_get_service_credentials(params = {})
        api_name = 'security.get_service_credentials'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/service/{namespace}/{service}/credential", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:namespace, :service])
      end


      # security.get_token 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-token.html", "description" => "Creates a bearer token for access without requiring basic authentication."}
      def security_get_token(params = {})
        api_name = 'security.get_token'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/oauth2/token", "methods" => ["POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [])
      end


      # security.get_user 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-user.html", "description" => "Retrieves information about users in the native realm and built-in users."}
      def security_get_user(params = {})
        api_name = 'security.get_user'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/user/{username}", "methods" => ["GET"]}, {"path" => "/_security/user", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:username])
      end


      # security.get_user_privileges 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-user-privileges.html", "description" => "Retrieves security privileges for the logged in user."}
      def security_get_user_privileges(params = {})
        api_name = 'security.get_user_privileges'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/user/_privileges", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # security.grant_api_key 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-grant-api-key.html", "description" => "Creates an API key on behalf of another user."}
      def security_grant_api_key(params = {})
        api_name = 'security.grant_api_key'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/api_key/grant", "methods" => ["POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [])
      end


      # security.has_privileges 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-has-privileges.html", "description" => "Determines whether the specified user has a specified list of privileges."}
      def security_has_privileges(params = {})
        api_name = 'security.has_privileges'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/user/_has_privileges", "methods" => ["GET", "POST"]}, {"path" => "/_security/user/{user}/_has_privileges", "methods" => ["GET", "POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:user])
      end


      # security.invalidate_api_key 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-invalidate-api-key.html", "description" => "Invalidates one or more API keys."}
      def security_invalidate_api_key(params = {})
        api_name = 'security.invalidate_api_key'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/api_key", "methods" => ["DELETE"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [])
      end


      # security.invalidate_token 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-invalidate-token.html", "description" => "Invalidates one or more access tokens or refresh tokens."}
      def security_invalidate_token(params = {})
        api_name = 'security.invalidate_token'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/oauth2/token", "methods" => ["DELETE"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [])
      end


      # security.put_privileges 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-put-privileges.html", "description" => "Adds or updates application privileges."}
      def security_put_privileges(params = {})
        api_name = 'security.put_privileges'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/privilege/", "methods" => ["PUT", "POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [])
      end


      # security.put_role 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-put-role.html", "description" => "Adds and updates roles in the native realm."}
      def security_put_role(params = {})
        api_name = 'security.put_role'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/role/{name}", "methods" => ["PUT", "POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:name])
      end


      # security.put_role_mapping 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-put-role-mapping.html", "description" => "Creates and updates role mappings."}
      def security_put_role_mapping(params = {})
        api_name = 'security.put_role_mapping'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/role_mapping/{name}", "methods" => ["PUT", "POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:name])
      end


      # security.put_user 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-put-user.html", "description" => "Adds and updates users in the native realm. These users are commonly referred to as native users."}
      def security_put_user(params = {})
        api_name = 'security.put_user'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/user/{username}", "methods" => ["PUT", "POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:username])
      end


      # security.saml_authenticate 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-saml-authenticate.html", "description" => "Exchanges a SAML Response message for an Elasticsearch access token and refresh token pair"}
      def security_saml_authenticate(params = {})
        api_name = 'security.saml_authenticate'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/saml/authenticate", "methods" => ["POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [])
      end


      # security.saml_complete_logout 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-saml-complete-logout.html", "description" => "Verifies the logout response sent from the SAML IdP"}
      def security_saml_complete_logout(params = {})
        api_name = 'security.saml_complete_logout'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/saml/complete_logout", "methods" => ["POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [])
      end


      # security.saml_invalidate 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-saml-invalidate.html", "description" => "Consumes a SAML LogoutRequest"}
      def security_saml_invalidate(params = {})
        api_name = 'security.saml_invalidate'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/saml/invalidate", "methods" => ["POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [])
      end


      # security.saml_logout 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-saml-logout.html", "description" => "Invalidates an access token and a refresh token that were generated via the SAML Authenticate API"}
      def security_saml_logout(params = {})
        api_name = 'security.saml_logout'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/saml/logout", "methods" => ["POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [])
      end


      # security.saml_prepare_authentication 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-saml-prepare-authentication.html", "description" => "Creates a SAML authentication request"}
      def security_saml_prepare_authentication(params = {})
        api_name = 'security.saml_prepare_authentication'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/saml/prepare", "methods" => ["POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [])
      end


      # security.saml_service_provider_metadata 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-saml-sp-metadata.html", "description" => "Generates SAML metadata for the Elastic stack SAML 2.0 Service Provider"}
      def security_saml_service_provider_metadata(params = {})
        api_name = 'security.saml_service_provider_metadata'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_security/saml/metadata/{realm_name}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:realm_name])
      end


      # shutdown.delete_node 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current", "description" => "Removes a node from the shutdown list"}
      def shutdown_delete_node(params = {})
        api_name = 'shutdown.delete_node'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_nodes/{node_id}/shutdown", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:node_id])
      end


      # shutdown.get_node 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current", "description" => "Retrieve status of a node or nodes that are currently marked as shutting down"}
      def shutdown_get_node(params = {})
        api_name = 'shutdown.get_node'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_nodes/shutdown", "methods" => ["GET"]}, {"path" => "/_nodes/{node_id}/shutdown", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:node_id])
      end


      # shutdown.put_node 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current", "description" => "Adds a node to be shut down"}
      def shutdown_put_node(params = {})
        api_name = 'shutdown.put_node'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_nodes/{node_id}/shutdown", "methods" => ["PUT"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:node_id])
      end


      # slm.delete_lifecycle 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-delete-policy.html", "description" => "Deletes an existing snapshot lifecycle policy."}
      def slm_delete_lifecycle(params = {})
        api_name = 'slm.delete_lifecycle'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_slm/policy/{policy_id}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:policy_id])
      end


      # slm.execute_lifecycle 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-execute-lifecycle.html", "description" => "Immediately creates a snapshot according to the lifecycle policy, without waiting for the scheduled time."}
      def slm_execute_lifecycle(params = {})
        api_name = 'slm.execute_lifecycle'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_slm/policy/{policy_id}/_execute", "methods" => ["PUT"]}]}}
        request(api_name, api_spec, params, [:policy_id])
      end


      # slm.execute_retention 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-execute-retention.html", "description" => "Deletes any snapshots that are expired according to the policy's retention rules."}
      def slm_execute_retention(params = {})
        api_name = 'slm.execute_retention'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_slm/_execute_retention", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [])
      end


      # slm.get_lifecycle 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-get-policy.html", "description" => "Retrieves one or more snapshot lifecycle policy definitions and information about the latest snapshot attempts."}
      def slm_get_lifecycle(params = {})
        api_name = 'slm.get_lifecycle'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_slm/policy/{policy_id}", "methods" => ["GET"]}, {"path" => "/_slm/policy", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:policy_id])
      end


      # slm.get_stats 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/slm-api-get-stats.html", "description" => "Returns global and policy-level statistics about actions taken by snapshot lifecycle management."}
      def slm_get_stats(params = {})
        api_name = 'slm.get_stats'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_slm/stats", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # slm.get_status 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-get-status.html", "description" => "Retrieves the status of snapshot lifecycle management (SLM)."}
      def slm_get_status(params = {})
        api_name = 'slm.get_status'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_slm/status", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # slm.put_lifecycle 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-put-policy.html", "description" => "Creates or updates a snapshot lifecycle policy."}
      def slm_put_lifecycle(params = {})
        api_name = 'slm.put_lifecycle'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_slm/policy/{policy_id}", "methods" => ["PUT"]}]}}
        request(api_name, api_spec, params, [:policy_id])
      end


      # slm.start 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-start.html", "description" => "Turns on snapshot lifecycle management (SLM)."}
      def slm_start(params = {})
        api_name = 'slm.start'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_slm/start", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [])
      end


      # slm.stop 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-stop.html", "description" => "Turns off snapshot lifecycle management (SLM)."}
      def slm_stop(params = {})
        api_name = 'slm.stop'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_slm/stop", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [])
      end


      # snapshot.cleanup_repository 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/clean-up-snapshot-repo-api.html", "description" => "Removes stale data from repository."}
      def snapshot_cleanup_repository(params = {})
        api_name = 'snapshot.cleanup_repository'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_snapshot/{repository}/_cleanup", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:repository])
      end


      # snapshot.clone 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description" => "Clones indices from one snapshot into another snapshot in the same repository."}
      def snapshot_clone(params = {})
        api_name = 'snapshot.clone'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_snapshot/{repository}/{snapshot}/_clone/{target_snapshot}", "methods" => ["PUT"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:repository, :snapshot, :target_snapshot])
      end


      # snapshot.create 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description" => "Creates a snapshot in a repository."}
      def snapshot_create(params = {})
        api_name = 'snapshot.create'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_snapshot/{repository}/{snapshot}", "methods" => ["PUT", "POST"]}]}}
        request(api_name, api_spec, params, [:repository, :snapshot])
      end


      # snapshot.create_repository 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description" => "Creates a repository."}
      def snapshot_create_repository(params = {})
        api_name = 'snapshot.create_repository'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_snapshot/{repository}", "methods" => ["PUT", "POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:repository])
      end


      # snapshot.delete 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description" => "Deletes a snapshot."}
      def snapshot_delete(params = {})
        api_name = 'snapshot.delete'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_snapshot/{repository}/{snapshot}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:repository, :snapshot])
      end


      # snapshot.delete_repository 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description" => "Deletes a repository."}
      def snapshot_delete_repository(params = {})
        api_name = 'snapshot.delete_repository'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_snapshot/{repository}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:repository])
      end


      # snapshot.get 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description" => "Returns information about a snapshot."}
      def snapshot_get(params = {})
        api_name = 'snapshot.get'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_snapshot/{repository}/{snapshot}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:repository, :snapshot])
      end


      # snapshot.get_repository 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description" => "Returns information about a repository."}
      def snapshot_get_repository(params = {})
        api_name = 'snapshot.get_repository'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_snapshot", "methods" => ["GET"]}, {"path" => "/_snapshot/{repository}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:repository])
      end


      # snapshot.repository_analyze 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description" => "Analyzes a repository for correctness and performance"}
      def snapshot_repository_analyze(params = {})
        api_name = 'snapshot.repository_analyze'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_snapshot/{repository}/_analyze", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:repository])
      end


      # snapshot.restore 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description" => "Restores a snapshot."}
      def snapshot_restore(params = {})
        api_name = 'snapshot.restore'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_snapshot/{repository}/{snapshot}/_restore", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:repository, :snapshot])
      end


      # snapshot.status 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description" => "Returns information about the status of a snapshot."}
      def snapshot_status(params = {})
        api_name = 'snapshot.status'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_snapshot/_status", "methods" => ["GET"]}, {"path" => "/_snapshot/{repository}/_status", "methods" => ["GET"]}, {"path" => "/_snapshot/{repository}/{snapshot}/_status", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:repository, :snapshot])
      end


      # snapshot.verify_repository 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html", "description" => "Verifies a repository."}
      def snapshot_verify_repository(params = {})
        api_name = 'snapshot.verify_repository'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_snapshot/{repository}/_verify", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:repository])
      end


      # sql.clear_cursor 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/clear-sql-cursor-api.html", "description" => "Clears the SQL cursor"}
      def sql_clear_cursor(params = {})
        api_name = 'sql.clear_cursor'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_sql/close", "methods" => ["POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [])
      end


      # sql.delete_async 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/delete-async-sql-search-api.html", "description" => "Deletes an async SQL search or a stored synchronous SQL search. If the search is still running, the API cancels it."}
      def sql_delete_async(params = {})
        api_name = 'sql.delete_async'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_sql/async/delete/{id}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # sql.get_async 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/get-async-sql-search-api.html", "description" => "Returns the current status and available results for an async SQL search or stored synchronous SQL search"}
      def sql_get_async(params = {})
        api_name = 'sql.get_async'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_sql/async/{id}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # sql.get_async_status 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/get-async-sql-search-status-api.html", "description" => "Returns the current status of an async SQL search or a stored synchronous SQL search"}
      def sql_get_async_status(params = {})
        api_name = 'sql.get_async_status'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_sql/async/status/{id}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # sql.query 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/sql-search-api.html", "description" => "Executes a SQL request"}
      def sql_query(params = {})
        api_name = 'sql.query'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_sql", "methods" => ["POST", "GET"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [])
      end


      # sql.translate 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/sql-translate-api.html", "description" => "Translates SQL into Elasticsearch queries"}
      def sql_translate(params = {})
        api_name = 'sql.translate'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_sql/translate", "methods" => ["POST", "GET"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [])
      end


      # ssl.certificates 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-ssl.html", "description" => "Retrieves information about the X.509 certificates used to encrypt communications in the cluster."}
      def ssl_certificates(params = {})
        api_name = 'ssl.certificates'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_ssl/certificates", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # tasks.cancel 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/tasks.html", "description" => "Cancels a task, if it can be cancelled through an API."}
      def tasks_cancel(params = {})
        api_name = 'tasks.cancel'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_tasks/_cancel", "methods" => ["POST"]}, {"path" => "/_tasks/{task_id}/_cancel", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:task_id])
      end


      # tasks.get 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/tasks.html", "description" => "Returns information about a task."}
      def tasks_get(params = {})
        api_name = 'tasks.get'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_tasks/{task_id}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:task_id])
      end


      # tasks.list 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/tasks.html", "description" => "Returns a list of tasks."}
      def tasks_list(params = {})
        api_name = 'tasks.list'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_tasks", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # terms_enum 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/search-terms-enum.html", "description" => "The terms enum API  can be used to discover terms in the index that begin with the provided string. It is designed for low-latency look-ups used in auto-complete scenarios."}
      def terms_enum(params = {})
        api_name = 'terms_enum'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_terms_enum", "methods" => ["GET", "POST"]}]}}
        request(api_name, api_spec, params, [:index])
      end


      # termvectors 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-termvectors.html", "description" => "Returns information and statistics about terms in the fields of a particular document."}
      def termvectors(params = {})
        api_name = 'termvectors'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_termvectors/{id}", "methods" => ["GET", "POST"]}, {"path" => "/{index}/_termvectors", "methods" => ["GET", "POST"]}, {"path" => "/{index}/{type}/{id}/_termvectors", "methods" => ["GET", "POST"], "deprecated" => true}, {"path" => "/{index}/{type}/_termvectors", "methods" => ["GET", "POST"], "deprecated" => true}]}}
        request(api_name, api_spec, params, [:index, :id, :type])
      end


      # text_structure.find_structure 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/find-structure.html", "description" => "Finds the structure of a text file. The text file must contain data that is suitable to be ingested into Elasticsearch."}
      def text_structure_find_structure(params = {})
        api_name = 'text_structure.find_structure'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_text_structure/find_structure", "methods" => ["POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [])
      end


      # transform.delete_transform 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/delete-transform.html", "description" => "Deletes an existing transform."}
      def transform_delete_transform(params = {})
        api_name = 'transform.delete_transform'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_transform/{transform_id}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:transform_id])
      end


      # transform.get_transform 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/get-transform.html", "description" => "Retrieves configuration information for transforms."}
      def transform_get_transform(params = {})
        api_name = 'transform.get_transform'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_transform/{transform_id}", "methods" => ["GET"]}, {"path" => "/_transform", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:transform_id])
      end


      # transform.get_transform_stats 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/get-transform-stats.html", "description" => "Retrieves usage information for transforms."}
      def transform_get_transform_stats(params = {})
        api_name = 'transform.get_transform_stats'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_transform/{transform_id}/_stats", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:transform_id])
      end


      # transform.preview_transform 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/preview-transform.html", "description" => "Previews a transform."}
      def transform_preview_transform(params = {})
        api_name = 'transform.preview_transform'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_transform/_preview", "methods" => ["POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [])
      end


      # transform.put_transform 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/put-transform.html", "description" => "Instantiates a transform."}
      def transform_put_transform(params = {})
        api_name = 'transform.put_transform'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_transform/{transform_id}", "methods" => ["PUT"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:transform_id])
      end


      # transform.start_transform 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/start-transform.html", "description" => "Starts one or more transforms."}
      def transform_start_transform(params = {})
        api_name = 'transform.start_transform'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_transform/{transform_id}/_start", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:transform_id])
      end


      # transform.stop_transform 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/stop-transform.html", "description" => "Stops one or more transforms."}
      def transform_stop_transform(params = {})
        api_name = 'transform.stop_transform'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_transform/{transform_id}/_stop", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:transform_id])
      end


      # transform.update_transform 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/update-transform.html", "description" => "Updates certain properties of a transform."}
      def transform_update_transform(params = {})
        api_name = 'transform.update_transform'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_transform/{transform_id}/_update", "methods" => ["POST"]}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:transform_id])
      end


      # update 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-update.html", "description" => "Updates a document with a script or partial document."}
      def update(params = {})
        api_name = 'update'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_update/{id}", "methods" => ["POST"]}, {"path" => "/{index}/{type}/{id}/_update", "methods" => ["POST"], "deprecated" => true}]}, "body" => {"required" => true}}
        request(api_name, api_spec, params, [:id, :index, :type])
      end


      # update_by_query 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-update-by-query.html", "description" => "Performs an update on every document in the index without changing the source,\nfor example to pick up a mapping change."}
      def update_by_query(params = {})
        api_name = 'update_by_query'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/{index}/_update_by_query", "methods" => ["POST"]}, {"path" => "/{index}/{type}/_update_by_query", "methods" => ["POST"], "deprecated" => true}]}}
        request(api_name, api_spec, params, [:index, :type])
      end


      # update_by_query_rethrottle 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/docs-update-by-query.html", "description" => "Changes the number of requests per second for a particular Update By Query operation."}
      def update_by_query_rethrottle(params = {})
        api_name = 'update_by_query_rethrottle'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_update_by_query/{task_id}/_rethrottle", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [:task_id])
      end


      # watcher.ack_watch 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-ack-watch.html", "description" => "Acknowledges a watch, manually throttling the execution of the watch's actions."}
      def watcher_ack_watch(params = {})
        api_name = 'watcher.ack_watch'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_watcher/watch/{watch_id}/_ack", "methods" => ["PUT", "POST"]}, {"path" => "/_watcher/watch/{watch_id}/_ack/{action_id}", "methods" => ["PUT", "POST"]}]}}
        request(api_name, api_spec, params, [:watch_id, :action_id])
      end


      # watcher.activate_watch 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-activate-watch.html", "description" => "Activates a currently inactive watch."}
      def watcher_activate_watch(params = {})
        api_name = 'watcher.activate_watch'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_watcher/watch/{watch_id}/_activate", "methods" => ["PUT", "POST"]}]}}
        request(api_name, api_spec, params, [:watch_id])
      end


      # watcher.deactivate_watch 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-deactivate-watch.html", "description" => "Deactivates a currently active watch."}
      def watcher_deactivate_watch(params = {})
        api_name = 'watcher.deactivate_watch'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_watcher/watch/{watch_id}/_deactivate", "methods" => ["PUT", "POST"]}]}}
        request(api_name, api_spec, params, [:watch_id])
      end


      # watcher.delete_watch 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-delete-watch.html", "description" => "Removes a watch from Watcher."}
      def watcher_delete_watch(params = {})
        api_name = 'watcher.delete_watch'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_watcher/watch/{id}", "methods" => ["DELETE"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # watcher.execute_watch 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-execute-watch.html", "description" => "Forces the execution of a stored watch."}
      def watcher_execute_watch(params = {})
        api_name = 'watcher.execute_watch'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_watcher/watch/{id}/_execute", "methods" => ["PUT", "POST"]}, {"path" => "/_watcher/watch/_execute", "methods" => ["PUT", "POST"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # watcher.get_watch 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-get-watch.html", "description" => "Retrieves a watch by its ID."}
      def watcher_get_watch(params = {})
        api_name = 'watcher.get_watch'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_watcher/watch/{id}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # watcher.put_watch 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-put-watch.html", "description" => "Creates a new watch, or updates an existing one."}
      def watcher_put_watch(params = {})
        api_name = 'watcher.put_watch'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_watcher/watch/{id}", "methods" => ["PUT", "POST"]}]}}
        request(api_name, api_spec, params, [:id])
      end


      # watcher.query_watches 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-query-watches.html", "description" => "Retrieves stored watches."}
      def watcher_query_watches(params = {})
        api_name = 'watcher.query_watches'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_watcher/_query/watches", "methods" => ["GET", "POST"]}]}}
        request(api_name, api_spec, params, [])
      end


      # watcher.start 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-start.html", "description" => "Starts Watcher if it is not already running."}
      def watcher_start(params = {})
        api_name = 'watcher.start'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_watcher/_start", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [])
      end


      # watcher.stats 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-stats.html", "description" => "Retrieves the current Watcher metrics."}
      def watcher_stats(params = {})
        api_name = 'watcher.stats'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_watcher/stats", "methods" => ["GET"]}, {"path" => "/_watcher/stats/{metric}", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [:metric])
      end


      # watcher.stop 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api-stop.html", "description" => "Stops Watcher if it is running."}
      def watcher_stop(params = {})
        api_name = 'watcher.stop'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_watcher/_stop", "methods" => ["POST"]}]}}
        request(api_name, api_spec, params, [])
      end


      # xpack.info 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/info-api.html", "description" => "Retrieves information about the installed X-Pack features."}
      def xpack_info(params = {})
        api_name = 'xpack.info'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_xpack", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end


      # xpack.usage 
      # {"url" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/usage-api.html", "description" => "Retrieves usage information about the installed X-Pack features."}
      def xpack_usage(params = {})
        api_name = 'xpack.usage'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => [{"path" => "/_xpack/usage", "methods" => ["GET"]}]}}
        request(api_name, api_spec, params, [])
      end
    end
  end
end
