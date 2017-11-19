import sys
import logging
import locale
import json
import random
import string
import faker
import argparse
from random import randint
from cStringIO import StringIO


class StringBuilder:
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


class Postgres(object):
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

    # Datatypes from https://www.postgresql.org/docs/9.6/static/datatype.html
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
                        'uuid': ''}

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
        if self._type not in self._supported_types and self._is_nullable == False:
            raise ValueError(
                'The datatype \'%s\' is not supported and does not accept null. '
                'To continue, check the datatype to accept null or delete this '
                'column from your database.' % self._type)
        elif self._type not in self._supported_types and self._is_nullable == True:
            return 'jump'
        else:
            return True

    def generate_data(self):

        if self._is_foreign_key == True:
            res = self.get_item_randomly(pks, self._reference_table)
            
            # Hack to table with relationship 1_n
            if res != None:
                last_id.append(res)
                return res
            else:
                return last_id[0]

        fake = faker.Faker()

        if self._type == 'smallint':
            number = self._supported_types['smallint'].split(',')

            if self._unsigned:
                start = 1
            else:
                start = int(number[0])

            end = int(number[1])

            res = randint(start, end)

            if self._is_primary_key == True:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'integer':
            number = self._supported_types['integer'].split(',')

            if self._unsigned == True:
                start = 1
            else:
                start = int(number[0])

            end = int(number[1])

            res = randint(start, end)

            if self._is_primary_key == True:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'bigint':
            number = self._supported_types['bigint'].split(',')

            if self._unsigned:
                start = 1
            else:
                start = int(number[0])

            end = int(number[1])

            res = randint(start, end)

            if self._is_primary_key == True:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'decimal' or self._type == 'numeric':
            number = self._supported_types['decimal'].split(',')
            start = float(number[0])
            end = float(number[1])

            res = random.uniform(start, end)

            if self._is_primary_key == True:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'real':
            number = self._supported_types['real'].split(',')
            start = float(number[0])
            end = float(number[1])

            res = random.uniform(start, end)

            if self._is_primary_key == True:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'double precision':
            number = self._supported_types['double precision'].split(',')
            start = float(number[0])
            end = float(number[1])

            res = random.uniform(start, end)

            if self._is_primary_key == True:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'serial':
            number = self._supported_types['serial'].split(',')
            start = int(number[0])
            end = int(number[1])

            res = randint(start, end)

            if self._is_primary_key == True:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'bigserial':
            number = self._supported_types['bigserial'].split(',')
            start = int(number[0])
            end = int(number[1])

            res = randint(start, end)

            if self._is_primary_key == True:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'money':
            number = self._supported_types['money'].split(',')
            start = float(number[0])
            end = float(number[1])

            res = locale.currency(random.uniform(start, end))

            if self._is_primary_key == True:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'character varying' or self._type == 'varchar' \
                or self._type == 'character' or self._type == 'char':
            if self._constraint < 5:  # 5 is limitation of lib fake.text
                res = fake.pystr(1, 1)

                if self._is_primary_key == True:
                    pks.append(
                        (self._table_name, self._column_name, res))

                return res
            else:
                res = fake.text(self._constraint)

                if self._is_primary_key == True:
                    pks.append(
                        (self._table_name, self._column_name, res))

                return res

        elif self._type == 'timestamp without time zone':

            res = fake.date("%Y-%m-%d %H:%M:%S")

            if self._is_primary_key == True:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'timestamp with time zone':

            res = fake.date("%Y-%m-%d %H:%M:%S") + '+' + \
                str(randint(0, 12)).zfill(2)

            if self._is_primary_key == True:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'date':

            res = fake.date("%Y-%m-%d")

            if self._is_primary_key == True:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'time without time zone':

            res = fake.time("%H:%M:%S")

            if self._is_primary_key == True:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'time with time zone':

            res = fake.time("%H:%M:%S") + '+' + str(randint(0, 12)).zfill(2)

            if self._is_primary_key == True:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'boolean':

            res = fake.pybool()

            if self._is_primary_key == True:
                pks.append((self._table_name, self._column_name, res))

            return res

        elif self._type == 'uuid':

            res = fake.uuid4()

            if self._is_primary_key == True:
                pks.append((self._table_name, self._column_name, res))

            return res


def get_item(someList, value):
    for x, y, z in someList:
        if x == value:
            yield x, y, z


class JsonObject(object):

    def __init__(self, json_content):
        data = json.loads(json_content)
        for key, value in data.items():
            self.__dict__[key] = value

version = '1.0.0'

global pks, new_pks, fks, last_id, g_some_list_aux

pks = list()
last_id = list()
g_some_list_aux = list()


def main():
    try:
        # TODO: Validar JSON
        # config = json.loads(open('schema.json').read())

        args = argparse.ArgumentParser(
            description='Arguments')
        args.add_argument('-s', '--size', type=int, default=100,
                          help='scale to size')
        args.add_argument('-t', '--target', default='postgresql',
                          help='generate for this engine')
        args.add_argument('--drop', action='store_true', default=False,
                          help='drop tables before reloading')
        args.add_argument('-d', '--debug', action='count',
                          help='set debug mode')
        args.add_argument('-V', action='store_true', default=False,
                          help='show short version on stdout and exit')
        args.add_argument('-v', '--version', action='version',
                          version="version %s" % version,
                          help='show version information')
        args.add_argument("-f", "--file", type=str)
        args = args.parse_args()

        if args.V:
            print(version)
            sys.exit(0)

        if args.file:
            data = JsonObject(open(args.file).read())
        else:
            data = JsonObject(open('schema.json').read())

        # set database
        db = None
        if args.target == 'postgresql':

            sb = StringBuilder()

            target = open('postgres.sql', 'w')
            target.truncate()

            for table in data.tables:

                for _ in xrange(1, table['number_inserts'] + 1):

                    sb.append("INSERT INTO %s(" % table['name'])

                    for field in table['fields']:

                        rdgrd = Postgres(field, table['name'])

                        if rdgrd.datatype_is_supported() == 'jump':
                            continue
                        else:
                            sb.append("%s," % field['name'])

                    _sb = sb.to_string()[:-1]
                    sb.clear()
                    sb.append(_sb)
                    sb.append(") VALUES(")

                    for field in table['fields']:

                        rdgrd = Postgres(field, table['name'])

                        sb.append("'%s'," % rdgrd.generate_data())

                    _sb = sb.to_string()[:-1]
                    sb.clear()
                    sb.append(_sb)
                    sb.append(")")

                    # print sb

                    target.write(sb.to_string())
                    target.write("\n")
                    sb.clear()

                target.write("\n")

            target.close()

        elif args.target == 'mysql':
            db = MySQL()
        else:
            raise Exception(
                "unexpected target database {0}".format(args.target))

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
