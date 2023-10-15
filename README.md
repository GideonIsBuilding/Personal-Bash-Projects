# Bash Script Assignment
## Assignment 1
- Create a Bash Script that accepts directory paths as arguments. For each argument, list the contents of each directory with the name of each listed at the top.
- Suppose you want to give yourself an added challenge. Have your script accept an additional argument “a” or “d” that sorts the contents of each directory in either ascending or descending order.
- For an even more complex challenge, create the Bash Script that sorts the contents of the directories based on an “a” or “d” argument that directly precedes it. In other words, you should be able to sort one directory in ascending order, a second directory in descending order, and so on.

## Assignment 2
Another way to work with text in Bash is with AWK commands. We’ll use the data set of the world’s countries and capitals for this challenge.
- Create a Bash Script that outputs this dataset into two columns: one for the country and the other for its capital.
- Have your script accept a letter as input for an added challenge. The output should be the countries that begin with the input letter.
- For an even more complex challenge, create another Bash Script that outputs a two-column list sorted alphabetically by the capital city.

## Assignment 3
Programmers who work with Bash Script are often System Administrators who manage computer and server networks.  So, it’s essential to know which disks and file systems are mounted — accessible by the computer’s file system. Note that just because a disk or computer is physically attached with cables doesn’t mean it’s mounted and accessible.
- Create a Bash Script that detects whether a given mount point or file system is mounted. If so, the script should return the amount of used space on the file system and free space.
- Your script should return an error message if the file system isn’t mounted.
- Looking for an extra challenge? Add a prompt that asks users if they want to attempt to mount the file system if it’s mounted. When the file system mounts, the script should then output the amount of used and free space in the file system.
