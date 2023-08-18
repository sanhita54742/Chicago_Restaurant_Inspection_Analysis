/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      Modified_chicago.dm1
 *
 * Date Created : Sunday, June 18, 2023 21:54:36
 * Target DBMS : Microsoft SQL Server 2019
 */

/* 
 * TABLE: Dim_Application 
 */

CREATE TABLE Dim_Application(
    [ApplicationType SK]    int              IDENTITY(1,1),
    DI_WorkflowFileName     nvarchar(256)    NULL,
    DI_WorkFlowDirectory    nvarchar(256)    NULL,
    ApplicationType         varchar(20)      NULL,
    DI_CreateDate           date             NULL,
    CONSTRAINT PK23 PRIMARY KEY NONCLUSTERED ([ApplicationType SK])
)

go


IF OBJECT_ID('Dim_Application') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Application >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Application >>>'
go

/* 
 * TABLE: Dim_Business_Activity 
 */

CREATE TABLE Dim_Business_Activity(
    BusinessActivityID      int              NOT NULL,
    DI_WorkflowFileName     nvarchar(256)    NULL,
    DI_WorkFlowDirectory    nvarchar(256)    NULL,
    DI_CreateDate           date             NULL,
    BusinessActivity        nvarchar(10)     NULL,
    CONSTRAINT PK20 PRIMARY KEY NONCLUSTERED (BusinessActivityID)
)

go


IF OBJECT_ID('Dim_Business_Activity') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Business_Activity >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Business_Activity >>>'
go

/* 
 * TABLE: DIM_Chicago_Address 
 */

CREATE TABLE DIM_Chicago_Address(
    AddressSK               int              NOT NULL,
    CITY                    varchar(18)      NULL,
    DI_WorkflowFileName     nvarchar(256)    NULL,
    DI_WorkFlowDirectory    nvarchar(256)    NULL,
    DI_CreateDate           date             NULL,
    LATITUDE                nvarchar(508)    NULL,
    LONGITUDE               nvarchar(508)    NULL,
    LOCATION                nvarchar(508)    NULL,
    [ZIP CODE]              int              NULL,
    STATE                   nvarchar(508)    NULL,
    CONSTRAINT PK15 PRIMARY KEY NONCLUSTERED (AddressSK)
)

go


IF OBJECT_ID('DIM_Chicago_Address') IS NOT NULL
    PRINT '<<< CREATED TABLE DIM_Chicago_Address >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIM_Chicago_Address >>>'
go

/* 
 * TABLE: DIM_Chicago_FacilityType 
 */

CREATE TABLE DIM_Chicago_FacilityType(
    FacilitySK              int              NOT NULL,
    FacilityType            varchar(47)      NULL,
    DI_WorkFlowFileName     nvarchar(256)    NULL,
    DI_WorkflowDirectory    nvarchar(256)    NULL,
    DI_CreateDate           datetime         NULL,
    CONSTRAINT PK6 PRIMARY KEY NONCLUSTERED (FacilitySK)
)

go


IF OBJECT_ID('DIM_Chicago_FacilityType') IS NOT NULL
    PRINT '<<< CREATED TABLE DIM_Chicago_FacilityType >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIM_Chicago_FacilityType >>>'
go

/* 
 * TABLE: DIM_Chicago_FoodInspectionResults 
 */

CREATE TABLE DIM_Chicago_FoodInspectionResults(
    ResultsSK               int              NOT NULL,
    Results                 varchar(20)      NULL,
    DI_WorkFlowDirectory    nvarchar(256)    NULL,
    DI_WorkFlowFileName     nvarchar(256)    NULL,
    CONSTRAINT PK9 PRIMARY KEY NONCLUSTERED (ResultsSK)
)

go


IF OBJECT_ID('DIM_Chicago_FoodInspectionResults') IS NOT NULL
    PRINT '<<< CREATED TABLE DIM_Chicago_FoodInspectionResults >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIM_Chicago_FoodInspectionResults >>>'
go

/* 
 * TABLE: DIM_Chicago_Geo 
 */

