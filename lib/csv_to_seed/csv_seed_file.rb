module CsvToSeed
  # CSV Seed File
  # @author Jeffrey Harrington
  # Object that represents a CSV file that can be turned into a list of ActiveRecord Seed Lines
  class CsvSeedFile
    attr_accessor :filepath
    attr_accessor :col_sep
    attr_accessor :quote_char
    attr_accessor :model_name

    def initialize(options)
      @filepath   = options[:filepath]   || (fail ArgumentError, "Filepath required")
      @col_sep    = options[:col_sep]    || ','
      @quote_char = options[:quote_char] || '"'
      @model_name = options[:model_name] || model_name_from_filename
    end

    ##
    # Returns an array of strings containing ActiveRecord inserts
    #
    # @return [Array] ActiveRecord insert strings to be used in Seeds file
    ##
    def seeds
      seeds = []
      CSV.foreach(filepath, csv_options) do |row|
        params = row.to_h.delete_if { |k, _| k.nil? }.inspect
        seeds << "#{model_name}.find_or_create_by(#{params})"
      end
      seeds
    end

    private

    ##
    # Hash of options to be passed to CSV when parsing file
    #
    # @return [Hash] Options to be used when parsing CSV file
    ##
    def csv_options
      { headers: true, header_converters: [:downcase, :symbol], col_sep: col_sep, quote_char: quote_char }
    end

    ##
    # Returns the model name to be used for inserts based on name of CSV file
    #
    # @return [String] Name of model to be used for ActiveRecord inserts
    ##
    def model_name_from_filename
      pathname = Pathname.new(filepath)
      pathname.basename.to_s.gsub(pathname.extname, "").capitalize
    end
  end
end
