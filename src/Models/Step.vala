namespace DigAHole {
    public class Step : GLib.Object {
        public int64 id { get; set; default = 0 }
        public string content { get; set; default = "" }
        public int64 project_id { get; set; default = 0 }
        public int64 father_step_id { get; set; default = 0 }

        public Step () {
        }
    }
}
