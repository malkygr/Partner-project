import { Component, OnInit, Input } from '@angular/core';
import { Item } from '../models/item.model';
import { FormGroup, FormControl, FormArray } from '@angular/forms';
import { Router } from '@angular/router';
import { ItemService } from '../services/item.service';

@Component({
  selector: 'app-outfit',
  templateUrl: './outfit.component.html',
  styleUrls: ['./outfit.component.css']
})
export class OutfitComponent implements OnInit {

  // icons = {
  //   shirt: "tshirt.png", socks: "socks.png", hat: "hat.png", mitten: "mitten.png"
  // }

  items: Item[] = [];
  constructor(private router: Router, private itemService: ItemService) {
    this.items = this.itemService.items;
  }

  itemForm = new FormGroup({
    selected: new FormControl([])
  });

  ngOnInit() {
    if (this.itemService.filterArray.length) {
      let v = this.itemService.filterArray.map(p => p.id)
      this.itemForm.controls.selected.setValue(v);
    }
  }

  submit() {
    let filterArray = this.items.filter(p => this.itemForm.controls.selected.value.indexOf(p.id) > -1);
    this.itemService.filterArray = filterArray;
    this.router.navigate(['/confirm']);
  }

  change(e, id) {
    if (e.target.checked) {
      let v = this.itemForm.controls.selected.value.push(id);
      v = this.itemForm.controls.selected.value;
      this.itemForm.controls.selected.setValue(v);
    }
    else {
      this.itemForm.controls.selected.value.splice(this.itemForm.controls.selected.value.findIndex(p => p == id), 1);
    }
  }
  check(id) {
    if (this.itemService.filterArray.find(p => p.id == id))
      return true;
    return false;
  }
}
