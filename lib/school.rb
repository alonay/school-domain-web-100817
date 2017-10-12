class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  def name=(name)
    @name=name
  end
  def name
    @name
  end
  def roster
    @roster
  end
  def add_student(student_name, grade)
    #@roster[grade] = []
    #@roster[grade] << student_name
    if @roster.key?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end
  def grade(num)
    @roster[num]
  end
  def sort
    @sorted_roster = {}

    @roster.map do |grade, names|
      @sorted_roster[grade] = names.sort
    end

    return @sorted_roster
  end

end
