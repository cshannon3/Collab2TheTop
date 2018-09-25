class Skill
    attr_reader :name
    attr_reader :id

    @@count = 0
    #@@skill_l = [Skill.new(name: "Plugins"), Skill.new(name: "Animation"), Skill.new(name: "Models"), Skill.new(name: "Layouts")]


  def initialize(name)
    @name = name
    @id = @@count
    @@count +=1
  end

  def self.all
    [Skill.new("Plugins"), Skill.new("Animation"), Skill.new("Models"), Skill.new("Layouts")]
  end

  def name
    @name
  end
end


