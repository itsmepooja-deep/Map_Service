let carts=document.querySelectorAll('.btn');
let products=[
	{
		
		Service:'Hair Coloring',
		price:400,
		inCart:0
	},
	{
		Service:'Hair Cutting',
		price:150,
		inCart:0
	},
	{
		Service:'Hair Straightening',
		price:200,
		inCart:0
	},
	{
		Service:'Waxing',
		price:300,
		inCart:0
	},
	{
		Service:'Facial',
		price:500,
		inCart:0
	},
	{
		Service:'Beard Setting',
		price:100,
		inCart:0
	},
	{
		Service:'Pedicure',
		price:300,
		inCart:0
	},
	{
		Service:'Threading',
		price:200,
		inCart:0
	}
	
]
for(let i=0;i<carts.length;i++)
	{
	carts[i].addEventListener('click',()=>
	{
		cartNumbers(products[i]);
		totalCost(products[i]);
	})
	}
	
	
	function onLoadCart()
	{
		//let pn=localStorage.getItem('cartNumbers');
		//if(pn)
		//	{
			//	document.querySelector('.c span').textContent=
			//	pn;
			//}
			
	}
	
	function cartNumbers(product)
	{
		let pn=localStorage.getItem('cartNumbers');
	pn=parseInt(pn);
	if(pn)
		{
		localStorage.setItem('cartNumbers',pn+1);
		document.querySelector('.c span').textContent=pn+1;
		}
	else
		{
		localStorage.setItem('cartNumbers',1);
		document.querySelector('.c span').textContent=1;}
	
	setItems(product);
	}
	function  setItems(product) {
		let cartItems=localStorage.getItem('productsInCart');
		cartItems=JSON.parse(cartItems)
		if(cartItems!=null)
			{
			if(cartItems[product.Service]== undefined)
				{
				cartItems={
						...cartItems,
						[product.Service]:product
					}
				}
			
			
			
		cartItems[product.Service].inCart+=1;}
		else{
		product.inCart=1;
		 cartItems={
				[product.Service]:product
		}}
		localStorage.setItem("productsInCart",JSON.stringify(cartItems));
	}
	
	function totalCost(product)
	{
		let cartCost=localStorage.getItem('totalcost');
		
		if(cartCost!=null)
			{
			cartCost=parseInt(cartCost);
			localStorage.setItem("totalcost",cartCost+product.price);
			}
		else
			{
			localStorage.setItem("totalcost",product.price);
			}
			
			
		
	}
	function displaycart()
	{
		let cartItems=localStorage.getItem("productsInCart");
		cartItems=JSON.parse(cartItems);
		let pc=document.querySelector(".products-container");
	
		if(cartItems&pc)
			{
			pc.innerHTML='';
			Object.values(cartItems).map(item=>
			{
				pc.innerHTML+=`
				<div class="product">
				<ion-icon name="close-circle"><ion-icon>
				<img src="./images/${item.Service}.jpg">
				<span>${item.Service}</span>
				</div>
				<div class="p">${item.price}</div>
				<div class="total">
				$${item.inCart*item.price}.00</div>`
			})
			
			}
(Object.values(cartItems).map(item=>
			{
				pc.innerHTML+=`
				<table >
				<tr style="width: 35%"><td >
				<div class="product">
				<td><img src="images/${item.Service}.jpg" style="width:80px"></td>
				<td style="width: 35%"><span>  ${item.Service}  </span>
		<span >(${item.inCart})</span>	</td>
		<td style="width: 35%">
<span style=" margin-left: 5em;">Rs${item.price}</span></td>
			<td style="width: 35%">		<span class="total" style=" margin-left: 5em;" >Rs${item.inCart*item.price},00</span>
		</td>	
		</tr>
			</table></div>
				`
			})
			)
			pc.innerHTML+=	`<div><p><b style="position:relative; left:546px; top:2px; ">Grand Total</b><p style = "position:relative; left:550px; top:2px; border-top: 2px solid #ff0000; border-bottom: 2px solid #ff0000; width:12%;  ">Rs${localStorage.getItem("totalcost")}.00
			</div>`
	
		
		
	}
	
	
	onLoadCart();
	displaycart();
