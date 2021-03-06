class InventoryManagementSystem
  def initialize(ids)
    @ids = ids
    @contains_two = 0
    @contains_three = 0
  end

  def checksum
    @ids.each do |id|
      contains_two = false
      contains_three = false
      id_arr = id.split(//)
      id_arr_unique = id_arr.uniq
      id_arr_unique.each do |c|
        count = id_arr.select { |i| i == c }.size
        contains_two = true if count == 2
        contains_three = true if count == 3
      end
      @contains_two += 1 if contains_two
      @contains_three += 1 if contains_three
    end
    @contains_two * @contains_three
  end

  def common
    match = ""
    until all_ids_compared
      id = pull_next_id
      @ids.each do |string|
        match = compare_current_to_next(id, string, match)
      end
    end
    match
  end

private

  def compare_current_to_next(current_id, next_id, match)
    local_match = []
    next_id.each_char.with_index do |character, index|
      local_match << character if character == current_id[index]
    end
    if local_match.size > match.length
      local_match.join
    else
      match
    end
  end

  def all_ids_compared
    @ids.empty?
  end

  def pull_next_id
    @ids.delete(@ids.first)
  end
end
