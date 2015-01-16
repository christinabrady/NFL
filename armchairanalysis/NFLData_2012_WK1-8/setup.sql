-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 25, 2012 at 03:29 PM
-- Server version: 5.1.50
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Table structure for table `blocks`
--

CREATE TABLE IF NOT EXISTS `blocks` (
  `PID` int(7) NOT NULL,
  `BLK` varchar(7) NOT NULL,
  `BRCV` varchar(7) NOT NULL,
  UNIQUE KEY `PID` (`PID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Blocked Punts, Field Goal Attempts, etc.';

-- --------------------------------------------------------

--
-- Table structure for table `comps`
--

CREATE TABLE IF NOT EXISTS `comps` (
  `PID` int(7) NOT NULL,
  UNIQUE KEY `PID` (`PID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Pass Completions';

-- --------------------------------------------------------

--
-- Table structure for table `convs`
--

CREATE TABLE IF NOT EXISTS `convs` (
  `PID` int(7) NOT NULL,
  `TYPE` varchar(4) NOT NULL,
  `BC` varchar(7) NOT NULL,
  `PSR` varchar(7) NOT NULL,
  `TRG` varchar(7) NOT NULL,
  `CONV` char(1) NOT NULL,
  UNIQUE KEY `PID` (`PID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='2 Point Conversion Attempts (Y=Success, N=Fail)';

-- --------------------------------------------------------

--
-- Table structure for table `core`
--

CREATE TABLE IF NOT EXISTS `core` (
  `GID` int(5) NOT NULL,
  `PID` int(7) NOT NULL,
  `OFF` varchar(3) NOT NULL,
  `DEF` varchar(3) NOT NULL,
  `TYPE` varchar(4) NOT NULL,
  `DSEQ` tinyint(2) NOT NULL,
  `LEN` tinyint(2) NOT NULL,
  `QTR` tinyint(1) NOT NULL,
  `MIN` tinyint(2) NOT NULL,
  `SEC` tinyint(2) NOT NULL,
  `PTSO` tinyint(2) NOT NULL,
  `PTSD` tinyint(2) NOT NULL,
  `TIMO` tinyint(2) NOT NULL,
  `TIMD` tinyint(2) NOT NULL,
  `DWN` tinyint(1) NOT NULL,
  `YTG` tinyint(2) NOT NULL,
  `YFOG` tinyint(2) NOT NULL,
  `ZONE` tinyint(1) NOT NULL,
  `OLID` int(5) NOT NULL,
  UNIQUE KEY `PID` (`PID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbacks`
--

CREATE TABLE IF NOT EXISTS `dbacks` (
  `PID` int(7) NOT NULL,
  `DFB` varchar(7) NOT NULL,
  UNIQUE KEY `PID` (`PID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Defensive Backs that were listed as the defender on Passes';

-- --------------------------------------------------------

--
-- Table structure for table `defense`
--

CREATE TABLE IF NOT EXISTS `defense` (
  `UID` int(6) NOT NULL,
  `GID` int(5) NOT NULL,
  `PLAYER` varchar(7) NOT NULL,
  `SOLO` decimal(3,1) NOT NULL,
  `COMB` decimal(3,1) NOT NULL,
  `SCK` decimal(2,1) NOT NULL,
  `SAF` tinyint(1) NOT NULL,
  `BLK` tinyint(1) NOT NULL,
  `INT` tinyint(1) NOT NULL,
  `PDEF` tinyint(1) NOT NULL,
  `FRCV` tinyint(1) NOT NULL,
  `FORC` tinyint(1) NOT NULL,
  `TDD` tinyint(1) NOT NULL,
  `PENY` tinyint(2) NOT NULL,
  `FPTS` decimal(3,1) NOT NULL,
  `GAME` tinyint(2) NOT NULL,
  `SEAS` tinyint(2) NOT NULL,
  `YEAR` int(4) NOT NULL,
  `TEAM` varchar(3) NOT NULL,
  UNIQUE KEY `UID` (`UID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `drives`
--

CREATE TABLE IF NOT EXISTS `drives` (
  `UID` int(6) NOT NULL,
  `GID` int(7) NOT NULL,
  `FPID` int(7) NOT NULL,
  `TNAME` varchar(3) NOT NULL,
  `DRVN` tinyint(2) NOT NULL,
  `OBT` varchar(4) DEFAULT NULL,
  `QTR` tinyint(1) NOT NULL,
  `MIN` tinyint(2) NOT NULL,
  `SEC` tinyint(2) NOT NULL,
  `YFOG` tinyint(2) NOT NULL,
  `PLAYS` tinyint(2) NOT NULL,
  `SUCC` tinyint(2) NOT NULL,
  `RFD` tinyint(2) NOT NULL,
  `PFD` tinyint(2) NOT NULL,
  `OFD` tinyint(2) NOT NULL,
  `RY` int(3) NOT NULL,
  `RA` tinyint(2) NOT NULL,
  `PY` int(3) NOT NULL,
  `PA` tinyint(2) NOT NULL,
  `PC` tinyint(2) NOT NULL,
  `PEYF` tinyint(2) NOT NULL,
  `PEYA` tinyint(2) NOT NULL,
  `NET` int(3) NOT NULL,
  `RES` varchar(4) DEFAULT NULL,
  UNIQUE KEY `UID` (`UID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fdowns`
--

CREATE TABLE IF NOT EXISTS `fdowns` (
  `PID` int(7) NOT NULL,
  UNIQUE KEY `PID` (`PID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Plays that resulted in a First Down';

-- --------------------------------------------------------

--
-- Table structure for table `fgxp`
--

CREATE TABLE IF NOT EXISTS `fgxp` (
  `PID` int(7) NOT NULL,
  `FGXP` char(2) NOT NULL,
  `FKICKER` varchar(7) NOT NULL,
  `DIST` tinyint(2) NOT NULL,
  `GOOD` char(1) NOT NULL,
  UNIQUE KEY `PID` (`PID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fumbles`
--

CREATE TABLE IF NOT EXISTS `fumbles` (
  `PID` int(7) NOT NULL,
  `FUM` varchar(7) NOT NULL,
  `FRCV` varchar(7) NOT NULL,
  `FRY` int(3) NOT NULL,
  `FORC` varchar(7) NOT NULL,
  UNIQUE KEY `PID` (`PID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE IF NOT EXISTS `games` (
  `GID` int(5) NOT NULL,
  `SEAS` int(4) NOT NULL,
  `WK` tinyint(2) NOT NULL,
  `DAY` varchar(3) NOT NULL,
  `V` varchar(3) NOT NULL,
  `H` varchar(3) NOT NULL,
  `STAD` varchar(45) NOT NULL,
  `TEMP` varchar(4) DEFAULT NULL,
  `HUMD` varchar(4) DEFAULT NULL,
  `WSPD` varchar(4) DEFAULT NULL,
  `WDIR` varchar(4) DEFAULT NULL,
  `COND` varchar(15) DEFAULT NULL,
  `SURF` varchar(30) NOT NULL,
  `OU` tinyint(2) NOT NULL,
  `SPRV` decimal(3,1) NOT NULL,
  `PTSV` tinyint(2) NOT NULL,
  `PTSH` tinyint(2) NOT NULL,
  UNIQUE KEY `GID` (`GID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ints`
--

CREATE TABLE IF NOT EXISTS `ints` (
  `PID` int(7) NOT NULL,
  `INT` varchar(7) NOT NULL,
  `IRY` tinyint(3) NOT NULL,
  UNIQUE KEY `PID` (`PID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Interceptions';

-- --------------------------------------------------------

--
-- Table structure for table `kickers`
--

CREATE TABLE IF NOT EXISTS `kickers` (
  `UID` int(6) NOT NULL,
  `GID` int(5) NOT NULL,
  `PLAYER` varchar(7) NOT NULL,
  `PAT` tinyint(1) NOT NULL,
  `FGS` tinyint(1) NOT NULL,
  `FGM` tinyint(1) NOT NULL,
  `FGL` tinyint(1) NOT NULL,
  `FPTS` decimal(3,1) NOT NULL,
  UNIQUE KEY `UID` (`UID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='FGS: 0 - 39 yds; FGM: 40 - 49 yds; FGL: 50+ yds';

-- --------------------------------------------------------

--
-- Table structure for table `kickoffs`
--

CREATE TABLE IF NOT EXISTS `kickoffs` (
  `PID` int(7) NOT NULL,
  `KICKER` varchar(7) NOT NULL,
  `KGRO` tinyint(2) NOT NULL,
  `KNET` tinyint(2) NOT NULL,
  `KTB` varchar(1) NOT NULL,
  `KR` varchar(7) NOT NULL,
  `KRY` tinyint(3) NOT NULL,
  UNIQUE KEY `PID` (`PID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `knees`
--

CREATE TABLE IF NOT EXISTS `knees` (
  `PID` int(7) NOT NULL,
  UNIQUE KEY `PID` (`PID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nohuddle`
--

CREATE TABLE IF NOT EXISTS `nohuddle` (
  `PID` int(7) NOT NULL,
  UNIQUE KEY `PID` (`PID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `offense`
--

CREATE TABLE IF NOT EXISTS `offense` (
  `UID` int(6) NOT NULL,
  `GID` int(5) NOT NULL,
  `PLAYER` varchar(7) NOT NULL,
  `PA` tinyint(2) NOT NULL,
  `PC` tinyint(2) NOT NULL,
  `PY` int(3) NOT NULL,
  `INT` tinyint(1) NOT NULL,
  `TDP` tinyint(1) NOT NULL,
  `RA` tinyint(2) NOT NULL,
  `SRA` tinyint(2) NOT NULL,
  `RY` int(3) NOT NULL,
  `TDR` tinyint(1) NOT NULL,
  `TRG` tinyint(2) NOT NULL,
  `REC` tinyint(2) NOT NULL,
  `RECY` int(3) NOT NULL,
  `TDRE` tinyint(1) NOT NULL,
  `FUML` tinyint(1) NOT NULL,
  `PENY` tinyint(2) NOT NULL,
  `FPTS` decimal(3,1) NOT NULL,
  `GAME` tinyint(2) NOT NULL,
  `SEAS` tinyint(2) NOT NULL,
  `YEAR` int(4) NOT NULL,
  `TEAM` varchar(3) NOT NULL,
  UNIQUE KEY `UID` (`UID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oline`
--

CREATE TABLE IF NOT EXISTS `oline` (
  `OLID` int(5) NOT NULL,
  `LT` varchar(7) NOT NULL,
  `LG` varchar(7) NOT NULL,
  `C` varchar(7) NOT NULL,
  `RG` varchar(7) NOT NULL,
  `RT` varchar(7) NOT NULL,
  UNIQUE KEY `OLID` (`OLID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pass`
--

CREATE TABLE IF NOT EXISTS `pass` (
  `PID` int(7) NOT NULL,
  `PSR` varchar(7) NOT NULL,
  `TRG` varchar(7) NOT NULL,
  `LOC` varchar(2) NOT NULL,
  `YDS` tinyint(3) NOT NULL,
  UNIQUE KEY `PID` (`PID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `penalties`
--

CREATE TABLE IF NOT EXISTS `penalties` (
  `UID` int(6) NOT NULL,
  `PID` int(7) NOT NULL,
  `PTM` varchar(3) NOT NULL,
  `PEN` varchar(7) NOT NULL,
  `DESC` varchar(40) NOT NULL,
  `CAT` tinyint(1) NOT NULL,
  `PEY` tinyint(2) NOT NULL,
  `ACT` varchar(1) NOT NULL,
  UNIQUE KEY `UID` (`UID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE IF NOT EXISTS `players` (
  `PLAYER` varchar(7) NOT NULL,
  `FNAME` varchar(20) NOT NULL,
  `LNAME` varchar(25) NOT NULL,
  `PNAME` varchar(25) NOT NULL,
  `POS1` varchar(2) NOT NULL,
  `POS2` varchar(2) DEFAULT NULL,
  `HEIGHT` tinyint(2) NOT NULL,
  `WEIGHT` int(3) NOT NULL,
  `YOB` int(4) NOT NULL,
  `FORTY` decimal(3,2) DEFAULT NULL,
  `BENCH` tinyint(2) DEFAULT NULL,
  `VERTICAL` decimal(3,1) DEFAULT NULL,
  `BROAD` int(3) DEFAULT NULL,
  `SHUTTLE` decimal(3,2) DEFAULT NULL,
  `CONE` decimal(3,2) DEFAULT NULL,
  `DPOS` int(3) NOT NULL,
  `COL` varchar(35) DEFAULT NULL,
  `DV` varchar(35) DEFAULT NULL,
  `START` int(4) NOT NULL,
  `CTEAM` varchar(3) DEFAULT NULL,
  UNIQUE KEY `PLAYER` (`PLAYER`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `punts`
--

CREATE TABLE IF NOT EXISTS `punts` (
  `PID` int(7) NOT NULL,
  `PUNTER` varchar(7) NOT NULL,
  `PGRO` tinyint(2) NOT NULL,
  `PNET` tinyint(2) NOT NULL,
  `PTS` varchar(1) NOT NULL,
  `PR` varchar(7) NOT NULL,
  `PRY` tinyint(3) NOT NULL,
  `PFC` varchar(1) NOT NULL,
  UNIQUE KEY `PID` (`PID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `redzone`
--

CREATE TABLE IF NOT EXISTS `redzone` (
  `UID` int(6) NOT NULL,
  `GID` int(5) NOT NULL,
  `PLAYER` varchar(7) NOT NULL,
  `PA` tinyint(2) NOT NULL,
  `PC` tinyint(2) NOT NULL,
  `PY` int(3) NOT NULL,
  `INT` tinyint(1) NOT NULL,
  `RA` tinyint(2) NOT NULL,
  `SRA` tinyint(2) NOT NULL,
  `RY` int(3) NOT NULL,
  `TRG` tinyint(2) NOT NULL,
  `REC` tinyint(2) NOT NULL,
  `RECY` int(3) NOT NULL,
  `FUML` tinyint(1) NOT NULL,
  `PENY` tinyint(2) NOT NULL,
  UNIQUE KEY `UID` (`UID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rush`
--

CREATE TABLE IF NOT EXISTS `rush` (
  `PID` int(7) NOT NULL,
  `BC` varchar(7) NOT NULL,
  `DIR` varchar(2) NOT NULL,
  `YDS` tinyint(3) NOT NULL,
  UNIQUE KEY `PID` (`PID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sacks`
--

CREATE TABLE IF NOT EXISTS `sacks` (
  `UID` int(6) NOT NULL,
  `PID` int(7) NOT NULL,
  `QB` varchar(7) NOT NULL,
  `SK` varchar(7) NOT NULL,
  `VALUE` decimal(2,1) NOT NULL,
  `YDSL` int(3) NOT NULL,
  UNIQUE KEY `UID` (`UID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `safeties`
--

CREATE TABLE IF NOT EXISTS `safeties` (
  `PID` int(7) NOT NULL,
  `SAF` varchar(7) NOT NULL,
  UNIQUE KEY `PID` (`PID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `scoring`
--

CREATE TABLE IF NOT EXISTS `scoring` (
  `PID` int(7) NOT NULL,
  `PTS` tinyint(1) NOT NULL,
  UNIQUE KEY `PID` (`PID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shotgun`
--

CREATE TABLE IF NOT EXISTS `shotgun` (
  `PID` int(7) NOT NULL,
  UNIQUE KEY `PID` (`PID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spikes`
--

CREATE TABLE IF NOT EXISTS `spikes` (
  `PID` int(7) NOT NULL,
  UNIQUE KEY `PID` (`PID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `splays`
--

CREATE TABLE IF NOT EXISTS `splays` (
  `PID` int(7) NOT NULL,
  UNIQUE KEY `PID` (`PID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Successful Plays - See notes for more info.';

-- --------------------------------------------------------

--
-- Table structure for table `tackles`
--

CREATE TABLE IF NOT EXISTS `tackles` (
  `UID` int(7) NOT NULL,
  `PID` int(7) NOT NULL,
  `TCK` varchar(7) NOT NULL,
  `VALUE` decimal(2,1) NOT NULL,
  UNIQUE KEY `UID` (`UID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Special teams tackles are not counted (ie, kickoffs, punts)';

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `TID` int(5) NOT NULL,
  `GID` int(5) NOT NULL,
  `TNAME` varchar(3) NOT NULL,
  `PTS` tinyint(2) NOT NULL,
  `1QP` tinyint(2) NOT NULL,
  `2QP` tinyint(2) NOT NULL,
  `3QP` tinyint(2) NOT NULL,
  `4QP` tinyint(2) NOT NULL,
  `RFD` tinyint(2) NOT NULL,
  `PFD` tinyint(2) NOT NULL,
  `IFD` tinyint(2) NOT NULL,
  `RY` int(3) NOT NULL,
  `RA` tinyint(2) NOT NULL,
  `PY` int(3) NOT NULL,
  `PA` tinyint(2) NOT NULL,
  `PC` tinyint(2) NOT NULL,
  `SK` tinyint(2) NOT NULL,
  `INT` tinyint(1) NOT NULL,
  `FUM` tinyint(1) NOT NULL,
  `PU` tinyint(2) NOT NULL,
  `GPY` int(3) NOT NULL,
  `PR` tinyint(2) NOT NULL,
  `PRY` int(3) NOT NULL,
  `KR` tinyint(2) NOT NULL,
  `KRY` int(3) NOT NULL,
  `IR` tinyint(1) NOT NULL,
  `IRY` int(3) NOT NULL,
  `PEN` int(3) NOT NULL,
  `TOP` decimal(3,1) NOT NULL,
  `TD` tinyint(1) NOT NULL,
  `TDR` tinyint(1) NOT NULL,
  `TDP` tinyint(1) NOT NULL,
  `TDT` tinyint(1) NOT NULL,
  `FGM` tinyint(1) NOT NULL,
  `FGAT` tinyint(2) NOT NULL,
  `FGY` int(3) NOT NULL,
  `RZA` tinyint(2) NOT NULL,
  `RZC` tinyint(1) NOT NULL,
  `BRY` int(3) NOT NULL,
  `BPY` int(3) NOT NULL,
  `SRP` tinyint(2) NOT NULL,
  `S1RP` tinyint(2) NOT NULL,
  `S2RP` tinyint(2) NOT NULL,
  `S3RP` tinyint(2) NOT NULL,
  `SPP` tinyint(2) NOT NULL,
  `S1PP` tinyint(2) NOT NULL,
  `S2PP` tinyint(2) NOT NULL,
  `S3PP` tinyint(2) NOT NULL,
  `LEA` tinyint(2) NOT NULL,
  `LEY` int(3) NOT NULL,
  `LTA` tinyint(2) NOT NULL,
  `LTY` int(3) NOT NULL,
  `LGA` tinyint(2) NOT NULL,
  `LGY` int(3) NOT NULL,
  `MDA` tinyint(2) NOT NULL,
  `MDY` int(3) NOT NULL,
  `RGA` tinyint(2) NOT NULL,
  `RGY` int(3) NOT NULL,
  `RTA` tinyint(2) NOT NULL,
  `RTY` int(3) NOT NULL,
  `REA` tinyint(2) NOT NULL,
  `REY` int(3) NOT NULL,
  `R1A` tinyint(2) NOT NULL,
  `R1Y` int(3) NOT NULL,
  `R2A` tinyint(2) NOT NULL,
  `R2Y` int(3) NOT NULL,
  `R3A` tinyint(2) NOT NULL,
  `R3Y` int(3) NOT NULL,
  `QBA` tinyint(2) NOT NULL,
  `QBY` int(3) NOT NULL,
  `SLA` tinyint(2) NOT NULL,
  `SLY` int(3) NOT NULL,
  `SMA` tinyint(2) NOT NULL,
  `SMY` int(3) NOT NULL,
  `SRA` tinyint(2) NOT NULL,
  `SRY` int(3) NOT NULL,
  `DLA` tinyint(2) NOT NULL,
  `DLY` int(3) NOT NULL,
  `DMA` tinyint(2) NOT NULL,
  `DMY` int(3) NOT NULL,
  `DRA` tinyint(2) NOT NULL,
  `DRY` int(3) NOT NULL,
  `WR1A` tinyint(2) NOT NULL,
  `WR1Y` int(3) NOT NULL,
  `WR3A` tinyint(2) NOT NULL,
  `WR3Y` int(3) NOT NULL,
  `TEA` tinyint(2) NOT NULL,
  `TEY` int(3) NOT NULL,
  `RBA` tinyint(2) NOT NULL,
  `RBY` int(3) NOT NULL,
  `SGA` tinyint(2) NOT NULL,
  `SGY` int(3) NOT NULL,
  `P1A` tinyint(2) NOT NULL,
  `P1Y` int(3) NOT NULL,
  `P2A` tinyint(2) NOT NULL,
  `P2Y` int(3) NOT NULL,
  `P3A` tinyint(2) NOT NULL,
  `P3Y` int(3) NOT NULL,
  `SPC` tinyint(2) NOT NULL,
  `MPC` tinyint(2) NOT NULL,
  `LPC` tinyint(2) NOT NULL,
  `Q1RA` tinyint(2) NOT NULL,
  `Q1RY` int(3) NOT NULL,
  `Q1PA` tinyint(2) NOT NULL,
  `Q1PY` int(3) NOT NULL,
  `LCRA` tinyint(2) NOT NULL,
  `LCRY` int(3) NOT NULL,
  `LCPA` tinyint(2) NOT NULL,
  `LCPY` int(3) NOT NULL,
  `RZRA` tinyint(2) NOT NULL,
  `RZRY` int(3) NOT NULL,
  `RZPA` tinyint(2) NOT NULL,
  `RZPY` int(3) NOT NULL,
  `SKY` int(3) NOT NULL,
  `LBS` decimal(3,1) NOT NULL,
  `DBS` decimal(3,1) NOT NULL,
  `SFPY` int(3) NOT NULL,
  `DRV` tinyint(2) NOT NULL,
  `NPY` int(3) NOT NULL,
  `TB` tinyint(1) NOT NULL,
  `I20` tinyint(1) NOT NULL,
  `RTD` tinyint(1) NOT NULL,
  `LNR` decimal(3,1) NOT NULL,
  `LNP` decimal(3,1) NOT NULL,
  `LBR` decimal(3,1) NOT NULL,
  `LBP` decimal(3,1) NOT NULL,
  `DBR` decimal(3,1) NOT NULL,
  `DBP` decimal(3,1) NOT NULL,
  `NHA` tinyint(2) NOT NULL,
  `S3A` tinyint(2) NOT NULL,
  `S3C` tinyint(2) NOT NULL,
  `L3A` tinyint(2) NOT NULL,
  `L3C` tinyint(2) NOT NULL,
  `STF` tinyint(2) NOT NULL,
  `DP` tinyint(2) NOT NULL,
  `FSP` tinyint(2) NOT NULL,
  `OHP` tinyint(2) NOT NULL,
  `PBEP` tinyint(1) NOT NULL,
  `DLP` tinyint(1) NOT NULL,
  `DSP` tinyint(1) NOT NULL,
  `DUM` tinyint(1) NOT NULL,
  `PFN` tinyint(1) NOT NULL,
  UNIQUE KEY `TID` (`TID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
