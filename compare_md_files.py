# Function to read and compare two Markdown files
def compare_markdown_files(file1, file2):
    with open(file1, 'r', encoding='utf-8') as file1, open(file2, 'r', encoding='utf-8') as file2:
        # Read lines from the files into lists
        lines_file1 = file1.readlines()
        lines_file2 = file2.readlines()

        # Remove whitespace and line breaks from lines and create sets
        set_lines_file1 = set(map(str.strip, lines_file1))
        set_lines_file2 = set(map(str.strip, lines_file2))

        # Find common lines
        common_lines = set_lines_file1.intersection(set_lines_file2)

        # Convert the set of lines into a sorted list
        common_lines = sorted(common_lines)

        return common_lines

# Specify the file paths you want to compare
file1 = './list_apps.md'
file2 = './bloatware_apps.md'

# Call the function to compare the files
common_lines = compare_markdown_files(file1, file2)

# Create a list of apps
app_list = []
print("Common Lines:")
for line in common_lines:
    app_list.append(line)

# Format the list into a Shell format
packages = "(\n" + "\n".join(['"' + app + '"' for app in app_list]) + "\n)"

# Print the list in Shell format
print(packages)
