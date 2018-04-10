# Run all of the installers
for installer in $(find -name "install.sh" -not -path "./install.sh"); do
  echo ""
  echo "-------------------------------"
  echo "Running ${installer}..."
  bash ${installer}
  echo "-------------------------------"
done
