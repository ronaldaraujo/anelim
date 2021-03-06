import sys
import logging
import locale
import json
import random
import string
import faker
import argparse
import psycopg2
import pymssql
from random import randint
from cStringIO import StringIO
from time import gmtime, strftime
from os import system
from datetime import datetime


class StringBuilder(object):
    _value = None

    def __init__(self):
        self._value = StringIO()

    def append(self, str):
        self._value.write(str)

    def clear(self):
        self._value.truncate(0)

    def __str__(self):
        return self._value.getvalue()

    def __len__(self):
        return len(self._value.getvalue())

    def to_string(self):
        return self._value.getvalue()


class Anelim(object):
    _column_name = None
    _type = None
    _is_nullable = True
    _is_primary_key = False
    _is_foreign_key = False
    _constraint = None
    _unsigned = False
    _table_name = None
    _reference_table = None
    _pks = list()
    _new_pks = list()

    # Datatypes from https://www.postgres.org/docs/9.6/static/datatype.html
    _supported_types = {'smallint': '-32768,32767',
                        'integer': '-2147483648,2147483647',
                        'bigint': '-9223372036854775808,9223372036854775807',
                        'decimal': '131072,16383',
                        'numeric': '131072,16383',
                        'real': '-999999,999999',
                        'double precision': '-999999999999999,999999999999999',
                        'smallserial': '1,32767',
                        'serial': '1,2147483647',
                        'bigserial': '1,9223372036854775807',
                        'money': '-92233720368547758.08,92233720368547758.07',
                        'character varying': '1',
                        'varchar': '1',
                        'character': '1',
                        'char': '1',
                        'timestamp without time zone': '',
                        'timestamp with time zone': '-12,+12',
                        'date': '',
                        'time without time zone': '',
                        'time with time zone': '-12,+12',
                        'boolean': '',
                        'uuid': '',
                        # MSSQL
                        'bit': '1,0',
                        'smallmoney': '-2147483648,2147483647',
                        'tinyint': '0,255',      
                        'float':'-999999999999999,999999999999999'}

    def __init__(self, field, table_name):
        self._column_name = field['name']
        self._type = field['type']
        self._table_name = table_name

        if 'null' in field:
            self._is_nullable = field['null']

        if 'constraint' in field:
            self._constraint = field['constraint']

        if 'unsigned' in field:
            self._unsigned = field['unsigned']

        if 'primary_key' in field:
            self._is_primary_key = True

        if 'foreign_key' in field:
            self._is_foreign_key = True
            self._reference_table = field['reference_table']

    def get_and_remove_item(self, some_list, value):
        res = None

        for table_name, collumn, collumn_value in some_list:
            if table_name == value:
                res = collumn_value

        pks[:] = [(table_name, collumn, collumn_value) for (
            table_name, collumn, collumn_value) in some_list if collumn_value != res]

        return res

    def get_item_randomly(self, some_list, reference_table):
        res = None
        some_list_aux = list()

        del g_some_list_aux[:]

        for table_name, collumn, collumn_value in some_list:
            if table_name == reference_table:
                g_some_list_aux.append((table_name, collumn, collumn_value))

        return random.choice(g_some_list_aux)[2]

    def datatype_is_supported(self):
        if self._type not in self._supported_types and self._is_nullable is False:
            raise ValueError(
                'The datatype \'%s\' is not supported and does not accept null. '
                'To continue, check the datatype to accept null or delete this '
                'column from your schema.' % self._type)
        elif self._type not in self._supported_types and self._is_nullable:
            return 'jump'
        else:
            return True

    def generate_data(self):

        if self._is_foreign_key:

            if self._is_nullable and random.choice([True, False]):
                return None

            res = self.get_item_randomly(pks, self._reference_table)

            # Hack to table with relationship 1_n
            if res != None:
                last_id.append(res)
                return res
            else:
                return last_id[0]

        fake = faker.Faker()

        if self._type == 'smallint':

            if self._is_nullable and random.choice([True, False]):
                return None

            number = self._supported_types['smallint'].split(',')

            if self._unsigned:
                start = 1
            else:
                start = int(number[0])

            end = int(number[1])

            res = randint(start, end)

            if self._is_primary_key:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'bit':
            res = None

            if self._is_nullable and random.choice([True, False]):
                return None

            res = random.choice([1, 0])

            if self._is_primary_key:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'tinyint':

            if self._is_nullable and random.choice([True, False]):
                return None

            number = self._supported_types['tinyint'].split(',')

            start = int(number[0])
            end = int(number[1])

            res = randint(start, end)

            if self._is_primary_key:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'integer':

            if self._is_nullable and random.choice([True, False]):
                return None

            number = self._supported_types['integer'].split(',')

            if self._unsigned:
                start = 1
            else:
                start = int(number[0])

            end = int(number[1])

            res = randint(start, end)

            if self._is_primary_key:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'bigint':

            if self._is_nullable and random.choice([True, False]):
                return None

            number = self._supported_types['bigint'].split(',')

            if self._unsigned:
                start = 1
            else:
                start = int(number[0])

            end = int(number[1])

            res = randint(start, end)

            if self._is_primary_key:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'decimal' or self._type == 'numeric':

            if self._is_nullable and random.choice([True, False]):
                return None

            number = self._supported_types['decimal'].split(',')
            start = float(number[0])
            end = float(number[1])

            res = random.uniform(start, end)

            if self._is_primary_key:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'real':

            if self._is_nullable and random.choice([True, False]):
                return None

            number = self._supported_types['real'].split(',')
            start = float(number[0])
            end = float(number[1])

            res = random.uniform(start, end)

            if self._is_primary_key:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'double precision' or self._type == 'float':

            if self._is_nullable and random.choice([True, False]):
                return None

            number = self._supported_types['double precision'].split(',')
            start = float(number[0])
            end = float(number[1])

            res = random.uniform(start, end)

            if self._is_primary_key:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'serial':

            if self._is_nullable and random.choice([True, False]):
                return None

            number = self._supported_types['serial'].split(',')
            start = int(number[0])
            end = int(number[1])

            res = randint(start, end)

            if self._is_primary_key:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'bigserial':

            if self._is_nullable and random.choice([True, False]):
                return None

            number = self._supported_types['bigserial'].split(',')
            start = int(number[0])
            end = int(number[1])

            res = randint(start, end)

            if self._is_primary_key:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'smallmoney':

            if self._is_nullable and random.choice([True, False]):
                return None

            number = self._supported_types['smallmoney'].split(',')
            start = float(number[0])
            end = float(number[1])

            res = locale.currency(random.uniform(start, end))

            if self._is_primary_key:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'money':

            if self._is_nullable and random.choice([True, False]):
                return None

            number = self._supported_types['money'].split(',')
            start = float(number[0])
            end = float(number[1])

            res = locale.currency(random.uniform(start, end))

            if self._is_primary_key:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'character varying' or self._type == 'varchar' \
                or self._type == 'character' or self._type == 'char':

            if self._is_nullable and random.choice([True, False]):
                return None

            if self._constraint < 5:  # 5 is limitation of lib fake.text
                res = fake.pystr(1, 1)

                if self._column_name.lower() == "address":
                    res = fake.address()

                if self._column_name.lower() == "name":
                    res = fake.name()

                if self._is_primary_key:
                    pks.append(
                        (self._table_name, self._column_name, res))

                return res
            else:
                res = fake.text(self._constraint)

                if self._column_name.lower() == "address":
                    res = fake.address()

                if self._column_name.lower() == "name":
                    res = fake.name()

                if self._is_primary_key:
                    pks.append(
                        (self._table_name, self._column_name, res))

                return res

        elif self._type == 'timestamp without time zone':

            if self._is_nullable and random.choice([True, False]):
                return None

            res = fake.date("%Y-%m-%d %H:%M:%S")

            if self._is_primary_key:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'timestamp with time zone':

            if self._is_nullable and random.choice([True, False]):
                return None

            res = fake.date("%Y-%m-%d %H:%M:%S") + '+' + \
                str(randint(0, 12)).zfill(2)

            if self._is_primary_key:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'date':

            if self._is_nullable and random.choice([True, False]):
                return None

            res = fake.date("%Y-%m-%d")

            if self._is_primary_key:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'time without time zone':

            if self._is_nullable and random.choice([True, False]):
                return None

            res = fake.time("%H:%M:%S")

            if self._is_primary_key:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'time with time zone':

            if self._is_nullable and random.choice([True, False]):
                return None

            res = fake.time("%H:%M:%S") + '+' + str(randint(0, 12)).zfill(2)

            if self._is_primary_key:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'boolean':

            if self._is_nullable and random.choice([True, False]):
                return None

            res = fake.pybool()

            if self._is_primary_key:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'uuid':

            if self._is_nullable and random.choice([True, False]):
                return None

            res = fake.uuid4()

            if self._is_primary_key:
                pks.append((self._table_name, self._column_name, res))

            return res

