require 'cucumber/formatter/junit'

module MultiJunit
  class Formatter < Cucumber::Formatter::Junit
    def feature_result_filename(feature_file)
      File.join(@reportdir, "#{device_name || "TEST"}-#{basename(feature_file)}.xml")
    end

    def feature_name(keyword, name)
      feature_name = super
      @feature_name = device_name + "-" + feature_name if device_name
    end

    private

    def device_name
      ENV["DEVICE_NAME"] || ENV["ADB_DEVICE_ARG"] || ENV["DEVICE_TARGET"]
    end
  end
end
