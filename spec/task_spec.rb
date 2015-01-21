require('spec_helper')
describe(Task) do
  describe(".all") do #class methods get called on Task itself
    it("is empty at first") do
      expect(Task.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a task to the array of saved tasks") do
      test_task = Task.new({:description => "learn SQL", :list_id => 1, :due => "2015-01-01 00:00:00"})
      test_task.save()
      expect(Task.all()).to(eq([test_task])) #test_task pushed into array
    end
  end


  describe("#description") do
    it("lets you read the description out") do
      test_task = Task.new({:description => "learn SQL", :list_id => 1, :due => "2015-01-01"})
      expect(test_task.description()).to(eq("learn SQL"))
    end
  end

  describe("#due") do
    it("lets you read the due date out") do
      test_task = Task.new({:description => "learn SQL", :list_id => 1, :due => "2015-01-01"})
      expect(test_task.due()).to(eq("2015-01-01"))
    end
  end


    describe("#list_id") do
    it("lets you read the list ID out") do
      test_task = Task.new({:description => "learn SQL", :list_id => 1, :due => "2015-01-01"})
      expect(test_task.list_id()).to(eq(1))
    end
  end

  describe("#==") do
    it("is the same task if it has the same description") do
      task1 = Task.new({:description => "learn SQL", :list_id => 1, :due => "2015-01-01"})
      task2 = Task.new({:description => "learn SQL", :list_id => 1, :due => "2015-01-01"})
      expect(task1).to(eq(task2))
    end
  end
end
