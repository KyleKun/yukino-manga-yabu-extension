import 'dart:io';
import 'package:extensions/extensions.dart';
import 'package:path/path.dart' as path;
import './test.dart';

Future<void> main() async {
  await run(
    path.join(
      Directory.current.path,
      'extensions/manga/mangayabu_top/mangayabu_top.ht',
    ),
    search: (ext) async => ext.search('bunny girl', 'pt'),
    getInfo: (ext) async => ext.getInfo(
      'https://mangayabu.top/manga/seishun-buta-yarou-wa-bunny-girl-senpai-no-yume-wo-minai/',
      'pt',
    ),
    getChapter: (ext) async => ext.getChapter(
      ChapterInfo(
        chapter: '1',
        url:
            'https://mangayabu.top/ler/seishun-buta-yarou-wa-bunny-girl-senpai-no-yume-wo-minai-capitulo-01-my12441/',
        locale: 'pt',
      ),
    ),
    getPage: (ext) async => ext.getPage(
      PageInfo(
        url:
            'https://cdn.statically.io/img/cdn.mangayabu.top/f=auto/mangas/seishun-buta-yarou-wa-bunny-girl-senpai-no-yume-wo-minai/capitulo-01/01.jpg',
        locale: 'pt',
      ),
    ),
  );
}
