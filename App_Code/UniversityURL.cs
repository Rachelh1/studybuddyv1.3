//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace studybuddyv1._3.App_Code
{
    using System;
    using System.Collections.Generic;
    
    public partial class UniversityURL
    {
        public int ID { get; set; }
        public int UniversityID { get; set; }
        public string ChatURL { get; set; }
        public string ForumURL { get; set; }
    
        public virtual University University { get; set; }
    }
}
