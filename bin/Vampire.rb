load "Monster.rb"

class Vampire < Monster

	def initialize(pAtk, mAtk, pDef, mDef, hP, mP)
		super(pAtk, mAtk, pDef, mDef, hP, mP)
	end
	
	attr_accessor :pAtk, :mAtk, :pDef, :mDef, :hp, :mP, :damage
	
	def get_methods
		ary = ["drink_blood", "use_claws", "use_coffin", "turn_to_bat"]
	end
	
	def drink_blood
		puts "\nSucked your blood!"
		@mP = @mP - 25
		@damage = @mAtk
		#self.get_stats
	end
	
	def use_claws
		puts "\nAssaulted you with claws!"
		@damage = @pAtk
		#self.get_stats
	end
	
	def use_coffin
		puts "\nRecovered HP and MP!"
		@hP = @hP + 50
		@mP = @mP + 50
		@damage = 0
		#self.get_stats
	end
	
	def turn_to_bat
		puts "\nTurned to bat..."
		@hP = @hP - 25
		@mP = @mP - 25
		@damage = 0
		#self.get_stats
	end
	
	def make_actions

		ary = self.get_methods
		len = ary.length
		num = rand(len) + 1
		
		case num
		when 1
			if @mP >= 25
				self.drink_blood
				puts "\t\t#@damage pts of damage!\n"
			else
				puts "\t\tMP is too low!"
				puts "\t\t#@damage pts of damage!\n"
			end
		when 2
			self.use_claws
			puts "\t\t#@damage pts of damage!\n"
		when 3
			self.use_coffin
			puts "\t\t#@damage pts of damage!\n"
		else
			if @mP >= 25
				self.turn_to_bat
				puts "\t\t#@damage pts of damage!\n"
			else
				puts "\t\tMP is too low!"
				puts "\t\t#@damage pts of damage!\n"
			end
		end
	
	end
	
end