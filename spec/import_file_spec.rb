require "spec_helper"
require "import_file"

describe ImportFile do
  describe 'Initialize' do
    it "have error when file doesn't exists" do
      File.stubs(:exist?).returns(false)
      import_file = ImportFile.new
      expect(import_file.file_data).to be nil
    end

    it "read file" do
      File.stubs(:exist?).returns(true)
      CSV.stubs(:read).returns([1,2,3])
      import_file = ImportFile.new
      expect(import_file.file_data).to eql([1,2,3])
    end
  end

end