# Print iterations progress


def print_progress_bar(iteration, total, prefix='', suffix='', decimals=1, length=100, fill='#'):
    """
    Call in a loop to create terminal progress bar
    @params:
        iteration   - Required  : current iteration (Int)
        total       - Required  : total iterations (Int)
        prefix      - Optional  : prefix string (Str)
        suffix      - Optional  : suffix string (Str)
        decimals    - Optional  : positive number of decimals in percent complete (Int)
        length      - Optional  : character length of bar (Int)
        fill        - Optional  : bar fill character (Str)
    """
    percent = ("{0:." + str(decimals) + "f}").format(100 *
                                                     (iteration / float(total)))
    filledLength = int(length * iteration // total)
    bar = fill * filledLength + '-' * (length - filledLength)

    system('clear')

    print "\r%s |%s| %s%% %s" % (prefix, bar, percent, suffix)
    

    # Print New Line on Complete
    if iteration == total:
        print ""


def get_item(someList, value):
    for x, y, z in someList:
        if x == value:
            yield x, y, z


def set_header_information(sb, target):
    sb.append("-- Anelim.py - Version: " + version + "\n")
    sb.append("-- Script generated on " +
              strftime("%a, %d %b %Y %X", gmtime()) + "\n")
    sb.append("\n")

    target.write(sb.to_string())

    sb.clear()


class JsonObject(object):

    def __init__(self, json_content):
        data = json.loads(json_content)
        for key, value in data.items():
            self.__dict__[key] = value


global pks, new_pks, fks, last_id, g_some_list_aux, version

version = '1.0.0'
pks = list()
last_id = list()
g_some_list_aux = list()

OUTPUT_POSTGRES = "postgres.sql"
OUTPUT_MSSQL = "mssql.sql"


def main():
    try:
        # TODO: Validar JSON

        args = argparse.ArgumentParser(
            description='Arguments')
        args.add_argument('-of', '--out_file', default=OUTPUT_MSSQL,
                          help='generate for this engine')
        args.add_argument('-t', '--target', default='mssql',
                          help='generate for this engine')
        args.add_argument('-i', '--insert', default=False,
                          help='create tables before reloading')
        args.add_argument('-c', '--create', default=False,
                          help='create tables before reloading')
        args.add_argument('-d', '--drop', default=False,
                          help='drop tables before reloading')
        args.add_argument('--debug', default=False,
                          help='set debug mode')
        args.add_argument('-v', '--version', action='version',
                          version="version %s" % version,
                          help='show version information')
        args.add_argument("-f", "--file", type=str)
        args = args.parse_args()

        if args.debug:
            start_time = datetime.now()

        if args.file:
            data = JsonObject(open('schema/' + args.file).read())
        else:
            data = JsonObject(open('schema/schema.json').read())

        sb = StringBuilder()

        # set database
        db = None
        conn = None
        cur = None

        # Insert on database if exist flag -i or --insert
        if args.insert:
            try:

                if args.target == 'postgres':
                    data_conn = JsonObject(open('config/config_postgres.json').read())

                    sb.append("dbname='%s' " % data_conn.dbname)
                    sb.append("user='%s' " % data_conn.user)
                    sb.append("password='%s' " % data_conn.password)
                    sb.append("host='%s' " % data_conn.host)
                    sb.append("port='%s' " % data_conn.port)

                    conn = psycopg2.connect(sb.to_string())
                    cur = conn.cursor()

                else:
                    data_conn = JsonObject(open('config/config_mssql.json').read())

                    conn = pymssql.connect(data_conn.host, data_conn.user, data_conn.password, data_conn.dbname)
                    cur = conn.cursor()

                sb.clear()

                if args.debug:
                    print "Open connection successfully\n"

            except Exception as e:
                print e

        # Change file name if exist flag -d or --drop
        if args.out_file:
            target = open('output/' + args.out_file, 'w')
        else:
            if args.target == 'postgres':
                target = open(OUTPUT_POSTGRES, 'w')
            else:
                target = open(OUTPUT_MSSQL, 'w')

        target.truncate()

        set_header_information(sb, target)

        # Delete all tables if exist flag -d or --drop
        if args.drop:

            if args.target == 'postgres':
                sb.append("DROP SCHEMA PUBLIC CASCADE;\n")
                sb.append("CREATE SCHEMA PUBLIC;\n\n")
            else:
                sb.append("EXEC sp_MSforeachtable @command1 = 'DROP TABLE ?'")

            target.write(sb.to_string())

            if args.insert:

                if args.debug:
                    print "Drop all tables"

                cur.execute(sb.to_string())

            sb.clear()

        if not args.debug:
            l = len(data.tables)
            bar = 0
            print_progress_bar(bar, l, prefix='Progress:',
                                suffix='Complete', length=50)

        for table in data.tables:

            # Create tables if exist flag -c or --create
            if args.create and len(args.create) != 0:

                sb.append("CREATE TABLE %s" % table['name'] + "(")

                target.write("\n")

                for field in table['fields']:

                    sb.append(
                        "\n    " + field['name'] + " " + field['type'].upper())

                    if 'constraint' in field:
                        sb.append("(%s)" % field['constraint'])

                    if 'null' in field and not field['null']:
                        sb.append(" NOT NULL")

                    if 'primary_key' in field:
                        sb.append(" PRIMARY KEY")

                    if 'foreign_key' in field:
                        sb.append(" REFERENCES %s" %
                                    field['reference_table'])

                    if 'unsigned' in field and field['unsigned']:
                        sb.append(" CHECK (" + field['name'] + ">=0)")

                    sb.append(",")

                _sb = sb.to_string()[:-1]
                sb.clear()
                sb.append(_sb)

                sb.append("\n);")

                target.write(sb.to_string())
                target.write("\n")

            if args.debug:
                print "\nCreate table %s" % table['name']

            if args.insert:
                if args.debug:
                    print "\n[CREATE TABLE]: Executing query in the database"
                
                cur.execute(sb.to_string())

            sb.clear()

            len_number_inserts = table['number_inserts']

            for _ in xrange(1, table['number_inserts'] + 1):

                if not args.debug and bar <= len_number_inserts:
                    print_progress_bar(
                        bar, len_number_inserts, prefix='Progress:', suffix='Complete', length=50)
                    bar = bar + 1

                sb.append("INSERT INTO %s(" % table['name'])

                for field in table['fields']:

                    rdgrd = Anelim(field, table['name'])

                    if rdgrd.datatype_is_supported() == 'jump':
                        continue
                    else:
                        sb.append("%s," % field['name'])

                _sb = sb.to_string()[:-1]
                sb.clear()
                sb.append(_sb)
                sb.append(") VALUES(")

                for field in table['fields']:

                    rdgrd = Anelim(field, table['name'])

                    data_gen = rdgrd.generate_data()

                    if data_gen == None:
                        sb.append("NULL,")
                    else:
                        sb.append("'%s'," % data_gen)

                _sb = sb.to_string()[:-1]
                sb.clear()
                sb.append(_sb)
                sb.append(");")

                if args.debug:
                    print sb

                if args.insert:
                    if args.debug:
                        print "\n[INSERT TABLE]: Executing query in the database"

                    cur.execute(sb.to_string())

                target.write(sb.to_string())
                target.write("\n")
                sb.clear()

            target.write("\n")

        target.close()

        if cur != None and conn != None:
            conn.commit()
            cur.close()
            conn.close()

            if args.debug:
                print "\nConnection closed successfully"

        # else:
        #     raise Exception(
        #         "Unexpected target database {0}".format(args.target))

        if args.debug:
            print "\nRuntime: " + str(datetime.now() - start_time)

    except Exception as e:
        print e
        logging.error(e)
        sys.exit(1)


if __name__ == '__main__':
    logging.basicConfig(filename='main.log', level=logging.INFO,
                        format='[%(asctime)s] -> %(levelname)s -> %(message)s',
                        datefmt='%Y-%m-%d %H:%M:%S')
    locale.setlocale(locale.LC_ALL, '')
    main()
