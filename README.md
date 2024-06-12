# Useful Shell Scripts

A collection of useful shell scripts for various tasks.

## Table of Contents

1. [Generate File Structure](#generate-file-structure)
2. [Adding More Scripts](#adding-more-scripts)
3. [Contribution](#contribution)

---

## Generate File Structure

This script maps and prints the file structure of a given directory into a text file. It simplifies the process of analyzing the directory structure for testing or documentation purposes.

[View Script](scripts/generate_file_structure.sh)

### Usage

To use the `generate_file_structure.sh` script, follow these steps:

1. **Navigate to the Directory**: Open your terminal and navigate to the directory where the `generate_file_structure.sh` script is located. For example:

    ```sh
    cd path/to/your/repository
    ```

2. **Ensure the Script is executable with the following command `chmod +x generate_file_structure.sh`

    ![Navigate to the Directory](images/ss_generate_file_structure/1.EnsureTheScriptExecutable.png)
   
3. **Run the Script**: Use the following command to execute the script, replacing `<directory>` with the path to the directory you want to analyze:

    ```sh
    ./scripts/generate_file_structure.sh <directory>
    ```

    For example, to generate the file structure of a directory named `sample_directory`, you would run:

    ```sh
    ./scripts/generate_file_structure.sh sample_directory
    ```

4. **View the Output**: After running the script, it will create a file named `file_structure.txt` in the current directory. This file contains the hierarchical structure of the specified directory.

5. **Check the Debug Log**: The script also generates a `debug.log` file, which logs each directory and file processed during execution. This can be helpful for troubleshooting.

### Example OUTPUT FILE STRUCTURE
Here's an example of running the script on a directory named `sample_directory`:

```sh
./scripts/generate_file_structure.sh sample_directory
