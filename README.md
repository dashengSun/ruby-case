# Ruby tips

1.每当修改Gemfile的时候，都要执行一次 bundle install.
2.command+N 新建一个terminal
3.显示routes:
http://localhost:3000/rails/info/routes
或者  rake routes
4.创建模型：
rails generate scaffold topic title:string description:text   生成默认增删改查的方法
rails generate model vote topic_id:integer  只生成模型
rake db:migrate  数据库操作
5.创建 rails 项目
rails new rails101
6.form_for 是 Rails 的表单产生器

7.添加新文件：touch app/views/….

8.新建模型
->rails g model post content:text group_id:integer user_id:integer
->rake db:migrate
->添加关系has_many和belongs_to

9.新建controller
rails g controller posts

10. 技术文章 ORID
Objective 完成了什么
Reflective 形容今天的情绪
Interpretive 重要的领悟是什么
Decisional 用一句话形容今天的工作，明天需要做什么

11.git push origin master
更新github

12.flat-map
Map a function over a collection and flatten the result by one-level
["two birds", "three green peas"].
  flat_map {|s| s.split}
# => ["two", "birds", "three", "green", "peas"]

13.总结
1) 类／对象，继承
build-in class
Kernel module

2) String
method: length, upcase

x == y   等价 x.eql?(y)

x = %q{this is a string
with multiple
lines}   多行赋值

here document:
x = <<END_MY_STRING_PLEASE
This is a string
with multiple
lines
END_MY_STRING_PLEASE

ASCII value:
‘x’.ord  或者 ‘x’.sum

interpolation:
“#{x} + #{y} = #{x+y}"

’this is a twesi’.gsub(‘i’, ‘a’)     相当于  replace

“xyz”.scan(/./) { |letter| puts letter}

“this is a test” =~ /[0-9]/   匹配，返回第一个匹配的位置，没有返回nil

3) loops
5.times { puts “ss" }
5.times do
     puts “ss"
     puts “ss"
end

4) Fixnum
    Float

5) Regular expression

/regular expression/
^ begin  $ end
/^../  /..$/
\w 代表 letters and numbers and underscore
\W   anything that \w doesn’t match
\d    any digit
\D    anything that \d doesn’t match
\s    whitespace (spaces, tabs, newlines, and so on)
\S   Non-whitespace

6) array
x=[]
x << “word”  等同于 x.push(“word")
x.pop        Last in, first out 后进先出
x.join(‘, ')

“words with lots of spaces”.split(/\s+/).inspect
等同于
p “words with lots of spaces”.split(/\s+/)

array iteration
[1,'test',2,3].each {|element| puts element.to_s+"xx"}
[1,'test',2,3].collect {|element| element*2}   计算block中的表达式，并返回给数组对应的位置   map也可以实现此功能

7) hashes
dic = {1 => 2, 2=>3}
dic[1]="set"
dic.each {|key, value| puts "#{key} : #{value}"}

8) lambda
print_param = lambda {|x| puts x}  返回Proc对象

print_param.call(100)

def each_vowel2
   %w{a e i o u}.each {|a| yield a}
 end
each_vowel2 {print_param}

9) $x=10
$ 代表全局变量

10) 正则外面的i 代表大小写
/[aeiou]/i

11) Gem搜索
gem query —remote —name-matches sequel

12)重定向标准输出到文件
ruby test.rb < somefile.txt

13) line = gets   读取一行输入
      lines = readlines 读取多行输入直到EOF（ctrl＋D）
