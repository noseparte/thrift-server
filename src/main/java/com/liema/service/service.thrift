namespace java com.liema.dto

/**
 * thrift支持的数据类型：
 *
 *  bool          布尔类型
 *  i8 (byte)     整型8位
 *  i16           整型16位
 *  i32           整型32位
 *  i64           整型64位
 *  double        64位的浮点数
 *  string        字符串
 *  binary        字节
 *  map<t1,t2>    Map集合
 *  list<t1>      List集合
 *  set<t1>       Set集合
 */
//service Account{
//    string userName;
//}

enum UniqueNameEnum{
    REPEAT = 0
    SUCCESS = 1
    FAIL = 2
}


service RPCUniqueIdService{
    i64 getUniqueId();
}
service RPCUniqueNameService{
    UniqueNameEnum uniqueName(1:string name);
}

service RPCDateService{
    string getDate(1: string userName);
}