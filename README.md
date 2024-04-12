# Flutter Dropdown Widgets Task Description

## Task Overview
The task involves creating two dropdown widgets in a Flutter application. The first dropdown widget will display a list of states, and the second dropdown widget will dynamically update its options based on the selected state from the first dropdown. The options in the second dropdown will display cities corresponding to the selected state.

## Requirements
- Create two dropdown widgets.
- The first dropdown widget should display a list of states.
- The second dropdown widget should display cities based on the selected state in the first dropdown.
- Data for states and cities should be fetched from a JSON file.

## Steps to Implement
1. Define the data model for states and cities.
2. Load the data from a JSON file.
3. Implement two dropdown widgets in the Flutter application.
4. Set up listeners to update the options in the second dropdown based on the selection in the first dropdown.

## Data Format
The data for states and cities will be provided in JSON format. The JSON structure will include an array of states, where each state will have an associated array of cities.

Example JSON data:

```json
{
  "California": [
    "Los Angeles",
    "San Francisco"
  ],
  "Texas": [
    "Houston",
    "Dallas"
  ],
  "New York": [
    "New York City",
    "Buffalo"
  ]
}
```

## Expected Output
Upon running the Flutter application, two dropdown widgets should be displayed on the screen. The first dropdown should list the states, and the second dropdown should dynamically update its options to display cities based on the selected state from the first dropdown.

#### Output:

![](https://raw.githubusercontent.com/tulasireddytulasi/states_and_cities/main/pic.jpg)

