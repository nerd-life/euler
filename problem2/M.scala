object Application {

  def fib(x:Int, prev: BigInt = 0, next: BigInt = 1):BigInt = x match {
    case 0 => prev
    case 1 => next
    case _ => fib(x-1, next, (next + prev))
 }

 def main(args: Array[String]) {
   println(Iterator.range(3, 34, 3).map(fib(_)).sum)
 }

}
