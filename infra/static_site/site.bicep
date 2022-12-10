param staticSiteSetting object = {
  resourceGroupName: 'cloudeng-nl-site'
  location: 'westeurope'
  siteStorageAccountName: 'cloudengnlsite'
}

// create a storage account for the static site
resource staticSiteStorage 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: staticSiteSetting.siteStorageAccountName
  location: staticSiteSetting.location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  properties: {
    accessTier: 'Hot'
  }
}
