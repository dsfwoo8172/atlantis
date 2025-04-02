# 這是一個簡單的 Terraform 配置，創建一個本地文件
# 不需要任何 API token 或雲服務提供商認證

terraform {
  required_version = ">= 0.12"
}

# 定義一個本地文件資源
resource "local_file" "example" {
  content  = "這是一個由 Terraform 創建的示例文件。\n創建時間: ${timestamp()}"
  filename = "${path.module}/example.txt"
}

# 輸出文件路徑
output "file_path" {
  value = local_file.example.filename
}

# 輸出文件內容
output "file_content" {
  value = local_file.example.content
}
