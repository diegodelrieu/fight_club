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
    picture: "https://s.ankama.com/www/static.ankama.com/dofus/renderer/look/7b317c36302c323039327c313d31363338303633342c323d31333732363031322c333d31363733353737382c343d323738363138362c353d31363736313930347c3135307d/full/1/250_250-10_100.png"
  },
  {
    name:         'Great preacher',
    description:      'All mighty',
    type: 'Witch',
    hp: 50,
    picture: "https://s.ankama.com/www/static.ankama.com/dofus/renderer/look/7b317c36302c323039327c313d31363338303633342c323d31333732363031322c333d31363733353737382c343d323738363138362c353d31363736313930347c3135307d/full/1/250_250-10_100.png"

  }
]

weapons_attributes = [
  {
    name: "Baton spirituel",
    attack_damage: 15,
    picture: "https://s.ankama.com/www/static.ankama.com/dofus/www/game/items/200/4008.png"
  },
  {
    name: "Arc déroutant",
    attack_damage: 12,
    picture: "https://s.ankama.com/www/static.ankama.com/dofus/www/game/items/200/2003.png"
  },
  {
    name: "Dagues Sylvestres",
    attack_damage: 12,
    picture: "https://s.ankama.com/www/static.ankama.com/dofus/www/game/items/200/5006.png",
  }
]

shields_attributes = [
  {
    name: "Bouclier en Mousse",
    defense: 5,
    picture: "https://s.ankama.com/www/static.ankama.com/dofus/www/game/items/200/82010.png"
  },
  {
    name: "Bouclier en Mousse",
    defense: 5,
    picture: "https://s.ankama.com/www/static.ankama.com/dofus/www/game/items/200/82010.png"
  },
  {
    name: "Bouclier des 1001 Griffes",
    defense: 999,
    picture: "https://s.ankama.com/www/static.ankama.com/dofus/www/game/items/200/82131.png"
  },
]

Shield.create!(shields_attributes)
Weapon.create!(weapons_attributes)
Champion.create!(champions_attributes)

puts 'Finished!'
