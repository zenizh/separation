module SeparateViews
  module Base
    class << self
      def included(base)
        base.send :before_action, :set_variant
      end
    end

    private

    def set_variant
      request.variant = variant
    end

    def variant
      case request.user_agent
      when /iPhone/i
        :phone
      when /iPad/i
        :tablet
      when /Android/i && /mobile/i
        :phone
      when /Android/i
        :tablet
      when /Windows Phone/i
        :phone
      else
        :desktop
      end
    end
  end
end
