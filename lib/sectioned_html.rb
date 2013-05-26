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
    end
  end
end
