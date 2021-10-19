class Team
	attr_accessor :name, :motto, :members

	@@team = []

	def initialize(params)
		@name = params[:name]
		@motto = params[:motto]
        
		@members =
			params[:members].map do |member_data|
				hero = Hero.new(member_data)
				hero.team = self
				hero
			end
		@@team << self
	end

	def self.all
		@@team
	end
end
