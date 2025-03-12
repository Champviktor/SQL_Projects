--CREATE PROCEDURE [dbo].[AddBranch]
--	@BranchName NVARCHAR(50),
--	@ManagerID INT
--AS
--BEGIN
--	INSERT INTO Branch(BranchName, ManagerID)
--	VALUES(@BranchName, @ManagerID);
--END;
--GO

--CREATE PROCEDURE [dbo].[AddBranch]
--    @BranchName NVARCHAR(50),
--    @ManagerID INT
--AS
--BEGIN
--    BEGIN TRANSACTION;
--    BEGIN TRY
--        INSERT INTO Branch (BranchName, ManagerID)
--        VALUES (@BranchName, @ManagerID);

--        COMMIT TRANSACTION;
--    END TRY
--    BEGIN CATCH
--        ROLLBACK TRANSACTION;
--        THROW; -- Re-throws the original error for debugging
--    END CATCH;
--END;
--GO


CREATE PROCEDURE [dbo].[AddBranch]
    @BranchName NVARCHAR(50),
    @ManagerID INT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        -- Check if the ManagerID exists in the Manager table
        IF NOT EXISTS (SELECT 1 FROM Manager WHERE ManagerID = @ManagerID)
        BEGIN
            THROW 50001, 'ManagerID does not exist in Manager table.', 1;
        END

        -- Insert into Branch table
        INSERT INTO Branch (BranchName, ManagerID)
        VALUES (@BranchName, @ManagerID);

        -- Commit transaction if no errors
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        -- Rollback transaction if any error occurs
        ROLLBACK TRANSACTION;
        THROW; -- Re-throws the original error
    END CATCH
END;
GO
