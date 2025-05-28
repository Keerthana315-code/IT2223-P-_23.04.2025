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






