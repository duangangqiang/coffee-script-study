// Generated by CoffeeScript 1.10.0
(function() {
  var firstSubstring, letMeGoogolThatForYou, middleElement, opinion, sayGoodbye, sayHello, sayHelloFormally, shout, sideEffectOnly, sideEffectOnly2, squareAll;

  (function(name) {
    return "Hello, " + name + "!";
  });

  sayHello = function(name) {
    return "Hello, " + name + "!";
  };

  sayHello("Ian");

  sayHelloFormally = function(honirific, name) {
    return "Good day to you, " + honirific + ", " + name;
  };

  sayGoodbye = function() {
    return "Bye now!";
  };

  shout = function(phrase) {
    return (phrase.toUpperCase()) + "!!!";
  };

  letMeGoogolThatForYou = function(number) {
    var googol;
    googol = Math.pow(10, 100);
    return number * googol;
  };

  opinion = function(numberOfState) {
    if (numberOfState >= 4) {
      return "Happy";
    } else if (numberOfState <= 2) {
      return "Sad";
    } else {
      return "Neural";
    }
  };

  squareAll = function(numbers) {
    var i, len, n, results;
    results = [];
    for (i = 0, len = numbers.length; i < len; i++) {
      n = numbers[i];
      results.push(n * n);
    }
    return results;
  };

  middleElement = function(list) {
    if (list.length === 0) {
      return;
    }
    return list[Math.floor(list.length / 2)];
  };

  firstSubstring = function(stringToMatch, snippets) {
    var i, len, substr;
    for (i = 0, len = snippets.length; i < len; i++) {
      substr = snippets[i];
      if (stringToMatch.indexOf(substr) !== -1) {
        return substr;
      }
    }
    return "No match : (";
  };

  sideEffectOnly = function(myArray) {
    myArray.pop();
  };

  sideEffectOnly2 = function(myArray) {
    myArray.pop();
    return null;
  };

}).call(this);
