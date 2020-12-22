#!/bin/bash
rm magefan-blog-porto-theme.zip
cd var
mkdir backup
cd ..
mv app/design/frontend/Smartwave/porto/Magefan_Blog "var/backup/Magefan_Blog_old_`date`"
mv module-blog-porto-theme-main app/design/frontend/Smartwave/porto/Magefan_Blog
echo "Magefan Blog extension templates in Porto Theme where updated. Old files were backuped and moved to var/backup/Magefan_Blog_old"
echo "Now please redeploy static content using the command bin/magento setup:static-content:deploy -f"
