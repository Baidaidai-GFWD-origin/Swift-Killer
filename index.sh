current_dir=$(pwd)
for file in $current_dir/**/*.img; do

  echo "\n----------------------------\n"
  filename=$(basename "$file")  # 获取文件名 (basename)
  filename_no_ext="${filename%.*}"
  filepath=${file:h}  # 获取文件路径的目录部分

  echo "Current Image Is: $filename_no_ext"
  echo "Current Image Path: $filepath"
  echo "Current Command is: fastboot flash $filename_no_ext $filepath"
  fastboot flash $filename_no_ext $filepath
  echo "\n----------------------------\n"
  
done