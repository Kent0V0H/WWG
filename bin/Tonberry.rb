load "Monster.rb"

class Tonberry < Monster

	def initialize(pAtk, mAtk, pDef, mDef, hP, mP)
		super(pAtk, mAtk, pDef, mDef, hP, mP)
	end
	
	attr_accessor :pAtk, :mAtk, :pDef, :mDef, :hp, :mP, :damage
	
	def get_methods
		ary = ["use_knife", "move_slow", "move_very_slow", "move_very_very_slow"]
	end
	
	def use_knife
		puts "\nOh no! Used knife!"
		@damage = @pAtk * 2
		#self.get_stats
	end
	
	def move_slow
		puts "\n...Moved toward you...slowly!"
		@damage = 0
		#self.get_stats
	end
	
	def move_very_slow
		puts "\n...Moved toward you...very slowly!"
		@damage = 0
		#self.get_stats
	end
	
	def move_very_very_slow
		puts "\n...Moved toward you...very very slowly!"
		@damage = 0
		#self.get_stats
	end
	
	def make_actions

		ary = self.get_methods
		len = ary.length
		num = rand(len) + 1
		
		case num
		when 1
			self.use_knife
			puts "\t\t#@damage pts of damage!\n"
		when 2
			self.move_slow
			puts "\t\t#@damage pts of damage!\n"
		when 3
			self.move_very_slow
			puts "\t\t#@damage pts of damage!\n"
		else
			self.move_very_very_slow
			puts "\t\t#@damage pts of damage!\n"
		end
	
	end
	
end