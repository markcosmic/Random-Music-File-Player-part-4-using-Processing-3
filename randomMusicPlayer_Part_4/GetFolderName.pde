void getFolderName(){
  int fileNameIndex = 0;
  for(int i = 0; i < fileName.length(); i++){
    if(fileName.charAt(i) == '\\'){
      fileNameIndex=i;
    }
   }
   folderName = fileName.substring(0,fileNameIndex + 1);
}
