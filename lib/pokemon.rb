

class Pokemon
  
  attr_accessor :name, :type, :db
  attr_reader :id
  
  def initialize(name:, type:, id:nil, db:)
    @name = name
    @type = type
    @id = id
    @db = db
  end
  
  def save(name, type,self.db)
    sql = <<-SQL
      INSERT INTO pokmon (name,type)
      VALUES(?,?)
    SQL
    
    DB[:conn].execute(sql, name, type)
  end
end

