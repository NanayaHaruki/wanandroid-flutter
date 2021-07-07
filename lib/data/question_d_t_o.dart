/// data : {"curPage":1,"datas":[{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>更近聊到一种编译优化的方案，号称秒级别：</p>\r\n<ol>\r\n<li>每次拿到修改 java 文件，编译为 class；</li>\r\n<li>将 1 中的 class 转成 dex；</li>\r\n<li>push 到 sdcard，然后重启生效；</li>\r\n</ol>\r\n<p>问题来了：</p>\r\n<ol>\r\n<li>第一步中将特定的 Java 文件转成 class 如何操作？如何极快的操作？</li>\r\n<li>如果是 kotlin 文件呢？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":18453,"link":"https://www.wanandroid.com/wenda/show/18453","niceDate":"2021-06-30 18:16","niceShareDate":"2021-05-28 00:28","origin":"","prefix":"","projectLink":"","publishTime":1625048217000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1622132918000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | 极致的编译优化如何实现？ [更新]","type":1,"userId":2,"visible":1,"zan":11},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>更近一直在补一些 C/C++的知识，导致 Android 相关知识看的少了，导致每日一问憋半天憋不出来。</p>\r\n<p>还好，我又更新了...</p>\r\n<p>之前公众号推文的时候，推送到混淆的时候，经常会说到「脱糖」，也有同学在留言区问什么是脱糖呀？</p>\r\n<p>今天的问题就是为了带大家彻底搞清楚什么是脱糖：</p>\r\n<ol>\r\n<li>脱糖产生的原因是什么？</li>\r\n<li>脱糖在 D8 产生后发生了什么变化？</li>\r\n<li>脱糖我们需要关注吗？在我们做什么事情的时候可能会影响到呢？</li>\r\n</ol>\r\n<p>求解答~</p>","descMd":"","envelopePic":"","fresh":false,"host":"","id":18615,"link":"https://www.wanandroid.com/wenda/show/18615","niceDate":"2021-06-14 22:57","niceShareDate":"2021-06-14 22:56","origin":"","prefix":"","projectLink":"","publishTime":1623682625000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1623682607000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | 我们经常说到的 Android 脱糖指的是什么？","type":1,"userId":2,"visible":1,"zan":8},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>在我们的印象里，如果构造一个 Dialog 传入一个非 Activiy 的 context，则可能会出现 bad token exception。</p>\r\n<p>今天我们就来彻底搞清楚这一块，问题来了：</p>\r\n<ol>\r\n<li>为什么传入一个非 Activity 的 context 会出现错误？</li>\r\n<li>传入的 context 一定要是 Activity 吗？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":18281,"link":"https://www.wanandroid.com/wenda/show/18281","niceDate":"2021-05-13 21:21","niceShareDate":"2021-05-13 00:20","origin":"","prefix":"","projectLink":"","publishTime":1620912076000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1620836414000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | Dialog 的构造方法的 context 必须传入 Activity吗？","type":1,"userId":2,"visible":1,"zan":15},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>之前看文章，经常看到一些分析 Dialog、PopupWindow的文章，有些文章分析如下：</p>\r\n<p><strong>Dialog有自己独立的Window，而PopupWindow没有，所以PopupWindow可以称之为子窗口，而 Dialog不是。</strong></p>\r\n<p>问题来了：</p>\r\n<ol>\r\n<li>这种说法合理吗？</li>\r\n<li>在Android中，有没有子窗口的概念呢？如果有到底应该以什么为标准呢？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":18192,"link":"https://wanandroid.com/wenda/show/18192","niceDate":"2021-05-28 00:29","niceShareDate":"2021-05-06 00:15","origin":"","prefix":"","projectLink":"","publishTime":1622132956000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1620231346000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | Android中的子窗口到底指的是什么？","type":0,"userId":2,"visible":1,"zan":10},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>对于 Intent 大家肯定都不陌生，今天我们聊一聊它的一个近亲：<strong>PendingIntent</strong></p>\r\n<p>官方对其描述为：</p>\r\n<p>A description of an Intent and target action to perform with it. </p>\r\n<p>那么问题来了：</p>\r\n<ol>\r\n<li>PendingIntent 仅仅是对 Intent 的一个封装吗？</li>\r\n<li>如果1 不是，那么为什么 PendingIntent与 Intent 有何不同，它的定位是什么样的呢？</li>\r\n<li>对于 2 的回答，如果从源码侧佐证？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":18072,"link":"https://www.wanandroid.com/wenda/show/18072","niceDate":"2021-05-28 00:29","niceShareDate":"2021-04-24 22:58","origin":"","prefix":"","projectLink":"","publishTime":1622132946000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1619276317000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | 已经有了 Intent，那为啥还要 PendingIntent?","type":0,"userId":2,"visible":1,"zan":7},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>正常大家都清楚，当我们view发生一些必须要重新测量才能生效的属性的时候，我们会尝试触发view.requestLayout从而让整个view树发生重新测量与布局。</p>\r\n<p>今天的问题是:</p>\r\n<ol>\r\n<li>假设requestLayout的调用发生在灭屏/切home之后会立即触发吗？</li>\r\n<li>如果1不会立即触发，当我们回到应用，会自动重新触发一次requestLayout吗？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":17956,"link":"https://wanandroid.com/wenda/show/17956","niceDate":"2021-05-06 00:16","niceShareDate":"2021-04-15 14:40","origin":"","prefix":"","projectLink":"","publishTime":1620231413000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1618468829000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | view.requestLayout如果在灭屏或者切home之后调用会怎么样？","type":0,"userId":2,"visible":1,"zan":11},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>这个问题很明确了，想必大家都能了解，我们经常在自定义 View 的时候，会发现 onMeasure 执行了多次？</p>\r\n<p>那么问题来了：</p>\r\n<p><strong>onMeasure 执行多次的原因有哪些呢？</strong></p>","descMd":"","envelopePic":"","fresh":false,"host":"","id":17920,"link":"https://www.wanandroid.com/wenda/show/17920","niceDate":"2021-05-06 00:16","niceShareDate":"2021-04-13 00:30","origin":"","prefix":"","projectLink":"","publishTime":1620231402000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1618245050000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问  | onMeasure()多次执行原因？","type":0,"userId":2,"visible":1,"zan":7},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>大家应该都清楚app上内存是非常宝贵的资源，而Bitmap几乎是app里面占据内存更大的一个部分。</p>\r\n<p>不少同学也清楚，Bitmap占据的内存计算为：</p>\r\n<pre><code>宽 * 高 * 单个像素所需字节数\r\n</code></pre><p>今天有个很常规，但是你可能没有太关注的问题：</p>\r\n<ol>\r\n<li>Bitmap所占用的内存，是app的哪部分的内存？或者说app运行时可使用Java内存为512M，Bitmap占据的内存可以超过512M吗?</li>\r\n<li>问题1中所描述的，需要区分Android版本吗（5.0以下不考虑）？</li>\r\n<li>问题1，问题2如果都搞清楚，经常在一些blog看到这样的代码：设置fresco图片缓存空间为Java内存的白分比，例如1/4，合适吗？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":17874,"link":"https://wanandroid.com/wenda/show/17874","niceDate":"2021-04-19 23:40","niceShareDate":"2021-04-07 14:57","origin":"","prefix":"","projectLink":"","publishTime":1618846801000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1617778650000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | 听说你做过内存优化 之 Bitmap内存占用到底在哪？","type":0,"userId":2,"visible":0,"zan":4},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>很多时候我们在自定义 View 的需要做动画的时候，我们可以依赖属性动画的回调周期性修改 自定义的属性值，然后调用 invalidate 方法实现。</p>\r\n<p>不过我还见过一个比较野的路子，它在 onDraw 里面直接修改属性，然后调用 invalidate() 方法。</p>\r\n<p>运行起来好像也没问题。</p>\r\n<p>那么问题来了：</p>\r\n<ol>\r\n<li>在 onDraw 里面调用 修改绘制相关属性（例如画圆，修改半径） invalidate() ，这种与属性动画的回调调用 invalidate()源码分析有什么区别？</li>\r\n<li>在 onDraw 里面调用  invalidate() 会存在什么问题？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":17629,"link":"https://www.wanandroid.com/wenda/show/17629","niceDate":"2021-04-13 00:31","niceShareDate":"2021-03-15 00:43","origin":"","prefix":"","projectLink":"","publishTime":1618245076000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1615740191000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | onDraw 里面调用 invalidate 做动画，有什么问题？","type":0,"userId":2,"visible":1,"zan":10},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>关于kotlin的可空与非可空：</p>\r\n<ol>\r\n<li>在写代码的时候感觉是两种类型，那么他们在字节码上是不同的类型吗？</li>\r\n<li>方法的调用分为a.b(),a?.b(),a!!.b()，他们有什么区别？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":17800,"link":"https://wanandroid.com/wenda/show/17800","niceDate":"2021-04-08 00:25","niceShareDate":"2021-03-30 21:12","origin":"","prefix":"","projectLink":"","publishTime":1617812734000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1617109936000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | Kotlin 空 与 非空类型的一些疑问","type":0,"userId":2,"visible":1,"zan":4},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>记得mipmap刚出来的时候，出现过很多言论，XXX类型图片放mipmap更好。</p>\r\n<p>如今的观念基本停留在，仅将app icon放置到mipmap，其他的图片都放到drawable。</p>\r\n<p>那么我们想想：</p>\r\n<ol>\r\n<li>google 为啥要搞个mipmap，或者mipmap有什么特殊的能力？</li>\r\n<li>从源码上能做出相关分析吗？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":17666,"link":"https://wanandroid.com/wenda/show/17666","niceDate":"2021-03-30 21:14","niceShareDate":"2021-03-17 21:12","origin":"","prefix":"","projectLink":"","publishTime":1617110047000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1615986729000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | mipmap vs drawable，傻傻分不清楚？","type":0,"userId":2,"visible":1,"zan":2},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>线程大概应该非常熟悉了，一般面试问得比较多的可能是线程池相关的一些原理。</p>\r\n<p>不过在一个更高阶的面试过程中，可能会问考察线程与内存之间的一些联系。</p>\r\n<p>大家有没有思考过，目前业内一些头部 app，例如微信，抖音等，他们在运行时大概有多少个线程存活?</p>\r\n<p>另外如果大家比较关注 OOM 的话，线程比较多可能会导致 OOM，当然线程多导致OOM的原因不止一种，先不深究，想考虑一个问题：每个线程会占据多少内存？</p>\r\n<p>总结下问题：</p>\r\n<ol>\r\n<li>如何查看一个 app 在运行时，大概有多少线程在运行？</li>\r\n<li>每个线程会占据多少内存空间？这个内存空间是固定大小的吗？还是一开始很少，随着你方法调用越来越多，而动态增加？</li>\r\n<li>如何拿到一个线程已经使用的栈空间？</li>\r\n<li>我们能够调整一个线程占据的内存大小吗？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":17356,"link":"https://wanandroid.com/wenda/show/17356","niceDate":"2021-03-18 23:20","niceShareDate":"2021-02-21 20:14","origin":"","prefix":"","projectLink":"","publishTime":1616080802000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1613909666000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | Android 中线程与内存之间相关问题","type":0,"userId":2,"visible":1,"zan":6},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>Wall Clock Time 是一段代码在某个线程上实际执行的时间，但由于cpu是分时间片给线程的，同时一段代码可能由于IO，还是类似调用wait等线程调用方法，阻塞不执行了，此时cpu会分配给其它线程，但这段代码其实并没有执行完，可能等某个条件触发后，轮到这段代码在的线程分到cpu后，继续执行，而执行这段代码cpu真正的用时是Thread Time。</p>\r\n<p>了解这个概念后：</p>\r\n<ol>\r\n<li>在 Android中如何获取某个方法执行过程中的 Thread time , wall Time?</li>\r\n<li>了解了这两个时间之后，在我们做性能优化的时候有什么指导意义？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":17564,"link":"https://www.wanandroid.com/wenda/show/17564","niceDate":"2021-03-15 00:43","niceShareDate":"2021-03-09 00:29","origin":"","prefix":"","projectLink":"","publishTime":1615740209000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1615220958000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | 在做性能优化的时候，常常看到 Thread(Cpu) Time，Wall clock Time?","type":0,"userId":2,"visible":0,"zan":0},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>今天的问题比较细了，探索一个大家可能没关注过的 API，View中包含一个方法：</p>\r\n<ul>\r\n<li>hasOverlappingRendering() </li>\r\n</ul>\r\n<p>问题很直接：</p>\r\n<ol>\r\n<li>这个方法有什么用？</li>\r\n<li>在什么情况下我们会考虑复写这个方法？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":17131,"link":"https://wanandroid.com/wenda/show/17131","niceDate":"2021-02-21 20:16","niceShareDate":"2021-01-31 17:09","origin":"","prefix":"","projectLink":"","publishTime":1613909777000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1612084141000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | 今天还探索一个 View 的方法 hasOverlappingRendering()","type":0,"userId":2,"visible":0,"zan":9},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>大家都知道一个Java类从class文件到可以运行时，需要经历：加载、链接、初始化等过程，然后才能被创建对象（实例化）。</p>\r\n<p>今天问一个有趣的问题，有可能一个对象的实例化调用，要早于其初始化吗？</p>\r\n<p>白话点说：这个类中的构造方法要早于静态代码块的执行？</p>\r\n<ol>\r\n<li>怎么写会出现这种情况？</li>\r\n<li>分析其执行流程</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":17083,"link":"https://www.wanandroid.com/wenda/show/17083","niceDate":"2021-02-21 20:15","niceShareDate":"2021-01-27 23:58","origin":"","prefix":"","projectLink":"","publishTime":1613909746000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1611763136000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | 类要先加载、链接、初始化才能实例化，有特殊Case吗？","type":0,"userId":2,"visible":1,"zan":10},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>在上一问，我们了解了 Java 中 lambda 表达式的原理：</p>\r\n<p><a href=\"https://www.wanandroid.com/wenda/show/16717\">每日一问 | Java中匿名内部类写成 lambda，真的只是语法糖吗？</a></p>\r\n<p>新的问题来了，看下面一段简单的 lambda 代码：</p>\r\n<pre><code>Runnable r = ()-&gt;{\r\n      Log.d(&quot;test&quot;,&quot;hello, lambda&quot;);\r\n};\r\nr.run();\r\n</code></pre><ol>\r\n<li>上述代码在 Android 中与 Java 中，运行时原理有何不同？</li>\r\n<li>与 Java 的 lambda 相比，哪个更像是语法糖？</li>\r\n<li>transformClassesWithDesugarForDebug 这个任务是做什么的？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":16771,"link":"https://www.wanandroid.com/wenda/show/16771","niceDate":"2021-01-31 17:20","niceShareDate":"2021-01-06 01:46","origin":"","prefix":"","projectLink":"","publishTime":1612084837000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1609868785000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | Java 中的 lambda 与 Android 中的 lambda 有什么不同？","type":0,"userId":2,"visible":1,"zan":13},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<blockquote>\r\n<p>本题目摘自一篇 Blog，大家先尝试思考下，过两天注明博客链接。</p>\r\n</blockquote>\r\n<p>众所周知，对于 RxJava我们可以使用：</p>\r\n<ol>\r\n<li>observeOn</li>\r\n<li>subscribeOn</li>\r\n</ol>\r\n<p>去做线程调度，我们看个例子：</p>\r\n<pre><code>fun fetchItem(): Single&lt;Item&gt; {\r\n    return download(itemId.getAndIncrement())\r\n        .flatMap(::unZip)\r\n        .flatMap(::checkMd5)\r\n}\r\n\r\nprivate fun download(id: Int): Single&lt;Item&gt; {\r\n    return Single.just(id)\r\n        //Simulate a long time operation\r\n        .delay(300, TimeUnit.MILLISECONDS, Schedulers.io())\r\n        .map { Item(it) }\r\n}\r\n\r\nprivate fun unZip(item: Item): Single&lt;Item&gt; {\r\n    return Single.just(item)\r\n        //Simulate a long time operation\r\n        .delay(300, TimeUnit.MILLISECONDS, Schedulers.io())\r\n}\r\n\r\nprivate fun checkMd5(item: Item): Single&lt;Item&gt; {\r\n    return Single.just(item)\r\n        //Simulate a long time operation\r\n        .delay(300, TimeUnit.MILLISECONDS, Schedulers.io())\r\n}\r\n</code></pre><p>上面模拟的操作中，download unZip checkMd5 都各自指定了调度器，导致 fetchItem 实际上发生了三次线程切换。 </p>\r\n<p>对于这种一系列的耗时操作来说，完全可以运行在同一条后台线程上。</p>\r\n<p>还有这个更刻意的例子：</p>\r\n<pre><code>Observable\r\n    .create(emitter -&gt; {\r\n        System.out.println(&quot;create on &quot; + Thread.currentThread().getName());\r\n        emitter.onNext(&quot;Test&quot;);\r\n        emitter.onComplete();\r\n    })\r\n    .subscribeOn(Schedulers.io())\r\n    .observeOn(Schedulers.io())\r\n    .map(s -&gt; {\r\n        System.out.println(&quot;map on &quot; + Thread.currentThread().getName());\r\n        return s;\r\n    })\r\n    .observeOn(Schedulers.io())\r\n    .flatMapCompletable(s -&gt; {\r\n        System.out.println(&quot;flatMap on &quot; + Thread.currentThread().getName());\r\n        return Completable.complete();\r\n    })\r\n    .subscribe();\r\n</code></pre><p>其实几次操作都交给了 io 线程调度，大概率运行在不同的线程上，实际上完全可以避免没有必要的 io 调度。</p>\r\n<p>问题来了：</p>\r\n<ol>\r\n<li>我们如何无感知的避免这类多余的线程调度，例如当前方法已经运行在 io 线程，那么就没有必要再去做 io 线程调度了；</li>\r\n<li>无感知指的是，不需要刻意去修改业务逻辑代码，毕竟上面第一个例子那个几个方法内部指定Schedulers.io()也是合理的。</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":16929,"link":"https://www.wanandroid.com/wenda/show/16929","niceDate":"2021-01-31 16:58","niceShareDate":"2021-01-16 21:29","origin":"","prefix":"","projectLink":"","publishTime":1612083486000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1610803767000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 如何检测和避免 RxJava 的重复线程切换？","type":0,"userId":2,"visible":1,"zan":2},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<ul>\r\n<li>Thread.setPrioriy()</li>\r\n<li>Process.setThreadPriority()</li>\r\n</ul>\r\n<p>请问：</p>\r\n<ol>\r\n<li>两种方式有何区别？更推荐用哪种方式？</li>\r\n<li>Android 中的线程与操作系统中的线程是如何对应的？通过优先级的设置如何影响到 CPU 的调度？</li>\r\n<li>方式 1 有什么问题吗或者说使用注意事项吗?（这道题有点偏，可以选答）</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":16848,"link":"https://www.wanandroid.com/wenda/show/16848","niceDate":"2021-01-27 23:59","niceShareDate":"2021-01-10 23:59","origin":"","prefix":"","projectLink":"","publishTime":1611763172000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1610294379000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | Android 中两种设置线程优先级的方式，有何区别？","type":0,"userId":2,"visible":0,"zan":7},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>我们来看两段代码：</p>\r\n<p>lambda 版本：</p>\r\n<pre><code>public class LambdaTest{\r\n\r\n    public static void main(String[] args) {\r\n        Runnable r = ()-&gt;{\r\n            System.out.println(&quot;hello, lambda&quot;);\r\n        };\r\n        r.run();\r\n    }\r\n\r\n}\r\n</code></pre><p>匿名内部类版本：</p>\r\n<pre><code>public class LambdaTest2{\r\n\r\n    public static void main(String[] args) {\r\n        Runnable r = new Runnable(){\r\n            @Override\r\n            public void run(){\r\n                System.out.println(&quot;hello, lambda&quot;);\r\n            }\r\n        };\r\n        r.run();\r\n    }\r\n\r\n}\r\n</code></pre><p>在日常开发过程中，其实我们感受不到两者有什么区别，反正更终运行的结果都是一致的。</p>\r\n<p>那么问题来了，这两个写法究竟有什么区别？仅仅在写法上的不同吗？</p>\r\n<blockquote>\r\n<p>注意：本题目针对 Java语言。</p>\r\n</blockquote>","descMd":"","envelopePic":"","fresh":false,"host":"","id":16717,"link":"https://www.wanandroid.com/wenda/show/16717","niceDate":"2021-01-11 00:00","niceShareDate":"2021-01-03 20:34","origin":"","prefix":"","projectLink":"","publishTime":1610294436000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1609677252000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | Java中匿名内部类写成 lambda，真的只是语法糖吗？","type":0,"userId":2,"visible":1,"zan":6},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>RxJava 算是现在 Android 中非常常用的一个开源库了，例如和 retrofit 配合完成网络请求封装。</p>\r\n<p>我大概看到以下几个关键词都能完成网络请求的发送：</p>\r\n<pre><code>@GET(&quot;query&quot;)\r\nObservable&lt;Article&gt; getArticle(...)\r\n</code></pre><p>其中Observable可以替换为Flowable,Single,Maybe，问题来了：</p>\r\n<ol>\r\n<li>这几个关键词有什么区别呢？分别在什么场景下比较适用？</li>\r\n<li>在网络请求和 retrofit 配合这块，哪个关键词更加合理呢？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":16634,"link":"https://www.wanandroid.com/wenda/show/16634","niceDate":"2021-01-03 20:34","niceShareDate":"2020-12-27 22:37","origin":"","prefix":"","projectLink":"","publishTime":1609677292000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1609079863000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | RxJava中Observable、Flowable、Single、Maybe 有何区别?","type":0,"userId":2,"visible":1,"zan":6},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>我们在写代码的时候，有时候很容易使用一个高版本的 API，如果不注意，可能会导致在一些低版本的设备崩溃。</p>\r\n<p>因此，我们可以选择引入 lint 在编译时进行检查。</p>\r\n<p>今天的问题是？</p>\r\n<ol>\r\n<li>应用：如何在打包时，强制开启 New API检查？</li>\r\n<li>原理：lint 怎么能知道某个 方法是哪个版本加入的？是有一个汇总的地方维护着这样的方法列表吗？</li>\r\n<li>原理：即使有这样的一个列表，lint是怎么扫描每一个方法调用的？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":15949,"link":"https://www.wanandroid.com/wenda/show/15949","niceDate":"2020-12-27 22:39","niceShareDate":"2020-11-02 00:14","origin":"","prefix":"","projectLink":"","publishTime":1609079946000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1604247264000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | Call requires API level 23 (current min is 14) 扫描出来的原理是？","type":0,"userId":2,"visible":1,"zan":10},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>大家在日常开发过程中，应该对invalidate，requestLayout简易的区别都理解，更近准备针对这两个问题问几问。</p>\r\n<p>先来invalidate吧。</p>\r\n<ol>\r\n<li>invalidate 的执行流程是什么样子的？</li>\r\n<li>如果连续调用多次invalidate执行流程是？</li>\r\n<li>invalidate重绘的区域是如何确定的，仅是当前View还是整个View树，还是某种计算方式？</li>\r\n<li>View除了invalidate()外，还有个方法叫做postInvalidateOnAnimation()，这两个方法有何区别？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":16190,"link":"https://wanandroid.com/wenda/show/16190","niceDate":"2020-12-27 22:38","niceShareDate":"2020-11-24 13:32","origin":"","prefix":"","projectLink":"","publishTime":1609079936000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1606195930000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | View invalidate() 相关的一些细节探究~","type":0,"userId":2,"visible":1,"zan":14},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>先来看一段代码：</p>\r\n<pre><code>final class A {\r\n    String selfIntroduction() {\r\n        return &quot;I&#39;m A&quot;;\r\n    }\r\n}\r\n\r\nclass B {\r\n    String selfIntroduction() {\r\n        return &quot;I&#39;m B&quot;;\r\n    }\r\n}\r\n\r\nclass Test {\r\n    public final A a = new A();\r\n}\r\n</code></pre>\r\n<p><strong>问题来了：</strong><br><strong>1. Test.<code>a</code>能被替换吗？</strong></p>\r\n<p><strong>2. Test.<code>a</code>能被替换成B对象的实例吗？</strong></p>\r\n<p><strong>3. 如果问题2成立，在成功替换对象之后，调用Test.a.<code>selfIntroduction</code>方法，返回的是什么？ 为什么会这样？</strong></p>\r\n<p>把代码稍微改一下：</p>\r\n<pre><code>final class A {\r\n    String selfIntroduction = &quot;I&#39;m A&quot;;\r\n\r\n    String selfIntroduction() {\r\n        return selfIntroduction;\r\n    }\r\n}\r\n\r\nclass B {\r\n    String selfIntroduction = &quot;I&#39;m B&quot;;\r\n\r\n    String selfIntroduction() {\r\n        return selfIntroduction;\r\n    }\r\n}\r\n\r\nclass Test {\r\n    public final A a = new A();\r\n}\r\n</code></pre>\r\n<p><strong>4. 在成功替换对象之后，调用Test.a.<code>selfIntroduction</code>方法，返回的是什么？ 为什么？</strong></p>\r\n<p>再把代码改一下：</p>\r\n<pre><code>final class A {\r\n    String selfIntroduction = &quot;I&#39;m A&quot;;\r\n\r\n    String selfIntroduction() {\r\n        return selfIntroduction;\r\n    }\r\n}\r\n\r\nclass B {\r\n    String selfIntroduction = &quot;I&#39;m B&quot;;\r\n}\r\n\r\nclass Test {\r\n    public final A a = new A();\r\n}\r\n</code></pre>\r\n<p><strong>5. 在成功替换对象之后，调用Test.a.<code>selfIntroduction</code>方法，会报错吗？ 为什么？</strong></p>\r\n<p>继续改一下代码：</p>\r\n<pre><code>final class A {\r\n    String selfIntroduction = &quot;I&#39;m A&quot;;\r\n\r\n    String selfIntroduction() {\r\n        return selfIntroduction;\r\n    }\r\n}\r\n\r\nclass B {\r\n    String fakeSelfIntroduction = &quot;I&#39;m fake B&quot;;\r\n    String selfIntroduction = &quot;I&#39;m B&quot;;\r\n}\r\n\r\nclass Test {\r\n    public final A a = new A();\r\n}\r\n</code></pre>\r\n<p><strong>6. 在成功替换对象之后，调用Test.a.<code>selfIntroduction</code>方法，会报错吗？ 如果不会报错，返回值是什么？ 为什么会这样？</strong></p>\r\n<p>再改一次代码吧：</p>\r\n<pre><code>final class A {\r\n    String selfIntroduction = &quot;I&#39;m A&quot;;\r\n\r\n    String selfIntroduction() {\r\n        return selfIntroduction;\r\n    }\r\n}\r\n\r\nclass B {\r\n    int i = 1;\r\n    String fakeSelfIntroduction = &quot;I&#39;m Fake B&quot;;\r\n    String selfIntroduction = &quot;I&#39;m B&quot;;\r\n}\r\n\r\nclass Test {\r\n    public final A a = new A();\r\n}\r\n</code></pre>\r\n<p><strong>7. 在成功替换对象之后，调用Test.a.<code>selfIntroduction</code>方法，会报错吗？ 为什么？</strong></p>","descMd":"","envelopePic":"","fresh":false,"host":"","id":15797,"link":"https://www.wanandroid.com/wenda/show/15797","niceDate":"2020-11-02 00:16","niceShareDate":"2020-10-19 23:57","origin":"","prefix":"","projectLink":"","publishTime":1604247367000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1603123027000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | 当Unsafe遇上final，超神奇的事情发生了？","type":0,"userId":2,"visible":1,"zan":8}],"offset":0,"over":false,"pageCount":7,"size":23,"total":140}
/// errorCode : 0
/// errorMsg : ""

