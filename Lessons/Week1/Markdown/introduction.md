# Intro

## Storing Data

1. Memory  
    - Memory will be clearedon every boot/program start.

2. Disk
    - For persistance.

## Disk storage  
 - Plain text files  
 - Structured text file  
    - json
    - csv/tsv (Comma Separted Value/ Tab Separated Value)
    - xml
    - ini
    - svg (for images, xml file)  

- Binary file
    - data in binary format
    - images
    - audio
    - video

## Examples  
 - unicode.org

## Plain text
```
Mary River
2024

Report 

This year 2024 will be the beginning of a new project. 

Designer of the new project Mary River and Matt Jones attended the launch...
```

Problem with plain text: Hard or impossible to handle programatically.

## Structured text
```
Author: Mary River
Yeah: 2024

Type: Report 

This year 2024 will be the beginning of a new project. 

Designer of the new project Mary River and Matt Jones attended the launch of type: marketing.
```

## Better solutions

```json
{
    "writer": "Mary River",
    "year": "2024",
    "type": "report",
    "text": [
            "This year 2024 will be the beginning of a",
            "new project.",
            "Designer of the new project Mary River and",
            "Matt     Jones attended the launch of type:",
            "marketing."
            ]

}
```
### XML Documentation

```xml
    <document>
        <writer>
            <firstName>Mary</firstName>
            <lastName>River</lastName>
            <type>Report</type>
            <text>
                This year 2024 will be the beginning of a new project. 

                Designer of the new project Mary River and Matt Jones attended the launch of type: marketing.
            </text>
        </writer>
    </document>
```

### Json

``` json
    [
        {
            "firstName": "Mary",
            "lastName": "River",
            "age": 25
        }
        {
            "firstName": "Matt",
            "lastName": "Jones",
            "age": 30
        }
        {
            "firstName": "Vira",
            "lastName": "River",
            "age": 10
        }
        {
            "firstName": "Ralph",
            "lastName": "Smith",
            "age": 30
        }
    ]
```

### XML

```xml
    <persons>
        <firstName>Mary</firstName>
        <lastName>Rivers</lastName>
        <age>25</age>
    </persons>
    <persons>
        <firstName>Matt</firstName>
        <lastName>Jones</lastName>
        <age>30</age>
    </persons>
```

### CSV

```csv
firstname, lastname,age
Mary, River, 25
Matt, Jones, 30
```

or

```csv
"firstname", "lastname","age"
"Mary", "River", "25"
"Matt", "Jones", "30"
```

### ini

usually used for config info

```ini
;this is a comment in the ini file
[database]
driver=mysql
host=localhost
databasename=persondb
[user]
username=zeke

```