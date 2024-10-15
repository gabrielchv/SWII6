namespace TP02.Models.Entity;

// Gabriel Chaves - Caroline Ribeiro

public class BillOfLading
{
    public int Id { get; set; }
    public string Numero { get; set; }
    public string Consignee { get; set; }
    public string Navio { get; set; }

    public virtual ICollection<Container>? Containers { get; set; }
}