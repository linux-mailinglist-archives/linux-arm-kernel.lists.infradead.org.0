Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56124C8A54
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 15:57:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F9cGqkgJLHNaH6gcwN9JJdA04uZ/fkD70cqLcbLEC+0=; b=PT8uBneY7ngRw6
	lPnut19OEuatZslT8iLhdgo2k8xm1tH2xRRmzslu1XTUKbaITCuZaZL8574V2VBZp1h6KxHr9ENpt
	aYHCUSXayPnOd10EUDT+vk0psaXuahDsHpG8ppvwQS+zr2e7fpXzkY1A2df2uh4t1VHizjSp5fARY
	2VUT5EIov7EEhOYU1qhLsPP7n7Jwlwwc6trHiL/nXsBDK3E/8lqF9YwCm0ho8Rz7YTBl/Wx3hkZb4
	5PBsErAEkifaAwZxhUaDtvCraqD3vvUTOTivAVsw4UrLeUEhSZtvDYDaPA8vGM0N7XZB4PvVFOXoK
	hsnwh3gkDH8Uqo6ctCOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFf8P-00027e-0g; Wed, 02 Oct 2019 13:57:41 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFf8H-00026D-1d
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 13:57:35 +0000
Received: by mail-qk1-x742.google.com with SMTP id u184so15072880qkd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 06:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=V8brLeomy2wdADVlgEAXrAF/graRCxkPl6qeQ6D8/UY=;
 b=LOOnU4O6HcxEVeYMOxcLyNiuMD9UK6k0R1wPF+rwhxYGaqe/XchZ6Csj1aGv68sGmN
 PKQ3KzANtaY0LMUlkVOOzI6JQklPtF/el6EN2l7Nk2fe305qhqre7CAEehBp9mrJqyQ3
 tMJSjpFwxulrZz6rro8gay+6KIerqhJqR31JLqAqGBZ/fIWmK7IPkGchr1LxDknDi1Fq
 Rp//oB6uRcU2iFjwYvrlnq5P3wheTN97lNXsHU9yQUgFpq0w4L4b8vIKT0J4PYoVsXaf
 cuWGAmAgYkTu7xFeFIiLavBLXmAQi0EUoMiFL1pyJY8/zUco0XQdU8GjeQyjXc0HXN30
 wT4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=V8brLeomy2wdADVlgEAXrAF/graRCxkPl6qeQ6D8/UY=;
 b=py2cAfd1chPIbcSszr4EX517v0qb2aqk6oTM+hOx4T0ISru0aBiFGG8Ek/7K/7bZwZ
 J1sFJX2ev/PxUMGoBsfJaFyaPEXEnEns5y1A7uYRTvu/1sOMKgmvowAL1UUmzvPoeo5T
 6olOf/g3XbCEP2dsTHiuVyfm9HaZ1F3M+u5dRARP6Jb+qXiTVJnDoQJFyRhYnr28ByQO
 e5GvaNj5Nh+VSn6bV0TWxdVWiGt5q5fyzhk4uf2Cbb0PwM+t86LyO9yLX9uGBmVgVyt5
 LdkOIQP/nj99EPiAi/zKdbtDlhBuz/n40fo5v3Yd+WXKSR7rvEbE6c0bz/IUzTQ1wo4F
 ePEg==
X-Gm-Message-State: APjAAAUFXzMXrs3l4X8QqZZSzmqPONgN0OslekBGRd7E77BwXcmhNBNT
 M0z/hHzN4qMK6A2Y0QOeWbk4LVcIusJWLzStBfqQxw==
