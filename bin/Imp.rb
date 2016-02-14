load "Monster.rb"

class Imp < Monster

	def initialize(pAtk, mAtk, pDef, mDef, hP, mP)
		super(pAtk, mAtk, pDef, mDef, hP, mP)
	end
	
	attr_accessor :pAtk, :mAtk, :pDef, :mDef, :hp, :mP, :damage
	
	def get_methods
		ary = ["curse", "spite"]
	end
	
	def curse
		puts "\nCurse!"
		@mP = @mP - 25
		@damage = @mAtk
		#self.get_stats
	end
	
	def spite
		puts "\nSpite!"
		@hP = @hP - 10
		@damage = @pAtk * 1.5
		#self.get_stats
	end
	
	def make_actions

		ary = self.get_methods
		len = ary.length
		num = rand(len) + 1
		
		case num
		when 1
			if @mP >= 25
				self.curse
				puts "\t\t#@damage pts of damage!\n"
			else
				puts "\t\tMP is too low!"
				puts "\t\t#@damage pts of damage!\n"
			end
		else
			self.spite
			puts "\t\t#@damage pts of damage!\n"
		end
	
	end
	
end