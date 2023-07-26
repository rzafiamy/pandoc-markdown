#!/usr/bin/perl

use strict;
use warnings;

# Check if the folder path is provided as a command-line argument
die "Usage: $0 <folder_path>\n" unless @ARGV == 1;

# Get the folder path from the command-line argument
my $folder_path = $ARGV[0];
    $folder_path =~s/\/$//;

# Call the subroutine to process the folder
process_folder($folder_path);

sub process_folder {
    my ($path) = @_;

    # Open the current directory and read its content
    opendir(my $dh, $path) or die "Cannot open directory $path: $!";
    my @files = readdir($dh);
    closedir $dh;

    # Process each file/directory in the current folder
    foreach my $file (@files) {
        next if ($file eq '.' || $file eq '..');

        my $full_path = "$path/$file";

        # If it's a directory, recursively call the function
        if (-d $full_path) {
            process_folder($full_path);
        }
        # If it's a file with the ".md" extension, apply the specific action
        elsif (-f $full_path && $file =~ /\.md$/) {
            # Extract the basename and folder name
            my ($basename) = $file =~ /^(.*?)\.md$/;
            my $folder_name = $path;
            $folder_name =~ s/.*\///; # Remove everything before the last slash

            # Call the specific action function (replace the action with your own)
            specific_action($full_path, $basename, $folder_name);
        }
    }
}

sub specific_action {
    my ($file_path, $basename, $folder_name) = @_;

    # Replace this action with your specific action for each file
    # For example, you can print the basename and folder name here
    print "File: $file_path\n";
    print "Basename: $basename\n";
    print "Folder name: $folder_name\n";
    
    unless(-d "out/$folder_name"){
        mkdir "out/$folder_name";
    }

    # Implement your specific action on the file here
    system('pandoc -V geometry:margin=0.6in  "'.$file_path.'" -o "out/'.$folder_name.'/'.$basename.'.pdf" --template=template.tex  --metadata title="'.$basename.'" --metadata author="RZL" >> log.txt 2>> error.log');

    print "-------------------\n"; # A separator between each file's output
}
