class Dwarf < Champion
  def rand_damage
    # lower probability to hit target but higher damage
    if rand() < 0.5 then
      return weapon.attack_damage * 2
    end

    return 0
  end
end
