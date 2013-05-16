module ActiveAdmin
  module Inputs
    class Select2Input < ::Formtastic::Inputs::SelectInput
      
      def to_html
        input_wrapping do
          hidden_input <<
          label_html <<
          (options[:group_by] ? grouped_select_html : select_html) <<
          script_html
        end
      end
      
      def input_html_options
        super.merge(id: "select2_#{method.to_s}")
      end
        
      def script_html
        %Q{<script type='text/javascript'>\n$("#select2_#{method.to_s}").select2(#{select2_options.to_json});\n</script>}.html_safe
      end
      
      def select2_options
        {placeholder: "Select #{method}"}.merge options[:select2_options]||{}
      end
    end
  end
end
