namespace DigAHole {
    public class Project : GLib.Object {
        public int64 id { get; set; default = 0 }
        public string title { get; set; default = "" }
        public bool complete { get; set; default = false }
        public string detail { get; set; default = "" }
        public int64 deadline { get; set; default = 0 }
        public int64 created { get; set; default = 0 }
        public int64 updated { get; set; default = 0 }
        public int64 finished { get; set; default = 0 }
        public string git_repo { get; set; default = "" }

        public Project () {
        }
    }
}
