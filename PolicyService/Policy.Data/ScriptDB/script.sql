Build started...
Build succeeded.
IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200701092850_InitialCreate')
BEGIN
    CREATE TABLE [Address] (
        [Id] nvarchar(450) NOT NULL,
        [CreatedDate] datetime2 NULL,
        [UpdatedDate] datetime2 NULL,
        [IsDeleted] bit NOT NULL,
        [CreatedBy] bigint NOT NULL,
        [UpdatedBy] bigint NOT NULL,
        [Status] int NOT NULL,
        [AddressDetails] nvarchar(max) NULL,
        [ProvinceOrCityId] bigint NOT NULL,
        [DistrictId] bigint NOT NULL,
        [WardId] bigint NOT NULL,
        CONSTRAINT [PK_Address] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200701092850_InitialCreate')
BEGIN
    CREATE TABLE [Conduct] (
        [Id] nvarchar(450) NOT NULL,
        [CreatedDate] datetime2 NULL,
        [UpdatedDate] datetime2 NULL,
        [IsDeleted] bit NOT NULL,
        [CreatedBy] bigint NOT NULL,
        [UpdatedBy] bigint NOT NULL,
        [Status] int NOT NULL,
        [MaHK] nvarchar(max) NULL,
        [TenLoaiHK] nvarchar(max) NULL,
        CONSTRAINT [PK_Conduct] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200701092850_InitialCreate')
BEGIN
    CREATE TABLE [District] (
        [Id] nvarchar(450) NOT NULL,
        [CreatedDate] datetime2 NULL,
        [UpdatedDate] datetime2 NULL,
        [IsDeleted] bit NOT NULL,
        [CreatedBy] bigint NOT NULL,
        [UpdatedBy] bigint NOT NULL,
        [Status] int NOT NULL,
        [Name] nvarchar(max) NULL,
        [ProvinceId] nvarchar(max) NULL,
        CONSTRAINT [PK_District] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200701092850_InitialCreate')
BEGIN
    CREATE TABLE [Nation] (
        [Id] nvarchar(450) NOT NULL,
        [CreatedDate] datetime2 NULL,
        [UpdatedDate] datetime2 NULL,
        [IsDeleted] bit NOT NULL,
        [CreatedBy] bigint NOT NULL,
        [UpdatedBy] bigint NOT NULL,
        [Status] int NOT NULL,
        [TenQG] nvarchar(max) NULL,
        [MaQG] nvarchar(max) NULL,
        CONSTRAINT [PK_Nation] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200701092850_InitialCreate')
BEGIN
    CREATE TABLE [Province] (
        [Id] nvarchar(450) NOT NULL,
        [CreatedDate] datetime2 NULL,
        [UpdatedDate] datetime2 NULL,
        [IsDeleted] bit NOT NULL,
        [CreatedBy] bigint NOT NULL,
        [UpdatedBy] bigint NOT NULL,
        [Status] int NOT NULL,
        [Name] nvarchar(max) NULL,
        CONSTRAINT [PK_Province] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200701092850_InitialCreate')
BEGIN
    CREATE TABLE [Ranking] (
        [Id] nvarchar(450) NOT NULL,
        [CreatedDate] datetime2 NULL,
        [UpdatedDate] datetime2 NULL,
        [IsDeleted] bit NOT NULL,
        [CreatedBy] bigint NOT NULL,
        [UpdatedBy] bigint NOT NULL,
        [Status] int NOT NULL,
        CONSTRAINT [PK_Ranking] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200701092850_InitialCreate')
BEGIN
    CREATE TABLE [Religion] (
        [Id] nvarchar(450) NOT NULL,
        [CreatedDate] datetime2 NULL,
        [UpdatedDate] datetime2 NULL,
        [IsDeleted] bit NOT NULL,
        [CreatedBy] bigint NOT NULL,
        [UpdatedBy] bigint NOT NULL,
        [Status] int NOT NULL,
        [Name] nvarchar(max) NULL,
        CONSTRAINT [PK_Religion] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200701092850_InitialCreate')
BEGIN
    CREATE TABLE [Semester] (
        [Id] nvarchar(450) NOT NULL,
        [CreatedDate] datetime2 NULL,
        [UpdatedDate] datetime2 NULL,
        [IsDeleted] bit NOT NULL,
        [CreatedBy] bigint NOT NULL,
        [UpdatedBy] bigint NOT NULL,
        [Status] int NOT NULL,
        [MaHk] nvarchar(max) NULL,
        [Name] nvarchar(max) NULL,
        [Year] datetime2 NOT NULL,
        CONSTRAINT [PK_Semester] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200701092850_InitialCreate')
BEGIN
    CREATE TABLE [Student] (
        [Id] nvarchar(450) NOT NULL,
        [CreatedDate] datetime2 NULL,
        [UpdatedDate] datetime2 NULL,
        [IsDeleted] bit NOT NULL,
        [CreatedBy] bigint NOT NULL,
        [UpdatedBy] bigint NOT NULL,
        [Status] int NOT NULL,
        [Code] nvarchar(max) NULL,
        [AddressId] nvarchar(max) NULL,
        [BirthDate] datetime2 NULL,
        [Fullname] nvarchar(max) NULL,
        CONSTRAINT [PK_Student] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200701092850_InitialCreate')
BEGIN
    CREATE TABLE [StudentClass] (
        [Id] nvarchar(450) NOT NULL,
        [CreatedDate] datetime2 NULL,
        [UpdatedDate] datetime2 NULL,
        [IsDeleted] bit NOT NULL,
        [CreatedBy] bigint NOT NULL,
        [UpdatedBy] bigint NOT NULL,
        [Status] int NOT NULL,
        CONSTRAINT [PK_StudentClass] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200701092850_InitialCreate')
BEGIN
    CREATE TABLE [Subject] (
        [Id] nvarchar(450) NOT NULL,
        [CreatedDate] datetime2 NULL,
        [UpdatedDate] datetime2 NULL,
        [IsDeleted] bit NOT NULL,
        [CreatedBy] bigint NOT NULL,
        [UpdatedBy] bigint NOT NULL,
        [Status] int NOT NULL,
        CONSTRAINT [PK_Subject] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200701092850_InitialCreate')
BEGIN
    CREATE TABLE [Teacher] (
        [Id] nvarchar(450) NOT NULL,
        [CreatedDate] datetime2 NULL,
        [UpdatedDate] datetime2 NULL,
        [IsDeleted] bit NOT NULL,
        [CreatedBy] bigint NOT NULL,
        [UpdatedBy] bigint NOT NULL,
        [Status] int NOT NULL,
        [Code] nvarchar(max) NULL,
        [AddressId] nvarchar(max) NULL,
        [Fullname] nvarchar(max) NULL,
        [BirthDate] datetime2 NULL,
        [Mobile] nvarchar(max) NULL,
        CONSTRAINT [PK_Teacher] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200701092850_InitialCreate')
BEGIN
    CREATE TABLE [Ward] (
        [Id] nvarchar(450) NOT NULL,
        [CreatedDate] datetime2 NULL,
        [UpdatedDate] datetime2 NULL,
        [IsDeleted] bit NOT NULL,
        [CreatedBy] bigint NOT NULL,
        [UpdatedBy] bigint NOT NULL,
        [Status] int NOT NULL,
        [Name] nvarchar(max) NULL,
        [DistrictId] nvarchar(max) NULL,
        CONSTRAINT [PK_Ward] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200701092850_InitialCreate')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200701092850_InitialCreate', N'3.1.5');
END;

GO


