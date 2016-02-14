load "Monster.rb"

class Witch < Monster

	def initialize(pAtk, mAtk, pDef, mDef, hP, mP)
		super(pAtk, mAtk, pDef, mDef, hP, mP)
	end
	
	attr_accessor :pAtk, :mAtk, :pDef, :mDef, :hp, :mP, :damage
	
	def get_methods
		ary = ["dark_magic", "try_to_eat", "drink_something_weird", "picked_nose"]
	end
	
	def dark_magic
		puts "\nDark magic!"
		@mP = @mP - 30
		@damage = @mAtk
		#self.get_stats
	end
	
	def try_to_eat
		puts "\nTried to eat you!"
		@damage = @pAtk
		#self.get_stats
	end
	
	def drink_something_weird
		puts "\nRecovered HP and MP!"
		@hP = @hP + 30
		@mP = @mP + 30
		@damage = 0
		#self.get_stats
	end
	
	def picked_nose
		puts "\nPicked it's nose..."
		@damage = 0
		#self.get_stats
	end
	
	def make_actions

		ary = self.get_methods
		len = ary.length
		num = rand(len) + 1
		
		case num
		when 1
			if @mP >= 30
				self.dark_magic
				puts "\t\t#@damage pts of damage!\n"
			else
				puts "\t\tMP is too low!"
				puts "\t\t#@damage pts of damage!\n"
			end
		when 2
			self.try_to_eat
			puts "\t\t#@damage pts of damage!\n"
		when 3
			self.drink_something_weird
			puts "\t\t#@damage pts of damage!\n"
		else
			self.picked_nose
			puts "\t\t#@damage pts of damage!\n"
		end
	
	end
	
end