﻿CREATE PROCEDURE [dbo].[usp_getStores]
	@thisHId int 
	
AS

DECLARE @CurrentHId hierarchyid

SELECT @CurrentHId = EntitiyHierarchyId FROM EntitiyHierarchy WHERE EntityId = @thisHId ;

SELECT * FROM EntitiyHierarchy WHERE EntitiyHierarchyId.IsDescendantOf(@CurrentHId) = 1 AND EntityType = 4 ;

