% Initialize account balance
balance = 1000;

while true
    % Display the menu
    fprintf('\nATM Menu:\n');
    fprintf('1. Deposit\n');
    fprintf('2. Withdraw\n');
    fprintf('3. Balance Inquiry\n');
    fprintf('4. Exit\n');
    
    % Get user selection
    choice = input('Please enter your choice (1-4): ');

    % Process user selection using switch-case
    switch choice
        case 1
            % Deposit
            deposit_amount = input('Enter amount to deposit: ');
            if deposit_amount > 0
                f balance = balance + deposit_amount;
               printf('Successfully deposited %.2f\n', deposit_amount);
            else
                fprintf('Invalid amount. Please enter a positive value.\n');
            end
            
        case 2
            % Withdraw
            withdraw_amount = input('Enter amount to withdraw: ');
            if withdraw_amount > 0
                if withdraw_amount <= balance
                    balance = balance - withdraw_amount;
                    fprintf('Successfully withdrawn %.2f\n', withdraw_amount);
                else
                    fprintf('Insufficient funds. Transaction declined.\n');
                end
            else
                fprintf('Invalid amount. Please enter a positive value.\n');
            end
            
        case 3
            % Balance Inquiry
            fprintf('Your current balance is: %.2f\n', balance);
            
        case 4
            % Exit
            fprintf('Thank you for using our ATM. Have a great day!\n');
            break;
            
        otherwise
            fprintf('Invalid choice. Please select a valid option (1-4).\n');
    end
end














% Initialize an array to store student marks
marks = zeros(1, 5);

% Prompt the user to enter marks for 5 students
for i = 1:5
    marks(i) = input(sprintf('Enter marks for student %d (out of 100): ', i));
    
    % Determine the grade
    if marks(i) >= 90 && marks(i) <= 100
        grade = 'A';
    elseif marks(i) >= 80 && marks(i) <= 89
        grade = 'B';
    elseif marks(i) >= 70 && marks(i) <= 79
        grade = 'C';
    elseif marks(i) >= 60 && marks(i) <= 69
        grade = 'D';
    else
        grade = 'F';
    end
    
    fprintf('Student %d received grade: %s\n', i, grade);
end

% Display the menu and process user selection in a loop
while true
    fprintf('\nMenu:\n');
    fprintf('1. Show all marks as a bar chart\n');
    fprintf('2. Show average marks\n');
    fprintf('3. Exit\n');
    
    choice = input('Enter your choice (1-3): ');
    
    switch choice
        case 1
            % Display marks as a bar chart
            figure;
            bar(marks);
            xlabel('Student');
            ylabel('Marks');
            title('Student Marks');
            fprintf('Bar chart displayed.\n');
            
        case 2
            % Display the average marks
            avg_marks = mean(marks);
            fprintf('The average marks of the students is: %.2f\n', avg_marks);
            
        case 3
            % Exit the program
            fprintf('Thank you for using the system. Have a great day!\n');
            break;
            
        otherwise
            fprintf('Invalid choice. Please select a valid option (1-3).\n');
    end
end






