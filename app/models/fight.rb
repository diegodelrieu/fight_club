class Fight < ApplicationRecord
  belongs_to :champion_1, class_name: 'Champion'
  belongs_to :champion_2, class_name: 'Champion'
  serialize :fight_sequence
  before_save :sequence

  def sequence
    champions = [champion_1, champion_2]
    champions.shuffle!
    self.fight_sequence = []

    10.times do
      if champions.first.alive? && champions.last.alive?
        fight_sequence << round_attack(champions, 1)
        fight_sequence << round_attack(champions, 2)
      end
    end
  end

  def round_attack(champions, attacker_id)
    if attacker_id == 1
      attacker = champions.first
      defender = champions.last
    else
      attacker = champions.last
      defender = champions.first
    end
    round_result = attacker.attack(defender)

    round_result[:champion_1_hp] = champions.first.hp
    round_result[:champion_2_hp] = champions.last.hp
    round_result
  end

  def result
    if champion_1.alive? && champion_2.dead?
      return champion_1
    elsif champion_2.alive? && champion_1.dead?
      return champion_2
    end

    nil
  end
end
