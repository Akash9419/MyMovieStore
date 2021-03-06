USE [master]
GO
/****** Object:  Database [MovieStore]    Script Date: 28/07/2021 11:26:54 am ******/
CREATE DATABASE [MovieStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MovieStore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MovieStore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MovieStore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MovieStore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MovieStore] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MovieStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MovieStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MovieStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MovieStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MovieStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MovieStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [MovieStore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MovieStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MovieStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MovieStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MovieStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MovieStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MovieStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MovieStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MovieStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MovieStore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MovieStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MovieStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MovieStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MovieStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MovieStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MovieStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MovieStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MovieStore] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MovieStore] SET  MULTI_USER 
GO
ALTER DATABASE [MovieStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MovieStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MovieStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MovieStore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MovieStore] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MovieStore] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MovieStore] SET QUERY_STORE = OFF
GO
USE [MovieStore]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 28/07/2021 11:26:55 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustID] [int] IDENTITY(101,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Address] [varchar](max) NULL,
	[Phone] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 28/07/2021 11:26:55 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[MovieID] [int] IDENTITY(1001,1) NOT NULL,
	[Title] [varchar](500) NULL,
	[Year] [varchar](25) NULL,
	[RentalCost] [int] NULL,
	[Genre] [varchar](50) NULL,
	[Rating] [int] NULL,
	[Flag] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MovieID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RentedMovies]    Script Date: 28/07/2021 11:26:55 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RentedMovies](
	[RentId] [int] IDENTITY(1,1) NOT NULL,
	[MovieID] [int] NULL,
	[CustID] [int] NULL,
	[RentedDate] [date] NULL,
	[ReturnDate] [date] NULL,
	[TotalRent] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustID], [Name], [Address], [Phone]) VALUES (101, N'AKASK', N'876kjlkjhugy', 987654)
INSERT [dbo].[Customer] ([CustID], [Name], [Address], [Phone]) VALUES (102, N'parminder', N'12 mui street', 90987634)
INSERT [dbo].[Customer] ([CustID], [Name], [Address], [Phone]) VALUES (103, N'Harman', N'130 humes street hamilton', 978763783)
INSERT [dbo].[Customer] ([CustID], [Name], [Address], [Phone]) VALUES (104, N'Jaikaran', N'20 danver place', 609876443)
INSERT [dbo].[Customer] ([CustID], [Name], [Address], [Phone]) VALUES (105, N'Raman', N'34 te rapa road', 98768764)
INSERT [dbo].[Customer] ([CustID], [Name], [Address], [Phone]) VALUES (106, N'Krishna', N'45 nomand street', 98767633)
INSERT [dbo].[Customer] ([CustID], [Name], [Address], [Phone]) VALUES (107, N'mohit', N'324 breescourt hamilton', 98765445)
INSERT [dbo].[Customer] ([CustID], [Name], [Address], [Phone]) VALUES (108, N'Lovepreet', N'45 alex street', 98765434)
INSERT [dbo].[Customer] ([CustID], [Name], [Address], [Phone]) VALUES (109, N'sharama', N'67 te aroha street', 9876543)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([MovieID], [Title], [Year], [RentalCost], [Genre], [Rating], [Flag]) VALUES (1001, N'fd', N'2002', 2, N'wed', 5, N'Rented')
INSERT [dbo].[Movies] ([MovieID], [Title], [Year], [RentalCost], [Genre], [Rating], [Flag]) VALUES (1002, N'Jatt and julliet', N'2016', 2, N'Punjabi', 6, N'Available')
INSERT [dbo].[Movies] ([MovieID], [Title], [Year], [RentalCost], [Genre], [Rating], [Flag]) VALUES (1003, N'Carry on jatta', N'2017', 5, N'Punjabi', 8, N'Available')
INSERT [dbo].[Movies] ([MovieID], [Title], [Year], [RentalCost], [Genre], [Rating], [Flag]) VALUES (1004, N'koi Mil gya', N'2015', 5, N'Hindi', 7, N'Available')
INSERT [dbo].[Movies] ([MovieID], [Title], [Year], [RentalCost], [Genre], [Rating], [Flag]) VALUES (1005, N'Krish', N'2018', 5, N'Hindi', 9, N'Rented')
SET IDENTITY_INSERT [dbo].[Movies] OFF
GO
SET IDENTITY_INSERT [dbo].[RentedMovies] ON 

