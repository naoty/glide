require "redcarpet"

module Redcarpet
  module Render
    class SectionedHTML < HTML
      def postprocess(full_document)
        "<section>\n#{full_document}\n</section>"
      end

      def hrule
        "</section>\n\n<section>"
      end

      def block_code(code, language)
        "<pre><code>\n#{code}</code></pre>"
      end
    end
  end
end
