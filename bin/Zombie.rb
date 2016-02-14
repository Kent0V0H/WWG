load "Monster.rb"

class Zombie < Monster

	def initialize(pAtk, mAtk, pDef, mDef, hP, mP)
		super(pAtk, mAtk, pDef, mDef, hP, mP)
	end
	
	attr_accessor :pAtk, :mAtk, :pDef, :mDef, :hp, :mP, :damage
	
	def get_methods
		ary = ["try_to_eat", "gnaw_self"]
	end
	
	def try_to_eat
		puts "\nZombie is hungry!"
		@mP = @mP - 25
		@damage = @pAtk + @mAtk
		#self.get_stats
	end
	
	def gnaw_self
		puts "\nGnawed on itself!"
		@hP = @hP - 25
		@mP = @mP + 25
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
				self.try_to_eat
				puts "\t\t#@damage pts of damage!\n"
			else
				puts "\t\tMP is too low!"
				puts "\t\t#@damage pts of damage!\n"
			end
		else
			self.gnaw_self
			puts "\t\t#@damage pts of damage!\n"
		end
	
	end
	
end