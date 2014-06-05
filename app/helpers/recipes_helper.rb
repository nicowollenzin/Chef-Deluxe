module RecipesHelper
  def units_for_select
    Unit.all.order(:name).collect {|f| [ f.name, f.id] }
  end

  def selected_unit(unit_id)
        unless unit_id.nil?
          Unit.find(unit_id)
        else
          Unit.new
        end
  end

  def creator(user_id)
        unless user_id.nil?
          User.find(user_id).username
        else
          "unknown"
        end
  end
end
