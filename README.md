How to install : 

1. make sure your python is 3.6 or latest with pip3.

2. pip install -r requirements.txt

3. If need headless please install xvfb first.
https://stackoverflow.com/questions/21665914/installing-and-configuring-xvfb

How to run : 
1. With UI browser : robot web/features/booking_ticket.robot

2. No need UI browser : robot -v ENV:headless web/features/booking_ticket.robot

This test contains video log, can you found the video records in root directory.