module SensitiveMethods
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def sensitive(*method_names)
      method_names = [*method_names]
      method_names.each do |method_name|
        without = "#{method_name}_without_sensitive"
        with = "sensitive_#{method_name}"
        define_method without do
          raise SensitiveDataError, "#{method_name} contains sensitive data. Please use #{with} instead"
        end
        class_eval <<-EOS
          alias #{with.to_sym} #{method_name.to_sym}
          alias #{method_name.to_sym}  #{without.to_sym}
        EOS
      end
    end
  end

end

class SensitiveDataError < StandardError
end
