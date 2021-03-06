## What's this?

據謠傳，唐鳳擁有監控每個人電腦的能力，只要 tag 一下馬上就會有回應。這次使用了唐鳳的主力程式開發語言 Perl 來做一個簡單的小程式，可以印出唐鳳在 github 上的活動與紀錄。

[Video](https://youtu.be/wAXheZO7vM0)

## Why

最近因為武漢肺炎以及日本採訪的關係，唐鳳的聲名大噪，除了感到相當開心之外，也想要從另外一個角度看看唐鳳在「程式碼」這一塊做了哪些事情。
因此做了這個 repo，但只用短短幾個小時的時間學 perl 真的讓我吃不消啊 QQ。

## Goal

The basic of perl:
- syntax
- variable
- for...loop
- condition
- function
- format / string operation
- module

Start coding:
- make HTTPRequest
- map response to data
- array operation
- format
- print to terminal

---

1. profile (name, profile_link, bio, follower)
2. events

## File

- basic.pm: learning how basic perl works.
- auderyt_observer.pm: a very rough implementation for observing auderyt activity.

## How to use?

run `perl auderyt_observer.pm` and install related dependency by cpan.

## TODOs

- 模組化 + 更慣用的寫法寫 perl
- 優化文字輸出
- avatar to ascii
- realtime update

## Resources

- [String Matching](https://perldoc.perl.org/perlrequick.html#Search-and-replace)