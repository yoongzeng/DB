CREATE TABLE [Customer].[Address]
(
[AddressID] [int] NOT NULL IDENTITY(1, 1),
[AddressLine1] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AddressLine2] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[City] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[County] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PostCode] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF__Address__Modifie__398D8EEE] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Customer].[Address] ADD CONSTRAINT [PK__Address__091C2A1B6A645ED9] PRIMARY KEY CLUSTERED  ([AddressID]) ON [PRIMARY]
GO
