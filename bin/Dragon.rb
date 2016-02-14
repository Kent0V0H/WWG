load "Monster.rb"

class Dragon < Monster

	def initialize(pAtk, mAtk, pDef, mDef, hP, mP)
		super(pAtk, mAtk, pDef, mDef, hP, mP)
	end
	
	attr_accessor :pAtk, :mAtk, :pDef, :mDef, :hp, :mP, :damage
	
	def get_methods
		ary = ["breath_fire", "try_to_eat", "sleep", "covet"]
	end
	
	def breath_fire
		puts "\nWatch out for fire!"
		@mP = @mP - 50
		@damage = @mAtk * 1.5
		#self.get_stats
	end
	
	def try_to_eat
		puts "\nTried to eat you!"
		@damage = @pAtk
		#self.get_stats
	end
	
	def sleep
		puts "\nRecovered HP and MP!"
		@hP = @hP + 50
		@mP = @mP + 25
		@damage = 0
		#self.get_stats
	end
	
	def covet
		puts "\nCoveted treasure..."
		@damage = 0
		#self.get_stats
	end
	
	def make_actions

		ary = self.get_methods
		len = ary.length
		num = rand(len) + 1
		
		case num
		when 1
			if @mP >= 50
				self.breath_fire
				puts "\t\t#@damage pts of damage!\n"
			else
				puts "\t\tMP is too low!"
				puts "\t\t#@damage pts of damage!\n"
			end
		when 2
			self.try_to_eat
			puts "\t\t#@damage pts of damage!\n"
		when 3
			self.sleep
			puts "\t\t#@damage pts of damage!\n"
		else
			self.covet
			puts "\t\t#@damage pts of damage!\n"
		end
	
	end
	
end