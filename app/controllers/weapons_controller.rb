class WeaponsController < ApplicationController
      def index 
        @weapons = Weapon.all
      end

      def new
        @weapon = Weapon.new
      end
    
      def create
        Weapon.create(weapon_params)
      end
    
      def update
      end
    
      def destroy
      end
    
      private
    
      def weapon_params
        params.permit(:name, :crit_chance, :attack_damage)
      end
end
