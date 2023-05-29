import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Evenement } from '../entities/Evenement';
import { Observable } from 'rxjs';
import { DeleteKey } from '../entities/deleteKey';

const httpOptions = {
  headers: new HttpHeaders({
    'Content-Type': 'application/json',
    'ApiKey': '9c9eeb7b-7b3f-439f-aadc-586cb0b8a265'
  })
}

@Injectable({
  providedIn: 'root'
})
export class EvenementService {
  private apiUrl = 'https://localhost:32768/api/Evenement';

  constructor(private http: HttpClient) { }


  getAll(): Observable<Evenement[]> {
    const tempUrl = `${this.apiUrl}/GetAll`
    return this.http.get<Evenement[]>(tempUrl, httpOptions);
  }

  updateEvenement(evenement: Evenement): Observable<Evenement> {
    const tempUrl = `${this.apiUrl}/Update`
    return this.http.put<Evenement>(tempUrl, evenement, httpOptions);
  }

  deleteEvenement(deleteKey: DeleteKey): Observable<Evenement> {
    const tempUrl = `${this.apiUrl}/Delete/${deleteKey.key}?id=${deleteKey.id}`;
    return this.http.delete<Evenement>(tempUrl, httpOptions);
  }

  getEvenementById(id: number): Observable<Evenement> {
    const tempUrl = `${this.apiUrl}/GetById?id=${id}`;
    return this.http.get<Evenement>(tempUrl, httpOptions);
  }

  getRecentEvenement(): Observable<Evenement[]> {
    const tempUrl = `${this.apiUrl}/GetRecent`;
    return this.http.get<Evenement[]>(tempUrl, httpOptions);
  }

  getAllEvenementsByOrganisateurId(id: number): Observable<Evenement[]> {
    const tempUrl = `${this.apiUrl}/GetParOrganisateur/${id}`
    return this.http.get<Evenement[]>(tempUrl, httpOptions);
  }
  getAllEvenementsParPartcipant(id: number): Observable<Evenement[]> {
    const tempUrl = `${this.apiUrl}/GetParParticipant/${id}`
    return this.http.get<Evenement[]>(tempUrl, httpOptions);
  }
}
