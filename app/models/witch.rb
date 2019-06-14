class Witch < Champion
  def rand_damage
    # lower probability to hit target but higher damage
    return weapon.attack_damage * 1.3
  end
end
