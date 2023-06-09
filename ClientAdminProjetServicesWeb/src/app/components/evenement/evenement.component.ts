import { Component, OnInit } from '@angular/core';

import { Evenement } from 'src/app/entities/Evenement';
import { EvenementService } from 'src/app/services/evenement.service';
import { DeleteKey } from 'src/app/entities/deleteKey';
import { SearchFormEvenement } from 'src/app/entities/SearchFormEvenement';

@Component({
  selector: 'app-evenement',
  templateUrl: './evenement.component.html',
  styleUrls: ['./evenement.component.css']
})
export class EvenementComponent implements OnInit {

  evenements!: Evenement[];
  constructor(private evenementService: EvenementService) {
    this.getAll();
  }
  ngOnInit(): void {
  }

  getAll() {
    this.evenementService.getAll().subscribe((evenements) => (this.evenements = evenements));
  }

  updateEvenement(evenement: Evenement) {
    this.evenementService.updateEvenement(evenement).subscribe();
  }

  deleteEvenement(deleteKey: DeleteKey) {
    this.evenementService.deleteEvenement(deleteKey).subscribe(() => this.evenements = this.evenements.filter(e => e.idEvenement !== deleteKey.id));
  }

  filterEvenements(sfe: SearchFormEvenement) {
    if (sfe.searchMethod == "getAll") {
      this.getAll();
    } else if (sfe.searchMethod == "getByOrganisateurId") {
      this.evenementService.getAllEvenementsByOrganisateurId(sfe.searchValue).subscribe((evenements) => this.evenements = evenements);
    } else if (sfe.searchMethod == "getByParticipantId") {
      this.evenementService.getAllEvenementsParPartcipant(sfe.searchValue).subscribe((evenements) => this.evenements = evenements);
    } else if (sfe.searchMethod == "getByEvenementId") {
      let id = parseInt(sfe.searchValue);
      this.evenementService.getEvenementById(sfe.searchValue).subscribe(() => this.evenements = this.evenements.filter(e => e.idEvenement == id));
    }
  }

}
