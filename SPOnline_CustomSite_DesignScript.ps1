
$adminSiteUrl = "https://sputtam-admin.sharepoint.com/"
$siteScriptFile = "D:\STUDY\Sp Online\Custom Site Design\customDesign.json"
$webTemplate = "64" #64 = Team Site, 68 = Communication Site, 1 = Groupless Team Site
$siteScriptTitle = "Custom Team Site Script"
$siteDesignTitle = "Final Custom Design"
$siteDesignDescription = "Custom team site design with multi-colored theme, external sharing disabled and some default list creations."
Connect-SPOService $adminSiteUrl
$jasonFileContent = Get-Content $siteScriptFile -Raw
$siteScript = Add-SPOSiteScript -Title $siteScriptTitle -Content $jasonFileContent | Select -First 1 Id
Add-SPOSiteDesign -SiteScripts $siteScript.Id -Title $siteDesignTitle -WebTemplate $webTemplate -Description $siteDesignDescription 
