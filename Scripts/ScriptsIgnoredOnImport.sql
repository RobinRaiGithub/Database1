
USE [master]
GO

/****** Object:  Database [Database1]    Script Date: 24/01/2021 16:09:51 ******/
CREATE DATABASE [Database1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Database1_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Database1_Data.mdf' , SIZE = 210176KB , MAXSIZE = UNLIMITED, FILEGROWTH = 16384KB )
 LOG ON 
( NAME = N'Database1_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Database1_Log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 16384KB )
GO

ALTER DATABASE [Database1] SET COMPATIBILITY_LEVEL = 120
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Database1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Database1] SET ANSI_NULL_DEFAULT OFF
GO

ALTER DATABASE [Database1] SET ANSI_NULLS ON
GO

ALTER DATABASE [Database1] SET ANSI_PADDING ON
GO

ALTER DATABASE [Database1] SET ANSI_WARNINGS ON
GO

ALTER DATABASE [Database1] SET ARITHABORT ON
GO

ALTER DATABASE [Database1] SET AUTO_CLOSE OFF
GO

ALTER DATABASE [Database1] SET AUTO_SHRINK OFF
GO

ALTER DATABASE [Database1] SET AUTO_UPDATE_STATISTICS ON
GO

ALTER DATABASE [Database1] SET CURSOR_CLOSE_ON_COMMIT OFF
GO

ALTER DATABASE [Database1] SET CURSOR_DEFAULT  GLOBAL
GO

ALTER DATABASE [Database1] SET CONCAT_NULL_YIELDS_NULL ON
GO

ALTER DATABASE [Database1] SET NUMERIC_ROUNDABORT OFF
GO

ALTER DATABASE [Database1] SET QUOTED_IDENTIFIER ON
GO

ALTER DATABASE [Database1] SET RECURSIVE_TRIGGERS OFF
GO

ALTER DATABASE [Database1] SET  DISABLE_BROKER
GO

ALTER DATABASE [Database1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO

ALTER DATABASE [Database1] SET DATE_CORRELATION_OPTIMIZATION OFF
GO

ALTER DATABASE [Database1] SET TRUSTWORTHY OFF
GO

ALTER DATABASE [Database1] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO

ALTER DATABASE [Database1] SET PARAMETERIZATION SIMPLE
GO

ALTER DATABASE [Database1] SET READ_COMMITTED_SNAPSHOT OFF
GO

ALTER DATABASE [Database1] SET HONOR_BROKER_PRIORITY OFF
GO

ALTER DATABASE [Database1] SET RECOVERY SIMPLE
GO

ALTER DATABASE [Database1] SET  MULTI_USER
GO

ALTER DATABASE [Database1] SET PAGE_VERIFY CHECKSUM
GO

ALTER DATABASE [Database1] SET DB_CHAINING OFF
GO

ALTER DATABASE [Database1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF )
GO

ALTER DATABASE [Database1] SET TARGET_RECOVERY_TIME = 0 SECONDS
GO

ALTER DATABASE [Database1] SET DELAYED_DURABILITY = DISABLED
GO

USE [Database1]
GO

/****** Object:  UserDefinedFunction [dbo].[ufnGetAccountingEndDate]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  UserDefinedFunction [dbo].[ufnGetAccountingStartDate]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  UserDefinedFunction [dbo].[ufnGetContactInformation]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  UserDefinedFunction [dbo].[ufnGetDocumentStatusText]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  UserDefinedFunction [dbo].[ufnGetProductDealerPrice]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  UserDefinedFunction [dbo].[ufnGetProductListPrice]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  UserDefinedFunction [dbo].[ufnGetProductStandardCost]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  UserDefinedFunction [dbo].[ufnGetPurchaseOrderStatusText]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  UserDefinedFunction [dbo].[ufnGetSalesOrderStatusText]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  UserDefinedFunction [dbo].[ufnGetStock]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Person].[BusinessEntityContact]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Person].[ContactType]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Person].[EmailAddress]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Person].[Person]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Person].[PersonPhone]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Person].[PhoneNumberType]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Sales].[Store]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  View [Sales].[vStoreWithContacts]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Person].[Address]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Person].[AddressType]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Person].[BusinessEntityAddress]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Person].[CountryRegion]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Person].[StateProvince]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  View [Sales].[vStoreWithAddresses]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Purchasing].[Vendor]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  View [Purchasing].[vVendorWithContacts]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  View [Purchasing].[vVendorWithAddresses]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  View [Person].[vAdditionalContactInfo]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [HumanResources].[Employee]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  View [HumanResources].[vEmployee]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [HumanResources].[Department]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [HumanResources].[EmployeeDepartmentHistory]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  View [HumanResources].[vEmployeeDepartment]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [HumanResources].[Shift]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  View [HumanResources].[vEmployeeDepartmentHistory]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  UserDefinedFunction [dbo].[ufnLeadingZeros]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Sales].[Customer]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

/****** Object:  View [Sales].[vIndividualCustomer]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  View [Sales].[vPersonDemographics]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [HumanResources].[JobCandidate]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  View [HumanResources].[vJobCandidate]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  View [HumanResources].[vJobCandidateEmployment]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  View [HumanResources].[vJobCandidateEducation]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Production].[ProductModel]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  View [Production].[vProductModelCatalogDescription]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  View [Production].[vProductModelInstructions]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Sales].[SalesPerson]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Sales].[SalesTerritory]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  View [Sales].[vSalesPerson]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Sales].[SalesOrderHeader]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

/****** Object:  View [Sales].[vSalesPersonSalesByFiscalYears]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  View [Sales].[vStoreWithDemographics]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Production].[ProductDescription]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Production].[ProductModelProductDescriptionCulture]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Production].[Product]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  View [Production].[vProductAndDescription]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ARITHABORT ON
GO

SET CONCAT_NULL_YIELDS_NULL ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_NULLS ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_WARNINGS ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

/****** Object:  View [Person].[vStateProvinceCountryRegion]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ARITHABORT ON
GO

SET CONCAT_NULL_YIELDS_NULL ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_NULLS ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_WARNINGS ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

/****** Object:  Table [dbo].[AWBuildVersion]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[DatabaseLog]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[ErrorLog]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [HumanResources].[EmployeePayHistory]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Person].[BusinessEntity]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Person].[Password]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

/****** Object:  Table [Production].[BillOfMaterials]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Production].[Culture]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Production].[Document]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

/****** Object:  Table [Production].[Illustration]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Production].[Location]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Production].[ProductCategory]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Production].[ProductCostHistory]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Production].[ProductDocument]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Production].[ProductInventory]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Production].[ProductListPriceHistory]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Production].[ProductModelIllustration]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Production].[ProductPhoto]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

/****** Object:  Table [Production].[ProductProductPhoto]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Production].[ProductReview]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Production].[ProductSubcategory]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Production].[ScrapReason]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Production].[TransactionHistory]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Production].[TransactionHistoryArchive]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Production].[UnitMeasure]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Production].[WorkOrder]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Production].[WorkOrderRouting]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Purchasing].[ProductVendor]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Purchasing].[PurchaseOrderDetail]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Purchasing].[PurchaseOrderHeader]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

/****** Object:  Table [Purchasing].[ShipMethod]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Sales].[CountryRegionCurrency]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Sales].[CreditCard]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Sales].[Currency]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Sales].[CurrencyRate]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Sales].[PersonCreditCard]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Sales].[SalesOrderDetail]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Sales].[SalesOrderHeaderSalesReason]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Sales].[SalesPersonQuotaHistory]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Sales].[SalesReason]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Sales].[SalesTaxRate]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Sales].[SalesTerritoryHistory]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Sales].[ShoppingCartItem]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Sales].[SpecialOffer]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [Sales].[SpecialOfferProduct]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ARITHABORT ON
GO

SET CONCAT_NULL_YIELDS_NULL ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_NULLS ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_WARNINGS ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ARITHABORT ON
GO

SET CONCAT_NULL_YIELDS_NULL ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_NULLS ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_WARNINGS ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ARITHABORT ON
GO

SET CONCAT_NULL_YIELDS_NULL ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_NULLS ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_WARNINGS ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

SET ARITHABORT ON
GO

SET CONCAT_NULL_YIELDS_NULL ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_NULLS ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_WARNINGS ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING ON
GO

SET ARITHABORT ON
GO

SET CONCAT_NULL_YIELDS_NULL ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_NULLS ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_WARNINGS ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

SET ARITHABORT ON
GO

SET CONCAT_NULL_YIELDS_NULL ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_NULLS ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_WARNINGS ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

SET ARITHABORT ON
GO

SET CONCAT_NULL_YIELDS_NULL ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_NULLS ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_WARNINGS ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

SET ARITHABORT ON
GO

SET CONCAT_NULL_YIELDS_NULL ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_NULLS ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_WARNINGS ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

SET ARITHABORT ON
GO

SET CONCAT_NULL_YIELDS_NULL ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_NULLS ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_WARNINGS ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

SET ARITHABORT ON
GO

SET CONCAT_NULL_YIELDS_NULL ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_NULLS ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_WARNINGS ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

SET ARITHABORT ON
GO

SET CONCAT_NULL_YIELDS_NULL ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_NULLS ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_WARNINGS ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

SET ARITHABORT ON
GO

SET CONCAT_NULL_YIELDS_NULL ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_NULLS ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_WARNINGS ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

/****** Object:  StoredProcedure [dbo].[uspGetBillOfMaterials]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[uspGetEmployeeManagers]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[uspGetManagerEmployees]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[uspGetWhereUsedProductID]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[uspLogError]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[uspPrintError]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[uspSearchCandidateResumes]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [HumanResources].[uspUpdateEmployeeHireInfo]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [HumanResources].[uspUpdateEmployeeLogin]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [HumanResources].[uspUpdateEmployeePersonalInfo]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  DdlTrigger [ddlDatabaseTriggerLog]    Script Date: 24/01/2021 16:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

USE [master]
GO

ALTER DATABASE [Database1] SET  READ_WRITE
GO
