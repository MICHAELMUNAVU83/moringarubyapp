class App
  def initialize
    @exit = false
  end

  def leave
    @exit = true
  end

  def display_options
    options = ["Register Student", "Register Staff"]

    options.each_with_index do |option, ind|
      puts "#{ind + 1} : #{option}"
    end
  end

  def execute(choice)
    if choice == 1
      register_student
    elsif choice == 2
      register_staff
    end
  end

  def register_student
    puts "Please select your cohort"
    puts "1. Cohort 64-68A \n2. Cohort 64-68B \n3. Cohort 64-68B"
    cohort_number = gets.chomp.to_i
    if cohort_number == 1
      puts "Select the TM"
      puts "1. Mwikali \n2. Faith \n3. Sam"
      student_name = gets.chomp.to_i
      if student_name.between?(1,3)
        puts "Enter the Amount"
        amount = gets.chomp
        puts "Your payment of #{amount} has been received"
        leave
      else
        puts "Invalid Choice"
        leave
      end
    elsif cohort_number.between?(2,3)
      puts "Cohort details currently unavailable"
      leave
    else
      "Invalid Entry"
      leave
    end
  end

  def register_staff
    puts "Select the category"
    puts "1. Classroom staff \n2. General Staff"
    staff = gets.chomp.to_i
    if staff.between?(1,2)
      puts "Enter the Amount"
      amount = gets.chomp
      puts "Your payment of #{amount} has been received"
      leave
    else
      puts "Invalid Choice"
    end
  end

  def run
    while @exit == false
      display_options
      execute(gets.to_i)
    end
  end
end