X-Google-Smtp-Source: APXvYqx434i+iUN3OJfFezeHYd+JsYyA6TLa0wDk4YCxX6Uk6K4Yp35J4yfUIFzD0UAL5r7Psj+OiNGbCCdVnVKBQYc=
X-Received: by 2002:a37:d84:: with SMTP id 126mr3463814qkn.407.1570024648625; 
 Wed, 02 Oct 2019 06:57:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190927034338.15813-1-walter-zh.wu@mediatek.com>
 <CACT4Y+Zxz+R=qQxSMoipXoLjRqyApD3O0eYpK0nyrfGHE4NNPw@mail.gmail.com>
 <1569594142.9045.24.camel@mtksdccf07>
 <CACT4Y+YuAxhKtL7ho7jpVAPkjG-JcGyczMXmw8qae2iaZjTh_w@mail.gmail.com>
 <1569818173.17361.19.camel@mtksdccf07> <1570018513.19702.36.camel@mtksdccf07>
In-Reply-To: <1570018513.19702.36.camel@mtksdccf07>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 2 Oct 2019 15:57:16 +0200
Message-ID: <CACT4Y+bbZhvz9ZpHtgL8rCCsV=ybU5jA6zFnJBL7gY2cNXDLyQ@mail.gmail.com>
Subject: Re: [PATCH] kasan: fix the missing underflow in memmove and memcpy
 with CONFIG_KASAN_GENERIC=y
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_065733_088836_833D97F4 
X-CRM114-Status: GOOD (  37.58  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 linux-mediatek@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, Linux-MM <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBPY3QgMiwgMjAxOSBhdCAyOjE1IFBNIFdhbHRlciBXdSA8d2FsdGVyLXpoLnd1QG1l
ZGlhdGVrLmNvbT4gd3JvdGU6Cj4KPiBPbiBNb24sIDIwMTktMDktMzAgYXQgMTI6MzYgKzA4MDAs
IFdhbHRlciBXdSB3cm90ZToKPiA+IE9uIEZyaSwgMjAxOS0wOS0yNyBhdCAyMTo0MSArMDIwMCwg
RG1pdHJ5IFZ5dWtvdiB3cm90ZToKPiA+ID4gT24gRnJpLCBTZXAgMjcsIDIwMTkgYXQgNDoyMiBQ
TSBXYWx0ZXIgV3UgPHdhbHRlci16aC53dUBtZWRpYXRlay5jb20+IHdyb3RlOgo+ID4gPiA+Cj4g
PiA+ID4gT24gRnJpLCAyMDE5LTA5LTI3IGF0IDE1OjA3ICswMjAwLCBEbWl0cnkgVnl1a292IHdy
b3RlOgo+ID4gPiA+ID4gT24gRnJpLCBTZXAgMjcsIDIwMTkgYXQgNTo0MyBBTSBXYWx0ZXIgV3Ug
PHdhbHRlci16aC53dUBtZWRpYXRlay5jb20+IHdyb3RlOgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4g
PiBtZW1tb3ZlKCkgYW5kIG1lbWNweSgpIGhhdmUgbWlzc2luZyB1bmRlcmZsb3cgaXNzdWVzLgo+
ID4gPiA+ID4gPiBXaGVuIC03IDw9IHNpemUgPCAwLCB0aGVuIEtBU0FOIHdpbGwgbWlzcyB0byBj
YXRjaCB0aGUgdW5kZXJmbG93IGlzc3VlLgo+ID4gPiA+ID4gPiBJdCBsb29rcyBsaWtlIHNoYWRv
dyBzdGFydCBhZGRyZXNzIGFuZCBzaGFkb3cgZW5kIGFkZHJlc3MgaXMgdGhlIHNhbWUsCj4gPiA+
ID4gPiA+IHNvIGl0IGRvZXMgbm90IGFjdHVhbGx5IGNoZWNrIGFueXRoaW5nLgo+ID4gPiA+ID4g
Pgo+ID4gPiA+ID4gPiBUaGUgZm9sbG93aW5nIHRlc3QgaXMgaW5kZWVkIG5vdCBjYXVnaHQgYnkg
S0FTQU46Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ICAgICAgICAgY2hhciAqcCA9IGttYWxsb2Mo
NjQsIEdGUF9LRVJORUwpOwo+ID4gPiA+ID4gPiAgICAgICAgIG1lbXNldCgoY2hhciAqKXAsIDAs
IDY0KTsKPiA+ID4gPiA+ID4gICAgICAgICBtZW1tb3ZlKChjaGFyICopcCwgKGNoYXIgKilwICsg
NCwgLTIpOwo+ID4gPiA+ID4gPiAgICAgICAgIGtmcmVlKChjaGFyKilwKTsKPiA+ID4gPiA+ID4K
PiA+ID4gPiA+ID4gSXQgc2hvdWxkIGJlIGNoZWNrZWQgaGVyZToKPiA+ID4gPiA+ID4KPiA+ID4g
PiA+ID4gdm9pZCAqbWVtbW92ZSh2b2lkICpkZXN0LCBjb25zdCB2b2lkICpzcmMsIHNpemVfdCBs
ZW4pCj4gPiA+ID4gPiA+IHsKPiA+ID4gPiA+ID4gICAgICAgICBjaGVja19tZW1vcnlfcmVnaW9u
KCh1bnNpZ25lZCBsb25nKXNyYywgbGVuLCBmYWxzZSwgX1JFVF9JUF8pOwo+ID4gPiA+ID4gPiAg
ICAgICAgIGNoZWNrX21lbW9yeV9yZWdpb24oKHVuc2lnbmVkIGxvbmcpZGVzdCwgbGVuLCB0cnVl
LCBfUkVUX0lQXyk7Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ICAgICAgICAgcmV0dXJuIF9fbWVt
bW92ZShkZXN0LCBzcmMsIGxlbik7Cj4gPiA+ID4gPiA+IH0KPiA+ID4gPiA+ID4KPiA+ID4gPiA+
ID4gV2UgZml4IHRoZSBzaGFkb3cgZW5kIGFkZHJlc3Mgd2hpY2ggaXMgY2FsY3VsYXRlZCwgdGhl
biBnZW5lcmljIEtBU0FOCj4gPiA+ID4gPiA+IGdldCB0aGUgcmlnaHQgc2hhZG93IGVuZCBhZGRy
ZXNzIGFuZCBkZXRlY3QgdGhpcyB1bmRlcmZsb3cgaXNzdWUuCj4gPiA+ID4gPiA+Cj4gPiA+ID4g
PiA+IFsxXSBodHRwczovL2J1Z3ppbGxhLmtlcm5lbC5vcmcvc2hvd19idWcuY2dpP2lkPTE5OTM0
MQo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBXYWx0ZXIgV3UgPHdhbHRl
ci16aC53dUBtZWRpYXRlay5jb20+Cj4gPiA+ID4gPiA+IFJlcG9ydGVkLWJ5OiBEbWl0cnkgVnl1
a292IDxkdnl1a292QGdvb2dsZS5jb20+Cj4gPiA+ID4gPiA+IC0tLQo+ID4gPiA+ID4gPiAgbGli
L3Rlc3Rfa2FzYW4uYyAgIHwgMzYgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Cj4gPiA+ID4gPiA+ICBtbS9rYXNhbi9nZW5lcmljLmMgfCAgOCArKysrKystLQo+ID4gPiA+ID4g
PiAgMiBmaWxlcyBjaGFuZ2VkLCA0MiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4g
PiA+ID4gPgo+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvbGliL3Rlc3Rfa2FzYW4uYyBiL2xpYi90
ZXN0X2thc2FuLmMKPiA+ID4gPiA+ID4gaW5kZXggYjYzYjM2N2E5NGU4Li44YmQwMTQ4NTI1NTYg
MTAwNjQ0Cj4gPiA+ID4gPiA+IC0tLSBhL2xpYi90ZXN0X2thc2FuLmMKPiA+ID4gPiA+ID4gKysr
IGIvbGliL3Rlc3Rfa2FzYW4uYwo+ID4gPiA+ID4gPiBAQCAtMjgwLDYgKzI4MCw0MCBAQCBzdGF0
aWMgbm9pbmxpbmUgdm9pZCBfX2luaXQga21hbGxvY19vb2JfaW5fbWVtc2V0KHZvaWQpCj4gPiA+
ID4gPiA+ICAgICAgICAga2ZyZWUocHRyKTsKPiA+ID4gPiA+ID4gIH0KPiA+ID4gPiA+ID4KPiA+
ID4gPiA+ID4gK3N0YXRpYyBub2lubGluZSB2b2lkIF9faW5pdCBrbWFsbG9jX29vYl9pbl9tZW1t
b3ZlX3VuZGVyZmxvdyh2b2lkKQo+ID4gPiA+ID4gPiArewo+ID4gPiA+ID4gPiArICAgICAgIGNo
YXIgKnB0cjsKPiA+ID4gPiA+ID4gKyAgICAgICBzaXplX3Qgc2l6ZSA9IDY0Owo+ID4gPiA+ID4g
PiArCj4gPiA+ID4gPiA+ICsgICAgICAgcHJfaW5mbygidW5kZXJmbG93IG91dC1vZi1ib3VuZHMg
aW4gbWVtbW92ZVxuIik7Cj4gPiA+ID4gPiA+ICsgICAgICAgcHRyID0ga21hbGxvYyhzaXplLCBH
RlBfS0VSTkVMKTsKPiA+ID4gPiA+ID4gKyAgICAgICBpZiAoIXB0cikgewo+ID4gPiA+ID4gPiAr
ICAgICAgICAgICAgICAgcHJfZXJyKCJBbGxvY2F0aW9uIGZhaWxlZFxuIik7Cj4gPiA+ID4gPiA+
ICsgICAgICAgICAgICAgICByZXR1cm47Cj4gPiA+ID4gPiA+ICsgICAgICAgfQo+ID4gPiA+ID4g
PiArCj4gPiA+ID4gPiA+ICsgICAgICAgbWVtc2V0KChjaGFyICopcHRyLCAwLCA2NCk7Cj4gPiA+
ID4gPiA+ICsgICAgICAgbWVtbW92ZSgoY2hhciAqKXB0ciwgKGNoYXIgKilwdHIgKyA0LCAtMik7
Cj4gPiA+ID4gPiA+ICsgICAgICAga2ZyZWUocHRyKTsKPiA+ID4gPiA+ID4gK30KPiA+ID4gPiA+
ID4gKwo+ID4gPiA+ID4gPiArc3RhdGljIG5vaW5saW5lIHZvaWQgX19pbml0IGttYWxsb2Nfb29i
X2luX21lbW1vdmVfb3ZlcmZsb3codm9pZCkKPiA+ID4gPiA+ID4gK3sKPiA+ID4gPiA+ID4gKyAg
ICAgICBjaGFyICpwdHI7Cj4gPiA+ID4gPiA+ICsgICAgICAgc2l6ZV90IHNpemUgPSA2NDsKPiA+
ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiArICAgICAgIHByX2luZm8oIm92ZXJmbG93IG91dC1vZi1i
b3VuZHMgaW4gbWVtbW92ZVxuIik7Cj4gPiA+ID4gPiA+ICsgICAgICAgcHRyID0ga21hbGxvYyhz
aXplLCBHRlBfS0VSTkVMKTsKPiA+ID4gPiA+ID4gKyAgICAgICBpZiAoIXB0cikgewo+ID4gPiA+
ID4gPiArICAgICAgICAgICAgICAgcHJfZXJyKCJBbGxvY2F0aW9uIGZhaWxlZFxuIik7Cj4gPiA+
ID4gPiA+ICsgICAgICAgICAgICAgICByZXR1cm47Cj4gPiA+ID4gPiA+ICsgICAgICAgfQo+ID4g
PiA+ID4gPiArCj4gPiA+ID4gPiA+ICsgICAgICAgbWVtc2V0KChjaGFyICopcHRyLCAwLCA2NCk7
Cj4gPiA+ID4gPiA+ICsgICAgICAgbWVtbW92ZSgoY2hhciAqKXB0ciArIHNpemUsIChjaGFyICop
cHRyLCAyKTsKPiA+ID4gPiA+ID4gKyAgICAgICBrZnJlZShwdHIpOwo+ID4gPiA+ID4gPiArfQo+
ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ICBzdGF0aWMgbm9pbmxpbmUgdm9pZCBfX2luaXQga21h
bGxvY191YWYodm9pZCkKPiA+ID4gPiA+ID4gIHsKPiA+ID4gPiA+ID4gICAgICAgICBjaGFyICpw
dHI7Cj4gPiA+ID4gPiA+IEBAIC03MzQsNiArNzY4LDggQEAgc3RhdGljIGludCBfX2luaXQga21h
bGxvY190ZXN0c19pbml0KHZvaWQpCj4gPiA+ID4gPiA+ICAgICAgICAga21hbGxvY19vb2JfbWVt
c2V0XzQoKTsKPiA+ID4gPiA+ID4gICAgICAgICBrbWFsbG9jX29vYl9tZW1zZXRfOCgpOwo+ID4g
PiA+ID4gPiAgICAgICAgIGttYWxsb2Nfb29iX21lbXNldF8xNigpOwo+ID4gPiA+ID4gPiArICAg
ICAgIGttYWxsb2Nfb29iX2luX21lbW1vdmVfdW5kZXJmbG93KCk7Cj4gPiA+ID4gPiA+ICsgICAg
ICAga21hbGxvY19vb2JfaW5fbWVtbW92ZV9vdmVyZmxvdygpOwo+ID4gPiA+ID4gPiAgICAgICAg
IGttYWxsb2NfdWFmKCk7Cj4gPiA+ID4gPiA+ICAgICAgICAga21hbGxvY191YWZfbWVtc2V0KCk7
Cj4gPiA+ID4gPiA+ICAgICAgICAga21hbGxvY191YWYyKCk7Cj4gPiA+ID4gPiA+IGRpZmYgLS1n
aXQgYS9tbS9rYXNhbi9nZW5lcmljLmMgYi9tbS9rYXNhbi9nZW5lcmljLmMKPiA+ID4gPiA+ID4g
aW5kZXggNjE2ZjlkZDgyZDEyLi4zNGNhMjNkNTllNjcgMTAwNjQ0Cj4gPiA+ID4gPiA+IC0tLSBh
L21tL2thc2FuL2dlbmVyaWMuYwo+ID4gPiA+ID4gPiArKysgYi9tbS9rYXNhbi9nZW5lcmljLmMK
PiA+ID4gPiA+ID4gQEAgLTEzMSw5ICsxMzEsMTMgQEAgc3RhdGljIF9fYWx3YXlzX2lubGluZSBi
b29sIG1lbW9yeV9pc19wb2lzb25lZF9uKHVuc2lnbmVkIGxvbmcgYWRkciwKPiA+ID4gPiA+ID4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2l6ZV90IHNp
emUpCj4gPiA+ID4gPiA+ICB7Cj4gPiA+ID4gPiA+ICAgICAgICAgdW5zaWduZWQgbG9uZyByZXQ7
Cj4gPiA+ID4gPiA+ICsgICAgICAgdm9pZCAqc2hhZG93X3N0YXJ0ID0ga2FzYW5fbWVtX3RvX3No
YWRvdygodm9pZCAqKWFkZHIpOwo+ID4gPiA+ID4gPiArICAgICAgIHZvaWQgKnNoYWRvd19lbmQg
PSBrYXNhbl9tZW1fdG9fc2hhZG93KCh2b2lkICopYWRkciArIHNpemUgLSAxKSArIDE7Cj4gPiA+
ID4gPiA+Cj4gPiA+ID4gPiA+IC0gICAgICAgcmV0ID0gbWVtb3J5X2lzX25vbnplcm8oa2FzYW5f
bWVtX3RvX3NoYWRvdygodm9pZCAqKWFkZHIpLAo+ID4gPiA+ID4gPiAtICAgICAgICAgICAgICAg
ICAgICAgICBrYXNhbl9tZW1fdG9fc2hhZG93KCh2b2lkICopYWRkciArIHNpemUgLSAxKSArIDEp
Owo+ID4gPiA+ID4gPiArICAgICAgIGlmICgobG9uZylzaXplIDwgMCkKPiA+ID4gPiA+ID4gKyAg
ICAgICAgICAgICAgIHNoYWRvd19lbmQgPSBrYXNhbl9tZW1fdG9fc2hhZG93KCh2b2lkICopYWRk
ciArIHNpemUpOwo+ID4gPiA+ID4KPiA+ID4gPiA+IEhpIFdhbHRlciwKPiA+ID4gPiA+Cj4gPiA+
ID4gPiBUaGFua3MgZm9yIHdvcmtpbmcgb24gdGhpcy4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBJZiBz
aXplPDAsIGRvZXMgaXQgbWFrZSBzZW5zZSB0byBjb250aW51ZSBhdCBhbGw/IFdlIHdpbGwgc3Rp
bGwgY2hlY2sKPiA+ID4gPiA+IDFQQiBvZiBzaGFkb3cgbWVtb3J5PyBXaGF0IGhhcHBlbnMgd2hl
biB3ZSBwYXNzIHN1Y2ggaHVnZSByYW5nZSB0bwo+ID4gPiA+ID4gbWVtb3J5X2lzX25vbnplcm8/
Cj4gPiA+ID4gPiBQZXJoYXBzIGl0J3MgYmV0dGVyIHRvIHByb2R1Y2UgYW4gZXJyb3IgYW5kIGJh
aWwgb3V0IGltbWVkaWF0ZWx5IGlmIHNpemU8MD8KPiA+ID4gPgo+ID4gPiA+IEkgYWdyZWUgd2l0
aCB3aGF0IHlvdSBzYWlkLiB3aGVuIHNpemU8MCwgaXQgaXMgaW5kZWVkIGFuIHVucmVhc29uYWJs
ZQo+ID4gPiA+IGJlaGF2aW9yLCBpdCBzaG91bGQgYmUgYmxvY2tlZCBmcm9tIGNvbnRpbnVpbmcg
dG8gZG8uCj4gPiA+ID4KPiA+ID4gPgo+ID4gPiA+ID4gQWxzbywgd2hhdCdzIHRoZSBmYWlsdXJl
IG1vZGUgb2YgdGhlIHRlc3RzPyBEaWRuJ3QgdGhleSBiYWRseSBjb3JydXB0Cj4gPiA+ID4gPiBt
ZW1vcnk/IFdlIHRyaWVkIHRvIGtlZXAgdGVzdHMgc3VjaCB0aGF0IHRoZXkgcHJvZHVjZSB0aGUg
S0FTQU4KPiA+ID4gPiA+IHJlcG9ydHMsIGJ1dCBkb24ndCBiYWRseSBjb3JydXB0IG1lbW9yeSBi
L2MvIHdlIG5lZWQgdG8gcnVuIGFsbCBvZgo+ID4gPiA+ID4gdGhlbS4KPiA+ID4gPgo+ID4gPiA+
IE1heWJlIHdlIHNob3VsZCBmaXJzdCBwcm9kdWNlIEtBU0FOIHJlcG9ydHMgYW5kIHRoZW4gZ28g
dG8gZXhlY3V0ZQo+ID4gPiA+IG1lbW1vdmUoKSBvciBkbyBub3RoaW5nPyBJdCBsb29rcyBsaWtl
IGl04oCZcyBkb2luZyB0aGUgZm9sbG93aW5nLm9yPwo+ID4gPiA+Cj4gPiA+ID4gdm9pZCAqbWVt
bW92ZSh2b2lkICpkZXN0LCBjb25zdCB2b2lkICpzcmMsIHNpemVfdCBsZW4pCj4gPiA+ID4gIHsK
PiA+ID4gPiArICAgICAgIGlmIChsb25nKGxlbikgPD0gMCkKPiA+ID4KPiA+ID4gL1wvXC9cL1wv
XC9cCj4gPiA+Cj4gPiA+IFRoaXMgY2hlY2sgbmVlZHMgdG8gYmUgaW5zaWRlIG9mIGNoZWNrX21l
bW9yeV9yZWdpb24sIG90aGVyd2lzZSB3ZQo+ID4gPiB3aWxsIGhhdmUgc2ltaWxhciBwcm9ibGVt
cyBpbiBhbGwgb3RoZXIgcGxhY2VzIHRoYXQgdXNlCj4gPiA+IGNoZWNrX21lbW9yeV9yZWdpb24u
Cj4gPiBUaGFua3MgZm9yIHlvdXIgcmVtaW5kZXIuCj4gPgo+ID4gIGJvb2wgY2hlY2tfbWVtb3J5
X3JlZ2lvbih1bnNpZ25lZCBsb25nIGFkZHIsIHNpemVfdCBzaXplLCBib29sIHdyaXRlLAo+ID4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBsb25nIHJldF9pcCkKPiA+
ICB7Cj4gPiArICAgICAgIGlmIChsb25nKHNpemUpIDwgMCkgewo+ID4gKyAgICAgICAgICAgICAg
IGthc2FuX3JlcG9ydF9pbnZhbGlkX3NpemUoc3JjLCBkZXN0LCBsZW4sIF9SRVRfSVBfKTsKPiA+
ICsgICAgICAgICAgICAgICByZXR1cm4gZmFsc2U7Cj4gPiArICAgICAgIH0KPiA+ICsKPiA+ICAg
ICAgICAgcmV0dXJuIGNoZWNrX21lbW9yeV9yZWdpb25faW5saW5lKGFkZHIsIHNpemUsIHdyaXRl
LCByZXRfaXApOwo+ID4gIH0KPiA+Cj4gPiA+IEJ1dCBjaGVja19tZW1vcnlfcmVnaW9uIGFscmVh
ZHkgcmV0dXJucyBhIGJvb2wsIHNvIHdlIGNvdWxkIGNoZWNrIHRoYXQKPiA+ID4gYm9vbCBhbmQg
cmV0dXJuIGVhcmx5Lgo+ID4KPiA+IFdoZW4gc2l6ZTwwLCB3ZSBzaG91bGQgb25seSBzaG93IG9u
ZSBLQVNBTiByZXBvcnQsIGFuZCBzaG91bGQgd2Ugb25seQo+ID4gbGltaXQgdG8gcmV0dXJuIHdo
ZW4gc2l6ZTwwIGlzIHRydWU/IElmIHlzZSwgdGhlbiBfX21lbW1vdmUoKSB3aWxsIGRvCj4gPiBu
b3RoaW5nLgo+ID4KPiA+Cj4gPiAgdm9pZCAqbWVtbW92ZSh2b2lkICpkZXN0LCBjb25zdCB2b2lk
ICpzcmMsIHNpemVfdCBsZW4pCj4gPiAgewo+ID4gLSAgICAgICBjaGVja19tZW1vcnlfcmVnaW9u
KCh1bnNpZ25lZCBsb25nKXNyYywgbGVuLCBmYWxzZSwgX1JFVF9JUF8pOwo+ID4gKyAgICAgICBp
ZighY2hlY2tfbWVtb3J5X3JlZ2lvbigodW5zaWduZWQgbG9uZylzcmMsIGxlbiwgZmFsc2UsCj4g
PiBfUkVUX0lQXykKPiA+ICsgICAgICAgICAgICAgICAmJiBsb25nKHNpemUpIDwgMCkKPiA+ICsg
ICAgICAgICAgICAgICByZXR1cm47Cj4gPiArCj4gPiAgICAgICAgIGNoZWNrX21lbW9yeV9yZWdp
b24oKHVuc2lnbmVkIGxvbmcpZGVzdCwgbGVuLCB0cnVlLCBfUkVUX0lQXyk7Cj4gPgo+ID4gICAg
ICAgICByZXR1cm4gX19tZW1tb3ZlKGRlc3QsIHNyYywgbGVuKTsKPiA+Cj4gPiA+Cj4gSGkgRG1p
dHJ5LAo+Cj4gV2hhdCBkbyB5b3UgdGhpbmsgdGhlIGZvbGxvd2luZyBjb2RlIGlzIGJldHRlciB0
aGFuIHRoZSBhYm92ZSBvbmUuCj4gSW4gbWVtbW1vdmUvbWVtc2V0L21lbWNweSwgdGhleSBuZWVk
IHRvIGRldGVybWluZSB3aGV0aGVyIHNpemUgPCAwIGlzCj4gdHJ1ZS4gd2UgZGlyZWN0bHkgZGV0
ZXJtaW5lIHdoZXRoZXIgc2l6ZSBpcyBuZWdhdGl2ZSBpbiBtZW1tb3ZlIGFuZAo+IHJldHVybiBl
YXJseS4gaXQgYXZvaWQgdG8gZ2VuZXJhdGUgcmVwZWF0ZWQgS0FTQU4gcmVwb3J0LiBJcyBpdCBi
ZXR0ZXI/Cj4KPiB2b2lkICptZW1tb3ZlKHZvaWQgKmRlc3QsIGNvbnN0IHZvaWQgKnNyYywgc2l6
ZV90IGxlbikKPiB7Cj4gKyAgICAgICBpZiAobG9uZyhzaXplKSA8IDApIHsKPiArICAgICAgICAg
ICAgICAga2FzYW5fcmVwb3J0X2ludmFsaWRfc2l6ZShzcmMsIGRlc3QsIGxlbiwgX1JFVF9JUF8p
Owo+ICsgICAgICAgICAgICAgICByZXR1cm47Cj4gKyAgICAgICB9Cj4gKwo+ICAgICAgICAgY2hl
Y2tfbWVtb3J5X3JlZ2lvbigodW5zaWduZWQgbG9uZylzcmMsIGxlbiwgZmFsc2UsIF9SRVRfSVBf
KTsKPiAgICAgICAgIGNoZWNrX21lbW9yeV9yZWdpb24oKHVuc2lnbmVkIGxvbmcpZGVzdCwgbGVu
LCB0cnVlLCBfUkVUX0lQXyk7Cj4KPgo+IGNoZWNrX21lbW9yeV9yZWdpb24oKSBzdGlsbCBoYXMg
dG8gY2hlY2sgd2hldGhlciB0aGUgc2l6ZSBpcyBuZWdhdGl2ZS4KPiBidXQgbWVtbW92ZS9tZW1z
ZXQvbWVtY3B5IGdlbmVyYXRlIGludmFsaWQgc2l6ZSBLQVNBTiByZXBvcnQgd2lsbCBub3QgYmUK
PiB0aGVyZS4KCgpJZiBjaGVja19tZW1vcnlfcmVnaW9uKCkgd2lsbCBkbyB0aGUgY2hlY2ssIHdo
eSBkbyB3ZSBuZWVkIHRvCmR1cGxpY2F0ZSBpdCBpbnNpZGUgb2YgbWVtbW92ZSBhbmQgYWxsIG90
aGVyIHJhbmdlIGZ1bmN0aW9ucz8KCkkgd291bGQgZG86Cgp2b2lkICptZW1tb3ZlKHZvaWQgKmRl
c3QsIGNvbnN0IHZvaWQgKnNyYywgc2l6ZV90IGxlbikKewogICAgICAgIGlmIChjaGVja19tZW1v
cnlfcmVnaW9uKCh1bnNpZ25lZCBsb25nKXNyYywgbGVuLCBmYWxzZSwgX1JFVF9JUF8pKQogICAg
ICAgICAgICAgICAgcmV0dXJuOwoKVGhpcyBhdm9pZHMgZHVwbGljYXRpbmcgdGhlIGNoZWNrLCBh
ZGRzIG1pbmltYWwgYW1vdW50IG9mIGNvZGUgdG8KcmFuZ2UgZnVuY3Rpb25zIGFuZCBhdm9pZHMg
YWRkaW5nIGthc2FuX3JlcG9ydF9pbnZhbGlkX3NpemUuCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
