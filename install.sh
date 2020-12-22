#!/bin/bash
rm -rf magefan-blog-porto-theme.zip
rm -rf magefan-blog-porto-theme
wget -O magefan-blog-porto-theme.zip https://github.com/magefan/module-blog-porto-theme/archive/main.zip
unzip magefan-blog-porto-theme.zip -d magefan-blog-porto-theme
rm magefan-blog-porto-theme/install.sh
cd var
mkdir -p backup
cd ..
mv app/design/frontend/Smartwave/porto/Magefan_Blog "var/backup/Magefan_Blog_old_`date`"
mv magefan-blog-porto-theme app/design/frontend/Smartwave/porto/Magefan_Blog
rm -rf magefan-blog-porto-theme.zip
rm -rf magefan-blog-porto-theme
echo "Magefan Blog extension templates in Porto Theme where updated. Old files were backuped and moved to var/backup/Magefan_Blog_old"
echo "Now please redeploy static content using the command bin/magento setup:static-content:deploy -f"
