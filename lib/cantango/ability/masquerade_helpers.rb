module CanTango
  class Ability
    module MasqueradeHelpers
      def masquerade_user?
        return false if masquerading_off?
        @candidate.respond_to?(:active_user) && @candidate.masquerading?
      end

      def masquerade_account?
        return false if masquerading_off?
        @candidate.respond_to?(:active_account)
      end

      def masquerading_off?
        options[:masquerade] == false
      end
    end
  end
end