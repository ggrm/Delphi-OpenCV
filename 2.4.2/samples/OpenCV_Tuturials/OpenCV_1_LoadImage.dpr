program OpenCV_1_LoadImage;

{$APPTYPE CONSOLE}

uses
  core_c in '..\..\include\�ore\core_c.pas',
  core.types_c in '..\..\include\�ore\core.types_c.pas',
  highgui_c in '..\..\include\highgui\highgui_c.pas';

const
  // declare image filename
  IMAGE_FILE_NAME = 'opencv_logo_with_text.png';

var
  // declare an opencv image pointer variable
  image: pIplImage;

begin
  // load image from file
  // REMARK: all opencv strings are PAnsiChar, pay attention to this
  // when using with Delphi 2010/2009
  image := cvLoadImage(IMAGE_FILE_NAME);
  // create display window
  cvNamedWindow('image');
  // display image inside "image" window
  cvShowImage('image', image);
  // wait until user keypress
  cvWaitKey();
  // release image memory
  cvReleaseImage(image);
  // close and release all display windows
  cvDestroyAllWindows;

end.
