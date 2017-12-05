using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ResearchSuiteWin.Models
{
    class NumberQuestionStep : BaseStep
    {
        public long response { get; set; }

        public NumberQuestionStep(string title, string description)
        {
            this.typeId = "step-number";
            this.title = title;
            this.description = description;
        }
    }
}
