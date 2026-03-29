-- Hospital Management System Database Schema

-- Create admin table
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Insert default admin
INSERT INTO `admin` (`id`, `username`, `password`) VALUES (1, 'admin', 'admin');
INSERT INTO `admin` (`username`, `password`) VALUES ('admin2', 'admin123');
INSERT INTO `admin` (`username`, `password`) VALUES ('administrator', 'password');

-- Create users table (patients)
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL UNIQUE,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


--forget password of all docters
-- Insert Sample Patients/Users (Password: user123)
INSERT INTO `users` (`fullname`, `address`, `city`, `gender`, `email`, `password`) VALUES 
('Rajesh Patel', '123 Main Street, Mumbai', 'Mumbai', 'male', 'rajesh.patel@email.com', '202cb962ac59075b964b07152d234b70'),
('Priya Singh', '456 Oak Lane, Delhi', 'Delhi', 'female', 'priya.singh@email.com', '202cb962ac59075b964b07152d234b70'),
('Amit Sharma', '789 Elm Street, Bangalore', 'Bangalore', 'male', 'amit.sharma@email.com', '202cb962ac59075b964b07152d234b70'),
('Neha Verma', '321 Pine Road, Hyderabad', 'Hyderabad', 'female', 'neha.verma@email.com', '202cb962ac59075b964b07152d234b70'),
('Vikram Desai', '654 Birch Avenue, Pune', 'Pune', 'male', 'vikram.desai@email.com', '202cb962ac59075b964b07152d234b70'),
('Anjali Nair', '987 Cedar Street, Chennai', 'Chennai', 'female', 'anjali.nair@email.com', '202cb962ac59075b964b07152d234b70'),
('Suresh Kumar', '147 Maple Drive, Kolkata', 'Kolkata', 'male', 'suresh.kumar@email.com', '202cb962ac59075b964b07152d234b70'),
('Meera Gupta', '258 Walnut Lane, Ahmedabad', 'Ahmedabad', 'female', 'meera.gupta@email.com', '202cb962ac59075b964b07152d234b70');

-- Create doctors table
CREATE TABLE IF NOT EXISTS `doctors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specilization` varchar(255) NOT NULL,
  `doctorName` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `docFees` int(11) NOT NULL,
  `contactno` varchar(20) NOT NULL,
  `docEmail` varchar(255) NOT NULL UNIQUE,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

-- Insert Sample Doctors (Password: KmhDoctor@123)
INSERT INTO `doctors` (`specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`) VALUES 
('Cardiology', 'Dr. Rajesh Kumar', '123 Medical Plaza, Mumbai', 500, '9876543210', 'rajesh.kumar@kmhhospital.com', 'a8e7a1f5e8d4c3b2a1f0e9d8c7b6a5f4'),
('Neurology', 'Dr. Priya Sharma', '456 Health Centre, Delhi', 600, '9876543211', 'priya.sharma@kmhhospital.com', 'a8e7a1f5e8d4c3b2a1f0e9d8c7b6a5f4'),
('Orthopedics', 'Dr. Amit Patel', '789 Hospital Road, Bangalore', 450, '9876543212', 'amit.patel@kmhhospital.com', 'a8e7a1f5e8d4c3b2a1f0e9d8c7b6a5f4'),
('Pediatrics', 'Dr. Neha Gupta', '321 Medical Tower, Hyderabad', 400, '9876543213', 'neha.gupta@kmhhospital.com', 'a8e7a1f5e8d4c3b2a1f0e9d8c7b6a5f4'),
('General Practitioner', 'Dr. Vikram Singh', '654 Wellness Centre, Pune', 300, '9876543214', 'vikram.singh@kmhhospital.com', 'a8e7a1f5e8d4c3b2a1f0e9d8c7b6a5f4'),
('Dermatology', 'Dr. Anjali Verma', '987 Health Park, Chennai', 550, '9876543215', 'anjali.verma@kmhhospital.com', 'a8e7a1f5e8d4c3b2a1f0e9d8c7b6a5f4'),
('ENT', 'Dr. Suresh Iyer', '147 Medical Complex, Kolkata', 480, '9876543216', 'suresh.iyer@kmhhospital.com', 'a8e7a1f5e8d4c3b2a1f0e9d8c7b6a5f4'),
('Gastroenterology', 'Dr. Meera Nair', '258 Health Hub, Ahmedabad', 520, '9876543217', 'meera.nair@kmhhospital.com', 'a8e7a1f5e8d4c3b2a1f0e9d8c7b6a5f4'),
('Cardiology', 'Dr. Arjun Desai', '369 Heart Care Centre, Jaipur', 550, '9876543218', 'arjun.desai@kmhhospital.com', 'a8e7a1f5e8d4c3b2a1f0e9d8c7b6a5f4'),
('Psychiatry', 'Dr. Ravi Kumar', '741 Mental Health Centre, Lucknow', 450, '9876543219', 'ravi.kumar@kmhhospital.com', 'a8e7a1f5e8d4c3b2a1f0e9d8c7b6a5f4');

-- Create doctorSpecilization table
CREATE TABLE IF NOT EXISTS `doctorSpecilization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specilization` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

-- Insert Doctor Specializations
INSERT INTO `doctorSpecilization` (`specilization`) VALUES 
('Cardiology'),
('Neurology'),
('Orthopedics'),
('Pediatrics'),
('General Practitioner'),
('Dermatology'),
('ENT'),
('Gastroenterology'),
('Oncology'),
('Psychiatry');

