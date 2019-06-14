class Dwarf < Champion
  def rand_damage
    # lower probability to hit target but higher damage
    return weapon.attack_damage * 2 if rand < 0.5

    return 0
  end
end
