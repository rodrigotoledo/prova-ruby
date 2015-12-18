require 'database'
require 'csv'
require 'rubygems'
require 'br/cnpj'

class ImportFile
  attr_accessor :file_data

  def initialize(file_path = "download/data.csv")
    @logger = Log.new
    if File.exist?(file_path)
      @file_data = CSV.read(file_path)
    else
      @logger.info "Não existe arquivo para importação no diretório download"
    end
  end

  # ...
end
