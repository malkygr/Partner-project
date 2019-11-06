import { Component, OnInit } from '@angular/core';
import { ItemService } from '../services/item.service';
import { Order } from '../models/order.model';
import { Router } from '@angular/router';

@Component({
  selector: 'app-details',
  templateUrl: './details.component.html',
  styleUrls: ['./details.component.css']
})
export class DetailsComponent implements OnInit {

  items:Order[];

  constructor(private itemService:ItemService, private router:Router) {
    this.items=this.itemService.order;
   }

  ngOnInit() {
  }
  back(){
    this.router.navigate(['/order']);
  }
}
