using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ResearchSuiteWin.Models
{
    class TextQuestionStep : BaseStep
    {
        public string response { get; set; }

        public TextQuestionStep(uint serial, string title, string description)
        {
            this.serial = serial;
            this.typeId = "step-text";
            this.title = title;
            this.description = description;
        }
    }
}
