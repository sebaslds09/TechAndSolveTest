//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PruebaTecnica_SebastianOrtiz.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class ExecStamp_Details
    {
        public int IdExecStamp_Details { get; set; }
        public int ExecStamp { get; set; }
        public int ElementsQuantity { get; set; }
        public string ElementList { get; set; }
        public int TripsQuantity { get; set; }
    
        public virtual ExecStamp ExecStamp1 { get; set; }
    }
}