CREATE TABLE DIM_Chicago_Geo(
    GeoSK                   int             NOT NULL,
    Address                 varchar(51)     NULL,
    City                    varchar(20)     NULL,
    State                   varchar(20)     NULL,
    Zip                     int             NULL,
    Latitude                float           NULL,
    Longitude               float           NULL,
    Locatiion               varchar(40)     NULL,
    DI_WorkFlowDirectory    varchar(256)    NULL,
    DI_WorkFlowFileNmae     varchar(30)     NULL,
    CONSTRAINT PK4 PRIMARY KEY NONCLUSTERED (GeoSK)
)

go


IF OBJECT_ID('DIM_Chicago_Geo') IS NOT NULL
    PRINT '<<< CREATED TABLE DIM_Chicago_Geo >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIM_Chicago_Geo >>>'
go

/* 
 * TABLE: DIM_Chicago_Restaurants 
 */

CREATE TABLE DIM_Chicago_Restaurants(
    RestaurantSK            int              NOT NULL,
    DBA_Name                varchar(79)      NULL,
    AKA_Name                varchar(79)      NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkFlowDirectory    nvarchar(256)    NULL,
    DI_WorkFileName         nvarchar(256)    NULL,
    CONSTRAINT PK3 PRIMARY KEY NONCLUSTERED (RestaurantSK)
)

go


IF OBJECT_ID('DIM_Chicago_Restaurants') IS NOT NULL
    PRINT '<<< CREATED TABLE DIM_Chicago_Restaurants >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIM_Chicago_Restaurants >>>'
go

/* 
 * TABLE: DIM_Chicago_Risk 
 */

CREATE TABLE DIM_Chicago_Risk(
    RiskSK                        int              NOT NULL,
    Risk                          char(15)         NULL,
    DI_CreateWorkFlowDirectory    nvarchar(256)    NULL,
    DI_CreateDate                 datetime         NULL,
    DI_WorkFlowFileName           nvarchar(256)    NULL,
    CONSTRAINT PK8 PRIMARY KEY NONCLUSTERED (RiskSK)
)

go


IF OBJECT_ID('DIM_Chicago_Risk') IS NOT NULL
    PRINT '<<< CREATED TABLE DIM_Chicago_Risk >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIM_Chicago_Risk >>>'
go

/* 
 * TABLE: DIM_Chicago_Violation 
 */

CREATE TABLE DIM_Chicago_Violation(
    ViolationSK             int             NOT NULL,
    Version                 varchar(20)     NULL,
    ViolationDescription    varchar(256)    NULL,
    ViolationCode           int             NULL,
    CONSTRAINT PK7 PRIMARY KEY NONCLUSTERED (ViolationSK)
)

go


IF OBJECT_ID('DIM_Chicago_Violation') IS NOT NULL
    PRINT '<<< CREATED TABLE DIM_Chicago_Violation >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIM_Chicago_Violation >>>'
go

/* 
 * TABLE: Dim_Date 
 */

CREATE TABLE Dim_Date(
    DateSK                  int              NOT NULL,
    DI_WorkflowFileName     nvarchar(256)    NULL,
    DI_WorkFlowDirectory    nvarchar(256)    NULL,
    DI_CreateDate           date             NULL,
    FullDateAK              date             NULL,
    DayNumberOfWeek         int              NULL,
    DayNameOfWeek           nvarchar(10)     NULL,
    DayNumberOfMonth        int              NULL,
    DayNumberOfYear         int              NULL,
    WeekNumberOfYear        int              NULL,
    MonthName               nvarchar(10)     NULL,
    MonthNumberOfYear       int              NULL,
    CalenderQuater          int              NULL,
    CalenderYear            smallint         NULL,
    CONSTRAINT PK20 PRIMARY KEY NONCLUSTERED (DateSK)
)

go


IF OBJECT_ID('Dim_Date') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Date >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Date >>>'
go

/* 
 * TABLE: Dim_InspectionType 
 */

CREATE TABLE Dim_InspectionType(
    InspectionSK            int             NOT NULL,
    InspectionType          varchar(78)     NULL,
    DI_WorkFlowDirectory    nvarchar(78)    NULL,
    DI_CreateDate           datetime        NULL,
    DI_WorkFlowFileName     nvarchar(78)    NULL,
    CONSTRAINT PK24 PRIMARY KEY NONCLUSTERED (InspectionSK)
)

