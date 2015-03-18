#MakeSpace Bin Tracker 

##Instructions

Before you is a simple core data application.  The CoreDataManager class encapsulates the Core Data stack, and has an instance method, `- prepopulateData` which can be called  to populate the store with 100 MakespaceBin managed objects.  

##Steps

- Populate a table view with the 100 MakeSpaceBin Objects 
- Display name, binId, and createdDate (in the form “November 23, 1937”)
- Sort the bins by ascending date 
- Add a + button that adds a new bin to the table.  The name, binId and createdDate can be set to arbitrary values 

##If we have time....

- Add Cocoapods to the project 
- Install the Masonry Pod 
- Use Masonry to layout the name, binId and createdDate labels in the table view cell.  Make sure they all have equal Widths, equal Heights, and are centered vertically in the cell


##Questions

1. What is the purpose of the MakeSpaceBin+Operations category? 
2. What are the advantages of encapsulating the CoreDataManager in it's own class vs following Apple's AppDelegate pattern? 
3. If you had a highly mutable data model, which API provides a delegate to keep a table view in sync with a CoreData model?
4. How would you go about removing all bins from the array whose name isn't @"some string"? 