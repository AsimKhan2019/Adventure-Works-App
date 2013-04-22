﻿ALTER TABLE [SalesLT].[ProductDescription]
    ADD CONSTRAINT [DF_ProductDescription_rowguid] DEFAULT (newid()) FOR [rowguid];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'SCHEMA', @level0name = N'SalesLT', @level1type = N'TABLE', @level1name = N'ProductDescription', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductDescription_rowguid';