go


IF OBJECT_ID('Dim_InspectionType') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_InspectionType >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_InspectionType >>>'
go

/* 
 * TABLE: DIM_LICENSE 
 */

CREATE TABLE DIM_LICENSE(
    LICENSE_ID                       char(10)         NOT NULL,
    DI_WorkflowFileName              nvarchar(256)    NULL,
    DI_WorkFlowDirectory             nvarchar(10)     NULL,
    DI_CreateDate                    date             NULL,
    [LICENSE CODE]                   nvarchar(508)    NULL,
    [LICENSE STATUS]                 nvarchar(508)    NULL,
    [LICENSE STATUS CHANGE DATE]     nvarchar(508)    NULL,
    [LICENSE DESCRIPTION]            nvarchar(508)    NULL,
    [LICENSE APPROVED FOR ISSUANCE]  nvarchar(508)    NULL,
    CONSTRAINT PK17 PRIMARY KEY NONCLUSTERED (LICENSE_ID)
)

go


IF OBJECT_ID('DIM_LICENSE') IS NOT NULL
    PRINT '<<< CREATED TABLE DIM_LICENSE >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIM_LICENSE >>>'
go

/* 
 * TABLE: Dim_Police_district 
 */

CREATE TABLE Dim_Police_district(
    Police_districtSK       int              IDENTITY(1,1),
    DI_WorkflowFileName     nvarchar(256)    NULL,
    DI_WorkFlowDirectory    nvarchar(256)    NULL,
    DI_CreateDate           date             NULL,
    Police_district         nvarchar(10)     NULL,
    CONSTRAINT PK19 PRIMARY KEY NONCLUSTERED (Police_districtSK)
)

go


IF OBJECT_ID('Dim_Police_district') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Police_district >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Police_district >>>'
go

/* 
 * TABLE: Dim_Restaurant 
 */

CREATE TABLE Dim_Restaurant(
    [Legal_Name SK]           int              IDENTITY(1,1),
    [Legal Name]              nvarchar(256)    NULL,
    [Doing Business as Name]  varchar(78)      NULL,
    [Site Number]             int              NULL,
    DI_WorkflowFileName       nvarchar(256)    NULL,
    DI_WorkFlowDirectory      nvarchar(256)    NULL,
    DI_CreateDate             date             NULL,
    CONSTRAINT PK22 PRIMARY KEY NONCLUSTERED ([Legal_Name SK])
)

go


IF OBJECT_ID('Dim_Restaurant') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Restaurant >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Restaurant >>>'
go

/* 
 * TABLE: DIM_Ward 
 */

CREATE TABLE DIM_Ward(
    WARD_SK                 int              NOT NULL,
    DI_WorkflowFileName     nvarchar(256)    NULL,
    DI_WorkFlowDirectory    nvarchar(256)    NULL,
    DI_CreateDate           date             NULL,
    [WARD PRECINCT]         nvarchar(508)    NULL,
    PRECINCT                nvarchar(508)    NULL,
    CONSTRAINT PK16 PRIMARY KEY NONCLUSTERED (WARD_SK)
)

go


IF OBJECT_ID('DIM_Ward') IS NOT NULL
    PRINT '<<< CREATED TABLE DIM_Ward >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIM_Ward >>>'
go

/* 
 * TABLE: FCT_Business_License 
 */

CREATE TABLE FCT_Business_License(
    ID                          int              NOT NULL,
    DI_WorkflowFileName         nvarchar(256)    NULL,
    DI_WorkFlowDirectory        nvarchar(256)    NULL,
    DI_CreateDate               date             NULL,
    [LICENSE CODE]              nvarchar(508)    NULL,
    [SITE NUMBER]               int              NULL,
    [ACCOUNT NUMBER]            int              NOT NULL,
    [LICENSE ID]                int              NOT NULL,
    AddressSK                   int              NOT NULL,
    LICENSE_ID                  char(10)         NOT NULL,
    WARD_SK                     int              NOT NULL,
    [License Term Expriy Date]  int              NOT NULL,
    [License Term Start Date]   int              NOT NULL,
    Police_districtSK           int              NULL,
    BusinessActivityID          int              NULL,
    [ApplicationType SK]        int              NULL,
    SSA_SK                      int              NULL,
    [Legal_Name SK]             int              NULL,
    CONSTRAINT PK14 PRIMARY KEY NONCLUSTERED (ID)
)

