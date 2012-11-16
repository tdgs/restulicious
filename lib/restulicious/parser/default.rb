module Restulicious
  module Parser
    class Default

      def initialize(klazz, collection_key, body)
        @klazz          = klazz
        @collection_key = collection_key
        @body           = body
      end

      def result
        if collection?
          Restulicious::Collection.from_parser(@klazz, @collection_key, hashified_body)
        else
          @klazz.from_api(hashified_body.symbolize_keys!)
        end
      end

      private

      def hashified_body
        @hashified_body ||= JSON.parse(@body)
      end

      def collection?
        hashified_body[@collection_key].is_a?(Array)
      end

    end
  end
end
