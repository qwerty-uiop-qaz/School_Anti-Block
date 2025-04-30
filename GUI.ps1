# Load the required .NET assembly
Add-Type -AssemblyName System.Windows.Forms

# Create a new form
$form = New-Object System.Windows.Forms.Form
$form.Text = "School Anti-block"
$form.Size = New-Object System.Drawing.Size(300, 200)
$form.StartPosition = "CenterScreen"

# Create a button
$button = New-Object System.Windows.Forms.Button
$button.Text = "On"
$button.Size = New-Object System.Drawing.Size(100, 50)
$button.Location = New-Object System.Drawing.Point(100, 50)

# Create a new form
$active = New-Object System.Windows.Forms.Form
$active.Text = "School Anti-block"
$active.Size = New-Object System.Drawing.Size(300, 200)
$active.StartPosition = "CenterScreen"

# Create a button
$activebtn = New-Object System.Windows.Forms.Button
$activebtn.Text = "On"
$activebtn.Size = New-Object System.Drawing.Size(100, 50)
$activebtn.Location = New-Object System.Drawing.Point(100, 50)

# Add an action for the button click event
$button.Add_Click({
    $form.hide()
    $active.show()
})

$activebtn.Add_Click({
    $active.hide()
    $form.show()
})

# Add the button to the form
$form.Controls.Add($button)
$active.Controls.Add($activebtn)

# Show the form
[void]$form.ShowDialog()
[void]$active.Showdialog()

if ($env:ACTIVE = "true"){
   $active.show()
   $form.hide()
} else {
   $active.hide()
   $form.show()
}
