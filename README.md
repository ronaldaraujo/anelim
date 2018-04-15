<a align="center" href="https://github.com/ronaldaraujo/anelim"><img width="100%" src="https://i.imgur.com/C5apTAH.png" alt="Anelim - Random Data Generation Tool"></a>

Anelim is a script developed in python that aims to generate data for relational database. Currently the tool has support for: SQL Server and PostgreSQL.

## Installation

1. Verify that you have virtualenv installed by:
```sh
$ virtualenv --version
```
2. If you do not have it, install using the following code:
```sh
$ sudo apt-get install python-virtualenv
$ sudo apt-get install python-pip
$ sudo pip install virtualenv
```

3. Create a folder for your virtual environments:
```sh
$ mkdir ~/virtualenvironment
```
4. Create a new virtual environment:
```sh
$ virtualenv ~/virtualenvironment/anelim
```
5. Load the virtual environment:
```sh
$ source ~/virtualenvironment/anelim/bin/activate
```

With the virtual environment prepared, you must enter the project folder,
install their dependencies, and run the script.

6. Enter the project folder:
```sh
$ cd ~/anelim
```
7. Install the dependencies:
```sh
$ pip install -r requirements.txt
```

8. To run the tool, simply run the terminal:
```sh
$ python main.py
```

## Configuration file

The tool expects as input a JSON file containing the following characteristics:

- \* **tables**: Array of objects containing the characteristics of each table.
- \* **number_inserts**: The number of rows to insert into the table.
- \* **tables → name**: Name of the table.
- \* **fields**: Array of objects containing the characteristics of each table attribute.
- \* **fields → name:** Name of the attribute.
- **primary_key**: Informs whether the attribute is first key or not. It can be suppressed and when this occurs, by default, the tool flags the attribute in question as not being a primary key.
- \* **type**: Informs the type of the attribute.
- **unsigned**: Informs whether the attribute allows negative numbers or not. It can be suppressed and when this occurs, by default, the tool flags the attribute in question as a field that allows negative numbers.
- **null**: Informs whether the attribute allows empty values or not. It can be suppressed and when this occurs, by default, the tool flags the attribute in question as being a field that allows empty values.
- **foreign_key**: Informs if the attribute is a foreign key.
- **reference_table**: Works in conjunction with the foreign_key attribute and flags to the tool which table the field in question references.

It is important to note that configuration file attributes marked with an asterisk (*) are required and the lack of any of these fields will imply an exception in tool execution.

**Example of a configuration file**
```sh
{
  "tables": [
    {
      "number_inserts": integer,
      "name": string,
      "fields": [
        {
            "name": string,
            "primary_key": boolean,
            "foreign_key": boolean,
            "reference_table": string,
            "type": string,
            "unsigned": boolean,
            "null": boolean,
            "constraint": integer
        }
        ...
      ]
    }
    ...
  ]
}
```

## Parameters
After the configuration file, the user can inform, at the moment of the execution of the tool, some parameters, they are:

Dillinger is currently extended with the following plugins. Instructions on how to use them in your own application are linked below.

| Parameter | Function |
| ------ | ------ |
| **\-f**, **-\-file** | Allows the user to enter the name of the file containing the database schema. If this parameter is not informed, by default the tool will look at the root of the application in the schema.json file. |
| **\-t**, **-\-target** | Allows the user to enter the syntax that should be used when creating the data and/or tables. By default, the tool is configured for the syntax of the SQLServer database. |
| **\-d**, **-\-drop** | When flagged with true, it generates a script for impersonating the table(s) above the insert script. |
| **\-c**, **-\-create** | When flagged with true, it generates a script to create the table(s) above the insert script. |
| **\-i**, **-\-insert** | When flagged with true, it performs all the previously generated script within the database in a transactional way. |
| **\-of**, **-\-out_file** | Enables the user to define the name of the output file containing the queries in SQL. By default, the output file names for the SQLServer and PostgreSQL databases are, respectively, postgres.sql and mssql.sql. |
| **-\-debug**| When flagged with true, it activates the debug mode of the tool informing its step-by-step. |
| **\-v**, **-\-version** | Inform the user the current version of the tool. |

All parameters mentioned above can be nested, ie, since Analim is a script developed in Python and executed in a console (terminal) the user can inform at the time of the execution of the tool none, some or all parameters.

There is only one requirement when using the `-i`, `--insert` parameter. If the user wants to insert the data into the database, after the script is generated containing the queries, he will need to inform the database access credentials in a configuration file.

For example, the code below describes the model of the connection configuration file that the application looks for at the time of execution.

```sh
{
    "dbname": string,
    "user": string,
    "password": string,
    "host": string,
    "port": integer
}
```

The configuration file of the connection is self-explanatory and each database supported by the tool has, at the root of the project, a configuration file: ***config_mssql.json*** and ***config_postgres.json***.

## Supported Data Types

| Type of data | SQL Server | PostgreSQL |
| :------: | :------: | :------: |
| smallint | ✔ | ✔|
| integer | ✔ | ✔|
| bigint | ✔ | ✔|
| decimal | ✔ | ✔|
| numeric | ✔ | ✔|
| real | ✔ | ✔|
| double precision | ✗ | ✔|
| smallserial | ✗ | ✔|
| serial | ✗ | ✔|
| bigserial | ✗ | ✔|
| money | ✔ | ✔|
| character varying | ✗ | ✔|
| varchar | ✔ | ✔|
| character | ✗ | ✔|
| char | ✔ | ✔|
| timestamp without time zone | ✗ | ✔|
| timestamp with time zone | ✗ | ✔|
| date | ✔ | ✔|
| time without time zone | ✗ | ✔|
| time with time zone | ✗ | ✔|
| boolean | ✗ | ✔|
| uuid | ✗ | ✔|
| bit | ✔ | ✔|
| smallmoney | ✔ | ✗|
| tinyint | ✔ | ✗|
| float | ✔ | ✔|

**Supported: ✔**
**Not supported:✗**

If in the act of reading the schema the tool finds some type of data that is not in table above and this type of data does not accept a null value, it returns an error saying that it can not generate such a data.

In summary, Anelim displays the following error message "***The datatype 'xpto' is not supported and does not accept null. To continue, check the datatype to accept null or delete this column from your schema.***", where it provides the user the option to set the field to accept empty values (thus ignoring it) or to remove it from the schema.

## Todos

 - Support MySQL

License
----
MIT

