using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ResearchSuiteWin.Models
{
    class ChoicesQuestionStep : BaseStep
    {
        private Dictionary<string, int> choices;
        public int response { get; set; }

        public ChoicesQuestionStep(string title, string description, Dictionary<string, int> choices)
        {
            this.typeId = "step-choices";
            this.title = title;
            this.description = description;
            this.choices = choices;
        }
    }
}
