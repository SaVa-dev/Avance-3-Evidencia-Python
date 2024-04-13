import mysql.connector

def main() -> None:
    ds = mysql.connector.connect(
        host        = 'localhost',
        user        = 'root',
        password    = '',
        database    = ''
    )
    pass

if __name__ == '__main__':
    main()