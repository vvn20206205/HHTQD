# from sqlalchemy import create_engine

# Thay đổi các thông số kết nối tùy theo cấu hình của bạn
server = 'localhost'
database = 'your_database_name'
username = 'SA'
password = '0123456789'
port = '1433'

# Tạo chuỗi kết nối
# engine = 
print(f'mssql+pyodbc://{username}:{password}@{server}:{port}/{database}?driver=ODBC+Driver+17+for+SQL+Server')

# # Thử kết nối
# try:
#     conn = engine.connect()
#     print("Kết nối thành công!")
# except Exception as e:
#     print("Lỗi khi kết nối:", e)
