/* ====================================================== */
-- CodeGen to script Attendances

-- Scripts attendances from GroupsAttendance in F1 (Fuse and Small groups) for
-- insert into rock

/* ====================================================== */
SELECT
	CONCAT(
		'INSERT INTO Attendance (GroupId, StartDateTime, DidAttend, [Guid], CreatedDateTime, ForeignKey, PersonAliasId) VALUES (',
			'(SELECT Id FROM [Group] WHERE ForeignId = ',
				ga.GroupId,
			'), ''',
			CONVERT(DATE, ga.StartDateTime),
			''', 1, NEWID(), GETDATE(), ''F1.GroupsAttendance'', ',
			'(SELECT Id FROM [PersonAlias] WHERE ForeignId = ',
				ga.IndividualID,
			')',
		');',
		CHAR(13),
		CHAR(10),
		'GO',
		CHAR(13),
		CHAR(10)
	)
FROM 
	[CEN-SQLDEV001].[F1].dbo.[GroupsAttendance] ga
WHERE 
	ga.IndividualIsPresent <> 0