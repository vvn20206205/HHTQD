import pandas as pd

def xlsx_to_csv(input_file):
    try:
        # Đọc dữ liệu từ tệp Excel
        xls = pd.ExcelFile(input_file)
        
        # Lặp qua từng sheet và chuyển đổi thành CSV
        for sheet_name in xls.sheet_names:
            df = pd.read_excel(xls, sheet_name)
            output_csv_file = f"{sheet_name}.csv"
            df.to_csv(output_csv_file, index=False, encoding='utf-8')
            print(f"Chuyển đổi thành công từ {sheet_name} sang {output_csv_file}")
    except Exception as e:
        print(f"Lỗi: {str(e)}")

# Đường dẫn tệp Excel đầu vào
input_excel_file = 'mySQL sample database.xlsx'

# Thực hiện chuyển đổi
xlsx_to_csv(input_excel_file)
