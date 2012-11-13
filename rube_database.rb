def giveOptions
	puts 'Options:'
	puts '1. New field'
	puts '2. Delete field'
	puts '3. New entry'
	puts '4. Delete entry'
	puts '5.' 
	puts '8. Exit'
	choice = gets.chomp
	choice
end

refer = Hash.new # this'll convert the names of fields (strings) into intergers that refer to arrays (of each entry's value for that field)
cycleThrough = false # should we check to see if any of those intergers are unused (due to field deletion) or just use new one?
assEnd = 0 # this is what "a new one" would be--the value at the ass end of the chain of integers
choice = 0 # global variable for giveOptions and main while statement at end

def newField
	puts 'enter new field name'
	newFieldName = gets.chomp
	if (refer.key? newFieldName == true)
		puts 'The field cannot be created, as a field with this name already exists'
	elsif (cycleThough == false)
		refer[newFieldName] = assEnd
		assEnd = assEnd + 1
	elsif (cycleThrough == true)
		cycler = 0
		while cycler < assEnd
			if (refer.value? cycler == false)
				refer[newFieldName] = cycler
				cycler = assEnd
			else
				cycler = cycler + 1
			end	
		end
	end
	if (refer.key? newFieldName == true)
		puts 'Field ' + newFieldName + ' created.'
	end
end

def deleteField
	puts 'Enter name of field to delete'
	doomedField = gets.chomp
	
end

while (choice != 8)
choice = giveOptions
if (choice != choice.to_i or choice > 8 or choice < 1)
	puts 'enter only the digit of your choice (number, not name)'
	end
if (choice == 1)
	newField
	end
if (choice == 2)
	deleteField
	end
if (choice == 3)
	newEntry
	end
if (choice == 4)
	deleteEntry
	end
end

 