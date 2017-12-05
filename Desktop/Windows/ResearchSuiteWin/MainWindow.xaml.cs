using Newtonsoft.Json;
using ResearchSuiteWin.Models;
using System.IO;
using System.IO.Compression;
using System.Windows;

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

            using (FileStream zipToOpen = new FileStream("release.zip", FileMode.Create))
            {
                using (ZipArchive archive = new ZipArchive(zipToOpen, ZipArchiveMode.Create))
                {
                    ZipArchiveEntry readmeEntry = archive.CreateEntry("data.txt");
                    using (StreamWriter writer = new StreamWriter(readmeEntry.Open()))
                    {
                        writer.WriteLine(json);
                    }
                }
            }
            System.Diagnostics.Debug.WriteLine(json);
        }

        private void btnAddPage_Click(object sender, RoutedEventArgs e)
        {
            BoolQuestionStep step = new BoolQuestionStep(1, "My Title 1", "This is boolean description");
            this.model.steps.Add(step);
        }
    }
}
