# frozen_string_literal: true

require 'better_html'

BetterHtml.config = BetterHtml::Config.new(YAML.load(File.read('.better-html.yml')))
