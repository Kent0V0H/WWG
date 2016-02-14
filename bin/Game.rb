load "Player.rb"
load "Dragon.rb"
load "Troll.rb"
load "Imp.rb"
load "Goblin.rb"
load "Tonberry.rb"
load "Malboro.rb"
load "Witch.rb"
load "Vampire.rb"
load "Zombie.rb"

class Game

	def do_battle(p_object, m_object)
		while p_object.get_hP > 0 && m_object.get_hP > 0 do
		
			p_object.make_actions
			m_object.damage_calc(p_object.get_damage)
			if m_object.get_hP > 0
				m_object.make_actions
				p_object.damage_calc(m_object.get_damage)
			end
		
		end
	end

	def do_game

		newPlayer = Player.new(50,100,50,90,100,100) #pAtk, mAtk, pDef, mDef, hP, mP
	
		roundCount = 0
	
		while newPlayer.get_hP > 0 do
		
			num = rand(9) + 1
	
			case num
			when 1
				newDragon = Dragon.new(90,90,90,90,150,100)
				puts "\nDragon!!!\n\n"
				self.do_battle(newPlayer,newDragon)
			when 2
				newTroll = Troll.new(80,20,80,20,100,20)
				puts "\nTroll!!!\n\n"
				self.do_battle(newPlayer,newTroll)
			when 3
				newImp = Imp.new(25,70,25,50,70,70)
				puts "\nImp!!!\n\n"
				self.do_battle(newPlayer,newImp)
			when 4
				newGoblin = Goblin.new(70,50,50,50,70,70)
				puts "\nGoblin!!!\n\n"
				self.do_battle(newPlayer,newGoblin)
			when 5
				newTonberry = Tonberry.new(70,30,50,50,130,30)
				puts "\nTonberry!!!\n\n"
				self.do_battle(newPlayer,newTonberry)
			when 6
				newMalboro = Malboro.new(80,60,70,70,110,50)
				puts "\nMalboro!!!\n\n"
				self.do_battle(newPlayer,newMalboro)
			when 7
				newWitch = Witch.new(30,90,30,90,70,90)
				puts "\nWitch!!!\n\n"
				self.do_battle(newPlayer,newWitch)
			when 8
				newVampire = Vampire.new(80,80,90,90,120,80)
				puts "\nVampire!!!\n\n"
				self.do_battle(newPlayer,newVampire)
			when 9
				newZombie = Zombie.new(70,10,30,30,50,50)
				puts "\nZombie!!!\n\n"
				self.do_battle(newPlayer,newZombie)
			else
				puts "You get a break this round!"
			end
		
			roundCount += 1
		
		end
	
		puts "\nYou survived #{roundCount} rounds!"
	
	end
	
end