class QuestionDTO {
  Data _data;
  int _errorCode;
  String _errorMsg;

  Data get data => _data;
  int get errorCode => _errorCode;
  String get errorMsg => _errorMsg;

  QuestionDTO({
      Data data, 
      int errorCode, 
      String errorMsg}){
    _data = data;
    _errorCode = errorCode;
    _errorMsg = errorMsg;
}

  QuestionDTO.fromJson(dynamic json) {
    _data = json["data"] != null ? Data.fromJson(json["data"]) : null;
    _errorCode = json["errorCode"];
    _errorMsg = json["errorMsg"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_data != null) {
      map["data"] = _data.toJson();
    }
    map["errorCode"] = _errorCode;
    map["errorMsg"] = _errorMsg;
    return map;
  }

}

/// curPage : 1
/// datas : [{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>更近聊到一种编译优化的方案，号称秒级别：</p>\r\n<ol>\r\n<li>每次拿到修改 java 文件，编译为 class；</li>\r\n<li>将 1 中的 class 转成 dex；</li>\r\n<li>push 到 sdcard，然后重启生效；</li>\r\n</ol>\r\n<p>问题来了：</p>\r\n<ol>\r\n<li>第一步中将特定的 Java 文件转成 class 如何操作？如何极快的操作？</li>\r\n<li>如果是 kotlin 文件呢？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":18453,"link":"https://www.wanandroid.com/wenda/show/18453","niceDate":"2021-06-30 18:16","niceShareDate":"2021-05-28 00:28","origin":"","prefix":"","projectLink":"","publishTime":1625048217000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1622132918000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | 极致的编译优化如何实现？ [更新]","type":1,"userId":2,"visible":1,"zan":11},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>更近一直在补一些 C/C++的知识，导致 Android 相关知识看的少了，导致每日一问憋半天憋不出来。</p>\r\n<p>还好，我又更新了...</p>\r\n<p>之前公众号推文的时候，推送到混淆的时候，经常会说到「脱糖」，也有同学在留言区问什么是脱糖呀？</p>\r\n<p>今天的问题就是为了带大家彻底搞清楚什么是脱糖：</p>\r\n<ol>\r\n<li>脱糖产生的原因是什么？</li>\r\n<li>脱糖在 D8 产生后发生了什么变化？</li>\r\n<li>脱糖我们需要关注吗？在我们做什么事情的时候可能会影响到呢？</li>\r\n</ol>\r\n<p>求解答~</p>","descMd":"","envelopePic":"","fresh":false,"host":"","id":18615,"link":"https://www.wanandroid.com/wenda/show/18615","niceDate":"2021-06-14 22:57","niceShareDate":"2021-06-14 22:56","origin":"","prefix":"","projectLink":"","publishTime":1623682625000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1623682607000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | 我们经常说到的 Android 脱糖指的是什么？","type":1,"userId":2,"visible":1,"zan":8},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>在我们的印象里，如果构造一个 Dialog 传入一个非 Activiy 的 context，则可能会出现 bad token exception。</p>\r\n<p>今天我们就来彻底搞清楚这一块，问题来了：</p>\r\n<ol>\r\n<li>为什么传入一个非 Activity 的 context 会出现错误？</li>\r\n<li>传入的 context 一定要是 Activity 吗？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":18281,"link":"https://www.wanandroid.com/wenda/show/18281","niceDate":"2021-05-13 21:21","niceShareDate":"2021-05-13 00:20","origin":"","prefix":"","projectLink":"","publishTime":1620912076000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1620836414000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | Dialog 的构造方法的 context 必须传入 Activity吗？","type":1,"userId":2,"visible":1,"zan":15},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>之前看文章，经常看到一些分析 Dialog、PopupWindow的文章，有些文章分析如下：</p>\r\n<p><strong>Dialog有自己独立的Window，而PopupWindow没有，所以PopupWindow可以称之为子窗口，而 Dialog不是。</strong></p>\r\n<p>问题来了：</p>\r\n<ol>\r\n<li>这种说法合理吗？</li>\r\n<li>在Android中，有没有子窗口的概念呢？如果有到底应该以什么为标准呢？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":18192,"link":"https://wanandroid.com/wenda/show/18192","niceDate":"2021-05-28 00:29","niceShareDate":"2021-05-06 00:15","origin":"","prefix":"","projectLink":"","publishTime":1622132956000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1620231346000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | Android中的子窗口到底指的是什么？","type":0,"userId":2,"visible":1,"zan":10},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>对于 Intent 大家肯定都不陌生，今天我们聊一聊它的一个近亲：<strong>PendingIntent</strong></p>\r\n<p>官方对其描述为：</p>\r\n<p>A description of an Intent and target action to perform with it. </p>\r\n<p>那么问题来了：</p>\r\n<ol>\r\n<li>PendingIntent 仅仅是对 Intent 的一个封装吗？</li>\r\n<li>如果1 不是，那么为什么 PendingIntent与 Intent 有何不同，它的定位是什么样的呢？</li>\r\n<li>对于 2 的回答，如果从源码侧佐证？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":18072,"link":"https://www.wanandroid.com/wenda/show/18072","niceDate":"2021-05-28 00:29","niceShareDate":"2021-04-24 22:58","origin":"","prefix":"","projectLink":"","publishTime":1622132946000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1619276317000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | 已经有了 Intent，那为啥还要 PendingIntent?","type":0,"userId":2,"visible":1,"zan":7},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>正常大家都清楚，当我们view发生一些必须要重新测量才能生效的属性的时候，我们会尝试触发view.requestLayout从而让整个view树发生重新测量与布局。</p>\r\n<p>今天的问题是:</p>\r\n<ol>\r\n<li>假设requestLayout的调用发生在灭屏/切home之后会立即触发吗？</li>\r\n<li>如果1不会立即触发，当我们回到应用，会自动重新触发一次requestLayout吗？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":17956,"link":"https://wanandroid.com/wenda/show/17956","niceDate":"2021-05-06 00:16","niceShareDate":"2021-04-15 14:40","origin":"","prefix":"","projectLink":"","publishTime":1620231413000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1618468829000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | view.requestLayout如果在灭屏或者切home之后调用会怎么样？","type":0,"userId":2,"visible":1,"zan":11},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>这个问题很明确了，想必大家都能了解，我们经常在自定义 View 的时候，会发现 onMeasure 执行了多次？</p>\r\n<p>那么问题来了：</p>\r\n<p><strong>onMeasure 执行多次的原因有哪些呢？</strong></p>","descMd":"","envelopePic":"","fresh":false,"host":"","id":17920,"link":"https://www.wanandroid.com/wenda/show/17920","niceDate":"2021-05-06 00:16","niceShareDate":"2021-04-13 00:30","origin":"","prefix":"","projectLink":"","publishTime":1620231402000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1618245050000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问  | onMeasure()多次执行原因？","type":0,"userId":2,"visible":1,"zan":7},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>大家应该都清楚app上内存是非常宝贵的资源，而Bitmap几乎是app里面占据内存更大的一个部分。</p>\r\n<p>不少同学也清楚，Bitmap占据的内存计算为：</p>\r\n<pre><code>宽 * 高 * 单个像素所需字节数\r\n</code></pre><p>今天有个很常规，但是你可能没有太关注的问题：</p>\r\n<ol>\r\n<li>Bitmap所占用的内存，是app的哪部分的内存？或者说app运行时可使用Java内存为512M，Bitmap占据的内存可以超过512M吗?</li>\r\n<li>问题1中所描述的，需要区分Android版本吗（5.0以下不考虑）？</li>\r\n<li>问题1，问题2如果都搞清楚，经常在一些blog看到这样的代码：设置fresco图片缓存空间为Java内存的白分比，例如1/4，合适吗？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":17874,"link":"https://wanandroid.com/wenda/show/17874","niceDate":"2021-04-19 23:40","niceShareDate":"2021-04-07 14:57","origin":"","prefix":"","projectLink":"","publishTime":1618846801000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1617778650000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | 听说你做过内存优化 之 Bitmap内存占用到底在哪？","type":0,"userId":2,"visible":0,"zan":4},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>很多时候我们在自定义 View 的需要做动画的时候，我们可以依赖属性动画的回调周期性修改 自定义的属性值，然后调用 invalidate 方法实现。</p>\r\n<p>不过我还见过一个比较野的路子，它在 onDraw 里面直接修改属性，然后调用 invalidate() 方法。</p>\r\n<p>运行起来好像也没问题。</p>\r\n<p>那么问题来了：</p>\r\n<ol>\r\n<li>在 onDraw 里面调用 修改绘制相关属性（例如画圆，修改半径） invalidate() ，这种与属性动画的回调调用 invalidate()源码分析有什么区别？</li>\r\n<li>在 onDraw 里面调用  invalidate() 会存在什么问题？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":17629,"link":"https://www.wanandroid.com/wenda/show/17629","niceDate":"2021-04-13 00:31","niceShareDate":"2021-03-15 00:43","origin":"","prefix":"","projectLink":"","publishTime":1618245076000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1615740191000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | onDraw 里面调用 invalidate 做动画，有什么问题？","type":0,"userId":2,"visible":1,"zan":10},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>关于kotlin的可空与非可空：</p>\r\n<ol>\r\n<li>在写代码的时候感觉是两种类型，那么他们在字节码上是不同的类型吗？</li>\r\n<li>方法的调用分为a.b(),a?.b(),a!!.b()，他们有什么区别？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":17800,"link":"https://wanandroid.com/wenda/show/17800","niceDate":"2021-04-08 00:25","niceShareDate":"2021-03-30 21:12","origin":"","prefix":"","projectLink":"","publishTime":1617812734000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1617109936000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | Kotlin 空 与 非空类型的一些疑问","type":0,"userId":2,"visible":1,"zan":4},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>记得mipmap刚出来的时候，出现过很多言论，XXX类型图片放mipmap更好。</p>\r\n<p>如今的观念基本停留在，仅将app icon放置到mipmap，其他的图片都放到drawable。</p>\r\n<p>那么我们想想：</p>\r\n<ol>\r\n<li>google 为啥要搞个mipmap，或者mipmap有什么特殊的能力？</li>\r\n<li>从源码上能做出相关分析吗？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":17666,"link":"https://wanandroid.com/wenda/show/17666","niceDate":"2021-03-30 21:14","niceShareDate":"2021-03-17 21:12","origin":"","prefix":"","projectLink":"","publishTime":1617110047000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1615986729000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | mipmap vs drawable，傻傻分不清楚？","type":0,"userId":2,"visible":1,"zan":2},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>线程大概应该非常熟悉了，一般面试问得比较多的可能是线程池相关的一些原理。</p>\r\n<p>不过在一个更高阶的面试过程中，可能会问考察线程与内存之间的一些联系。</p>\r\n<p>大家有没有思考过，目前业内一些头部 app，例如微信，抖音等，他们在运行时大概有多少个线程存活?</p>\r\n<p>另外如果大家比较关注 OOM 的话，线程比较多可能会导致 OOM，当然线程多导致OOM的原因不止一种，先不深究，想考虑一个问题：每个线程会占据多少内存？</p>\r\n<p>总结下问题：</p>\r\n<ol>\r\n<li>如何查看一个 app 在运行时，大概有多少线程在运行？</li>\r\n<li>每个线程会占据多少内存空间？这个内存空间是固定大小的吗？还是一开始很少，随着你方法调用越来越多，而动态增加？</li>\r\n<li>如何拿到一个线程已经使用的栈空间？</li>\r\n<li>我们能够调整一个线程占据的内存大小吗？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":17356,"link":"https://wanandroid.com/wenda/show/17356","niceDate":"2021-03-18 23:20","niceShareDate":"2021-02-21 20:14","origin":"","prefix":"","projectLink":"","publishTime":1616080802000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1613909666000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | Android 中线程与内存之间相关问题","type":0,"userId":2,"visible":1,"zan":6},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>Wall Clock Time 是一段代码在某个线程上实际执行的时间，但由于cpu是分时间片给线程的，同时一段代码可能由于IO，还是类似调用wait等线程调用方法，阻塞不执行了，此时cpu会分配给其它线程，但这段代码其实并没有执行完，可能等某个条件触发后，轮到这段代码在的线程分到cpu后，继续执行，而执行这段代码cpu真正的用时是Thread Time。</p>\r\n<p>了解这个概念后：</p>\r\n<ol>\r\n<li>在 Android中如何获取某个方法执行过程中的 Thread time , wall Time?</li>\r\n<li>了解了这两个时间之后，在我们做性能优化的时候有什么指导意义？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":17564,"link":"https://www.wanandroid.com/wenda/show/17564","niceDate":"2021-03-15 00:43","niceShareDate":"2021-03-09 00:29","origin":"","prefix":"","projectLink":"","publishTime":1615740209000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1615220958000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | 在做性能优化的时候，常常看到 Thread(Cpu) Time，Wall clock Time?","type":0,"userId":2,"visible":0,"zan":0},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>今天的问题比较细了，探索一个大家可能没关注过的 API，View中包含一个方法：</p>\r\n<ul>\r\n<li>hasOverlappingRendering() </li>\r\n</ul>\r\n<p>问题很直接：</p>\r\n<ol>\r\n<li>这个方法有什么用？</li>\r\n<li>在什么情况下我们会考虑复写这个方法？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":17131,"link":"https://wanandroid.com/wenda/show/17131","niceDate":"2021-02-21 20:16","niceShareDate":"2021-01-31 17:09","origin":"","prefix":"","projectLink":"","publishTime":1613909777000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1612084141000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | 今天还探索一个 View 的方法 hasOverlappingRendering()","type":0,"userId":2,"visible":0,"zan":9},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>大家都知道一个Java类从class文件到可以运行时，需要经历：加载、链接、初始化等过程，然后才能被创建对象（实例化）。</p>\r\n<p>今天问一个有趣的问题，有可能一个对象的实例化调用，要早于其初始化吗？</p>\r\n<p>白话点说：这个类中的构造方法要早于静态代码块的执行？</p>\r\n<ol>\r\n<li>怎么写会出现这种情况？</li>\r\n<li>分析其执行流程</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":17083,"link":"https://www.wanandroid.com/wenda/show/17083","niceDate":"2021-02-21 20:15","niceShareDate":"2021-01-27 23:58","origin":"","prefix":"","projectLink":"","publishTime":1613909746000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1611763136000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | 类要先加载、链接、初始化才能实例化，有特殊Case吗？","type":0,"userId":2,"visible":1,"zan":10},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>在上一问，我们了解了 Java 中 lambda 表达式的原理：</p>\r\n<p><a href=\"https://www.wanandroid.com/wenda/show/16717\">每日一问 | Java中匿名内部类写成 lambda，真的只是语法糖吗？</a></p>\r\n<p>新的问题来了，看下面一段简单的 lambda 代码：</p>\r\n<pre><code>Runnable r = ()-&gt;{\r\n      Log.d(&quot;test&quot;,&quot;hello, lambda&quot;);\r\n};\r\nr.run();\r\n</code></pre><ol>\r\n<li>上述代码在 Android 中与 Java 中，运行时原理有何不同？</li>\r\n<li>与 Java 的 lambda 相比，哪个更像是语法糖？</li>\r\n<li>transformClassesWithDesugarForDebug 这个任务是做什么的？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":16771,"link":"https://www.wanandroid.com/wenda/show/16771","niceDate":"2021-01-31 17:20","niceShareDate":"2021-01-06 01:46","origin":"","prefix":"","projectLink":"","publishTime":1612084837000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1609868785000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | Java 中的 lambda 与 Android 中的 lambda 有什么不同？","type":0,"userId":2,"visible":1,"zan":13},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<blockquote>\r\n<p>本题目摘自一篇 Blog，大家先尝试思考下，过两天注明博客链接。</p>\r\n</blockquote>\r\n<p>众所周知，对于 RxJava我们可以使用：</p>\r\n<ol>\r\n<li>observeOn</li>\r\n<li>subscribeOn</li>\r\n</ol>\r\n<p>去做线程调度，我们看个例子：</p>\r\n<pre><code>fun fetchItem(): Single&lt;Item&gt; {\r\n    return download(itemId.getAndIncrement())\r\n        .flatMap(::unZip)\r\n        .flatMap(::checkMd5)\r\n}\r\n\r\nprivate fun download(id: Int): Single&lt;Item&gt; {\r\n    return Single.just(id)\r\n        //Simulate a long time operation\r\n        .delay(300, TimeUnit.MILLISECONDS, Schedulers.io())\r\n        .map { Item(it) }\r\n}\r\n\r\nprivate fun unZip(item: Item): Single&lt;Item&gt; {\r\n    return Single.just(item)\r\n        //Simulate a long time operation\r\n        .delay(300, TimeUnit.MILLISECONDS, Schedulers.io())\r\n}\r\n\r\nprivate fun checkMd5(item: Item): Single&lt;Item&gt; {\r\n    return Single.just(item)\r\n        //Simulate a long time operation\r\n        .delay(300, TimeUnit.MILLISECONDS, Schedulers.io())\r\n}\r\n</code></pre><p>上面模拟的操作中，download unZip checkMd5 都各自指定了调度器，导致 fetchItem 实际上发生了三次线程切换。 </p>\r\n<p>对于这种一系列的耗时操作来说，完全可以运行在同一条后台线程上。</p>\r\n<p>还有这个更刻意的例子：</p>\r\n<pre><code>Observable\r\n    .create(emitter -&gt; {\r\n        System.out.println(&quot;create on &quot; + Thread.currentThread().getName());\r\n        emitter.onNext(&quot;Test&quot;);\r\n        emitter.onComplete();\r\n    })\r\n    .subscribeOn(Schedulers.io())\r\n    .observeOn(Schedulers.io())\r\n    .map(s -&gt; {\r\n        System.out.println(&quot;map on &quot; + Thread.currentThread().getName());\r\n        return s;\r\n    })\r\n    .observeOn(Schedulers.io())\r\n    .flatMapCompletable(s -&gt; {\r\n        System.out.println(&quot;flatMap on &quot; + Thread.currentThread().getName());\r\n        return Completable.complete();\r\n    })\r\n    .subscribe();\r\n</code></pre><p>其实几次操作都交给了 io 线程调度，大概率运行在不同的线程上，实际上完全可以避免没有必要的 io 调度。</p>\r\n<p>问题来了：</p>\r\n<ol>\r\n<li>我们如何无感知的避免这类多余的线程调度，例如当前方法已经运行在 io 线程，那么就没有必要再去做 io 线程调度了；</li>\r\n<li>无感知指的是，不需要刻意去修改业务逻辑代码，毕竟上面第一个例子那个几个方法内部指定Schedulers.io()也是合理的。</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":16929,"link":"https://www.wanandroid.com/wenda/show/16929","niceDate":"2021-01-31 16:58","niceShareDate":"2021-01-16 21:29","origin":"","prefix":"","projectLink":"","publishTime":1612083486000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1610803767000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 如何检测和避免 RxJava 的重复线程切换？","type":0,"userId":2,"visible":1,"zan":2},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<ul>\r\n<li>Thread.setPrioriy()</li>\r\n<li>Process.setThreadPriority()</li>\r\n</ul>\r\n<p>请问：</p>\r\n<ol>\r\n<li>两种方式有何区别？更推荐用哪种方式？</li>\r\n<li>Android 中的线程与操作系统中的线程是如何对应的？通过优先级的设置如何影响到 CPU 的调度？</li>\r\n<li>方式 1 有什么问题吗或者说使用注意事项吗?（这道题有点偏，可以选答）</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":16848,"link":"https://www.wanandroid.com/wenda/show/16848","niceDate":"2021-01-27 23:59","niceShareDate":"2021-01-10 23:59","origin":"","prefix":"","projectLink":"","publishTime":1611763172000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1610294379000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | Android 中两种设置线程优先级的方式，有何区别？","type":0,"userId":2,"visible":0,"zan":7},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>我们来看两段代码：</p>\r\n<p>lambda 版本：</p>\r\n<pre><code>public class LambdaTest{\r\n\r\n    public static void main(String[] args) {\r\n        Runnable r = ()-&gt;{\r\n            System.out.println(&quot;hello, lambda&quot;);\r\n        };\r\n        r.run();\r\n    }\r\n\r\n}\r\n</code></pre><p>匿名内部类版本：</p>\r\n<pre><code>public class LambdaTest2{\r\n\r\n    public static void main(String[] args) {\r\n        Runnable r = new Runnable(){\r\n            @Override\r\n            public void run(){\r\n                System.out.println(&quot;hello, lambda&quot;);\r\n            }\r\n        };\r\n        r.run();\r\n    }\r\n\r\n}\r\n</code></pre><p>在日常开发过程中，其实我们感受不到两者有什么区别，反正更终运行的结果都是一致的。</p>\r\n<p>那么问题来了，这两个写法究竟有什么区别？仅仅在写法上的不同吗？</p>\r\n<blockquote>\r\n<p>注意：本题目针对 Java语言。</p>\r\n</blockquote>","descMd":"","envelopePic":"","fresh":false,"host":"","id":16717,"link":"https://www.wanandroid.com/wenda/show/16717","niceDate":"2021-01-11 00:00","niceShareDate":"2021-01-03 20:34","origin":"","prefix":"","projectLink":"","publishTime":1610294436000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1609677252000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | Java中匿名内部类写成 lambda，真的只是语法糖吗？","type":0,"userId":2,"visible":1,"zan":6},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>RxJava 算是现在 Android 中非常常用的一个开源库了，例如和 retrofit 配合完成网络请求封装。</p>\r\n<p>我大概看到以下几个关键词都能完成网络请求的发送：</p>\r\n<pre><code>@GET(&quot;query&quot;)\r\nObservable&lt;Article&gt; getArticle(...)\r\n</code></pre><p>其中Observable可以替换为Flowable,Single,Maybe，问题来了：</p>\r\n<ol>\r\n<li>这几个关键词有什么区别呢？分别在什么场景下比较适用？</li>\r\n<li>在网络请求和 retrofit 配合这块，哪个关键词更加合理呢？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":16634,"link":"https://www.wanandroid.com/wenda/show/16634","niceDate":"2021-01-03 20:34","niceShareDate":"2020-12-27 22:37","origin":"","prefix":"","projectLink":"","publishTime":1609677292000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1609079863000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | RxJava中Observable、Flowable、Single、Maybe 有何区别?","type":0,"userId":2,"visible":1,"zan":6},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>我们在写代码的时候，有时候很容易使用一个高版本的 API，如果不注意，可能会导致在一些低版本的设备崩溃。</p>\r\n<p>因此，我们可以选择引入 lint 在编译时进行检查。</p>\r\n<p>今天的问题是？</p>\r\n<ol>\r\n<li>应用：如何在打包时，强制开启 New API检查？</li>\r\n<li>原理：lint 怎么能知道某个 方法是哪个版本加入的？是有一个汇总的地方维护着这样的方法列表吗？</li>\r\n<li>原理：即使有这样的一个列表，lint是怎么扫描每一个方法调用的？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":15949,"link":"https://www.wanandroid.com/wenda/show/15949","niceDate":"2020-12-27 22:39","niceShareDate":"2020-11-02 00:14","origin":"","prefix":"","projectLink":"","publishTime":1609079946000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1604247264000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | Call requires API level 23 (current min is 14) 扫描出来的原理是？","type":0,"userId":2,"visible":1,"zan":10},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>大家在日常开发过程中，应该对invalidate，requestLayout简易的区别都理解，更近准备针对这两个问题问几问。</p>\r\n<p>先来invalidate吧。</p>\r\n<ol>\r\n<li>invalidate 的执行流程是什么样子的？</li>\r\n<li>如果连续调用多次invalidate执行流程是？</li>\r\n<li>invalidate重绘的区域是如何确定的，仅是当前View还是整个View树，还是某种计算方式？</li>\r\n<li>View除了invalidate()外，还有个方法叫做postInvalidateOnAnimation()，这两个方法有何区别？</li>\r\n</ol>","descMd":"","envelopePic":"","fresh":false,"host":"","id":16190,"link":"https://wanandroid.com/wenda/show/16190","niceDate":"2020-12-27 22:38","niceShareDate":"2020-11-24 13:32","origin":"","prefix":"","projectLink":"","publishTime":1609079936000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1606195930000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | View invalidate() 相关的一些细节探究~","type":0,"userId":2,"visible":1,"zan":14},{"apkLink":"","audit":1,"author":"xiaoyang","canEdit":false,"chapterId":440,"chapterName":"官方","collect":false,"courseId":13,"desc":"<p>先来看一段代码：</p>\r\n<pre><code>final class A {\r\n    String selfIntroduction() {\r\n        return &quot;I&#39;m A&quot;;\r\n    }\r\n}\r\n\r\nclass B {\r\n    String selfIntroduction() {\r\n        return &quot;I&#39;m B&quot;;\r\n    }\r\n}\r\n\r\nclass Test {\r\n    public final A a = new A();\r\n}\r\n</code></pre>\r\n<p><strong>问题来了：</strong><br><strong>1. Test.<code>a</code>能被替换吗？</strong></p>\r\n<p><strong>2. Test.<code>a</code>能被替换成B对象的实例吗？</strong></p>\r\n<p><strong>3. 如果问题2成立，在成功替换对象之后，调用Test.a.<code>selfIntroduction</code>方法，返回的是什么？ 为什么会这样？</strong></p>\r\n<p>把代码稍微改一下：</p>\r\n<pre><code>final class A {\r\n    String selfIntroduction = &quot;I&#39;m A&quot;;\r\n\r\n    String selfIntroduction() {\r\n        return selfIntroduction;\r\n    }\r\n}\r\n\r\nclass B {\r\n    String selfIntroduction = &quot;I&#39;m B&quot;;\r\n\r\n    String selfIntroduction() {\r\n        return selfIntroduction;\r\n    }\r\n}\r\n\r\nclass Test {\r\n    public final A a = new A();\r\n}\r\n</code></pre>\r\n<p><strong>4. 在成功替换对象之后，调用Test.a.<code>selfIntroduction</code>方法，返回的是什么？ 为什么？</strong></p>\r\n<p>再把代码改一下：</p>\r\n<pre><code>final class A {\r\n    String selfIntroduction = &quot;I&#39;m A&quot;;\r\n\r\n    String selfIntroduction() {\r\n        return selfIntroduction;\r\n    }\r\n}\r\n\r\nclass B {\r\n    String selfIntroduction = &quot;I&#39;m B&quot;;\r\n}\r\n\r\nclass Test {\r\n    public final A a = new A();\r\n}\r\n</code></pre>\r\n<p><strong>5. 在成功替换对象之后，调用Test.a.<code>selfIntroduction</code>方法，会报错吗？ 为什么？</strong></p>\r\n<p>继续改一下代码：</p>\r\n<pre><code>final class A {\r\n    String selfIntroduction = &quot;I&#39;m A&quot;;\r\n\r\n    String selfIntroduction() {\r\n        return selfIntroduction;\r\n    }\r\n}\r\n\r\nclass B {\r\n    String fakeSelfIntroduction = &quot;I&#39;m fake B&quot;;\r\n    String selfIntroduction = &quot;I&#39;m B&quot;;\r\n}\r\n\r\nclass Test {\r\n    public final A a = new A();\r\n}\r\n</code></pre>\r\n<p><strong>6. 在成功替换对象之后，调用Test.a.<code>selfIntroduction</code>方法，会报错吗？ 如果不会报错，返回值是什么？ 为什么会这样？</strong></p>\r\n<p>再改一次代码吧：</p>\r\n<pre><code>final class A {\r\n    String selfIntroduction = &quot;I&#39;m A&quot;;\r\n\r\n    String selfIntroduction() {\r\n        return selfIntroduction;\r\n    }\r\n}\r\n\r\nclass B {\r\n    int i = 1;\r\n    String fakeSelfIntroduction = &quot;I&#39;m Fake B&quot;;\r\n    String selfIntroduction = &quot;I&#39;m B&quot;;\r\n}\r\n\r\nclass Test {\r\n    public final A a = new A();\r\n}\r\n</code></pre>\r\n<p><strong>7. 在成功替换对象之后，调用Test.a.<code>selfIntroduction</code>方法，会报错吗？ 为什么？</strong></p>","descMd":"","envelopePic":"","fresh":false,"host":"","id":15797,"link":"https://www.wanandroid.com/wenda/show/15797","niceDate":"2020-11-02 00:16","niceShareDate":"2020-10-19 23:57","origin":"","prefix":"","projectLink":"","publishTime":1604247367000,"realSuperChapterId":439,"selfVisible":0,"shareDate":1603123027000,"shareUser":"","superChapterId":440,"superChapterName":"问答","tags":[{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}],"title":"每日一问 | 当Unsafe遇上final，超神奇的事情发生了？","type":0,"userId":2,"visible":1,"zan":8}]
/// offset : 0
/// over : false
/// pageCount : 7
/// size : 23
/// total : 140

