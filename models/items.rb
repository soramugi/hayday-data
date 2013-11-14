class Items
  def csv
    require "csv"
    CSV.open(File.expand_path(File.dirname(__FILE__)) + "/../data/item_list.csv", "r")
  end

  def list
    list = []
    self.csv.each do |csv|
      item           = Item.new
      item.name      = csv.shift
      item.price     = csv.shift.to_f
      item.max_price = csv.shift.to_f
      list.push item
    end
    list
  end
end
