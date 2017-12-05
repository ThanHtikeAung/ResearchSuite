﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ResearchSuiteWin.Models
{
    class DecimalQuestionStep : BaseStep
    {
        public decimal response { get; set; }

        public DecimalQuestionStep(uint serial, string title, string description)
        {
            this.serial = serial;
            this.typeId = "step-decimal";
            this.title = title;
            this.description = description;
        }
    }
}