class Data {
  int _curPage;
  List<Datas> _datas;
  int _offset;
  bool _over;
  int _pageCount;
  int _size;
  int _total;

  int get curPage => _curPage;
  List<Datas> get datas => _datas;
  int get offset => _offset;
  bool get over => _over;
  int get pageCount => _pageCount;
  int get size => _size;
  int get total => _total;

  Data({
      int curPage, 
      List<Datas> datas, 
      int offset, 
      bool over, 
      int pageCount, 
      int size, 
      int total}){
    _curPage = curPage;
    _datas = datas;
    _offset = offset;
    _over = over;
    _pageCount = pageCount;
    _size = size;
    _total = total;
}

  Data.fromJson(dynamic json) {
    _curPage = json["curPage"];
    if (json["datas"] != null) {
      _datas = [];
      json["datas"].forEach((v) {
        _datas.add(Datas.fromJson(v));
      });
    }
    _offset = json["offset"];
    _over = json["over"];
    _pageCount = json["pageCount"];
    _size = json["size"];
    _total = json["total"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["curPage"] = _curPage;
    if (_datas != null) {
      map["datas"] = _datas.map((v) => v.toJson()).toList();
    }
    map["offset"] = _offset;
    map["over"] = _over;
    map["pageCount"] = _pageCount;
    map["size"] = _size;
    map["total"] = _total;
    return map;
  }

}

/// apkLink : ""
/// audit : 1
/// author : "xiaoyang"
/// canEdit : false
/// chapterId : 440
/// chapterName : "官方"
/// collect : false
/// courseId : 13
/// desc : "<p>更近聊到一种编译优化的方案，号称秒级别：</p>\r\n<ol>\r\n<li>每次拿到修改 java 文件，编译为 class；</li>\r\n<li>将 1 中的 class 转成 dex；</li>\r\n<li>push 到 sdcard，然后重启生效；</li>\r\n</ol>\r\n<p>问题来了：</p>\r\n<ol>\r\n<li>第一步中将特定的 Java 文件转成 class 如何操作？如何极快的操作？</li>\r\n<li>如果是 kotlin 文件呢？</li>\r\n</ol>"
/// descMd : ""
/// envelopePic : ""
/// fresh : false
/// host : ""
/// id : 18453
/// link : "https://www.wanandroid.com/wenda/show/18453"
/// niceDate : "2021-06-30 18:16"
/// niceShareDate : "2021-05-28 00:28"
/// origin : ""
/// prefix : ""
/// projectLink : ""
/// publishTime : 1625048217000
/// realSuperChapterId : 439
/// selfVisible : 0
/// shareDate : 1622132918000
/// shareUser : ""
/// superChapterId : 440
/// superChapterName : "问答"
/// tags : [{"name":"本站发布","url":"/article/list/0?cid=440"},{"name":"问答","url":"/wenda"}]
/// title : "每日一问 | 极致的编译优化如何实现？ [更新]"
/// type : 1
/// userId : 2
/// visible : 1
/// zan : 11

class Datas {
  String _apkLink;
  int _audit;
  String _author;
  bool _canEdit;
  int _chapterId;
  String _chapterName;
  bool _collect;
  int _courseId;
  String _desc;
  String _descMd;
  String _envelopePic;
  bool _fresh;
  String _host;
  int _id;
  String _link;
  String _niceDate;
  String _niceShareDate;
  String _origin;
  String _prefix;
  String _projectLink;
  int _publishTime;
  int _realSuperChapterId;
  int _selfVisible;
  int _shareDate;
  String _shareUser;
  int _superChapterId;
  String _superChapterName;
  List<Tags> _tags;
  String _title;
  int _type;
  int _userId;
  int _visible;
  int _zan;

