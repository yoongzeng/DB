CREATE TABLE [Customer].[Abode]
(
[Abode_ID] [int] NOT NULL IDENTITY(1, 1),
[Person_id] [int] NULL,
[Address_id] [int] NULL,
[TypeOfAddress] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Start_date] [datetime] NULL,
[End_date] [datetime] NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF__Abode__ModifiedD__4222D4EF] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Customer].[Abode] ADD CONSTRAINT [PK__Abode__2E2462D82309C66D] PRIMARY KEY CLUSTERED  ([Abode_ID]) ON [PRIMARY]
GO
ALTER TABLE [Customer].[Abode] ADD CONSTRAINT [FK__Abode__Address_i__403A8C7D] FOREIGN KEY ([Address_id]) REFERENCES [Customer].[Address] ([AddressID])
GO
ALTER TABLE [Customer].[Abode] ADD CONSTRAINT [FK__Abode__TypeOfAdd__412EB0B6] FOREIGN KEY ([TypeOfAddress]) REFERENCES [Customer].[AddressType] ([TypeOfAddress])
GO
ALTER TABLE [Customer].[Abode] ADD CONSTRAINT [FK__Abode__Person_id__3F466844] FOREIGN KEY ([Person_id]) REFERENCES [Customer].[Person] ([person_ID])
GO
