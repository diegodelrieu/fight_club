class InstancesController < ApplicationController
      def index 
        @champions = Champion.all
        @weapons = Weapon.all
        @shields = Shield.all
      end

      def new
        # @champion = Champion.find(params[:champion_id])
        # @weapon = Weapon.find(params[:weapon_id])
        # @shield = Shield.find(params[:shield_id])
        @instance = Instance.new
      end
    
      def create
        @instance = Instance.new(instance_params)
        # @instance.champion = Champion.find(params[:champion_id])
        # @instance.weapon = Weapon.find(params[:weapon_id])
        # @instance.shield = Shield.find(params[:shield_id])
        @instance.save
      end
    
      def update
      end
    
      def destroy
      end
    
      private
    
      def instance_params
        params.require(:instance).permit(:champion_id, :weapon_id, :shield_id)
      end
end
