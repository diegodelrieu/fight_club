puts 'Cleaning database...'
Champion.destroy_all
Weapon.destroy_all
Shield.destroy_all

puts 'Creating magic...'
champions_attributes = [
  {
    name:         'Little Hunter',
    description:      'Sneaky & powerful',
    hp: 100,
    crit_chance: 0.25,
    attack_damage: 55
  },
  {
    name:         'Great preacher',
    description:      'All mighty',
    hp: 50,
    crit_chance: 0.8,
    attack_damage: 50
  }
]

weapons_attributes = [
    {
        name: "epic sword",
        attack_damage: 15,
        crit_chance: 0.2
    },
    {
        name: "large rod",
        attack_damage: 12,
        crit_chance: 0.4
    }
]
Champion.create!(champions_attributes)
Weapon.create!(weapons_attributes)
puts 'Finished!'
