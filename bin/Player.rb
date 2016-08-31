class Player

	def initialize(pAtk, mAtk, pDef, mDef, hP, mP)
		@pAtk = pAtk
		@mAtk = mAtk 
		@pDef = pDef 
		@mDef = mDef 
		@hP = hP 
		@mP = mP
	end
	
	damage = 0
	
	attr_accessor :pAtk, :mAtk, :pDef, :mDef, :hp, :mP
	
	def get_name
		puts "***Player***"
	end
	
	def get_stats
		#puts "pAtk:\t#@pAtk"
		#puts "mAtk:\t#@mAtk"
		#puts "pDef:\t#@pDef"
		#puts "mDef:\t#@mDef"
		self.get_name
		puts "hP:\t#@hP"
		puts "mP:\t#@mP"
	end
	
	def use_spell
		puts "\nYou used spell!"
		@mP = @mP - 30
		@damage = @mAtk
		#self.get_stats
	end
	
	def use_sword
		puts "\nYou used sword!"
		@damage = @pAtk
		#self.get_stats
	end
	
	def use_potion_hP
		puts "\nYou used a potion, recovered HP!"
		@hP = @hP + 50
		@damage = 0
		#self.get_stats
	end
	
	def use_potion_mP
		puts "\nYou used a potion, recovered MP!"
		@mP = @mP + 25
		@damage = 0
		#self.get_stats
	end
	
	def get_damage
		@damage
	end
	
	def get_hP
		@hP
	end
	
	def get_methods
		ary = ["use_spell", "use_sword", "use_potion_hP", "use_potion_mP"]
	end
	
	def disp_actions
		ary = self.get_methods
	
		n = 1
		ary.each do |e|
			puts "#{n}: #{e}"
			n += 1
		end
		return n - 1
	end
	
	def chos_actions
		num = self.disp_actions
		chc = nil
		flg = false
		while flg == false do
		
			print "Enter your choice: "
			chc = gets
		
			for i in 0..num do
				if chc.to_i == i
					flg = true
				end
			end
			if @mP < 30 && chc.to_i == 1
				flg = false
				puts "\t\tMP is too low!"
			end
				
		end
		return chc
	end
	
	def make_actions
		choice = self.chos_actions
		
		case choice.to_i
		
		when 1
			if @mP >= 30
				self.use_spell
				puts "\t\t#@damage pts of damage!\n"
			else
				puts "\t\tMP is too low!"
				puts "\t\t#@damage pts of damage!\n"
			end
		when 2
			self.use_sword
			puts "\t\t#@damage pts of damage!\n"
		when 3
			self.use_potion_hP
			puts "\t\t#@damage pts of damage!\n"
		else
			self.use_potion_mP
			puts "\t\t#@damage pts of damage!\n"
		end
	end
	
	def damage_calc(opp_dam)
		@hP = @hP - opp_dam
		self.get_stats
	end
	
end
