@echo off
rem prompt the user to enter their name
echo Enter your name:
rem will set user input as their name
set /p name=

echo Hello, %name% ! Select a shape.

:shapes
echo 1. circle
echo 2. triangle
echo 3. quadrilateral
echo 4. exit
choice / c 1234 /m "Choose a shape:"

if errorlevel 4 goto end
if errorlevel 3 goto quadrilateral
if errorlevel 2 goto triangle
if errorlevel 1 goto circle

:circle
cls
echo Area of Circle

set /p rad= Enter radius of circle:
set /a pi= 3.14159
set /a area = %pi% * %rad% * %rad% 
echo The area of cirle is %area%

goto shapes

:triangle
cls
echo Area of triangle

set /p base= Enter base:
set /p height= Enter hright:
set /p side1= Enter side 1:
set /p side2= Enter side 2:
set /p side3= Enter side 3:

set /a triArea= ( %base% * %height% ) /2
echo The area of triangle is %triArea%

if %side1% == %side2% == %side3% (
  echo The triangle is an equilateral triangle.
)
else if %side1% == %side2% (
  echo The trianglr is an isosceles triangle.
)
else if %side2% == %side3% (
  echo The triangle is an isosceles triangle.
)
else if %side1% == %side3% (
  echo The triangle is an isosceles triangle.
)
else (
  echo The triangle is a scalene triangle.
)
goto shapes

:quadrilateral
cls
echo Area of quadrilateral
set /p length= Enter the length:
set /p width = Enter the width:

set /a area= %length% * %width%
echo The area of quadrilateral is %area%

if %length% == %width% (
  echo The quadrilateral is a square.
)
else (
  echo The quadrilateral is a rectangle.
)
goto menu

:end
exit /b