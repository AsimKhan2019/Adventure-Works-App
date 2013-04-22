﻿ALTER TABLE [SalesLT].[Product]
    ADD CONSTRAINT [CK_Product_ListPrice] CHECK ([ListPrice]>=(0.00));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ListPrice] >= (0.00)', @level0type = N'SCHEMA', @level0name = N'SalesLT', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'CK_Product_ListPrice';

