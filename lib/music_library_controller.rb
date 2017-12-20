class MusicLibraryController 
  
  extend Concerns::Findable 
  
  def initialize(path = "./db/mp3s")
    @path = path 
    MusicImporter.new(path)
  end 
  
  
  
end 