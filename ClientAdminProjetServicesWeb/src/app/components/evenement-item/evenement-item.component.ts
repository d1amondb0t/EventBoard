import { Component, OnInit, Input, EventEmitter, Output } from '@angular/core';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';

import { Evenement } from 'src/app/Evenement';
import { ModalUpdateEvenementComponent } from '../modal-update-evenement/modal-update-evenement.component';
import { ModalDeleteEvenementComponent } from '../modal-delete-evenement/modal-delete-evenement.component';
import { DeleteKey } from 'src/app/deleteKey';
@Component({
  selector: 'app-evenement-item',
  templateUrl: './evenement-item.component.html',
  styleUrls: ['./evenement-item.component.css']
})
export class EvenementItemComponent implements OnInit {
  @Output() consult: EventEmitter<Evenement> = new EventEmitter();
  @Output() update: EventEmitter<Evenement> = new EventEmitter();
  @Output() delete: EventEmitter<DeleteKey> = new EventEmitter();
  @Input() evenement!: Evenement;
  constructor(private modalService: NgbModal) { }

  ngOnInit(): void {
  }

  openUpdateModal(evenement: Evenement) {
    const modalRef = this.modalService.open(ModalUpdateEvenementComponent);
    modalRef.componentInstance.evenement = evenement;
    modalRef.result.then((result) => {
      this.evenement.nomEvenement = result.nomEvenement;
      this.evenement.location = result.location;
      this.evenement.date = result.date;
      this.evenement.description = result.description;
      this.update.emit(result);
    });
  }

  openDeleteModal(evenement: Evenement) {
    const modalRef = this.modalService.open(ModalDeleteEvenementComponent);
    modalRef.componentInstance.evenement = evenement;
    modalRef.result.then((result) => {
      this.delete.emit(result);
    });
  }

  visit(evenement: Evenement) { }
}