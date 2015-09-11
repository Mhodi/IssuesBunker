SELECT DISTINCT Systems.Platform, Issues.IssueInfo,Issues.IssueStatus, BIOS.BiosVersion
From BIOS
JOIN Systems ON BIOS.SystemId = Systems.SystemId
JOIN Issues on BIOS.IssueId = Issues.IssueId
Group by Platform, BIOS.IssueId , Issues.IssueInfo,BIOS.BiosVersion, Issues.IssueStatus;