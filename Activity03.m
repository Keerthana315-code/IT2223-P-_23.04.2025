clc; clear; close all;

% Prompt for number of voters
num_voters = input('Enter total number of voters: ');

% Initialize vote counts
votes = zeros(1,4);

% Collect votes
for i = 1:num_voters
    fprintf('\nVoting Menu:\n');
    fprintf('1. Candidate A\n');
    fprintf('2. Candidate B\n');
    fprintf('3. Candidate C\n');
    fprintf('4. Candidate D\n');
    choice = input('Enter your vote (1-4): ');
    
    switch choice
        case {1, 2, 3, 4}
            votes(choice) = votes(choice) + 1;
        otherwise
            fprintf('Invalid vote!\n');
    end
end

% Display vote counts
fprintf('\nVoting Results:\n');
fprintf('Candidate A: %d votes\n', votes(1));
fprintf('Candidate B: %d votes\n', votes(2));
fprintf('Candidate C: %d votes\n', votes(3));
fprintf('Candidate D: %d votes\n', votes(4));

% Determine winner
[max_votes, winner] = max(votes);
fprintf('\nWinner: Candidate %c\n', 'A' + (winner - 1));

% Visualization menu loop
while true
    fprintf('\nResult Visualization Menu:\n');
    fprintf('1. Show Bar Chart of Votes\n');
    fprintf('2. Show Pie Chart of Votes\n');
    fprintf('3. Show Scatter Plot\n');
    fprintf('4. Exit\n');
    vis_choice = input('Enter your choice (1-4): ');
    
    switch vis_choice
        case 1
            figure; bar(votes);
            title('Vote Counts');
            xlabel('Candidates');
            ylabel('Votes');
            xticklabels({'A', 'B', 'C', 'D'});
            grid on;
        case 2
            figure; pie(votes, {'Candidate A', 'Candidate B', 'Candidate C', 'Candidate D'});
            title('Vote Proportions');
        case 3
            figure; scatter(1:4, votes, 'filled');
            title('Creative Scatter Plot');
            xlabel('Candidates');
            ylabel('Votes');
            xticks(1:4);
            xticklabels({'A', 'B', 'C', 'D'});
            grid on;
        case 4
            fprintf('Exiting visualization menu.\n');
            break;
        otherwise
            fprintf('Invalid choice! Please select a valid option.\n');
    end
end
