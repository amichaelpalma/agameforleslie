class Floor

	def enter()
		puts "This floor is under construction. Please comeback later."
		exit(1)
	end
end

class GameOver < Floor

	def enter()
		scene_cutter
		puts 'You died? Sucks to be you. Hahaha.'
		puts 'Game Over. Thank you for playing.'
		exit(1)
	end
end

class Finish < Floor

	def enter()
		puts "Congratulations! You have finished the game and learn that I love Leslie."
		puts "Hahahaha! :)"
		exit(1)
	end
end

class Entry < Floor

	def enter()
		scene_cutter
		puts "A pleasant morning to you, Leslie. Your mission - should you"
		puts "choose to accept it. Is to exterminate Mossbak and his team"
		puts "in a dungeon at the heart of Eilsel. As always, we will have your favorite"
		puts "bow and arrows delivered in an Inn. Room # 28 under the passcode 'uoyevoli'."
		puts "This mission will have a bounty of 52,820.13 Sellies and should be accomplished"
		puts "before the next moon."

		scene_cutter

		puts "This could possibly be the hardest mission of your career. As an archer,"
		puts "you've always taken missions that aren't enclosed and gives you the freedom"
		puts "to move and set traps. But this one, it's going to be a challenge."
		print "Time to move."
		travel_time

		scene_cutter

		puts "You've arrived at Eilsel and proceeded to go to the Inn to get your weapon."
		puts "You asked the innkeeper for the keys to Room # 28 and told him you left yours inside the room."
		puts "The innkeeper replied, 'A pleasant morning Miss. Now that's just tough luck!'"
		puts "then he asked, 'Do you love me backwards?'."
		puts "What is your reply?"
		print "> "

		password = $stdin.gets.chomp

		if password == "uoyevoli"

			puts "The innkeeper smiled and said,"
			puts "'Welcome Ms. Leslie to Eilsel. Here is your key. Please don't lose it again.' **wink**"
			sleep(10)
			puts "You got to Room # 28 and found your weapon there."
			print "Time to move."
			travel_time
			return 'first_floor'

		else
			puts "The innkeeper stared at you blankly."
			puts "He seemed trying to press a button under his table."
			puts "He looked up."
			sleep(10)
			puts "You did the same,"
			sleep(10)
			puts "then he ran his knife across your throat and whispered, 'Thanks for playing'."
			sleep(10)
			return 'game_over'
		end
	end
end


class FirstFloor < Floor

	def enter()
		scene_cutter
		puts "You've arrived at the First Floor of the Dungeon."
		puts "You tried to illuminate the whole floor with your torch."
		puts "You heard a squeak at the center of the room and pointed"
		puts "your torch towards it."
		sleep(10)
		puts "It's a kobold! A dog-like creature holding a sword."
		puts "It stood there looking at you. It's gaze soon became rage"
		puts "and it's preparing to attack! Prepare yourself!"
		scene_cutter
		puts "You readied your bow, aiming for its head."
		puts "The kobold ran with great speed, but you're sure your"
		puts "arrows are faster and will hit true. You drew your bow..."
		sleep(10)
		print "aimed."
		travel_time

		puts "ROLL THE DICE TO SEE IF IT HITS!"

		chance = rand(1..6)

		print "Rolling the dice. Please wait."
		travel_time

		puts "You rolled #{chance}."

		scene_cutter

		if chance >= 3
			puts "You fired your arrow and it hit!"
			puts "The Kobold stumbled and dropped face first, unsure of"
			print "what hit him. He's trying to stand up."
			travel_time
			puts "He drops dead as you see the arrow pressed in the middle of its eyes."
			print "Time to move."
			travel_time
			return 'second_floor'
		else
			puts "You fired your arrow and it missed!"
			puts "The kobold became angrier and he's raised his sword in"
			puts "preparation for a heavy blow!"
			puts "You stumbled to set your next arrow as he gets closer."
			sleep(10)
			puts "***SLASH***"
			puts "Your right limb was cut in one fell swoop."
			puts "As you are losing blood, you fell on your knees and"
			puts "you looked at your bow on the ground. The kobold snorted -"
			puts "bracing for another attack. You looked in its eyes for a last"
			puts "time."
			sleep(10)
			puts "***SWOOSH***"
			puts "Your head lay on the ground."
			return 'game_over'
		end
	end
end	

