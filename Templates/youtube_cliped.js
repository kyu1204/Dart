const notice = (msg) => new Notice(msg, 5000);

const YOUTUBE_URL = "https://m.youtube.com/watch";

const youtubeIdRegExp = /(?:(?:youtube.com\/watch\?v=)|(?:youtu.be\/)|(?:youtube.com\/embed\/))([A-Za-z0-9\_\-]+)/i;

let QuickAdd;

let Settings;

module.exports = async function start(params, settings) {

QuickAdd = params;

Settings = settings;

const query = await QuickAdd.quickAddApi.inputPrompt(

"Enter Youtube URL: "

);

if (!query) {

notice("No query entered.");

throw new Error("No query entered.");

}

let youtubeMetadata;

if (!isYoutube(query)) {

throw new Error("Please enter YouTube URL");

}

const [, youtubeId] = youtubeIdRegExp.exec(query);

youtubeMetadata = await getByYoutubeId(youtubeId);

QuickAdd.variables = {

...youtubeMetadata,

fileName: replaceIllegalFileNameCharactersInString(youtubeMetadata.title),

};

}

function isYoutube(str) {

return /^(.*.)?(youtube.com|youtu.be)\/\w+/i.test(str);

}

async function getByYoutubeId(id) {

const res = await request({

url: `${YOUTUBE_URL}?v=${id}`,

method: "GET",

cache: "no-cache",

});

if (!res) {

notice("No results found.");

throw new Error("No results found.");

}

const regexp = /<meta\s(property="og:|itemprop=")(?<key>(\w|:)+)"\s*content="(?<value>[^"]+)">/gi

const result = {

shortUrl: `https://youtu.be/${id}`

};

let matched;

while (matched = regexp.exec(res)) {

const { key, value } = matched.groups;

const newKey = snakeToCamel(key);

if (newKey === 'videoTag') {

if (!result[newKey]) result[newKey] = [];

result[newKey].push(value);

} else {

result[newKey] = value?.replace(/\n|\r/g, ' ');

}

};

return result;

}

function replaceIllegalFileNameCharactersInString(string) {

return string.replace(/[\\,#%&\{\}\/*<>?$\'\":@\[\]\|]*/g, "").replace(/\s+/g, ' ');

}

const snakeToCamel = (str) => {

if (!/[-_:]/.test(str)) return str;

return str.toLowerCase().replace(/([-_:][a-z])/g, group =>

group

.toUpperCase()

.replace(/-|_|:/g, '')

);

}