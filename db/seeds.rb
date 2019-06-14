puts 'Cleaning database...'
Champion.destroy_all
Weapon.destroy_all
Shield.destroy_all

puts 'Creating magic...'
champions_attributes = [
  {
    name:         'Little Hunter',
    description:      'Sneaky & powerful',
    type: 'Dwarf',
    hp: 100,
    weapon_id: 1,
    shield_id: 1,
    picture: "/images/champion_1.png"
  },
  {
    name:         'Great preacher',
    description:      'All mighty',
    type: 'Witch',
    hp: 50,
    picture: "/images/champion_1.png"

  }
]

weapons_attributes = [
  {
    name: "Baton spirituel",
    attack_damage: 15,
    picture: "/images/weapon_1.png"
  },
  {
    name: "Arc déroutant",
    attack_damage: 12,
    picture: "/images/weapon_2.png"
  },
  {
    name: "Dagues Sylvestres",
    attack_damage: 12,
    picture: "/images/weapon_3.png",
  }
]

shields_attributes = [
  {
    name: "Bouclier en Mousse",
    defense: 5,
    picture: "/images/shield_1.png"
  },
  {
    name: "Bouclier en Mousse",
    defense: 5,
    picture: "/images/shield_1.png"
  },
  {
    name: "Bouclier des 1001 Griffes",
    defense: 999,
    picture: "/images/shield_2.png"
  },
]

Shield.create!(shields_attributes)
Weapon.create!(weapons_attributes)
Champion.create!(champions_attributes)

puts 'Finished!'
