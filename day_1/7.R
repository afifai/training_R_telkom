# Sample with replacement from a set of N=1000 objects
# until the number 615 is sampled twice
M <- matches <- 0
repeat
{
  # Keep track of total connections sampled
  M <- M + 1
  # Sample a new connection
  p = sample(1000, 1)
  # Increment matches whenever we sample 615
  if (p == 615)
    matches <- matches + 1;
  # Stop after 2 matches
  if (matches == 2)
    break;
}