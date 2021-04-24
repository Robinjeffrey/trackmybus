class onBoarding {
  String title;
  String image;
  String description;

  onBoarding(this.title, this.image, this.description);
}

List<onBoarding> listOnBoarding = [
  onBoarding('Bus Track Location', 'assets/bustracklocation.json',
      'TrackMyBus feature enables students and their families to keep track of the bus location.Look out for this icon Bus Track Location for the buses enabled with TrackMyBus feature.'),
  onBoarding('Bus Attendance', 'assets/attendance.json',
      'Bus Attendance is our unique feature exclusively available in our app to ensure whether the student is present or absent.Bus Attendance feature helps you to mark the bus attendance.'),
  onBoarding('Stop Details ', 'assets/busstopdetails.json',
      'Whether you are running late or early, use the app to know which location is the closest to you and check the estimated time of arrival of the bus at that stop by using Bus Stop icon. No need to call bus operators to check if the bus is running on schedule as we will keep you updated on any delay in the bus schedule.'),
  onBoarding('Notifications ', 'assets/notification.json',
      'When traveling,use the mobile app to get the notification when you arrived to college and reached back to home.Look out for this icon Arrival and Departure for getting the notification'),
  onBoarding('Bus Details', 'assets/busdetails.json',
      'Bus Details icon helps you to view all the details like Bus Name, Bus Number, Driver’s Name and Driver’s Contact Number.'),
  onBoarding('Feedback', 'assets/feedback.json',
      'Give us your feedback and use it as complaint register by pressing Feedback icon'),
];
