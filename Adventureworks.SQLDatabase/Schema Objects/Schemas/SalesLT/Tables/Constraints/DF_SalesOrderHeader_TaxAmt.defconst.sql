﻿ALTER TABLE [SalesLT].[SalesOrderHeader]
    ADD CONSTRAINT [DF_SalesOrderHeader_TaxAmt] DEFAULT ((0.00)) FOR [TaxAmt];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0.0', @level0type = N'SCHEMA', @level0name = N'SalesLT', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesOrderHeader_TaxAmt';

