//push
const even=[20,40,80];
even.push(100)
console.log(even)

//pop()
const fruits=["apple","mango","banana"];
console.log(fruits);
console.log("Remove this element:",fruits[2]);
fruits.pop()
console.log("After remove:",fruits);

//shift()
const queue=["navi","riya","zara","zyra"];
console.log(queue);
console.log("Remove From queue:",queue[0]);
queue.shift()
console.log(queue);

//unshift()
const num=[6,4,3,2,7,9,2,3];
console.log(num);
num.unshift(5)
console.log(num);

//concat
const shopping_items=["saree","shawl","products","snacks"];
const price=[1000,200,500,300];
console.log("shopping items:",shopping_items);
console.log("price:",price);
let total=shopping_items.concat(price)
console.log("Prdoucts with price:",total);

//join

const  add_num= [6,6,8,9];
const sign= add_num.join("+")
console.log("Numbers:",sign);
console.log("Total:",add_num[0]+add_num[1]+add_num[2]+add_num[3]);

//reverse
const alphabets=["A","B","C","D","E","F"];
console.log(alphabets);
alphabets.reverse()
console.log("Alphabets in descending order:",alphabets);

//slice
const social_media=["instagram","facebook","whatsapp"];
let sliced=social_media.slice(0,1)
console.log(sliced);
console.log(social_media);

//splice
const color=["white","black","lavender"];
color.splice(0,2,"purple")
console.log(color);

//includes
const odd_num=[1,3,5,7];
let value_check=odd_num.includes(5);
console.log(value_check);

//index
const chocolate=["kitkat","galaxy","munch"];
let c=chocolate.indexOf("galaxy")
console.log("Galaxy index value:",c);




 



