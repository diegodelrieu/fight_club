class ChampionsController < ApplicationController
      def index 
        @champions = Champion.all
      end

      def new
        @champion = Champion.new
      end
    
      def create
        Champion.create(champion_params)
      end
    
      def update
      end
    
      def destroy
      end
    
      private
    
      def champion_params
        params.permit(:name, :description, :hp, :crit_chance, :attack_damage)
      end
end
