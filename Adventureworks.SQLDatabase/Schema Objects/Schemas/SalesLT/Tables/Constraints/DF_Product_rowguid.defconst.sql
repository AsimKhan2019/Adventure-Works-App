﻿ALTER TABLE [SalesLT].[Product]
    ADD CONSTRAINT [DF_Product_rowguid] DEFAULT (newid()) FOR [rowguid];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'SCHEMA', @level0name = N'SalesLT', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'DF_Product_rowguid';

