# Generated REST API methods file - DO NOT EDIT!
# elasticsearch version: 6.8.18

module Antbird
  module RestApi
    module RestApiV6_8
      def common_params
        @common_params ||= {"description" => "Parameters that are accepted by all API endpoints.", "documentation" => "https://www.elastic.co/guide/en/elasticsearch/reference/current/common-options.html", "params" => {"pretty" => {"type" => "boolean", "description" => "Pretty format the returned JSON response.", "default" => false}, "human" => {"type" => "boolean", "description" => "Return human readable values for statistics.", "default" => true}, "error_trace" => {"type" => "boolean", "description" => "Include the stack trace of returned errors.", "default" => false}, "source" => {"type" => "string", "description" => "The URL-encoded request definition. Useful for libraries that do not accept a request body for non-POST requests."}, "filter_path" => {"type" => "list", "description" => "A comma-separated list of filters used to reduce the respone."}}}
      end


      # bulk ["POST", "PUT"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-bulk.html
      def bulk(params = {})
        api_name = 'bulk'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_bulk", "/{index}/_bulk", "/{index}/{type}/_bulk"]}, "methods" => ["POST", "PUT"], "body" => {"required" => true}}
        request(api_name, api_spec, params, [:index, :type])
      end


      # cat.aliases ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-alias.html
      def cat_aliases(params = {})
        api_name = 'cat.aliases'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_cat/aliases", "/_cat/aliases/{name}"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:name])
      end


      # cat.allocation ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-allocation.html
      def cat_allocation(params = {})
        api_name = 'cat.allocation'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_cat/allocation", "/_cat/allocation/{node_id}"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:node_id])
      end


      # cat.count ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-count.html
      def cat_count(params = {})
        api_name = 'cat.count'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_cat/count", "/_cat/count/{index}"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:index])
      end


      # cat.fielddata ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-fielddata.html
      def cat_fielddata(params = {})
        api_name = 'cat.fielddata'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_cat/fielddata", "/_cat/fielddata/{fields}"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:fields])
      end


      # cat.health ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-health.html
      def cat_health(params = {})
        api_name = 'cat.health'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_cat/health"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [])
      end


      # cat.help ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cat.html
      def cat_help(params = {})
        api_name = 'cat.help'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_cat"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [])
      end


      # cat.indices ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-indices.html
      def cat_indices(params = {})
        api_name = 'cat.indices'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_cat/indices", "/_cat/indices/{index}"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:index])
      end


      # cat.master ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-master.html
      def cat_master(params = {})
        api_name = 'cat.master'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_cat/master"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [])
      end


      # cat.nodeattrs ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-nodeattrs.html
      def cat_nodeattrs(params = {})
        api_name = 'cat.nodeattrs'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_cat/nodeattrs"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [])
      end


      # cat.nodes ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-nodes.html
      def cat_nodes(params = {})
        api_name = 'cat.nodes'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_cat/nodes"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [])
      end


      # cat.pending_tasks ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-pending-tasks.html
      def cat_pending_tasks(params = {})
        api_name = 'cat.pending_tasks'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_cat/pending_tasks"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [])
      end


      # cat.plugins ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-plugins.html
      def cat_plugins(params = {})
        api_name = 'cat.plugins'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_cat/plugins"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [])
      end


      # cat.recovery ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-recovery.html
      def cat_recovery(params = {})
        api_name = 'cat.recovery'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_cat/recovery", "/_cat/recovery/{index}"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:index])
      end


      # cat.repositories ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-repositories.html
      def cat_repositories(params = {})
        api_name = 'cat.repositories'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_cat/repositories"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [])
      end


      # cat.segments ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-segments.html
      def cat_segments(params = {})
        api_name = 'cat.segments'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_cat/segments", "/_cat/segments/{index}"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:index])
      end


      # cat.shards ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-shards.html
      def cat_shards(params = {})
        api_name = 'cat.shards'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_cat/shards", "/_cat/shards/{index}"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:index])
      end


      # cat.snapshots ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-snapshots.html
      def cat_snapshots(params = {})
        api_name = 'cat.snapshots'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_cat/snapshots", "/_cat/snapshots/{repository}"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:repository])
      end


      # cat.tasks ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/tasks.html
      def cat_tasks(params = {})
        api_name = 'cat.tasks'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_cat/tasks"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [])
      end


      # cat.templates ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-templates.html
      def cat_templates(params = {})
        api_name = 'cat.templates'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_cat/templates", "/_cat/templates/{name}"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:name])
      end


      # cat.thread_pool ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-thread-pool.html
      def cat_thread_pool(params = {})
        api_name = 'cat.thread_pool'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_cat/thread_pool", "/_cat/thread_pool/{thread_pool_patterns}"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:thread_pool_patterns])
      end


      # clear_scroll ["DELETE"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/search-request-scroll.html
      def clear_scroll(params = {})
        api_name = 'clear_scroll'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_search/scroll/{scroll_id}", "/_search/scroll"]}, "methods" => ["DELETE"]}
        request(api_name, api_spec, params, [:scroll_id])
      end


      # cluster.allocation_explain ["GET", "POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-allocation-explain.html
      def cluster_allocation_explain(params = {})
        api_name = 'cluster.allocation_explain'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_cluster/allocation/explain"]}, "methods" => ["GET", "POST"]}
        request(api_name, api_spec, params, [])
      end


      # cluster.get_settings ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-update-settings.html
      def cluster_get_settings(params = {})
        api_name = 'cluster.get_settings'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_cluster/settings"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [])
      end


      # cluster.health ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-health.html
      def cluster_health(params = {})
        api_name = 'cluster.health'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_cluster/health", "/_cluster/health/{index}"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:index])
      end


      # cluster.pending_tasks ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-pending.html
      def cluster_pending_tasks(params = {})
        api_name = 'cluster.pending_tasks'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_cluster/pending_tasks"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [])
      end


      # cluster.put_settings ["PUT"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-update-settings.html
      def cluster_put_settings(params = {})
        api_name = 'cluster.put_settings'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_cluster/settings"]}, "methods" => ["PUT"], "body" => {"required" => true}}
        request(api_name, api_spec, params, [])
      end


      # cluster.remote_info ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-remote-info.html
      def cluster_remote_info(params = {})
        api_name = 'cluster.remote_info'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_remote/info"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [])
      end


      # cluster.reroute ["POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-reroute.html
      def cluster_reroute(params = {})
        api_name = 'cluster.reroute'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_cluster/reroute"]}, "methods" => ["POST"]}
        request(api_name, api_spec, params, [])
      end


      # cluster.state ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-state.html
      def cluster_state(params = {})
        api_name = 'cluster.state'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_cluster/state", "/_cluster/state/{metric}", "/_cluster/state/{metric}/{index}"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:metric, :index])
      end


      # cluster.stats ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-stats.html
      def cluster_stats(params = {})
        api_name = 'cluster.stats'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_cluster/stats", "/_cluster/stats/nodes/{node_id}"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:node_id])
      end


      # count ["POST", "GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/search-count.html
      def count(params = {})
        api_name = 'count'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_count", "/{index}/_count", "/{index}/{type}/_count"]}, "methods" => ["POST", "GET"]}
        request(api_name, api_spec, params, [:index, :type])
      end


      # create ["PUT", "POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-index_.html
      def create(params = {})
        api_name = 'create'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/{index}/{type}/{id}/_create"]}, "methods" => ["PUT", "POST"], "body" => {"required" => true}}
        request(api_name, api_spec, params, [:index, :type, :id])
      end


      # delete ["DELETE"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-delete.html
      def delete(params = {})
        api_name = 'delete'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/{index}/{type}/{id}"]}, "methods" => ["DELETE"]}
        request(api_name, api_spec, params, [:index, :type, :id])
      end


      # delete_by_query ["POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-delete-by-query.html
      def delete_by_query(params = {})
        api_name = 'delete_by_query'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/{index}/_delete_by_query", "/{index}/{type}/_delete_by_query"]}, "methods" => ["POST"], "body" => {"required" => true}}
        request(api_name, api_spec, params, [:index, :type])
      end


      # delete_by_query_rethrottle ["POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/current/docs-delete-by-query.html
      def delete_by_query_rethrottle(params = {})
        api_name = 'delete_by_query_rethrottle'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_delete_by_query/{task_id}/_rethrottle"]}, "methods" => ["POST"]}
        request(api_name, api_spec, params, [:task_id])
      end


      # delete_script ["DELETE"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/modules-scripting.html
      def delete_script(params = {})
        api_name = 'delete_script'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_scripts/{id}"]}, "methods" => ["DELETE"]}
        request(api_name, api_spec, params, [:id])
      end


      # exists ["HEAD"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-get.html
      def exists(params = {})
        api_name = 'exists'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/{index}/{type}/{id}"]}, "methods" => ["HEAD"]}
        request(api_name, api_spec, params, [:index, :type, :id])
      end
      alias :exists? :exists


      # exists_source ["HEAD"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-get.html
      def exists_source(params = {})
        api_name = 'exists_source'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/{index}/{type}/{id}/_source"]}, "methods" => ["HEAD"]}
        request(api_name, api_spec, params, [:index, :type, :id])
      end
      alias :exists_source? :exists_source


      # explain ["GET", "POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/search-explain.html
      def explain(params = {})
        api_name = 'explain'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/{index}/{type}/{id}/_explain"]}, "methods" => ["GET", "POST"]}
        request(api_name, api_spec, params, [:index, :type, :id])
      end


      # field_caps ["GET", "POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/search-field-caps.html
      def field_caps(params = {})
        api_name = 'field_caps'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_field_caps", "/{index}/_field_caps"]}, "methods" => ["GET", "POST"]}
        request(api_name, api_spec, params, [:index])
      end


      # get ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-get.html
      def get(params = {})
        api_name = 'get'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/{index}/{type}/{id}"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:index, :type, :id])
      end


      # get_script ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/modules-scripting.html
      def get_script(params = {})
        api_name = 'get_script'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_scripts/{id}"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:id])
      end


      # get_source ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-get.html
      def get_source(params = {})
        api_name = 'get_source'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/{index}/{type}/{id}/_source"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:index, :type, :id])
      end


      # index ["POST", "PUT"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-index_.html
      def index(params = {})
        api_name = 'index'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/{index}/{type}", "/{index}/{type}/{id}"]}, "methods" => ["POST", "PUT"], "body" => {"required" => true}}
        request(api_name, api_spec, params, [:index, :type, :id])
      end


      # indices.analyze ["GET", "POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-analyze.html
      def indices_analyze(params = {})
        api_name = 'indices.analyze'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_analyze", "/{index}/_analyze"]}, "methods" => ["GET", "POST"]}
        request(api_name, api_spec, params, [:index])
      end


      # indices.clear_cache ["POST", "GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-clearcache.html
      def indices_clear_cache(params = {})
        api_name = 'indices.clear_cache'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_cache/clear", "/{index}/_cache/clear"]}, "methods" => ["POST", "GET"]}
        request(api_name, api_spec, params, [:index])
      end


      # indices.close ["POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-open-close.html
      def indices_close(params = {})
        api_name = 'indices.close'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/{index}/_close"]}, "methods" => ["POST"]}
        request(api_name, api_spec, params, [:index])
      end


      # indices.create ["PUT"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-create-index.html
      def indices_create(params = {})
        api_name = 'indices.create'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/{index}"]}, "methods" => ["PUT"]}
        request(api_name, api_spec, params, [:index])
      end


      # indices.delete ["DELETE"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-delete-index.html
      def indices_delete(params = {})
        api_name = 'indices.delete'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/{index}"]}, "methods" => ["DELETE"]}
        request(api_name, api_spec, params, [:index])
      end


      # indices.delete_alias ["DELETE"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html
      def indices_delete_alias(params = {})
        api_name = 'indices.delete_alias'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/{index}/_alias/{name}", "/{index}/_aliases/{name}"]}, "methods" => ["DELETE"]}
        request(api_name, api_spec, params, [:index, :name])
      end


      # indices.delete_template ["DELETE"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html
      def indices_delete_template(params = {})
        api_name = 'indices.delete_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_template/{name}"]}, "methods" => ["DELETE"]}
        request(api_name, api_spec, params, [:name])
      end


      # indices.exists ["HEAD"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-exists.html
      def indices_exists(params = {})
        api_name = 'indices.exists'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/{index}"]}, "methods" => ["HEAD"]}
        request(api_name, api_spec, params, [:index])
      end
      alias :indices_exists? :indices_exists


      # indices.exists_alias ["HEAD"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html
      def indices_exists_alias(params = {})
        api_name = 'indices.exists_alias'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_alias/{name}", "/{index}/_alias/{name}"]}, "methods" => ["HEAD"]}
        request(api_name, api_spec, params, [:name, :index])
      end
      alias :indices_exists_alias? :indices_exists_alias


      # indices.exists_template ["HEAD"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html
      def indices_exists_template(params = {})
        api_name = 'indices.exists_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_template/{name}"]}, "methods" => ["HEAD"]}
        request(api_name, api_spec, params, [:name])
      end
      alias :indices_exists_template? :indices_exists_template


      # indices.exists_type ["HEAD"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-types-exists.html
      def indices_exists_type(params = {})
        api_name = 'indices.exists_type'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/{index}/_mapping/{type}"]}, "methods" => ["HEAD"]}
        request(api_name, api_spec, params, [:index, :type])
      end
      alias :indices_exists_type? :indices_exists_type


      # indices.flush ["POST", "GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-flush.html
      def indices_flush(params = {})
        api_name = 'indices.flush'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_flush", "/{index}/_flush"]}, "methods" => ["POST", "GET"]}
        request(api_name, api_spec, params, [:index])
      end


      # indices.flush_synced ["POST", "GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-synced-flush.html
      def indices_flush_synced(params = {})
        api_name = 'indices.flush_synced'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_flush/synced", "/{index}/_flush/synced"]}, "methods" => ["POST", "GET"]}
        request(api_name, api_spec, params, [:index])
      end


      # indices.forcemerge ["POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-forcemerge.html
      def indices_forcemerge(params = {})
        api_name = 'indices.forcemerge'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_forcemerge", "/{index}/_forcemerge"]}, "methods" => ["POST"]}
        request(api_name, api_spec, params, [:index])
      end


      # indices.get ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-index.html
      def indices_get(params = {})
        api_name = 'indices.get'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/{index}"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:index])
      end


      # indices.get_alias ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html
      def indices_get_alias(params = {})
        api_name = 'indices.get_alias'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_alias", "/_alias/{name}", "/{index}/_alias/{name}", "/{index}/_alias"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:name, :index])
      end


      # indices.get_field_mapping ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-field-mapping.html
      def indices_get_field_mapping(params = {})
        api_name = 'indices.get_field_mapping'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_mapping/field/{fields}", "/{index}/_mapping/field/{fields}", "/_mapping/{type}/field/{fields}", "/{index}/_mapping/{type}/field/{fields}"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:fields, :index, :type])
      end


      # indices.get_mapping ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-mapping.html
      def indices_get_mapping(params = {})
        api_name = 'indices.get_mapping'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_mapping", "/{index}/_mapping", "/_mapping/{type}", "/{index}/_mapping/{type}"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:index, :type])
      end


      # indices.get_settings ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-settings.html
      def indices_get_settings(params = {})
        api_name = 'indices.get_settings'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_settings", "/{index}/_settings", "/{index}/_settings/{name}", "/_settings/{name}"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:index, :name])
      end


      # indices.get_template ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html
      def indices_get_template(params = {})
        api_name = 'indices.get_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_template", "/_template/{name}"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:name])
      end


      # indices.get_upgrade ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-upgrade.html
      def indices_get_upgrade(params = {})
        api_name = 'indices.get_upgrade'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_upgrade", "/{index}/_upgrade"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:index])
      end


      # indices.open ["POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-open-close.html
      def indices_open(params = {})
        api_name = 'indices.open'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/{index}/_open"]}, "methods" => ["POST"]}
        request(api_name, api_spec, params, [:index])
      end


      # indices.put_alias ["PUT", "POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html
      def indices_put_alias(params = {})
        api_name = 'indices.put_alias'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/{index}/_alias/{name}", "/{index}/_aliases/{name}"]}, "methods" => ["PUT", "POST"]}
        request(api_name, api_spec, params, [:index, :name])
      end


      # indices.put_mapping ["PUT", "POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-put-mapping.html
      def indices_put_mapping(params = {})
        api_name = 'indices.put_mapping'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/{index}/{type}/_mapping", "/{index}/_mapping/{type}", "/_mapping/{type}", "/{index}/{type}/_mappings", "/{index}/_mappings/{type}", "/_mappings/{type}", "{index}/_mappings", "{index}/_mapping"]}, "methods" => ["PUT", "POST"], "body" => {"required" => true}}
        request(api_name, api_spec, params, [:index, :type])
      end


      # indices.put_settings ["PUT"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-update-settings.html
      def indices_put_settings(params = {})
        api_name = 'indices.put_settings'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_settings", "/{index}/_settings"]}, "methods" => ["PUT"], "body" => {"required" => true}}
        request(api_name, api_spec, params, [:index])
      end


      # indices.put_template ["PUT", "POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html
      def indices_put_template(params = {})
        api_name = 'indices.put_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_template/{name}"]}, "methods" => ["PUT", "POST"], "body" => {"required" => true}}
        request(api_name, api_spec, params, [:name])
      end


      # indices.recovery ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-recovery.html
      def indices_recovery(params = {})
        api_name = 'indices.recovery'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_recovery", "/{index}/_recovery"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:index])
      end


      # indices.refresh ["POST", "GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-refresh.html
      def indices_refresh(params = {})
        api_name = 'indices.refresh'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_refresh", "/{index}/_refresh"]}, "methods" => ["POST", "GET"]}
        request(api_name, api_spec, params, [:index])
      end


      # indices.rollover ["POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-rollover-index.html
      def indices_rollover(params = {})
        api_name = 'indices.rollover'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/{alias}/_rollover", "/{alias}/_rollover/{new_index}"]}, "methods" => ["POST"]}
        request(api_name, api_spec, params, [:alias, :new_index])
      end


      # indices.segments ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-segments.html
      def indices_segments(params = {})
        api_name = 'indices.segments'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_segments", "/{index}/_segments"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:index])
      end


      # indices.shard_stores ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-shards-stores.html
      def indices_shard_stores(params = {})
        api_name = 'indices.shard_stores'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_shard_stores", "/{index}/_shard_stores"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:index])
      end


      # indices.shrink ["PUT", "POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-shrink-index.html
      def indices_shrink(params = {})
        api_name = 'indices.shrink'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/{index}/_shrink/{target}"]}, "methods" => ["PUT", "POST"]}
        request(api_name, api_spec, params, [:index, :target])
      end


      # indices.split ["PUT", "POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-split-index.html
      def indices_split(params = {})
        api_name = 'indices.split'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/{index}/_split/{target}"]}, "methods" => ["PUT", "POST"]}
        request(api_name, api_spec, params, [:index, :target])
      end


      # indices.stats ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-stats.html
      def indices_stats(params = {})
        api_name = 'indices.stats'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_stats", "/_stats/{metric}", "/{index}/_stats", "/{index}/_stats/{metric}"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:metric, :index])
      end


      # indices.update_aliases ["POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html
      def indices_update_aliases(params = {})
        api_name = 'indices.update_aliases'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_aliases"]}, "methods" => ["POST"], "body" => {"required" => true}}
        request(api_name, api_spec, params, [])
      end


      # indices.upgrade ["POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-upgrade.html
      def indices_upgrade(params = {})
        api_name = 'indices.upgrade'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_upgrade", "/{index}/_upgrade"]}, "methods" => ["POST"]}
        request(api_name, api_spec, params, [:index])
      end


      # indices.validate_query ["GET", "POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/search-validate.html
      def indices_validate_query(params = {})
        api_name = 'indices.validate_query'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_validate/query", "/{index}/_validate/query", "/{index}/{type}/_validate/query"]}, "methods" => ["GET", "POST"]}
        request(api_name, api_spec, params, [:index, :type])
      end


      # info ["GET"]
      # http://www.elastic.co/guide/
      def info(params = {})
        api_name = 'info'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [])
      end


      # ingest.delete_pipeline ["DELETE"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/master/delete-pipeline-api.html
      def ingest_delete_pipeline(params = {})
        api_name = 'ingest.delete_pipeline'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_ingest/pipeline/{id}"]}, "methods" => ["DELETE"]}
        request(api_name, api_spec, params, [:id])
      end


      # ingest.get_pipeline ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/master/get-pipeline-api.html
      def ingest_get_pipeline(params = {})
        api_name = 'ingest.get_pipeline'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_ingest/pipeline", "/_ingest/pipeline/{id}"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:id])
      end


      # ingest.processor_grok ["GET"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/master/grok-processor.html#grok-processor-rest-get
      def ingest_processor_grok(params = {})
        api_name = 'ingest.processor_grok'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_ingest/processor/grok"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [])
      end


      # ingest.put_pipeline ["PUT"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/master/put-pipeline-api.html
      def ingest_put_pipeline(params = {})
        api_name = 'ingest.put_pipeline'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_ingest/pipeline/{id}"]}, "methods" => ["PUT"], "body" => {"required" => true}}
        request(api_name, api_spec, params, [:id])
      end


      # ingest.simulate ["GET", "POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/master/simulate-pipeline-api.html
      def ingest_simulate(params = {})
        api_name = 'ingest.simulate'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_ingest/pipeline/_simulate", "/_ingest/pipeline/{id}/_simulate"]}, "methods" => ["GET", "POST"], "body" => {"required" => true}}
        request(api_name, api_spec, params, [:id])
      end


      # mget ["GET", "POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-multi-get.html
      def mget(params = {})
        api_name = 'mget'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_mget", "/{index}/_mget", "/{index}/{type}/_mget"]}, "methods" => ["GET", "POST"], "body" => {"required" => true}}
        request(api_name, api_spec, params, [:index, :type])
      end


      # msearch ["GET", "POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/search-multi-search.html
      def msearch(params = {})
        api_name = 'msearch'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_msearch", "/{index}/_msearch", "/{index}/{type}/_msearch"]}, "methods" => ["GET", "POST"], "body" => {"required" => true}}
        request(api_name, api_spec, params, [:index, :type])
      end


      # msearch_template ["GET", "POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/current/search-multi-search.html
      def msearch_template(params = {})
        api_name = 'msearch_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_msearch/template", "/{index}/_msearch/template", "/{index}/{type}/_msearch/template"]}, "methods" => ["GET", "POST"], "body" => {"required" => true}}
        request(api_name, api_spec, params, [:index, :type])
      end


      # mtermvectors ["GET", "POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-multi-termvectors.html
      def mtermvectors(params = {})
        api_name = 'mtermvectors'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_mtermvectors", "/{index}/_mtermvectors", "/{index}/{type}/_mtermvectors"]}, "methods" => ["GET", "POST"]}
        request(api_name, api_spec, params, [:index, :type])
      end


      # nodes.hot_threads ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-hot-threads.html
      def nodes_hot_threads(params = {})
        api_name = 'nodes.hot_threads'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_cluster/nodes/hotthreads", "/_cluster/nodes/hot_threads", "/_cluster/nodes/{node_id}/hotthreads", "/_cluster/nodes/{node_id}/hot_threads", "/_nodes/hotthreads", "/_nodes/hot_threads", "/_nodes/{node_id}/hotthreads", "/_nodes/{node_id}/hot_threads"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:node_id])
      end


      # nodes.info ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-info.html
      def nodes_info(params = {})
        api_name = 'nodes.info'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_nodes", "/_nodes/{node_id}", "/_nodes/{metric}", "/_nodes/{node_id}/{metric}"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:node_id, :metric])
      end


      # nodes.reload_secure_settings ["POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/6.x/secure-settings.html#reloadable-secure-settings
      def nodes_reload_secure_settings(params = {})
        api_name = 'nodes.reload_secure_settings'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_nodes/reload_secure_settings", "/_nodes/{node_id}/reload_secure_settings"]}, "methods" => ["POST"]}
        request(api_name, api_spec, params, [:node_id])
      end


      # nodes.stats ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-stats.html
      def nodes_stats(params = {})
        api_name = 'nodes.stats'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_nodes/stats", "/_nodes/{node_id}/stats", "/_nodes/stats/{metric}", "/_nodes/{node_id}/stats/{metric}", "/_nodes/stats/{metric}/{index_metric}", "/_nodes/{node_id}/stats/{metric}/{index_metric}"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:node_id, :metric, :index_metric])
      end


      # nodes.usage ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-usage.html
      def nodes_usage(params = {})
        api_name = 'nodes.usage'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_nodes/usage", "/_nodes/{node_id}/usage", "/_nodes/usage/{metric}", "/_nodes/{node_id}/usage/{metric}"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:node_id, :metric])
      end


      # ping ["HEAD"]
      # http://www.elastic.co/guide/
      def ping(params = {})
        api_name = 'ping'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/"]}, "methods" => ["HEAD"]}
        request(api_name, api_spec, params, [])
      end
      alias :ping? :ping


      # put_script ["PUT", "POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/modules-scripting.html
      def put_script(params = {})
        api_name = 'put_script'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_scripts/{id}", "/_scripts/{id}/{context}"]}, "methods" => ["PUT", "POST"], "body" => {"required" => true}}
        request(api_name, api_spec, params, [:id, :context])
      end


      # rank_eval ["GET", "POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/master/search-rank-eval.html
      def rank_eval(params = {})
        api_name = 'rank_eval'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_rank_eval", "/{index}/_rank_eval"]}, "methods" => ["GET", "POST"], "body" => {"required" => true}}
        request(api_name, api_spec, params, [:index])
      end


      # reindex ["POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-reindex.html
      def reindex(params = {})
        api_name = 'reindex'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_reindex"]}, "methods" => ["POST"], "body" => {"required" => true}}
        request(api_name, api_spec, params, [])
      end


      # reindex_rethrottle ["POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-reindex.html
      def reindex_rethrottle(params = {})
        api_name = 'reindex_rethrottle'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_reindex/{task_id}/_rethrottle"]}, "methods" => ["POST"]}
        request(api_name, api_spec, params, [:task_id])
      end


      # render_search_template ["GET", "POST"]
      # http://www.elasticsearch.org/guide/en/elasticsearch/reference/master/search-template.html
      def render_search_template(params = {})
        api_name = 'render_search_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_render/template", "/_render/template/{id}"]}, "methods" => ["GET", "POST"]}
        request(api_name, api_spec, params, [:id])
      end


      # scripts_painless_execute ["GET", "POST"]
      # https://www.elastic.co/guide/en/elasticsearch/painless/master/painless-execute-api.html
      def scripts_painless_execute(params = {})
        api_name = 'scripts_painless_execute'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_scripts/painless/_execute"]}, "methods" => ["GET", "POST"]}
        request(api_name, api_spec, params, [])
      end


      # scroll ["GET", "POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/search-request-scroll.html
      def scroll(params = {})
        api_name = 'scroll'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_search/scroll", "/_search/scroll/{scroll_id}"]}, "methods" => ["GET", "POST"]}
        request(api_name, api_spec, params, [:scroll_id])
      end


      # search ["GET", "POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/search-search.html
      def search(params = {})
        api_name = 'search'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_search", "/{index}/_search", "/{index}/{type}/_search"]}, "methods" => ["GET", "POST"]}
        request(api_name, api_spec, params, [:index, :type])
      end


      # search_shards ["GET", "POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/search-shards.html
      def search_shards(params = {})
        api_name = 'search_shards'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_search_shards", "/{index}/_search_shards"]}, "methods" => ["GET", "POST"]}
        request(api_name, api_spec, params, [:index])
      end


      # search_template ["GET", "POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/current/search-template.html
      def search_template(params = {})
        api_name = 'search_template'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_search/template", "/{index}/_search/template", "/{index}/{type}/_search/template"]}, "methods" => ["GET", "POST"], "body" => {"required" => true}}
        request(api_name, api_spec, params, [:index, :type])
      end


      # snapshot.create ["PUT", "POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html
      def snapshot_create(params = {})
        api_name = 'snapshot.create'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_snapshot/{repository}/{snapshot}"]}, "methods" => ["PUT", "POST"]}
        request(api_name, api_spec, params, [:repository, :snapshot])
      end


      # snapshot.create_repository ["PUT", "POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html
      def snapshot_create_repository(params = {})
        api_name = 'snapshot.create_repository'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_snapshot/{repository}"]}, "methods" => ["PUT", "POST"], "body" => {"required" => true}}
        request(api_name, api_spec, params, [:repository])
      end


      # snapshot.delete ["DELETE"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html
      def snapshot_delete(params = {})
        api_name = 'snapshot.delete'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_snapshot/{repository}/{snapshot}"]}, "methods" => ["DELETE"]}
        request(api_name, api_spec, params, [:repository, :snapshot])
      end


      # snapshot.delete_repository ["DELETE"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html
      def snapshot_delete_repository(params = {})
        api_name = 'snapshot.delete_repository'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_snapshot/{repository}"]}, "methods" => ["DELETE"]}
        request(api_name, api_spec, params, [:repository])
      end


      # snapshot.get ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html
      def snapshot_get(params = {})
        api_name = 'snapshot.get'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_snapshot/{repository}/{snapshot}"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:repository, :snapshot])
      end


      # snapshot.get_repository ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html
      def snapshot_get_repository(params = {})
        api_name = 'snapshot.get_repository'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_snapshot", "/_snapshot/{repository}"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:repository])
      end


      # snapshot.restore ["POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html
      def snapshot_restore(params = {})
        api_name = 'snapshot.restore'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_snapshot/{repository}/{snapshot}/_restore"]}, "methods" => ["POST"]}
        request(api_name, api_spec, params, [:repository, :snapshot])
      end


      # snapshot.status ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html
      def snapshot_status(params = {})
        api_name = 'snapshot.status'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_snapshot/_status", "/_snapshot/{repository}/_status", "/_snapshot/{repository}/{snapshot}/_status"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:repository, :snapshot])
      end


      # snapshot.verify_repository ["POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html
      def snapshot_verify_repository(params = {})
        api_name = 'snapshot.verify_repository'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_snapshot/{repository}/_verify"]}, "methods" => ["POST"]}
        request(api_name, api_spec, params, [:repository])
      end


      # tasks.cancel ["POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/tasks.html
      def tasks_cancel(params = {})
        api_name = 'tasks.cancel'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_tasks/_cancel", "/_tasks/{task_id}/_cancel"]}, "methods" => ["POST"]}
        request(api_name, api_spec, params, [:task_id])
      end


      # tasks.get ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/tasks.html
      def tasks_get(params = {})
        api_name = 'tasks.get'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_tasks/{task_id}"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [:task_id])
      end


      # tasks.list ["GET"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/tasks.html
      def tasks_list(params = {})
        api_name = 'tasks.list'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_tasks"]}, "methods" => ["GET"]}
        request(api_name, api_spec, params, [])
      end


      # termvectors ["GET", "POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-termvectors.html
      def termvectors(params = {})
        api_name = 'termvectors'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/{index}/{type}/_termvectors", "/{index}/{type}/{id}/_termvectors"]}, "methods" => ["GET", "POST"]}
        request(api_name, api_spec, params, [:index, :type, :id])
      end


      # update ["POST"]
      # http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-update.html
      def update(params = {})
        api_name = 'update'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/{index}/{type}/{id}/_update"]}, "methods" => ["POST"], "body" => {"required" => true}}
        request(api_name, api_spec, params, [:index, :type, :id])
      end


      # update_by_query ["POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/master/docs-update-by-query.html
      def update_by_query(params = {})
        api_name = 'update_by_query'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/{index}/_update_by_query", "/{index}/{type}/_update_by_query"]}, "methods" => ["POST"]}
        request(api_name, api_spec, params, [:index, :type])
      end


      # update_by_query_rethrottle ["POST"]
      # https://www.elastic.co/guide/en/elasticsearch/reference/current/docs-update-by-query.html
      def update_by_query_rethrottle(params = {})
        api_name = 'update_by_query_rethrottle'
        api_spec = @api_specs[api_name] ||= {"url" => {"paths" => ["/_update_by_query/{task_id}/_rethrottle"]}, "methods" => ["POST"]}
        request(api_name, api_spec, params, [:task_id])
      end
    end
  end
end
