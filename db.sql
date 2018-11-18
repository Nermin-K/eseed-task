CREATE TABLE `Employee` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Mobile` int(11) NOT NULL,
  `HireDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `Employee` (`ID`, `Name`, `Email`, `Mobile`, `HireDate`) VALUES
(1, 'Ahmed', 'ahmed@gmail.com', 0111854672, '2016-12-05 09:30:00'),
(2, 'Khaled', 'khaled@gmail.com', 012587653, '2017-12-05 03:30:00'),
(3, 'Nermin', 'nermin@gmail.com', 0105789865, '2018-10-05 09:30:00'),
(4, 'Omar', 'omar@gmail.com', 01254893213, '2015-12-05 03:30:00'),
(5, 'Dina', 'dina@gmail.com', 011647895, '2010-12-05 03:30:00');


CREATE TABLE `HREmployees` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` int(11) NOT NULL,
  `EmployeeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `HREmployees` (`ID`, `Name`, `Email`, `Password`, `EmployeeId`) VALUES
(1, 'Omar', 'omar@gmail.com', 123, 4),
(2, 'Dina', 'dina@gmail.com', 234, 5);
   

CREATE TABLE `Attendance` (
  `ID` int(11) NOT NULL,
  `DayDate` datetime NOT NULL,
  `WorkingHours` int(11) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `EmployeeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `Attendance` (`ID`, `DayDate`, `WorkingHours`, `Status`, `EmployeeId`) VALUES
(1, '2018-11-05 09:30:00', 8, 'Present', 2),
(2, '2018-11-05 08:30:00', 0, 'Absent', 4),
(3, '2018-11-05 10:00:00', 3, 'Sick Leave', 3),
(4, '2018-11-05 09:00:00', 0, 'Day OFF', 5),
(5, '2018-11-05 10:30:00', 8, 'Present', 1);
   
  
  
ALTER TABLE `Employee`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

ALTER TABLE `HREmployees`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `employeeId` (`EmployeeId`);

ALTER TABLE `Attendance`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AttendanceEmployeeId` (`EmployeeId`);

  
ALTER TABLE `Employee`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;   

ALTER TABLE `HREmployees`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;   
  
ALTER TABLE `Attendance`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6; 

  
ALTER TABLE `HREmployees`
  ADD CONSTRAINT `employeeId` FOREIGN KEY (`EmployeeId`) REFERENCES `Employee` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;  

ALTER TABLE `Attendance`
  ADD CONSTRAINT `AttendanceEmployeeId` FOREIGN KEY (`EmployeeId`) REFERENCES `Employee` (`ID`);  