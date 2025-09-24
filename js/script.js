firstNumber = prompt('введите число')
secondNumber = prompt('введите число')
thirdNumber = prompt('введите число')

function calculate(firstNumber, secondNumber, thirdNumber) {
   let result = +firstNumber + +secondNumber + +thirdNumber
    console.log(`сумма ваших чисел равна ${result}`)
}

calculate(firstNumber, secondNumber, thirdNumber);

let param1 = 1;
let param2 = 2;
let param3 = 3;

calculate(param1, param2, param3)

function func(num = 5) {
console.log(num * num);
}
func(2);//4
func(3);//9
func();//25

function userInfo( ) {
const userAge =prompt(`Введите возраст`);
 const userName = prompt(`Введите имя`);
  const userSecondName = prompt(`Введите фамилию`);
alert(`Привет ${userName} ${userSecondName} c возрастом ${userAge}`);
}

function math() {
const number = 3
const number1 = 4
let resultMath = sqrt(number) + sqrt(number1);
alert(`квадратный корень из ${number} равен ${Math.sqrt(number)}`);//из 4 = 2, из 3 =  1.7320508075688772 
alert(`квадратный корень из ${number1} равен ${Math.sqrt(number1)}`);
alert(`сумма этих корней равна ${resultMath}`);

}

function square() {
    const number = prompt(`Введите число`);
    let result = number * number;
    alert(`${number} в квадрате равно ${result}`)
}

function positiveOrNegativeNumber() {
    const number = prompt(`Введите число`);
    if (number>=0) {
       alert('+++'); 
    }  else {
        alert("---");
    }
}