go


IF OBJECT_ID('FCT_Business_License') IS NOT NULL
    PRINT '<<< CREATED TABLE FCT_Business_License >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE FCT_Business_License >>>'
go

/* 
 * TABLE: FCT_Chi_FoodInspection_Violations 
 */

CREATE TABLE FCT_Chi_FoodInspection_Violations(
    InspectionID            int             NOT NULL,
    ViolationSK             int             NOT NULL,
    DI_WorkFowDirectory     varchar(255)    NULL,
    DI_WorkFlow_FileName    varchar(30)     NULL,
    DI_CreateDate           char(10)        NULL,
    ViolationComment        varchar(255)    NULL
)

go


IF OBJECT_ID('FCT_Chi_FoodInspection_Violations') IS NOT NULL
    PRINT '<<< CREATED TABLE FCT_Chi_FoodInspection_Violations >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE FCT_Chi_FoodInspection_Violations >>>'
go

/* 
 * TABLE: FCT_Chi_FoodInspections 
 */

CREATE TABLE FCT_Chi_FoodInspections(
    InspectionID            int               NOT NULL,
    RiskSK                  int               NOT NULL,
    FacilitySK              int               NOT NULL,
    ResultsSK               int               NOT NULL,
    LicensesSK              numeric(10, 0)    NOT NULL,
    Licence_number          numeric(15, 0)    NULL,
    Inspection_Date         date              NULL,
    DI_CreateDate           date              NULL,
    DI_WorkFlowFileName     varchar(30)       NULL,
    DI_WorkFlowDirectory    varchar(255)      NULL,
    RestaurantSK            int               NOT NULL,
    GeoSK                   int               NOT NULL,
    LicenseSK               int               NOT NULL,
    DateSK                  int               NOT NULL,
    InspectionSK            int               NOT NULL,
    CONSTRAINT PK1 PRIMARY KEY NONCLUSTERED (InspectionID)
)

go


IF OBJECT_ID('FCT_Chi_FoodInspections') IS NOT NULL
    PRINT '<<< CREATED TABLE FCT_Chi_FoodInspections >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE FCT_Chi_FoodInspections >>>'
go

/* 
 * TABLE: SSA 
 */

CREATE TABLE SSA(
    SSA_SK                  int              NOT NULL,
    DI_WorkflowFileName     nvarchar(256)    NULL,
    DI_WorkFlowDirectory    nvarchar(256)    NULL,
    DI_CreateDate           date             NULL,
    SSA                     char(10)         NULL,
    CONSTRAINT PK21 PRIMARY KEY NONCLUSTERED (SSA_SK)
)

go


IF OBJECT_ID('SSA') IS NOT NULL
    PRINT '<<< CREATED TABLE SSA >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE SSA >>>'
go

/* 
 * TABLE: stg_DI_CreatedDate 
 */

CREATE TABLE stg_DI_CreatedDate(
    DateSK          int              IDENTITY(1,1),
    DATE            nvarchar(508)    NULL,
    DateTime_Out    date             NULL,
    CONSTRAINT stg_DI_CreatedDate_PK PRIMARY KEY NONCLUSTERED (DateSK)
)

go


IF OBJECT_ID('stg_DI_CreatedDate') IS NOT NULL
    PRINT '<<< CREATED TABLE stg_DI_CreatedDate >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE stg_DI_CreatedDate >>>'
go

/* 
 * TABLE: FCT_Business_License 
 */

ALTER TABLE FCT_Business_License ADD CONSTRAINT RefDIM_Chicago_Address11 
    FOREIGN KEY (AddressSK)
    REFERENCES DIM_Chicago_Address(AddressSK)
go

ALTER TABLE FCT_Business_License ADD CONSTRAINT RefDIM_LICENSE12 
    FOREIGN KEY (LICENSE_ID)
    REFERENCES DIM_LICENSE(LICENSE_ID)
