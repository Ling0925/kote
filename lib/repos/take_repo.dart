import 'package:kote/model/summary.dart';
import 'package:kote/model/take_no_sekushon.dart';

class TakeApi {
  final summarys = [
    Summary(id: 1, content: "Take", count: 0),
    Summary(id: 1, content: "summary", count: 0),
  ];
  final takes = [
    TakeNoSekushon(id: 1, title: "Take title", content: "竹のセクション", links: []),
    TakeNoSekushon(
        id: 2,
        title: "Flutter数据（事件）传递",
        content:
            "  在前面的文章中我们多次使用到自定义Widget并传入相应的参数，这就是最简单的数据传递方法，上层通过下层Widget的构造方法将值传递给下层widget。就比如下面的例子，我们定义了一个MyPageView的View，构造方法需要传入，leading和content两个参数。",
        links: []),TakeNoSekushon(
        id: 3,
        title: "Flutter数据（事件）传递",
        content:
            "  在前面的文章中我们多次使用到自定义Widget并传入相应的参数，这就是最简单的数据传递方法，上层通过下层Widget的构造方法将值传递给下层widget。就比如下面的例子，我们定义了一个MyPageView的View，构造方法需要传入，leading和content两个参数。",
        links: []),TakeNoSekushon(
        id: 4,
        title: "Flutter数据（事件）传递",
        content:
            "  在前面的文章中我们多次使用到自定义Widget并传入相应的参数，这就是最简单的数据传递方法，上层通过下层Widget的构造方法将值传递给下层widget。就比如下面的例子，我们定义了一个MyPageView的View，构造方法需要传入，leading和content两个参数。",
        links: []),TakeNoSekushon(
        id: 5,
        title: "Flutter数据（事件）传递",
        content:
            "  在前面的文章中我们多次使用到自定义Widget并传入相应的参数，这就是最简单的数据传递方法，上层通过下层Widget的构造方法将值传递给下层widget。就比如下面的例子，我们定义了一个MyPageView的View，构造方法需要传入，leading和content两个参数。",
        links: []),TakeNoSekushon(
        id: 6,
        title: "Flutter数据（事件）传递",
        content:
            "  在前面的文章中我们多次使用到自定义Widget并传入相应的参数，这就是最简单的数据传递方法，上层通过下层Widget的构造方法将值传递给下层widget。就比如下面的例子，我们定义了一个MyPageView的View，构造方法需要传入，leading和content两个参数。。就比如下面的例子，我们定义了一个MyPageView的View，构造方法需要传入，leading和content两个参数。。就比如下面的例子，我们定义了一个MyPageView的View，构造方法需要传入，leading和content两个参数。。就比如下面的例子，我们定义了一个MyPageView的View，构造方法需要传入，leading和content两个参数。。就比如下面的例子，我们定义了一个MyPageView的View，构造方法需要传入，leading和content两个参数。。就比如下面的例子，我们定义了一个MyPageView的View，构造方法需要传入，leading和content两个参数。。就比如下面的例子，我们定义了一个MyPageView的View，构造方法需要传入，leading和content两个参数。。就比如下面的例子，我们定义了一个MyPageView的View，构造方法需要传入，leading和content两个参数。。就比如下面的例子，我们定义了一个MyPageView的View，构造方法需要传入，leading和content两个参数。。就比如下面的例子，我们定义了一个MyPageView的View，构造方法需要传入，leading和content两个参数。。就比如下面的例子，我们定义了一个MyPageView的View，构造方法需要传入，leading和content两个参数。",
        links: []),
  ];

  TakeNoSekushon getId(int id) {
    return TakeNoSekushon(id: 1, title: "竹有节", content: "竹のセクション", links: []);
  }

  bool edit(int id) {
    return false;
  }

  bool add(int id) {
    return false;
  }

  bool delete(int id) {
    return false;
  }

  List<TakeNoSekushon> getAllTakes() {
    return takes;
  }

  bool addSummary(Summary summary) {
    summarys.add(summary);
    return true;
  }

  List<Summary> getAllSummarys() {
    return summarys;
  }
}
