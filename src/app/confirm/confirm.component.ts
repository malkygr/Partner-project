import { Component, OnInit } from '@angular/core';
import { ItemService } from '../services/item.service';
import { Item } from '../models/item.model';
import { Router } from '@angular/router';

@Component({
  selector: 'app-confirm',
  templateUrl: './confirm.component.html',
  styleUrls: ['./confirm.component.css']
})
export class ConfirmComponent implements OnInit {

  filterArray:Item[];
  constructor(private itemService:ItemService,private router:Router) {
this.filterArray=this.itemService.filterArray;
   }

  ngOnInit() {
  }
  Edit(){
    this.router.navigate(['/outfit']);
  }
  submit(){
    this.router.navigate(['/order']);
  }

}
