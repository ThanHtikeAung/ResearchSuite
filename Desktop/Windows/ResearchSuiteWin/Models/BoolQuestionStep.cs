using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ResearchSuiteWin.Models
{
    class BoolQuestionStep : BaseStep
    {
        public bool response { get; set; }

        public BoolQuestionStep(string title, string description)
        {
            this.typeId = "step-bool";
            this.title = title;
            this.description = description;
        }
    }
}
