import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { AppComponent } from './app.component';
import { OutfitComponent } from './outfit/outfit.component';
import { ReactiveFormsModule, FormsModule } from '@angular/forms';
import { ConfirmComponent } from './confirm/confirm.component';
import { RouterModule, Routes } from '@angular/router';
import { OrderComponent } from './order/order.component';
import { DetailsComponent } from './details/details.component';

const appRoutes: Routes = [
  { path: 'confirm', component: ConfirmComponent },
  { path: 'order', component: OrderComponent },
  {path:'details',component:DetailsComponent},
  { path: 'outfit',   component:OutfitComponent },
  { path: '',   component:OutfitComponent },
  { path: '**', component: OutfitComponent }
  ]

@NgModule({
  declarations: [
    AppComponent,
    OutfitComponent,
    ConfirmComponent,
    OrderComponent,
    DetailsComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    ReactiveFormsModule,
    RouterModule.forRoot(
      appRoutes
    )
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
