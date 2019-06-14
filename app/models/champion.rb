class Champion < ApplicationRecord
    belongs_to :weapon, optional: true
    belongs_to :shield, optional: true
    after_initialize :init

    def init
        self.hp = 100
    end

    def attack(enemy)
        damage = rand_damage
        enemy.hit(damage)
        return {
            attacker: self.id,
            defender: enemy.id,
            damage: damage
        }
    end

    def hit(points)
        if (rand() * 100) + weapon.attack_damage > shield.defense
            self.hp -= points 
            self.hp = [0, self.hp].max
        end
    end

    def dead?
        return hp.zero?
    end

    def alive?
        return !dead?
    end
end