  String get apkLink => _apkLink;
  int get audit => _audit;
  String get author => _author;
  bool get canEdit => _canEdit;
  int get chapterId => _chapterId;
  String get chapterName => _chapterName;
  bool get collect => _collect;
  int get courseId => _courseId;
  String get desc => _desc;
  String get descMd => _descMd;
  String get envelopePic => _envelopePic;
  bool get fresh => _fresh;
  String get host => _host;
  int get id => _id;
  String get link => _link;
  String get niceDate => _niceDate;
  String get niceShareDate => _niceShareDate;
  String get origin => _origin;
  String get prefix => _prefix;
  String get projectLink => _projectLink;
  int get publishTime => _publishTime;
  int get realSuperChapterId => _realSuperChapterId;
  int get selfVisible => _selfVisible;
  int get shareDate => _shareDate;
  String get shareUser => _shareUser;
  int get superChapterId => _superChapterId;
  String get superChapterName => _superChapterName;
  List<Tags> get tags => _tags;
  String get title => _title;
  int get type => _type;
  int get userId => _userId;
  int get visible => _visible;
  int get zan => _zan;

  Datas({
      String apkLink, 
      int audit, 
      String author, 
      bool canEdit, 
      int chapterId, 
      String chapterName, 
      bool collect, 
      int courseId, 
      String desc, 
      String descMd, 
      String envelopePic, 
      bool fresh, 
      String host, 
      int id, 
      String link, 
      String niceDate, 
      String niceShareDate, 
      String origin, 
      String prefix, 
      String projectLink, 
      int publishTime, 
      int realSuperChapterId, 
      int selfVisible, 
      int shareDate, 
      String shareUser, 
      int superChapterId, 
      String superChapterName, 
      List<Tags> tags, 
      String title, 
      int type, 
      int userId, 
      int visible, 
      int zan}){
    _apkLink = apkLink;
    _audit = audit;
    _author = author;
    _canEdit = canEdit;
    _chapterId = chapterId;
    _chapterName = chapterName;
    _collect = collect;
    _courseId = courseId;
    _desc = desc;
    _descMd = descMd;
    _envelopePic = envelopePic;
    _fresh = fresh;
    _host = host;
    _id = id;
    _link = link;
    _niceDate = niceDate;
    _niceShareDate = niceShareDate;
    _origin = origin;
    _prefix = prefix;
    _projectLink = projectLink;
    _publishTime = publishTime;
    _realSuperChapterId = realSuperChapterId;
    _selfVisible = selfVisible;
    _shareDate = shareDate;
    _shareUser = shareUser;
    _superChapterId = superChapterId;
    _superChapterName = superChapterName;
    _tags = tags;
    _title = title;
    _type = type;
    _userId = userId;
    _visible = visible;
    _zan = zan;
}

