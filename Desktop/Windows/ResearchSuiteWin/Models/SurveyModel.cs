using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ResearchSuiteWin.Models
{
    class SurveyModel
    {
        public string surveyId { get; set; }
        public string version { get; set; }
        public uint build { get; set; }
        public DateTime releaseDt { get; set; }
        public string termsAndConditions { get; set; }
        public bool isRequireSignature { get; set; }
        public bool isRequireToAccept { get; set; }
        public List<BaseStep> steps { get; set; }

        public SurveyModel()
        {
            this.steps = new List<BaseStep>();
        }
    }
}
