require 'rouge/plugins/redcarpet'

module Postmarkdown
  class MarkdownRenderer
    class HTMLWithRougeAndPants < Redcarpet::Render::HTML
      include Redcarpet::Render::SmartyPants
      include Rouge::Plugins::Redcarpet
    end

    def initialize
      @markdown = ::Redcarpet::Markdown.new(HTMLWithRougeAndPants, :fenced_code_blocks => true)
    end

    def render(text)
      @markdown.render(text)
    end
  end
end
