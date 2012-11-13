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

# to do:
# 	data entry:
#		by field (+ optional while creating field)
#		by entry (+ optional while creating field)
#	report:
#		fields
#		entries
#		values by field or entry (or all?)
#	search:
#		by fields
#		by entry
#		all
		
data = Hash.new # the data will be kept as a hash with field names for keys and arrays for values
data[entnum5w9n9f] = [] # protected array (i.e. field) which stores entry IDs
choice = 0 # global variable for giveOptions and main while statement

def newField
	puts 'Enter new field name:'
	newFieldName = gets.chomp
	if (data.key? newFieldName == true)
		puts 'The field cannot be created, as a field with this name already exists.'
	elsif (newFieldName == 'entnum5w9n9f')
		puts 'That is the only name fields are not allowed to have.'
	else
		data[newFieldName] = []
		puts 'Field \"' + newFieldName + '\" created.'
	end
end

def deleteField
	puts 'Enter name of field to delete:'
	doomedField = gets.chomp
	if data[doomedField].key? == false
		puts 'No such field.'
	elsif (doomedField = 'entnum5w9n9f')
		puts 'No such field. Not that you need to know about, anyway.'
	else
		data.delete (doomedField)
		puts 'Field \"' + doomedField + '\" deleted.'
	end
end

def newEntry
	puts 'enter entry name'
	newEntry = gets.chomp
	
end

def deleteEntry

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

 