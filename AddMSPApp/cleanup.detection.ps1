#variables
$taskname = "cleanup Files"

# Define the path to the Task Scheduler folder
$taskFolder = "\eoo\"

# Get the list of tasks in the specified folder
$tasks = Get-ScheduledTask -TaskPath $taskFolder

# Check if any task in the folder has the specified classification
$taskFound = $tasks | Where-Object { $_.Taskname -eq $taskname }

# Return the appropriate exit code based on the result
if ($taskFound) {
    # Task with the specified classification found
    write-host "Gevonden"
    Exit 0
} else {
    # Task with the specified classification not found
   Exit 1
}
