module Jekyll
  class Mermaid < Liquid::Block

    def initialize(tag_name, markup, tokens)
      super
    end

    def render(context)
      @config = context.registers[:site].config['mermaid']
      "<script src=\"#{@config['src']}\"></script>"\
      "<pre><div class=\"mermaid\">#{super}</div></pre>"
    end
  end
end

Liquid::Template.register_tag('mermaid', Jekyll::Mermaid)
