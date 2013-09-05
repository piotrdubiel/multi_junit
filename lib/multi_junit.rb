require 'cucumber/formatter/junit'


module MultiJunit
  class Formatter < Cucumber::Formatter::Junit
    def feature_result_filename(feature_file)
      File.join(@reportdir, "#{ENV["ADB_DEVICE_ARG"] || "TEST"}-#{basename(feature_file)}.xml")
    end

    def feature_name(keyword, name)
      feature_name = super
      @feature_name = ENV['ADB_DEVICE_ARG'] + "-" + feature_name if ENV['ADB_DEVICE_ARG']
    end
  end
end
