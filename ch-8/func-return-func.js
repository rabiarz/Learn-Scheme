


const myFunc = (another, name, age) => {
  const lastName = "Rezaie"
  const info = another(name, lastName, age)
  return info
}

const userInfo = myFunc(rahmat, "Rahmat", 22)

console.log(userInfo)

function rahmat(name, lastName, age) {
  return  name + " " + lastName + " is " + age + " years old"
}





// // we defined the function test in bellow
// function test(i) {

//   console.log("Show this text in terminal ", i)
// //  return "Show this text in terminal"
// }
// const showText = test(1)
// test(2)
// test(3)
// test(4)
// console.log(showText)
// // we called the function test



