#!/bin/bash

# Display menu
echo "================================"
echo "RSpec Test Runner"
echo "================================"
echo "Please select which spec to run:"
echo ""
echo "1) spec/part1_spec.rb"
echo "2) spec/part2_spec.rb"
echo "3) spec/part3_spec.rb"
echo "4) Run all spec files"
echo "5) Exit"
echo ""
echo -n "Enter your choice [1-5]: "

# Read user input
read choice

# Process the choice
case $choice in
    1)
        echo ""
        echo "Running spec/part1_spec.rb..."
        echo "================================"
        bundle exec rspec spec/part1_spec.rb
        ;;
    2)
        echo ""
        echo "Running spec/part2_spec.rb..."
        echo "================================"
        bundle exec rspec spec/part2_spec.rb
        ;;
    3)
        echo ""
        echo "Running spec/part3_spec.rb..."
        echo "================================"
        bundle exec rspec spec/part3_spec.rb
        ;;
    4)
        echo "Running all spec files..."
        echo "============================"
        bundle exec rspec
        ;;
    5)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo "Invalid choice. Please run the script again and select 1, 2, 3, or 4."
        exit 1
        ;;
esac

# Exit with the status of the rspec command
exit $?