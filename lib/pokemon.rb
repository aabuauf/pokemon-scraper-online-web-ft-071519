class Pokemon
  
  attr_accessor :name, :type, :db
  attr_reader :id
  
  def initialize(name:, type:, id:nil, db:)
    @name = name
    @type = type
    @id = id
    @db = db
  end
  
  def self.save(name, type,self.db)
    sql = <<-SQL
      INSERT INTO pokmon (id,name,type)
      VALUES
    SQL
  end
end