class SecondFloor < Floor

	def enter()
		scene_cutter
		puts "Is this the boss room? It sure smell like it."
		puts "You raised your torch to check the floor."
		puts "There's a huge shadow that's appear to be eating."
		puts "You looked closer and the shadow stood still."
		sleep(5)
		puts "A head rolled away from its feet as it tried to look your way."
		puts "It's an ogre! And he's eating elves!"
		sleep(5)
		puts "The ogre took his club and asked, 'Who goes there!?'"
		puts "You replied, 'I am Leslie and I was asked by the people of Eilsel to eradicate"
		puts "you and whatever monster you're working for!"
		sleep(5)
		puts "The ogre raised his club and screamed, 'I eat your kind for breakfast!'"
		puts "'Come at me and see your end!'."
		sleep(5)
		puts "You readied your bow and took a poisoned arrow from your quiver."
		puts "You thought to yoursel, 'All I need to do is hit him with this and"
		puts "dodge all his attacks while it does its work, easy-peasy.'."
		scene_cutter
		puts "The ogre ran at you with thundering force!"
		puts "You held until you're sure the arrow will hit."
		print "Holding."
		travel_time
		print "Holding."
		travel_time
		puts "Release the arrow!"

		print "> "

		action = $stdin.gets.chomp

		if action == 'release'
			puts "You released the arrow and it hit the ogre's right eye!"
			puts "Great shot! He tripped on his on foot and came rolling your way."
			puts "You dodge his bouldering body and saw he's still queasy from rolling."
			puts "While he's trying to stand up and remove the arrow in his eye."
			puts "You saw the pile of elven bodies at the corner. You thought, 'I can use"
			puts "that place as a hiding spot while waiting for the poison to work.'"
			puts "Will you hide, or will you shoot another arrow?"
			print "> "

			next_move = $stdin.gets.chomp

			if next_move == 'hide'
				puts "You hid on the pile of bodies."
				puts "The ogre screamed and shout and let it out."
				puts "It said, 'Oh, ih yo! Ih oh, ih yo!"
				puts "After 12 minutes, the ogre seemed to slow down."
				puts "He fell on his knees, screamed, shout and let it all out."
				puts "It said, 'Oh ih yo! Ih oh, ih yo!'"
				puts "Now's your chance! Will you go for the kill? Or will you wait a bit more?"
				print "> "

				wrong_move = $stdin.gets.chomp

				if wrong_move == 'kill'
					puts "You ran to give the ogre the killing blow."
					puts "Wrong move! He's still able to swing his club!"
					puts "He swung his club at you before you can even scratch him"
					puts "with the mithril sword you got from the pile of corpse."
					sleep(5)
					puts "Your body snapped upon the impact of the club and you were"
					puts "thrown to meet the wall. Your limbs cracked and you can't breathe."
					sleep(5)
					puts "The ogre moves closer as you gasped for air."
					puts "It looked at you with a smirk and said, 'You didn't wait long enough"
					puts "silly little elf. Now DIE!'"
					puts "His club kissed your face."
					sleep(5)
					return 'game_over'

				elsif wrong_move == 'wait' 
					puts "You waited and hid as the ogre screamed in agony."
					puts "You thought, 'Just a bit more.'"
					sleep(10)
					puts "The ogre dropped! His head is on the floor."
					print "He's not moving."
					travel_time				
					puts "You felt a mithril sword among the corpses and held it tight."
					puts "Now is the time to strike!"
					puts "You moved slowly but with haste."
					sleep(5)
					puts "Within 3 seconds, you were able to traverse the distance from the corpses to"
					puts "the ogre without making a single sound."
					sleep(5)
					puts "You stood there, at the back of its neck. You held the sword with both your hands"
					puts "and prepared for a destructive thrust."
					puts "You digged the sword at the back of the ogre's neck as he loses his breath."
					puts "The ogre is dead!"
					print "Time to move."
					travel_time
					return 'boss'

				else
					puts "You can't go undecided!"
					puts "The ogre became furious since he couldn't find you and decided to smash all the elves he ate!"
					puts "The ogre screamed, 'OGRE, SMASH!' as he clubed every dead elf he's eaten."
					puts "He smashed so hard your body became smoosh."
					return 'game_over'
				end

			else
				puts "You tried to draw another arrow."
				sleep(5)
				puts "You are too late! He already removed the arrow and flung it to your body."
				sleep(5)
				puts "The arrow hit your heart."
				puts "After several seconds, your heart stopped beating."
				puts "The ogre drew closer. And closer. And closer."
				puts "He held you by the head and threw you upwards."
				puts "He readied for a swing, waiting for you."
				sleep(5)
				puts "He swung his club and you were hit with devastating force that"
				puts "you stick to his club."
				sleep(5)
				puts "You died like a baseball."
				return 'game_over'
			end
		end
	end
end

class Boss < Floor

	def enter()
		puts "You enter the last floor of the dungeon."
		puts "This is where Mossbak stays."
		sleep(10)
		puts "Hello Leslie! :) I love you!"
		return 'finished'
	end
end





private

def travel_time
	sleep(2)
	print "."
	sleep(2)
	print "."
	sleep(2)
	print "."
	sleep(2)
	print "."
	puts "\n"
end

def scene_cutter
	print "\n"
	sleep(3)
	puts "-" * 30
	sleep(3)
	print "\n"
end