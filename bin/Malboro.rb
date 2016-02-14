load "Monster.rb"

class Malboro < Monster

	def initialize(pAtk, mAtk, pDef, mDef, hP, mP)
		super(pAtk, mAtk, pDef, mDef, hP, mP)
	end
	
	attr_accessor :pAtk, :mAtk, :pDef, :mDef, :hp, :mP, :damage
	
	def get_methods
		ary = ["bad_breath", "try_to_eat"]
	end
	
	def bad_breath
		puts "\nBad breath attack!"
		@mP = @mP - 25
		@damage = @mAtk * 1.5
		#self.get_stats
	end
	
	def try_to_eat
		puts "\nTried to eat you!"
		@damage = @pAtk
		#self.get_stats
	end
	
	def make_actions

		ary = self.get_methods
		len = ary.length
		num = rand(len) + 1
		
		case num
		when 1
			if @mP >= 25
				self.bad_breath
				puts "\t\t#@damage pts of damage!\n"
			else
				puts "\t\tMP is too low!"
				puts "\t\t#@damage pts of damage!\n"
			end
		else
			self.try_to_eat
			puts "\t\t#@damage pts of damage!\n"
		end
	
	end
	
end