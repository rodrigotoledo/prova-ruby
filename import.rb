$LOAD_PATH << File.join('lib')

begin
  require 'import_file'
rescue LoadError
  puts "'import_file' not found."
  exit
end

# Divirta-se
import_file = ImportFile.new
