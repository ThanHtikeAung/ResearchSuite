using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using ResearchSuiteWin.Models;
using Newtonsoft;
using Newtonsoft.Json;

namespace ResearchSuiteWin
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private SurveyModel model;
        public MainWindow()
        {
            InitializeComponent();
            this.model = new SurveyModel("survey-test-1", "v1.0.0");
        }

        private void btnCreateSurvey_Click(object sender, RoutedEventArgs e)
        {
            string json = JsonConvert.SerializeObject(this.model);
            System.Diagnostics.Debug.WriteLine(json);
        }

        private void btnAddPage_Click(object sender, RoutedEventArgs e)
        {
            BoolQuestionStep step = new BoolQuestionStep(1, "My Title 1", "This is boolean description");
            this.model.steps.Add(step);
        }
    }
}
