#!/usr/bin/env bundle exec ruby

require 'octokit'
require 'yaml'

class VersionsGenerator
  def run
    workflow_yaml = YAML.load_file('.github/workflows/build.yml')
    min_version = workflow_yaml
      .dig('jobs', 'build', 'strategy', 'matrix', 'elasticsearch')
      .map { |v| Gem::Version.new(v) }
      .min

    client = Octokit::Client.new(access_token: ENV['GITHUB_TOKEN'])

    versions_to_support = {}
    tags = client.tags('elastic/elasticsearch', per_page: 100)
    tags.each do |tag|
      tag_name = tag[:name]
      next unless tag_name.match?(/v\d+\.\d+\.\d+/)

      tag_version = Gem::Version.new(tag_name.delete_prefix('v'))
      next if tag_version < min_version

      major_minor = tag_version.to_s.split('.')[0..1].join('.')
      if !versions_to_support[major_minor] || versions_to_support[major_minor] < tag_version
        versions_to_support[major_minor] = tag_version
      end
    end

    versions_to_support.values.each do |version|
      puts "        - #{version.to_s}"
    end
  end
end

VersionsGenerator.new.run
