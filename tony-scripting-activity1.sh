# /bin/sh

echo "Username: $USER"
echo "Current date: $(date +'%Y-%m-%d')"
echo "Time: $(date +'%T')"
echo "Current Directory: $PWD"
echo "How many files in directory: $(ls |wc -l)"
echo "What is the biggest file in current directory: $(ls -S| head -n1)"

