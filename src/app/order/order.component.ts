import { Component, OnInit } from '@angular/core';
import { ItemService } from '../services/item.service';
import { Order } from '../models/order.model';

@Component({
  selector: 'app-order',
  templateUrl: './order.component.html',
  styleUrls: ['./order.component.css']
})
export class OrderComponent implements OnInit {

  orderList:Order[];
  constructor(private itemService:ItemService) { 
    this.orderList=this.itemService.order;
  }

  ngOnInit() {
  }

}
