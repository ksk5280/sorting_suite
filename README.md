# Sorting Suite

## Turing School: Module 1, Project 3

### Overview

This project required developing a suite of sorting algorithms. 
Sorting algorithms are one of the common domains for studying Computer Science data structures and algorithms. They give us an opportunity to focus on algorithms of various complexity all solving a relatively simple problem.

### 1. Bubble Sort

Bubble Sort is often one of the first algorithms of any kind that programmers attempt. There are very few steps which make it not too difficult to implement. But it takes many instructions to actually execute -- so the performance is typically quite bad.

This [Bubble Sort wikipedia article](https://en.wikipedia.org/wiki/Bubble_sort) gives a high level explanation for how bubble sort works.

#### Implementation

The `BubbleSort` class can be implemented as follows:

```ruby
sorter = BubbleSort.new
=> #<BubbleSort:0x007f81a19e94e8>
sorter.sort(["d", "b", "a", "c"])
=> ["a", "b", "c", "d"]
```

### 2. Insertion Sort

Insertion sort is a next step up from Bubble Sort. Insertion sort uses slightly more complex logic but the algorithm is generally much higher performing than Bubble Sort.

[Insertion Sort wikipedia article](https://en.wikipedia.org/wiki/insertion_sort)

#### Implementation

The `InsertionSort` class can be implemented as follows:

```ruby
sorter = InsertionSort.new
=> #<InsertionSort:0x007f81a19e94e8>
sorter.sort(["d", "b", "a", "c"])
=> ["a", "b", "c", "d"]
```

### 3. Merge Sort

[Merge Sort wikipedia article](https://en.wikipedia.org/wiki/merge_sort)

#### Implementation

Merge sort uses a technique called recursion. Merge sort can be thought of as splitting an array into two arrays and sorting
the halves by also splitting them in half and sorting those halves by splitting
them in half... and so on.

The `MergeSort` class can be implemented as follows:

```ruby
sorter = MergeSort.new
=> #<MergeSort:0x007f81a19e94e8>
sorter.sort(["d", "b", "a", "c"])
=> ["a", "b", "c", "d"]
```

### 4. Benchmark

A benchmarking program was writing to calculate and compare the speed of the sorting algorithm. The following code snippets show examples for how the benchmarking is implemented

```ruby
benchmark = SortingSuite::Benchmark.new

benchmark.time(SortingSuite::InsertionSort, [3,3,4,5,1])
=> "InsertionSort took 0.004333 seconds"

benchmark.time(SortingSuite::MergeSort)
=> "MergeSort took 0.000274 seconds"

benchmark.fastest([2, 8, 1, 0, 5])
=> "MergeSort is the fastest"

benchmark.slowest([1, 2, 3, 4, 5])
=> "BubbleSort is the slowest"
```