go

ALTER TABLE FCT_Business_License ADD CONSTRAINT RefDIM_Ward13 
    FOREIGN KEY (WARD_SK)
    REFERENCES DIM_Ward(WARD_SK)
go

ALTER TABLE FCT_Business_License ADD CONSTRAINT RefDim_Date14 
    FOREIGN KEY ([License Term Expriy Date])
    REFERENCES Dim_Date(DateSK)
go

ALTER TABLE FCT_Business_License ADD CONSTRAINT RefDim_Date15 
    FOREIGN KEY ([License Term Start Date])
    REFERENCES Dim_Date(DateSK)
go

ALTER TABLE FCT_Business_License ADD CONSTRAINT RefDim_Police_district16 
    FOREIGN KEY (Police_districtSK)
    REFERENCES Dim_Police_district(Police_districtSK)
go

ALTER TABLE FCT_Business_License ADD CONSTRAINT RefDim_Business_Activity17 
    FOREIGN KEY (BusinessActivityID)
    REFERENCES Dim_Business_Activity(BusinessActivityID)
go

ALTER TABLE FCT_Business_License ADD CONSTRAINT RefDim_Application18 
    FOREIGN KEY ([ApplicationType SK])
    REFERENCES Dim_Application([ApplicationType SK])
go

ALTER TABLE FCT_Business_License ADD CONSTRAINT RefSSA19 
    FOREIGN KEY (SSA_SK)
    REFERENCES SSA(SSA_SK)
go

ALTER TABLE FCT_Business_License ADD CONSTRAINT RefDim_Restaurant20 
    FOREIGN KEY ([Legal_Name SK])
    REFERENCES Dim_Restaurant([Legal_Name SK])
go


/* 
 * TABLE: FCT_Chi_FoodInspection_Violations 
 */

ALTER TABLE FCT_Chi_FoodInspection_Violations ADD CONSTRAINT RefDIM_Chicago_Violation21 
    FOREIGN KEY (ViolationSK)
    REFERENCES DIM_Chicago_Violation(ViolationSK)
go

ALTER TABLE FCT_Chi_FoodInspection_Violations ADD CONSTRAINT RefFCT_Chi_FoodInspections22 
    FOREIGN KEY (InspectionID)
    REFERENCES FCT_Chi_FoodInspections(InspectionID)
go


/* 
 * TABLE: FCT_Chi_FoodInspections 
 */

ALTER TABLE FCT_Chi_FoodInspections ADD CONSTRAINT Refstg_DI_CreatedDate3 
    FOREIGN KEY (DateSK)
    REFERENCES stg_DI_CreatedDate(DateSK)
go

ALTER TABLE FCT_Chi_FoodInspections ADD CONSTRAINT RefDIM_Chicago_FoodInspectionResults5 
    FOREIGN KEY (ResultsSK)
    REFERENCES DIM_Chicago_FoodInspectionResults(ResultsSK)
go

ALTER TABLE FCT_Chi_FoodInspections ADD CONSTRAINT RefDIM_Chicago_Risk6 
    FOREIGN KEY (RiskSK)
    REFERENCES DIM_Chicago_Risk(RiskSK)
go

ALTER TABLE FCT_Chi_FoodInspections ADD CONSTRAINT RefDIM_Chicago_Geo7 
    FOREIGN KEY (GeoSK)
    REFERENCES DIM_Chicago_Geo(GeoSK)
go

ALTER TABLE FCT_Chi_FoodInspections ADD CONSTRAINT RefDIM_Chicago_FacilityType9 
    FOREIGN KEY (FacilitySK)
    REFERENCES DIM_Chicago_FacilityType(FacilitySK)
go

ALTER TABLE FCT_Chi_FoodInspections ADD CONSTRAINT RefDIM_Chicago_Restaurants23 
    FOREIGN KEY (RestaurantSK)
    REFERENCES DIM_Chicago_Restaurants(RestaurantSK)
go

ALTER TABLE FCT_Chi_FoodInspections ADD CONSTRAINT RefDim_InspectionType25 
    FOREIGN KEY (InspectionSK)
    REFERENCES Dim_InspectionType(InspectionSK)
go


