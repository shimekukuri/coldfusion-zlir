const plugin_core = @import("plugin_core");
const LexerInterface = plugin_core.LexerInterface;
const Token = LexerInterface.Token;
const createTokenizer = LexerInterface.createTokenizerType;

pub const VERSION = 0;

fn run(x: []u8, y: *usize) Token {}
