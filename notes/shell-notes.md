# Shell Scripting Notes

These notes cover the fundamentals of **Bash shell scripting**, including variables, user input, conditionals, and loops.

---

## 1. What is Shell Scripting

Shell scripting is writing a sequence of commands in a file that the shell executes automatically.

Most Linux scripts use **Bash**.

Common shells:
- Bash
- Sh
- Zsh
- Fish

---

## 2. Script Structure

```bash
#!/bin/bash

# This is a comment
echo "Hello World"
```

| Part | Meaning |
|------|---------|
| `#!/bin/bash` | Shebang, tells system to use bash |
| `#` | Comment |
| `echo` | Prints output |

Make script executable:
```bash
chmod +x script.sh
./script.sh
```

---

## 3. Variables

Variables store values.

```bash
#!/bin/bash

name="Akash"
city="Pune"

echo "My name is $name"
echo "I live in $city"
```

**Rules:**
- No spaces around `=`
- Use `$` to access variable value

---

## 4. User Input

`read` command is used to take input from the user.

```bash
#!/bin/bash

read -p "Enter your name: " name

echo "Welcome $name"
```

**Example:**
```
Enter your name: Akash
Welcome Akash
```

---

## 5. Conditional Statements

Conditionals allow scripts to make decisions.

### if statement
```bash
#!/bin/bash

num=10

if [ $num -gt 5 ]
then
    echo "Number is greater than 5"
fi
```

### if-else statement
```bash
#!/bin/bash

read -p "Enter a number: " num

if [ $num -gt 0 ]
then
    echo "Positive number"
else
    echo "Zero or negative number"
fi
```

### if-elif-else statement
```bash
#!/bin/bash

read -p "Enter a number: " num

if [ $num -gt 0 ]
then
    echo "Positive number"
elif [ $num -lt 0 ]
then
    echo "Negative number"
else
    echo "Number is zero"
fi
```

---

## 6. File Condition Checks

Shell can check file properties.

```bash
#!/bin/bash

read -p "Enter filename: " file

if [ -f "$file" ]
then
    echo "File exists"
else
    echo "File does not exist"
fi
```

**Common file test operators:**

| Operator | Meaning |
|----------|---------|
| `-f` | file exists |
| `-d` | directory exists |
| `-r` | readable |
| `-w` | writable |
| `-x` | executable |

---

## 7. Loops

Loops repeat commands multiple times.

### For Loop
```bash
#!/bin/bash

for i in {1..5}
do
    echo "Number: $i"
done
```

**Output:**
```
Number: 1
Number: 2
Number: 3
Number: 4
Number: 5
```

**Loop through files:**
```bash
for file in *.sh
do
    echo "Script: $file"
done
```

### While Loop

Runs until the condition becomes false.

```bash
#!/bin/bash

count=1

while [ $count -le 5 ]
do
    echo "Count: $count"
    ((count++))
done
```

---

## 8. Menu Driven Script

A menu allows interactive script usage.

```bash
#!/bin/bash

while true
do
    echo "1. Show Date"
    echo "2. Show Directory"
    echo "3. Show User"
    echo "4. Exit"

    read -p "Enter choice: " choice

    case $choice in
        1) date ;;
        2) pwd ;;
        3) whoami ;;
        4) break ;;
        *) echo "Invalid choice" ;;
    esac
done
```

---

## 9. Useful Bash Operators

| Operator | Meaning |
|----------|---------|
| `-eq` | equal |
| `-ne` | not equal |
| `-gt` | greater than |
| `-lt` | less than |
| `-ge` | greater or equal |
| `-le` | less or equal |

---

## 10. Best Practices

- Always add shebang (`#!/bin/bash`)
- Use meaningful variable names
- Add comments
- Test scripts step by step
- Make scripts executable with `chmod +x`
