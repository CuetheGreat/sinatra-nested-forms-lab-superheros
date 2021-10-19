class Hero
	attr_accessor :name, :power, :bio, :team

	@@heroes = []

	def initialize(data)
		@name = data[:name]
		@power = data[:power]
		@bio = data[:bio]
	end

	def self.all
		@@heroes
	end

	def self.clear
		@@heroes.clear
	end
end