  Datas.fromJson(dynamic json) {
    _apkLink = json["apkLink"];
    _audit = json["audit"];
    _author = json["author"];
    _canEdit = json["canEdit"];
    _chapterId = json["chapterId"];
    _chapterName = json["chapterName"];
    _collect = json["collect"];
    _courseId = json["courseId"];
    _desc = json["desc"];
    _descMd = json["descMd"];
    _envelopePic = json["envelopePic"];
    _fresh = json["fresh"];
    _host = json["host"];
    _id = json["id"];
    _link = json["link"];
    _niceDate = json["niceDate"];
    _niceShareDate = json["niceShareDate"];
    _origin = json["origin"];
    _prefix = json["prefix"];
    _projectLink = json["projectLink"];
    _publishTime = json["publishTime"];
    _realSuperChapterId = json["realSuperChapterId"];
    _selfVisible = json["selfVisible"];
    _shareDate = json["shareDate"];
    _shareUser = json["shareUser"];
    _superChapterId = json["superChapterId"];
    _superChapterName = json["superChapterName"];
    if (json["tags"] != null) {
      _tags = [];
      json["tags"].forEach((v) {
        _tags.add(Tags.fromJson(v));
      });
    }
    _title = json["title"];
    _type = json["type"];
    _userId = json["userId"];
    _visible = json["visible"];
    _zan = json["zan"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["apkLink"] = _apkLink;
    map["audit"] = _audit;
    map["author"] = _author;
    map["canEdit"] = _canEdit;
    map["chapterId"] = _chapterId;
    map["chapterName"] = _chapterName;
    map["collect"] = _collect;
    map["courseId"] = _courseId;
    map["desc"] = _desc;
    map["descMd"] = _descMd;
    map["envelopePic"] = _envelopePic;
    map["fresh"] = _fresh;
    map["host"] = _host;
    map["id"] = _id;
    map["link"] = _link;
    map["niceDate"] = _niceDate;
    map["niceShareDate"] = _niceShareDate;
    map["origin"] = _origin;
    map["prefix"] = _prefix;
    map["projectLink"] = _projectLink;
    map["publishTime"] = _publishTime;
    map["realSuperChapterId"] = _realSuperChapterId;
    map["selfVisible"] = _selfVisible;
    map["shareDate"] = _shareDate;
    map["shareUser"] = _shareUser;
    map["superChapterId"] = _superChapterId;
    map["superChapterName"] = _superChapterName;
    if (_tags != null) {
      map["tags"] = _tags.map((v) => v.toJson()).toList();
    }
    map["title"] = _title;
    map["type"] = _type;
    map["userId"] = _userId;
    map["visible"] = _visible;
    map["zan"] = _zan;
    return map;
  }

}

/// name : "本站发布"
/// url : "/article/list/0?cid=440"

class Tags {
  String _name;
  String _url;

  String get name => _name;
  String get url => _url;

  Tags({
      String name, 
      String url}){
    _name = name;
    _url = url;
}

  Tags.fromJson(dynamic json) {
    _name = json["name"];
    _url = json["url"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["name"] = _name;
    map["url"] = _url;
    return map;
  }

}