INSERT [dbo].[RentedMovies] ([RentId], [MovieID], [CustID], [RentedDate], [ReturnDate], [TotalRent]) VALUES (2, 1001, 101, CAST(N'2021-07-28' AS Date), CAST(N'2021-07-28' AS Date), 0)
INSERT [dbo].[RentedMovies] ([RentId], [MovieID], [CustID], [RentedDate], [ReturnDate], [TotalRent]) VALUES (3, 1001, 101, CAST(N'2021-07-28' AS Date), CAST(N'2021-07-28' AS Date), 0)
INSERT [dbo].[RentedMovies] ([RentId], [MovieID], [CustID], [RentedDate], [ReturnDate], [TotalRent]) VALUES (4, 1001, 101, CAST(N'2021-07-28' AS Date), CAST(N'2021-07-28' AS Date), 0)
INSERT [dbo].[RentedMovies] ([RentId], [MovieID], [CustID], [RentedDate], [ReturnDate], [TotalRent]) VALUES (6, 1005, 107, CAST(N'2021-07-28' AS Date), CAST(N'2021-07-28' AS Date), 0)
SET IDENTITY_INSERT [dbo].[RentedMovies] OFF
GO
/****** Object:  Index [UQ__Customer__5C7E359E92ED9D2A]    Script Date: 28/07/2021 11:26:55 am ******/
ALTER TABLE [dbo].[Customer] ADD UNIQUE NONCLUSTERED 
(
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RentedMovies]  WITH CHECK ADD FOREIGN KEY([CustID])
REFERENCES [dbo].[Customer] ([CustID])
GO
ALTER TABLE [dbo].[RentedMovies]  WITH CHECK ADD FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movies] ([MovieID])
GO
/****** Object:  StoredProcedure [dbo].[prcCustWhoBorrowMostMovies]    Script Date: 28/07/2021 11:26:55 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	CREATE proc [dbo].[prcCustWhoBorrowMostMovies]
	as
	SELECT 
    rm.CustID,
	name as CustomerName,
    COUNT(*) occurrences
FROM RentedMovies rm join customer cc on cc.custid = rm.custid
GROUP BY
    rm.CustID, name
  
HAVING 
    COUNT(*) >1;
GO
/****** Object:  StoredProcedure [dbo].[prcDelCust]    Script Date: 28/07/2021 11:26:55 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[prcDelCust](@custId int)
  as
  delete customer where custId=@custId
GO
/****** Object:  StoredProcedure [dbo].[prcMostPopularMovies]    Script Date: 28/07/2021 11:26:55 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[prcMostPopularMovies]
 as
SELECT 
    rm.MovieID,title, COUNT(*) occurrences
FROM RentedMovies rm join movies m on m.movieid = rm.movieid
GROUP BY
    rm.MovieID, title
  
HAVING 
    COUNT(*) >1;
GO
/****** Object:  StoredProcedure [dbo].[prcRentMovie]    Script Date: 28/07/2021 11:26:55 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE proc [dbo].[prcRentMovie](@MovieID int,@CustID int,@RentDate date, @ReturnDate date,@TotalRent int)
  as
  insert into RentedMovies(MovieID,CustID,RentedDate,ReturnDate,TotalRent) values(@MovieID,@CustID,@RentDate,@ReturnDate,@TotalRent)
GO
/****** Object:  StoredProcedure [dbo].[prcReturnMovie]    Script Date: 28/07/2021 11:26:55 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[prcReturnMovie](@MovieID int,@Flag varchar(50))
  as
  delete from RentedMovies where MovieID=@MovieID;
  update Movies set Flag=@Flag where MovieID=@MovieID;
GO
/****** Object:  StoredProcedure [dbo].[prcUpdateMovieFlag]    Script Date: 28/07/2021 11:26:55 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[prcUpdateMovieFlag](@flag varchar(100),@movieID int)
  as
  update movies 
  set flag=@flag
  where MovieID=@movieID
GO
/****** Object:  StoredProcedure [dbo].[ShowRentedData]    Script Date: 28/07/2021 11:26:55 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE proc [dbo].[ShowRentedData]
  as
  select RentId, name as CustomerName, Address, Title as MovieTitle,RentalCost,RentedDate,ReturnDate,TotalRent from RentedMovies rm join Customer c on c.CustID = rm.CustID join Movies m on m.MovieID= rm.MovieID
  order by RentedDate desc
GO
USE [master]
GO
ALTER DATABASE [MovieStore] SET  READ_WRITE 
GO
