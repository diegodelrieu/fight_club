class Fight < ApplicationRecord
    belongs_to :champion_1, class_name: "Champion"
    belongs_to :champion_2, class_name: "Champion"
    serialize :fight_sequence
    before_save :sequence

    def sequence
        champions = [ champion_1, champion_2 ]
        champions.shuffle!
        self.fight_sequence = []
          
        while(champions.first.alive? && champions.last.alive?)
            self.fight_sequence << round_attack(champions, 1)
            self.fight_sequence << round_attack(champions, 2)
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
        champion_1_hp = self.fight_sequence.last[:champion_1_hp]
        champion_2_hp = self.fight_sequence.last[:champion_2_hp]

        if champion_1_hp > champion_2_hp
            return champion_1
        elsif champion_1_hp < champion_2_hp
            return champion_2
        end
        nil
    end
end
