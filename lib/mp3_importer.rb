require 'pry'
class MP3Importer
@@paths = 0
attr_reader :path

def initialize (path)
@path = path
end

def files
  search = @path
  # search << "/*.mp3"
array = Dir["#{@path}/*.mp3"]
  array.map do |string|
    string.slice! "#{@path}/"
# binding.pry
  end
  # array.map do |string|
  #     string.slice! ".mp3"
  #   end
array
# binding.pry
end

def import
  self.files.each do |filename|
Song.new_by_filename(filename)
# binding.pry
end


end



end
