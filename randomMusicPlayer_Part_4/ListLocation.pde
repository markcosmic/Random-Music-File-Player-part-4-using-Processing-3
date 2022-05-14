void fileSelected(File selection) {
  if (selection == null) {
    fileName = null;
  } else {
    fileName = selection.getAbsolutePath();
    getFolderName();
    songNames = loadStrings(fileName);
    fileSelectedYet = true;    
  }
}
