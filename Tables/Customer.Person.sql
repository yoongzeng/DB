CREATE TABLE [Customer].[Person]
(
[person_ID] [int] NOT NULL IDENTITY(1, 1),
[Title] [nvarchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FirstName] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MiddleName] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastName] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Suffix] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF__Person__Modified__36B12243] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Customer].[Person] ADD CONSTRAINT [PK__Person__543B4487ED8E3F11] PRIMARY KEY CLUSTERED  ([person_ID]) ON [PRIMARY]
GO
