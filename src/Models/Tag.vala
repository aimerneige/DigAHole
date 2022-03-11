namespace DigAHole {
    public class Tag : GLib.Object {
        public int64 id { get; set; default = 0 }
        public string name { get; set; default = "" }
        public string description { get; set; default = "" }
        public string color { get; set; default = "" }

        public Tag () {
        }
    }
}