-- Create appointment table
CREATE TABLE IF NOT EXISTS `appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctorSpecialization` varchar(255) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `consultancyFees` int(11) NOT NULL,
  `appointmentDate` date NOT NULL,
  `appointmentTime` varchar(50) NOT NULL,
  `userStatus` int(11) NOT NULL DEFAULT 1,
  `doctorStatus` int(11) NOT NULL DEFAULT 1,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`doctorId`) REFERENCES `doctors`(`id`),
  FOREIGN KEY (`userId`) REFERENCES `users`(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

-- Insert Sample Appointments
INSERT INTO `appointment` (`doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `userStatus`, `doctorStatus`) VALUES 
('Cardiology', 1, 1, 500, '2026-04-05', '10:00 AM', 1, 1),
('Neurology', 2, 2, 600, '2026-04-06', '02:00 PM', 1, 1),
('Orthopedics', 3, 3, 450, '2026-04-07', '03:30 PM', 1, 1),
('Pediatrics', 4, 4, 400, '2026-04-08', '11:00 AM', 1, 1),
('General Practitioner', 5, 5, 300, '2026-04-09', '04:00 PM', 1, 1);

-- Create userlog table
CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `userip` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

-- Insert Sample User Logs
INSERT INTO `userlog` (`uid`, `username`, `userip`, `status`) VALUES 
(1, 'rajesh.patel@email.com', '192.168.1.100', 1),
(2, 'priya.singh@email.com', '192.168.1.101', 1),
(3, 'amit.sharma@email.com', '192.168.1.102', 1);

-- Create doctorslog table
CREATE TABLE IF NOT EXISTS `doctorslog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `userip` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

-- Insert Sample Doctor Logs
INSERT INTO `doctorslog` (`uid`, `username`, `userip`, `status`) VALUES 
(1, 'dr.rajesh@kmh.com', '192.168.1.110', 1),
(2, 'dr.priya@kmh.com', '192.168.1.111', 1),
(3, 'dr.amit@kmh.com', '192.168.1.112', 1);

-- Create tblpatient table
CREATE TABLE IF NOT EXISTS `tblpatient` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Docid` int(11) NOT NULL,
  `PatientName` varchar(255) NOT NULL,
  `PatientContno` varchar(20) NOT NULL,
  `PatientEmail` varchar(255) NOT NULL,
  `PatientGender` varchar(50) NOT NULL,
  `PatientAdd` varchar(255) NOT NULL,
  `PatientAge` int(11) NOT NULL,
  `PatientMedhis` text,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  FOREIGN KEY (`Docid`) REFERENCES `doctors`(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

-- Insert Sample Patient Records
INSERT INTO `tblpatient` (`Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`) VALUES 
(1, 'Rajesh Patel', '9876543220', 'rajesh.patel@email.com', 'male', '123 Main Street, Mumbai', 45, 'High Blood Pressure'),
(2, 'Priya Singh', '9876543221', 'priya.singh@email.com', 'female', '456 Oak Lane, Delhi', 32, 'Migraine'),
(3, 'Amit Sharma', '9876543222', 'amit.sharma@email.com', 'male', '789 Elm Street, Bangalore', 28, 'Back Pain'),
(4, 'Neha Verma', '9876543223', 'neha.verma@email.com', 'female', '321 Pine Road, Hyderabad', 5, 'Fever'),
(5, 'Vikram Desai', '9876543224', 'vikram.desai@email.com', 'male', '654 Birch Avenue, Pune', 55, 'Diabetes');

-- Create tblmedicalhistory table
CREATE TABLE IF NOT EXISTS `tblmedicalhistory` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PatientID` int(11) NOT NULL,
  `BloodPressure` varchar(255) NOT NULL,
  `BloodSugar` varchar(255) NOT NULL,
  `Weight` varchar(255) NOT NULL,
  `Temperature` varchar(255) NOT NULL,
  `MedicinePrescribed` text NOT NULL,
  `TestDone` text NOT NULL,
  `Diagnosis` text NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  FOREIGN KEY (`PatientID`) REFERENCES `tblpatient`(`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

-- Create tblpage table
CREATE TABLE IF NOT EXISTS `tblpage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PageType` varchar(255) NOT NULL,
  `PageTitle` text NOT NULL,
  `PageDescription` longtext NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `MobileNumber` varchar(20) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

-- Insert default pages
INSERT INTO `tblpage` (`PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`) VALUES
('aboutus', 'About Us', 'Welcome to Krishna Multi-Specialty Hospital', 'contact@hospital.com', '1234567890'),
('contactus', 'Contact Us', 'Get in Touch', 'contact@hospital.com', '1234567890');

-- Create tblcontactus table
CREATE TABLE IF NOT EXISTS `tblcontactus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `EmailId` varchar(255) NOT NULL,
  `ContactNumber` varchar(20) NOT NULL,
  `Message` text NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` text,
  `IsRead` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

-- Insert Sample Contact Queries
INSERT INTO `tblcontactus` (`Name`, `EmailId`, `ContactNumber`, `Message`, `IsRead`) VALUES 
('John Doe', 'john@example.com', '9876543230', 'I want to know about cardiology services', 0),
('Jane Smith', 'jane@example.com', '9876543231', 'Appointment scheduling inquiry', 0),
('Robert Johnson', 'robert@example.com', '9876543232', 'General inquiry about hospital facilities', 0),
('Sarah Williams', 'sarah@example.com', '9876543233', 'I need emergency services information', 0),
('Michael Brown', 'michael@example.com', '9876543234', 'Asking about specialist doctors availability', 0);
