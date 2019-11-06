import { Injectable } from '@angular/core';
import { Item } from '../models/item.model';
import { Order } from '../models/order.model';
import { Status } from '../models/status.model';

@Injectable({
    providedIn: 'root',
})
export class ItemService {
    filterArray: Item[] = [];
    items: Item[];
    order: Order[];
    status: Status[];


    constructor() {
        this.status = [{ id: 1, name: "composition", done: true }, { id: 2, name: "shipping", done: false }, { id: 3, name: "collect", done: false }],
            this.order = [{ id: 1, orderNum: 1, present: 10, time: 20, itemList: [{ id: 1, type: "dress", color: "red", size: 10, cost: 100, time: 3 }], statusList: [{ id: 1, name: "shipping", done: false }], startDate: "01-01-2019", endDate: "01-10-2019", manager: "Malky" }]
        this.items = [{
            id: 1,
            type: "shirt",
            color: "red",
            size: 1,
            cost: 100,
            time: 15,

        },
        {
            id: 2,
            type: "socks",
            color: "blue",
            size: 1,
            cost: 100,
            time: 15
        },
        {
            id: 3,
            type: "hat",
            color: "yellow",
            size: 1,
            cost: 10,
            time: 15
        },
        {
            id: 4,
            type: "mitten",
            color: "green",
            size: 1,
            cost: 100,
            time: 15
        }]
    }

}