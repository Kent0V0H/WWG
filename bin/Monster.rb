class Monster

	def initialize(pAtk, mAtk, pDef, mDef, hP, mP)
		@pAtk = pAtk
		@mAtk = mAtk 
		@pDef = pDef 
		@mDef = mDef 
		@hP = hP 
		@mP = mP
	end
	
	damage = 0
	
	def get_damage
		@damage
	end
	
	def get_hP
		@hP
	end
	
	def get_stats
		#puts "pAtk: #@pAtk"
		#puts "mAtk: #@mAtk"
		#puts "pDef: #@pDef"
		#puts "mDef: #@mDef"
		puts "hP:   #@hP"
		puts "mP:   #@mP"
	end
	
	def damage_calc(opp_dam)
		@hP = @hP - opp_dam
		#self.get_stats
	end
	
end