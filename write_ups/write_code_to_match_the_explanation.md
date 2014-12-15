### Writing Code to Match:

Write code to match each of the following explanations.

1) Assign the value `2` to the variable `car_count`

**Response:**

```

car_count - 2

```

2) Assign the value `21` to the variable `x`, assign the value `13` to the variable `y`, assign the result of multiplying `x` and `y` to a new variable, `z`.

**Response:**

```
x = 21
y = 13
z = x * y

```

3) Provide a statement that concatenates the `String`s `"all dogs"` and `"go to heaven"`

**Response:**

```

"all dogs" + "go to heaven"

```

4) Provide a statement that concatenates the values `6` and `8`

**Response:**

```
6 + 8
```

5) Assign the value `231313` to the variable `integer`, assign the `String` `"arbitrary"` to the variable `also_arbitrary`, provide the statement that casts `integer` as a `String` and concatenates it with `also_arbitrary`

**Response:**

```
integer = 231313

also_arbitrary = "arbitrary"

integer.to_s + also_arbitrary

```

#### Revisiting Classes and Objects

6) Evaluate the final statement from *Question #5*.

**Response:**

```

"231313arbitrary"

```

7) Create a `Car` class, that is constructed with `make` and `model` attributes.

**Response:**

```

class Car

  def initialize
    @make = make
    @model = model
  end

end

```

8) Take the response from *Question #7* and add `honk` behavior to the car class, which by out`puts` the `String` `"#{make (as all capital letters)} goes BEEP!"` (example output might look like `"SUBARU goes BEEP!"`).

**Response:**

```
class Car

  attr_accessor :make 

  def initialize
    @make = make
    @model = model
  end

  def honk
    puts "#{@make.upcase} goes BEEP!"
  end

end



```
