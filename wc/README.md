
# CCWC
ccwc is a clone version of wc.

[Link to the challenge](https://codingchallenges.substack.com/p/coding-challenge-1)

## Getting Started
1 - Clone this repository
```
  git clone https://github.com/ousmanedev/codingchallenges
  cd codingchallenges/wc
```
2 - Install the ccwc gem
```
  gem install ./ccwc-0.0.1.gem
```

## Basic usage
ccwc expects a filename as input or can read from the standard input if no filename is provided.

### Displaying help
```
  ccwc help
```

### Run ccwc with a filename

```
  ccwc test.text
    7145   58164  342190 test.txt
```

### Run ccwc with the standard input

```
  cat test.txt | ccwc
   7145   58164  342190
```


## Options

ccwc supports the following options:
- -c: to count the number of bytes in a file
  ```bash
  ccwc -c test.txt
    342190 test.txt
  ```
- -l: to count the number of lines a file
  ```
  ccwc -l test.txt
    7145 test.txt
  ```
- -w: to count the number of words in a file
  ```
  ccwc -w test.txt
    58164 test.txt
  ```
- -m: to count the number of characters in a file
  ```
  ccwc -m test.txt
    339292 test.txt
  ```

Running ccwc with no specific option, gives us the number of lines, words and bytes in the file by combining the -l, -w and -c options:
```
  ccwc test.text
    7145   58164  342190 test.txt
```

## Contributing
The code follows the architecture described in this [RubyGems Guide](https://guides.rubygems.org/make-your-own-gem/).

Make sure to read it and follow the conventions prescribed there.
