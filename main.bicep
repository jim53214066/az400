param storageName string = 'stg${uniqueString(resourceGroup().id)}'
param location string = resourceGroup().location
param storageSKU string = 'Premium_LRS'

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storageName
  location: location
  kind: 'StorageV2'
  sku: {
      name: storageSKU
  }
  
}

output storageEndpoint object = storageaccount.properties.primaryEndpoints
