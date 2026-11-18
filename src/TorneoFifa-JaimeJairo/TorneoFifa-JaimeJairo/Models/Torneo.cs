namespace TorneoFifa_JaimeJairo.Models;

public class Torneo
{
    public int CodTorneo { get; set; }
    public string Nombre { get; set; } = "";
    public int Year { get; set; } //anio looks weird af
    public int NumParticipantes { get; set; }
    public bool Activo { get; set; }
}
