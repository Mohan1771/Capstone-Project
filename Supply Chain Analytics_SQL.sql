-- Open pit mining Capstone Project --

-- Creating a Database
CREATE DATABASE open_pit_mining;

-- Using the Database
USE open_pit_mining;

-- Table structure for table `cycle data`

CREATE TABLE `cycledata` (
  `ASSOCPAYLOADNOMINAL` text,
  `AT Available Time (iMine)` int DEFAULT NULL,
  `Autonomous` int DEFAULT NULL,
  `Available SMU Time` int DEFAULT NULL,
  `Available Time` int DEFAULT NULL,
  `Completed Cycle Count` int DEFAULT NULL,
  `COMPLETEDCYCLEDURATION` int DEFAULT NULL,
  `Creation Mode` int DEFAULT NULL,
  `CT Calendar SMU Time` int DEFAULT NULL,
  `CT Calendar Time` int DEFAULT NULL,
  `Cycle Duration` int DEFAULT NULL,
  `Cycle SMU Duration` int DEFAULT NULL,
  `Cycle Type` text,
  `Delay Time` int DEFAULT NULL,
  `Down Time` int DEFAULT NULL,
  `DTE Down Time Equipment` int DEFAULT NULL,
  `Dumping Duration` int DEFAULT NULL,
  `Dumping SMU Duration` int DEFAULT NULL,
  `Destination Dumping Start Timestamp (GMT8)` double DEFAULT NULL,
  `Empty EFH Distance` double DEFAULT NULL,
  `Empty EFH Length` double DEFAULT NULL,
  `Empty Expected Travel Duration` int DEFAULT NULL,
  `Empty Fall Height` double DEFAULT NULL,
  `Empty Plan Length` double DEFAULT NULL,
  `Empty Rise Height` text,
  `Empty Slope Distance` double DEFAULT NULL,
  `Empty Slope Length` double DEFAULT NULL,
  `Empty Target Travel Duration` int DEFAULT NULL,
  `Empty Travel Duration` int DEFAULT NULL,
  `End Processor Name` text,
  `Cycle End Timestamp (GMT8)` text,
  `Estimated Fuel Used` int DEFAULT NULL,
  `Fuel Used` double DEFAULT NULL,
  `Full Expected Travel Duration` int DEFAULT NULL,
  `Full Travel Duration` int DEFAULT NULL,
  `IC` int DEFAULT NULL,
  `Idle Duration` int DEFAULT NULL,
  `iMine Availability` int DEFAULT NULL,
  `iMine Engine Hours` int DEFAULT NULL,
  `iMine Load FCTR Truck` text,
  `iMine Operating Hours` int DEFAULT NULL,
  `iMine Utilisation` int DEFAULT NULL,
  `Loading Count` int DEFAULT NULL,
  `Loading Duration` int DEFAULT NULL,
  `Loading Efficiency` text,
  `Source Loading End Timestamp (GMT8)` double DEFAULT NULL,
  `Source Loading Start Timestamp (GMT8)` double DEFAULT NULL,
  `OPERATINGBURNRATE` double DEFAULT NULL,
  `OPERATINGTIME (CAT)` int DEFAULT NULL,
  `OPERHOURSSECONDS` int DEFAULT NULL,
  `Payload (kg)` int DEFAULT NULL,
  `Payload (t)` double DEFAULT NULL,
  `PREVIOUSSECONDARYMACHINE` text,
  `PREVIOUSSINKDESTINATION` text,
  `QUEUEATSINKDURATION` int DEFAULT NULL,
  `Queuing at Sink Duration` int DEFAULT NULL,
  `Queuing at Source Duration` int DEFAULT NULL,
  `Queuing Duration` int DEFAULT NULL,
  `Source Queuing Start Timestamp (GMT8)` double DEFAULT NULL,
  `SD_SCHEDULEDDOWNTIME` int DEFAULT NULL,
  `SDE_SCHEDULEDDOWNEQUIP` int DEFAULT NULL,
  `Cycle Start Timestamp (GMT8)` text,
  `TC` int DEFAULT NULL,
  `TMPH` double DEFAULT NULL,
  `TOTALTIME (CAT)` int DEFAULT NULL,
  `Travelling Empty Duration` int DEFAULT NULL,
  `Travelling Full Duration` int DEFAULT NULL,
  `TRUCKQUEUEATSOURCEDURATION` text,
  `UNSCHEDULEDDOWNCOUNT` int DEFAULT NULL,
  `UNSCHEDULEDDOWNTIME` int DEFAULT NULL,
  `Record Updated Timestamp (GMT8)` text,
  `WAITFORDUMPDURATION` int DEFAULT NULL,
  `WAITFORLOADDURATION` int DEFAULT NULL,
  `WORKINGBURNRATE` double DEFAULT NULL,
  `WORKINGDURATION` int DEFAULT NULL,
  `Source Location Name` text,
  `Source Location Description` text,
  `Source Location is Active Flag` text,
  `Source Location is Source Flag` text,
  `Destination Location Name` text,
  `Destination Location Description` text,
  `Destination Location is Active Flag` text,
  `Destination Location is Source Flag` text,
  `Primary Machine Name` text,
  `Primary Machine Category Name` text,
  `Primary Machine Class Name` text,
  `Secondary Machine Name` text,
  `Secondary Machine Category Name` text,
  `Secondary Machine Class Name` text,
  `Crew OID` bigint DEFAULT NULL,
  `Job Code Description` text,
  `Job Code Name` text,
  `Job Type` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `delaydata` (
  `Delay OID` bigint DEFAULT NULL,
  `Description` text,
  `ECF Class ID` text,
  `Acknowledge Flag` text,
  `Acknowledged Flag` text,
  `Confirmed Flag` text,
  `Engine Stopped Flag` text,
  `Field Notification Required Flag` text,
  `Office Confirm Flag` text,
  `Production Reporting Only Flag` text,
  `Frequency Type` int DEFAULT NULL,
  `Shift Type` text,
  `Target Location` text,
  `Target Road` text,
  `Workorder Ref` text,
  `Delay Class Name` text,
  `Delay Class Description` text,
  `Delay Class is Active Flag` text,
  `Delay Class Category Name` text,
  `Target Machine Name` text,
  `Target Machine is Active Flag` text,
  `Target Machine Class Name` text,
  `Target Machine Class Description` text,
  `Target Machine Class is Active Flag` text,
  `Target Machine Class Category Name` text,
  `Delay Reported By Person Name` text,
  `Delay Reported By User Name` text,
  `Delay Status Description` text,
  `Delay Start Timestamp (GMT8)` text,
  `Delay Finish Timestamp (GMT8)` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `locationdata` (
  `Location_Id` int DEFAULT NULL,
  `Name` text,
  `Latitude` double DEFAULT NULL,
  `Longitude` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SELECT * 
FROM cycledata;

-- Checking %ge of NULL Values in all the cycle data columns 

SELECT 100.0 * SUM(CASE WHEN `ASSOCPAYLOADNOMINAL`IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS 'ASSOCPAYLOADNOMINAL',
100.0 * SUM(CASE WHEN `AT Available Time (iMine)` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `AT Available Time (iMine)`,
100.0 * SUM(CASE WHEN `Autonomous` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Autonomous`,
100.0 * SUM(CASE WHEN `Available SMU Time` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Available SMU Time`,
100.0 * SUM(CASE WHEN `Available Time` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Available Time`,
100.0 * SUM(CASE WHEN `Completed Cycle Count` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Completed Cycle Count`,
100.0 * SUM(CASE WHEN `COMPLETEDCYCLEDURATION` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `COMPLETEDCYCLEDURATION`,
100.0 * SUM(CASE WHEN `Creation Mode` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Creation Mode`,
100.0 * SUM(CASE WHEN `CT Calendar SMU Time` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `CT Calendar SMU Time`,
100.0 * SUM(CASE WHEN `CT Calendar Time` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `CT Calendar Time`,
100.0 * SUM(CASE WHEN `Cycle Duration` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Cycle Duration`,
100.0 * SUM(CASE WHEN `Cycle SMU Duration` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Cycle SMU Duration`,
100.0 * SUM(CASE WHEN `Cycle Type` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Cycle Type`,
100.0 * SUM(CASE WHEN `Delay Time` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Delay Time`,
100.0 * SUM(CASE WHEN `Down Time` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Down Time`,
100.0 * SUM(CASE WHEN `DTE Down Time Equipment` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `DTE Down Time Equipment`,
100.0 * SUM(CASE WHEN `Dumping Duration` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Dumping Duration`,
100.0 * SUM(CASE WHEN `Dumping SMU Duration` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Dumping SMU Duration`,
100.0 * SUM(CASE WHEN `Destination Dumping Start Timestamp (GMT8)` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Destination Dumping Start Timestamp (GMT8)`,
100.0 * SUM(CASE WHEN `Empty EFH Distance` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Empty EFH Distance`,
100.0 * SUM(CASE WHEN `Empty EFH Length` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Empty EFH Length`,
100.0 * SUM(CASE WHEN `Empty Expected Travel Duration` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Empty Expected Travel Duration`,
100.0 * SUM(CASE WHEN `Empty Fall Height` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Empty Fall Height`,
100.0 * SUM(CASE WHEN `Empty Plan Length` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Empty Plan Length`,
100.0 * SUM(CASE WHEN `Empty Rise Height` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Empty Rise Height`,
100.0 * SUM(CASE WHEN `Empty Slope Distance` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Empty Slope Distance`,
100.0 * SUM(CASE WHEN `Empty Slope Length` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Empty Slope Length`,
100.0 * SUM(CASE WHEN `Empty Target Travel Duration` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Empty Target Travel Duration`,
100.0 * SUM(CASE WHEN `Empty Travel Duration` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Empty Travel Duration`,
100.0 * SUM(CASE WHEN `End Processor Name` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `End Processor Name`,
100.0 * SUM(CASE WHEN `Cycle End Timestamp (GMT8)` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Cycle End Timestamp (GMT8)`,
100.0 * SUM(CASE WHEN `Estimated Fuel Used` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Estimated Fuel Used`,
100.0 * SUM(CASE WHEN `Fuel Used` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Fuel Used`,
100.0 * SUM(CASE WHEN `Full Expected Travel Duration` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Full Expected Travel Duration`,
100.0 * SUM(CASE WHEN `Full Travel Duration` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Full Travel Duration`,
100.0 * SUM(CASE WHEN `IC` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `IC`,
100.0 * SUM(CASE WHEN `Idle Duration` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Idle Duration`,
100.0 * SUM(CASE WHEN `iMine Availability` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `iMine Availability`,
100.0 * SUM(CASE WHEN `iMine Engine Hours` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `iMine Engine Hours`,
100.0 * SUM(CASE WHEN `iMine Load FCTR Truck` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `iMine Load FCTR Truck`,
100.0 * SUM(CASE WHEN `iMine Operating Hours` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `iMine Operating Hours`,
100.0 * SUM(CASE WHEN `iMine Utilisation` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `iMine Utilisation`,
100.0 * SUM(CASE WHEN `Loading Count` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Loading Count`,
100.0 * SUM(CASE WHEN `Loading Duration` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Loading Duration`,
100.0 * SUM(CASE WHEN `Loading Efficiency` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Loading Efficiency`,
100.0 * SUM(CASE WHEN `Source Loading End Timestamp (GMT8)` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Source Loading End Timestamp (GMT8)`,
100.0 * SUM(CASE WHEN `Source Loading Start Timestamp (GMT8)` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Source Loading StartTimestamp (GMT8)`,
100.0 * SUM(CASE WHEN `OPERATINGBURNRATE` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `OPERATINGBURNRATE`,
100.0 * SUM(CASE WHEN `OPERATINGTIME (CAT)` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `OPERATINGTIME (CAT)`,
100.0 * SUM(CASE WHEN `OPERHOURSSECONDS` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS ``,
100.0 * SUM(CASE WHEN `Payload (kg)` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Payload (kg)`,
100.0 * SUM(CASE WHEN `Payload (t)` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Payload (t)`,
100.0 * SUM(CASE WHEN `PREVIOUSSECONDARYMACHINE` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `PREVIOUSSECONDARYMACHINE`,
100.0 * SUM(CASE WHEN `PREVIOUSSINKDESTINATION` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `PREVIOUSSINKDESTINATION`,
100.0 * SUM(CASE WHEN `QUEUEATSINKDURATION` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `QUEUEATSINKDURATION`,
100.0 * SUM(CASE WHEN `Queuing at Sink Duration` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Queuing at Sink Duration`,
100.0 * SUM(CASE WHEN `Queuing at Source Duration` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Queuing at Source Duration`,
100.0 * SUM(CASE WHEN `Queuing Duration` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Queuing Duration`,
100.0 * SUM(CASE WHEN `Source Queuing Start Timestamp (GMT8)` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Source Queuing Start Timestamp (GMT8`,
100.0 * SUM(CASE WHEN `SD_SCHEDULEDDOWNTIME` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `SD_SCHEDULEDDOWNTIME`,
100.0 * SUM(CASE WHEN `SDE_SCHEDULEDDOWNEQUIP` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `SDE_SCHEDULEDDOWNEQUIP`,
100.0 * SUM(CASE WHEN `Cycle Start Timestamp (GMT8)` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Cycle Start Timestamp (GMT8)`,
100.0 * SUM(CASE WHEN `TC` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `TC`,
100.0 * SUM(CASE WHEN `TC` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `TC`,
100.0 * SUM(CASE WHEN `TOTALTIME (CAT)` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `TOTALTIME (CAT)`,
100.0 * SUM(CASE WHEN `Travelling Empty Duration` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Travelling Empty Duration`,
100.0 * SUM(CASE WHEN `Travelling Full Duration` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Travelling Full Duration`,
100.0 * SUM(CASE WHEN `TRUCKQUEUEATSOURCEDURATION` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `TRUCKQUEUEATSOURCEDURATION`,
100.0 * SUM(CASE WHEN `TRUCKQUEUEATSOURCEDURATION` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `TRUCKQUEUEATSOURCEDURATION`,
100.0 * SUM(CASE WHEN `UNSCHEDULEDDOWNTIME` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `UNSCHEDULEDDOWNTIME`,
100.0 * SUM(CASE WHEN `Record Updated Timestamp (GMT8)` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Record Updated`,
100.0 * SUM(CASE WHEN `WAITFORDUMPDURATION` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `WAITFORDUMPDURATION`,
100.0 * SUM(CASE WHEN `WAITFORLOADDURATION` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `WAITFORLOADDURATION`,
100.0 * SUM(CASE WHEN `WAITFORLOADDURATION` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `WAITFORLOADDURATION`,
100.0 * SUM(CASE WHEN `WORKINGDURATION` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `WORKINGDURATION`,
100.0 * SUM(CASE WHEN `Source Location Name` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Source Location Name`,
100.0 * SUM(CASE WHEN `Source Location Description` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Source Location Description`,
100.0 * SUM(CASE WHEN `Source Location is Active Flag` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Source Location is Active Flag`,
100.0 * SUM(CASE WHEN `Source Location is Source Flag` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Source Location is Source Flag`,
100.0 * SUM(CASE WHEN `Destination Location Name` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Destination Location Name`,
100.0 * SUM(CASE WHEN `Destination Location Description` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Destination Location Description`,
100.0 * SUM(CASE WHEN `Destination Location is Active Flag` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Destination Location is Active Flag`,
100.0 * SUM(CASE WHEN `Destination Location is Source Flag` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Destination Location is Source Flag`,
100.0 * SUM(CASE WHEN `Primary Machine Name` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Primary Machine Name`,
100.0 * SUM(CASE WHEN `Primary Machine Category Name` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Primary Machine Category Name`,
100.0 * SUM(CASE WHEN `Primary Machine Class Name` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Primary Machine Class Name`,
100.0 * SUM(CASE WHEN `Secondary Machine Name` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Secondary Machine Name`,
100.0 * SUM(CASE WHEN `Secondary Machine Category Name` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Secondary Machine Category Name`,
100.0 * SUM(CASE WHEN `Secondary Machine Class Name` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Secondary Machine Class Name`,
100.0 * SUM(CASE WHEN `Crew OID` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Crew OID`,
100.0 * SUM(CASE WHEN `Job Code Description` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Job Code Description`,
100.0 * SUM(CASE WHEN `Job Code Name` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Job Code Name`,
100.0 * SUM(CASE WHEN `Job Type` IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS `Job Type`
FROM cycledata;

-- We will drop the columns having NULL value perecentage more than 50%



SELECT *
FROM cycledata;

-- Creating Equipment_Master Table

CREATE TABLE Equipment_Master AS 
SELECT 
`Primary Machine Name`, `Primary Machine Class Name`, 
`Secondary Machine Name`,`Secondary Machine Class Name`,
 `Loading Count`,`iMine Load FCTR Truck`, `PREVIOUSSECONDARYMACHINE`,
 `PREVIOUSSINKDESTINATION`, `End Processor Name`, `iMine Engine Hours`,
 `iMine Operating Hours`, `OPERATINGTIME (CAT)`, `OPERHOURSSECONDS`,
 `Full Travel Duration`, `Empty Travel Duration`,`Idle Duration`, 
 `Loading Duration`, `WAITFORDUMPDURATION`, `Dumping Duration`,
 `Payload (kg)`, `Estimated Fuel Used`,	`Fuel Used`, `Loading Efficiency`,
 `OPERATINGBURNRATE`, `TMPH`,`Job Code Name`
 FROM cycledata ;
 
 SELECT *
 FROM equipment_master;
 
-- Creating Equipment_Type_Master Table	

Create table Equipment_Type_Master As 
SELECT 		
`Cycle Type`, `Primary Machine Category Name`, `Secondary Machine Category Name`,
`TC`,`AT Available Time (iMine)`,`Available SMU Time`,`Cycle Duration`,
`Cycle SMU Duration`, `Down Time`, `Completed Cycle Count`,
`iMine Availability`,`iMine Utilisation`,`Job Type`
FROM cycledata ;

 SELECT *
 FROM Equipment_Type_Master;
 
-- Creating Location_Master Table
	
CREATE TABLE Location_Master AS SELECT `Source Location Name`,
    `Destination Location Name`,
    `Queuing at Sink Duration`,
    `Queuing at Source Duration`,
    `Queuing Duration`,
    `Cycle End Timestamp (GMT8)`,
    `Cycle Start Timestamp (GMT8)`,
    `Source Loading Start Timestamp (GMT8)`,
    `Source Loading End Timestamp (GMT8)` 
    FROM cycledata;

-- Creating Location_Type_Master Table

CREATE TABLE Location_Type_Master AS SELECT `Source Location Description`,
    `Destination Location Description`,
    `Empty EFH Distance`,
    `Empty Slope Distance`,
    `Queuing at Sink Duration`,
    `Queuing at Source Duration`,
    `Queuing Duration`,
    `Source Location is Active Flag`,
    `Source Location is Source Flag`,
    `Destination Location is Active Flag`,
    `Destination Location is Source Flag` 
    FROM cycledata;

-- CREATING STORED PROCEDURE
-- STORED PROCEDURE FOR CYCLE DATA

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `cycle_data`()
BEGIN
SELECT 
`Primary Machine Name`, `Primary Machine Class Name`,
`Secondary Machine Name`,
`Secondary Machine Class Name`, 
`Loading Count`,`Cycle Type`, `TC`, 
`Cycle Duration`,`Cycle SMU Duration`,`iMine Engine Hours`, 
`iMine Operating Hours`, `OPERATINGTIME (CAT)`, `OPERHOURSSECONDS`, 
`Cycle Start Timestamp (GMT8)`,`Cycle End Timestamp (GMT8)`,
`Payload (kg)`,`Empty EFH Distance`,`Completed Cycle Count`,
`iMine Availability`,`iMine Utilisation`
FROM cycledata;
END$$
DELIMITER ;

-- STORED PROCEDURE FOR MOVEMENT DATA 

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `movement_data`()
BEGIN
SELECT 
`Source Location Name`,`Destination Location Name`,`Source Loading Start Timestamp (GMT8)`,
`Source Loading End Timestamp (GMT8)`,`Source Location Description`,
`Destination Location Description`,`Empty EFH Distance`,`Empty Slope Distance`,
`Source Location is Active Flag`,`Source Location is Source Flag`, 
`Destination Location is Active Flag`,`Destination Location is Source Flag`,
`Full Travel Duration`, `Empty Travel Duration`,`Idle Duration`, 
`Loading Duration`, `WAITFORDUMPDURATION`, `Dumping Duration`
FROM cycledata;
END$$
DELIMITER ;

-- STORED PROCEDURE FOR DELAY DATA

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `movement_data`()
BEGIN
SELECT 
`Source Location Name`,`Destination Location Name`,`Source Loading Start Timestamp (GMT8)`,
`Source Loading End Timestamp (GMT8)`,`Source Location Description`,
`Destination Location Description`,`Empty EFH Distance`,`Empty Slope Distance`,
`Source Location is Active Flag`,`Source Location is Source Flag`, 
`Destination Location is Active Flag`,`Destination Location is Source Flag`,
`Full Travel Duration`, `Empty Travel Duration`,`Idle Duration`, 
`Loading Duration`, `WAITFORDUMPDURATION`, `Dumping Duration`
FROM cycledata;
END$$
DELIMITER ;

-- STORED PROCEDURE FOR OEE CALCULATIONS
-- To calculate OEE, you need to first calculate the availability, performance and quality metrics 

CREATE TABLE OEE AS 
SELECT 
	`AT Available Time (iMine)`,
    `Down Time`,
    `iMine Operating Hours`,
    `OPERATINGTIME (CAT)`,
    `Idle Duration`,
    ROUND((((`AT Available Time (iMine)` - `Down Time`) / `AT Available Time (iMine)`) * 100),2) AS Availability,
    ROUND((((`OPERATINGTIME (CAT)` - `Idle Duration`) / `OPERATINGTIME (CAT)`) * 100),2) AS Performance,
    ROUND((((`iMine Operating Hours` - `Down Time`) / (`Down Time` + `Idle Duration`)) * 100),2) AS Quailty 
    FROM cycledata;
 
 SELECT *
 FROM OEE;
 
 DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `OEE_calculation`()
BEGIN
SELECT 
`AT Available Time (iMine)`,
  `Down Time`,
  `iMine Operating Hours`,
  `OPERATINGTIME (CAT)`,
  `Idle Duration`,
  `Availability`,
  `Performance`,
  `Quailty` ,
  (`Availability`*  `Performance`*  `Quailty` ) as OEE
FROM oee;
END$$
DELIMITER ;

 
CALL cycle_Data();
CALL delay_data();
CALL movement_data();
CALL OEE_calculation();
