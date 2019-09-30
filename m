Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E19C1ABF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 06:36:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RkFFdhL2rmI+5LT6Sfu/lrFu8AfViXlHfpcH4/4o9k0=; b=DWHkc/ZpwleFWP
	HVjk9nmz0fHVt9uW/Z9+vO2pGzIhQYU+fGHcOoSyQsxdWNr7cFQGj3ac5VQa9+ELTTBNdGr7D2D7e
	wT18d8CSI9y2M+WyO2kWTnV/huPPahu4iJhXVCIDJSwdGaszbCM5IM8n5ZkiyToAL/t7Cvm/3k6yY
	8so58wmz9ozWCwk/Q6SPs4y4QkCl2kT1YayRM1nHbFoZmOLMnyz0vdnUkBA3HPUEU/cQH1mWEoIct
	jVIm8XBshgH7XIFFsyI8O9zroXia2mNkK3KYaEa1bn4fbF8xjB1uwaTxGVrwxcbg97ATJdgW/E6Op
	dH1OeMhaChwJFiz1vGUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEnQL-0000bW-Dq; Mon, 30 Sep 2019 04:36:37 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEnQA-0000aK-AA; Mon, 30 Sep 2019 04:36:29 +0000
X-UUID: 205fdc1d5c9d4866bea66d7739a692c3-20190929
X-UUID: 205fdc1d5c9d4866bea66d7739a692c3-20190929
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1246649604; Sun, 29 Sep 2019 20:36:14 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 29 Sep 2019 21:36:13 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 30 Sep 2019 12:36:12 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 30 Sep 2019 12:36:12 +0800
Message-ID: <1569818173.17361.19.camel@mtksdccf07>
Subject: Re: [PATCH] kasan: fix the missing underflow in memmove and memcpy
 with CONFIG_KASAN_GENERIC=y
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 30 Sep 2019 12:36:13 +0800
In-Reply-To: <CACT4Y+YuAxhKtL7ho7jpVAPkjG-JcGyczMXmw8qae2iaZjTh_w@mail.gmail.com>
References: <20190927034338.15813-1-walter-zh.wu@mediatek.com>
 <CACT4Y+Zxz+R=qQxSMoipXoLjRqyApD3O0eYpK0nyrfGHE4NNPw@mail.gmail.com>
 <1569594142.9045.24.camel@mtksdccf07>
 <CACT4Y+YuAxhKtL7ho7jpVAPkjG-JcGyczMXmw8qae2iaZjTh_w@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_213626_358749_C5B994C6 
X-CRM114-Status: GOOD (  29.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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

T24gRnJpLCAyMDE5LTA5LTI3IGF0IDIxOjQxICswMjAwLCBEbWl0cnkgVnl1a292IHdyb3RlOgo+
IE9uIEZyaSwgU2VwIDI3LCAyMDE5IGF0IDQ6MjIgUE0gV2FsdGVyIFd1IDx3YWx0ZXItemgud3VA
bWVkaWF0ZWsuY29tPiB3cm90ZToKPiA+Cj4gPiBPbiBGcmksIDIwMTktMDktMjcgYXQgMTU6MDcg
KzAyMDAsIERtaXRyeSBWeXVrb3Ygd3JvdGU6Cj4gPiA+IE9uIEZyaSwgU2VwIDI3LCAyMDE5IGF0
IDU6NDMgQU0gV2FsdGVyIFd1IDx3YWx0ZXItemgud3VAbWVkaWF0ZWsuY29tPiB3cm90ZToKPiA+
ID4gPgo+ID4gPiA+IG1lbW1vdmUoKSBhbmQgbWVtY3B5KCkgaGF2ZSBtaXNzaW5nIHVuZGVyZmxv
dyBpc3N1ZXMuCj4gPiA+ID4gV2hlbiAtNyA8PSBzaXplIDwgMCwgdGhlbiBLQVNBTiB3aWxsIG1p
c3MgdG8gY2F0Y2ggdGhlIHVuZGVyZmxvdyBpc3N1ZS4KPiA+ID4gPiBJdCBsb29rcyBsaWtlIHNo
YWRvdyBzdGFydCBhZGRyZXNzIGFuZCBzaGFkb3cgZW5kIGFkZHJlc3MgaXMgdGhlIHNhbWUsCj4g
PiA+ID4gc28gaXQgZG9lcyBub3QgYWN0dWFsbHkgY2hlY2sgYW55dGhpbmcuCj4gPiA+ID4KPiA+
ID4gPiBUaGUgZm9sbG93aW5nIHRlc3QgaXMgaW5kZWVkIG5vdCBjYXVnaHQgYnkgS0FTQU46Cj4g
PiA+ID4KPiA+ID4gPiAgICAgICAgIGNoYXIgKnAgPSBrbWFsbG9jKDY0LCBHRlBfS0VSTkVMKTsK
PiA+ID4gPiAgICAgICAgIG1lbXNldCgoY2hhciAqKXAsIDAsIDY0KTsKPiA+ID4gPiAgICAgICAg
IG1lbW1vdmUoKGNoYXIgKilwLCAoY2hhciAqKXAgKyA0LCAtMik7Cj4gPiA+ID4gICAgICAgICBr
ZnJlZSgoY2hhciopcCk7Cj4gPiA+ID4KPiA+ID4gPiBJdCBzaG91bGQgYmUgY2hlY2tlZCBoZXJl
Ogo+ID4gPiA+Cj4gPiA+ID4gdm9pZCAqbWVtbW92ZSh2b2lkICpkZXN0LCBjb25zdCB2b2lkICpz
cmMsIHNpemVfdCBsZW4pCj4gPiA+ID4gewo+ID4gPiA+ICAgICAgICAgY2hlY2tfbWVtb3J5X3Jl
Z2lvbigodW5zaWduZWQgbG9uZylzcmMsIGxlbiwgZmFsc2UsIF9SRVRfSVBfKTsKPiA+ID4gPiAg
ICAgICAgIGNoZWNrX21lbW9yeV9yZWdpb24oKHVuc2lnbmVkIGxvbmcpZGVzdCwgbGVuLCB0cnVl
LCBfUkVUX0lQXyk7Cj4gPiA+ID4KPiA+ID4gPiAgICAgICAgIHJldHVybiBfX21lbW1vdmUoZGVz
dCwgc3JjLCBsZW4pOwo+ID4gPiA+IH0KPiA+ID4gPgo+ID4gPiA+IFdlIGZpeCB0aGUgc2hhZG93
IGVuZCBhZGRyZXNzIHdoaWNoIGlzIGNhbGN1bGF0ZWQsIHRoZW4gZ2VuZXJpYyBLQVNBTgo+ID4g
PiA+IGdldCB0aGUgcmlnaHQgc2hhZG93IGVuZCBhZGRyZXNzIGFuZCBkZXRlY3QgdGhpcyB1bmRl
cmZsb3cgaXNzdWUuCj4gPiA+ID4KPiA+ID4gPiBbMV0gaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwu
b3JnL3Nob3dfYnVnLmNnaT9pZD0xOTkzNDEKPiA+ID4gPgo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6
IFdhbHRlciBXdSA8d2FsdGVyLXpoLnd1QG1lZGlhdGVrLmNvbT4KPiA+ID4gPiBSZXBvcnRlZC1i
eTogRG1pdHJ5IFZ5dWtvdiA8ZHZ5dWtvdkBnb29nbGUuY29tPgo+ID4gPiA+IC0tLQo+ID4gPiA+
ICBsaWIvdGVzdF9rYXNhbi5jICAgfCAzNiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysKPiA+ID4gPiAgbW0va2FzYW4vZ2VuZXJpYy5jIHwgIDggKysrKysrLS0KPiA+ID4gPiAg
MiBmaWxlcyBjaGFuZ2VkLCA0MiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4gPiA+
Cj4gPiA+ID4gZGlmZiAtLWdpdCBhL2xpYi90ZXN0X2thc2FuLmMgYi9saWIvdGVzdF9rYXNhbi5j
Cj4gPiA+ID4gaW5kZXggYjYzYjM2N2E5NGU4Li44YmQwMTQ4NTI1NTYgMTAwNjQ0Cj4gPiA+ID4g
LS0tIGEvbGliL3Rlc3Rfa2FzYW4uYwo+ID4gPiA+ICsrKyBiL2xpYi90ZXN0X2thc2FuLmMKPiA+
ID4gPiBAQCAtMjgwLDYgKzI4MCw0MCBAQCBzdGF0aWMgbm9pbmxpbmUgdm9pZCBfX2luaXQga21h
bGxvY19vb2JfaW5fbWVtc2V0KHZvaWQpCj4gPiA+ID4gICAgICAgICBrZnJlZShwdHIpOwo+ID4g
PiA+ICB9Cj4gPiA+ID4KPiA+ID4gPiArc3RhdGljIG5vaW5saW5lIHZvaWQgX19pbml0IGttYWxs
b2Nfb29iX2luX21lbW1vdmVfdW5kZXJmbG93KHZvaWQpCj4gPiA+ID4gK3sKPiA+ID4gPiArICAg
ICAgIGNoYXIgKnB0cjsKPiA+ID4gPiArICAgICAgIHNpemVfdCBzaXplID0gNjQ7Cj4gPiA+ID4g
Kwo+ID4gPiA+ICsgICAgICAgcHJfaW5mbygidW5kZXJmbG93IG91dC1vZi1ib3VuZHMgaW4gbWVt
bW92ZVxuIik7Cj4gPiA+ID4gKyAgICAgICBwdHIgPSBrbWFsbG9jKHNpemUsIEdGUF9LRVJORUwp
Owo+ID4gPiA+ICsgICAgICAgaWYgKCFwdHIpIHsKPiA+ID4gPiArICAgICAgICAgICAgICAgcHJf
ZXJyKCJBbGxvY2F0aW9uIGZhaWxlZFxuIik7Cj4gPiA+ID4gKyAgICAgICAgICAgICAgIHJldHVy
bjsKPiA+ID4gPiArICAgICAgIH0KPiA+ID4gPiArCj4gPiA+ID4gKyAgICAgICBtZW1zZXQoKGNo
YXIgKilwdHIsIDAsIDY0KTsKPiA+ID4gPiArICAgICAgIG1lbW1vdmUoKGNoYXIgKilwdHIsIChj
aGFyICopcHRyICsgNCwgLTIpOwo+ID4gPiA+ICsgICAgICAga2ZyZWUocHRyKTsKPiA+ID4gPiAr
fQo+ID4gPiA+ICsKPiA+ID4gPiArc3RhdGljIG5vaW5saW5lIHZvaWQgX19pbml0IGttYWxsb2Nf
b29iX2luX21lbW1vdmVfb3ZlcmZsb3codm9pZCkKPiA+ID4gPiArewo+ID4gPiA+ICsgICAgICAg
Y2hhciAqcHRyOwo+ID4gPiA+ICsgICAgICAgc2l6ZV90IHNpemUgPSA2NDsKPiA+ID4gPiArCj4g
PiA+ID4gKyAgICAgICBwcl9pbmZvKCJvdmVyZmxvdyBvdXQtb2YtYm91bmRzIGluIG1lbW1vdmVc
biIpOwo+ID4gPiA+ICsgICAgICAgcHRyID0ga21hbGxvYyhzaXplLCBHRlBfS0VSTkVMKTsKPiA+
ID4gPiArICAgICAgIGlmICghcHRyKSB7Cj4gPiA+ID4gKyAgICAgICAgICAgICAgIHByX2Vycigi
QWxsb2NhdGlvbiBmYWlsZWRcbiIpOwo+ID4gPiA+ICsgICAgICAgICAgICAgICByZXR1cm47Cj4g
PiA+ID4gKyAgICAgICB9Cj4gPiA+ID4gKwo+ID4gPiA+ICsgICAgICAgbWVtc2V0KChjaGFyICop
cHRyLCAwLCA2NCk7Cj4gPiA+ID4gKyAgICAgICBtZW1tb3ZlKChjaGFyICopcHRyICsgc2l6ZSwg
KGNoYXIgKilwdHIsIDIpOwo+ID4gPiA+ICsgICAgICAga2ZyZWUocHRyKTsKPiA+ID4gPiArfQo+
ID4gPiA+ICsKPiA+ID4gPiAgc3RhdGljIG5vaW5saW5lIHZvaWQgX19pbml0IGttYWxsb2NfdWFm
KHZvaWQpCj4gPiA+ID4gIHsKPiA+ID4gPiAgICAgICAgIGNoYXIgKnB0cjsKPiA+ID4gPiBAQCAt
NzM0LDYgKzc2OCw4IEBAIHN0YXRpYyBpbnQgX19pbml0IGttYWxsb2NfdGVzdHNfaW5pdCh2b2lk
KQo+ID4gPiA+ICAgICAgICAga21hbGxvY19vb2JfbWVtc2V0XzQoKTsKPiA+ID4gPiAgICAgICAg
IGttYWxsb2Nfb29iX21lbXNldF84KCk7Cj4gPiA+ID4gICAgICAgICBrbWFsbG9jX29vYl9tZW1z
ZXRfMTYoKTsKPiA+ID4gPiArICAgICAgIGttYWxsb2Nfb29iX2luX21lbW1vdmVfdW5kZXJmbG93
KCk7Cj4gPiA+ID4gKyAgICAgICBrbWFsbG9jX29vYl9pbl9tZW1tb3ZlX292ZXJmbG93KCk7Cj4g
PiA+ID4gICAgICAgICBrbWFsbG9jX3VhZigpOwo+ID4gPiA+ICAgICAgICAga21hbGxvY191YWZf
bWVtc2V0KCk7Cj4gPiA+ID4gICAgICAgICBrbWFsbG9jX3VhZjIoKTsKPiA+ID4gPiBkaWZmIC0t
Z2l0IGEvbW0va2FzYW4vZ2VuZXJpYy5jIGIvbW0va2FzYW4vZ2VuZXJpYy5jCj4gPiA+ID4gaW5k
ZXggNjE2ZjlkZDgyZDEyLi4zNGNhMjNkNTllNjcgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvbW0va2Fz
YW4vZ2VuZXJpYy5jCj4gPiA+ID4gKysrIGIvbW0va2FzYW4vZ2VuZXJpYy5jCj4gPiA+ID4gQEAg
LTEzMSw5ICsxMzEsMTMgQEAgc3RhdGljIF9fYWx3YXlzX2lubGluZSBib29sIG1lbW9yeV9pc19w
b2lzb25lZF9uKHVuc2lnbmVkIGxvbmcgYWRkciwKPiA+ID4gPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzaXplX3Qgc2l6ZSkKPiA+ID4gPiAgewo+ID4g
PiA+ICAgICAgICAgdW5zaWduZWQgbG9uZyByZXQ7Cj4gPiA+ID4gKyAgICAgICB2b2lkICpzaGFk
b3dfc3RhcnQgPSBrYXNhbl9tZW1fdG9fc2hhZG93KCh2b2lkICopYWRkcik7Cj4gPiA+ID4gKyAg
ICAgICB2b2lkICpzaGFkb3dfZW5kID0ga2FzYW5fbWVtX3RvX3NoYWRvdygodm9pZCAqKWFkZHIg
KyBzaXplIC0gMSkgKyAxOwo+ID4gPiA+Cj4gPiA+ID4gLSAgICAgICByZXQgPSBtZW1vcnlfaXNf
bm9uemVybyhrYXNhbl9tZW1fdG9fc2hhZG93KCh2b2lkICopYWRkciksCj4gPiA+ID4gLSAgICAg
ICAgICAgICAgICAgICAgICAga2FzYW5fbWVtX3RvX3NoYWRvdygodm9pZCAqKWFkZHIgKyBzaXpl
IC0gMSkgKyAxKTsKPiA+ID4gPiArICAgICAgIGlmICgobG9uZylzaXplIDwgMCkKPiA+ID4gPiAr
ICAgICAgICAgICAgICAgc2hhZG93X2VuZCA9IGthc2FuX21lbV90b19zaGFkb3coKHZvaWQgKilh
ZGRyICsgc2l6ZSk7Cj4gPiA+Cj4gPiA+IEhpIFdhbHRlciwKPiA+ID4KPiA+ID4gVGhhbmtzIGZv
ciB3b3JraW5nIG9uIHRoaXMuCj4gPiA+Cj4gPiA+IElmIHNpemU8MCwgZG9lcyBpdCBtYWtlIHNl
bnNlIHRvIGNvbnRpbnVlIGF0IGFsbD8gV2Ugd2lsbCBzdGlsbCBjaGVjawo+ID4gPiAxUEIgb2Yg
c2hhZG93IG1lbW9yeT8gV2hhdCBoYXBwZW5zIHdoZW4gd2UgcGFzcyBzdWNoIGh1Z2UgcmFuZ2Ug
dG8KPiA+ID4gbWVtb3J5X2lzX25vbnplcm8/Cj4gPiA+IFBlcmhhcHMgaXQncyBiZXR0ZXIgdG8g
cHJvZHVjZSBhbiBlcnJvciBhbmQgYmFpbCBvdXQgaW1tZWRpYXRlbHkgaWYgc2l6ZTwwPwo+ID4K
PiA+IEkgYWdyZWUgd2l0aCB3aGF0IHlvdSBzYWlkLiB3aGVuIHNpemU8MCwgaXQgaXMgaW5kZWVk
IGFuIHVucmVhc29uYWJsZQo+ID4gYmVoYXZpb3IsIGl0IHNob3VsZCBiZSBibG9ja2VkIGZyb20g
Y29udGludWluZyB0byBkby4KPiA+Cj4gPgo+ID4gPiBBbHNvLCB3aGF0J3MgdGhlIGZhaWx1cmUg
bW9kZSBvZiB0aGUgdGVzdHM/IERpZG4ndCB0aGV5IGJhZGx5IGNvcnJ1cHQKPiA+ID4gbWVtb3J5
PyBXZSB0cmllZCB0byBrZWVwIHRlc3RzIHN1Y2ggdGhhdCB0aGV5IHByb2R1Y2UgdGhlIEtBU0FO
Cj4gPiA+IHJlcG9ydHMsIGJ1dCBkb24ndCBiYWRseSBjb3JydXB0IG1lbW9yeSBiL2MvIHdlIG5l
ZWQgdG8gcnVuIGFsbCBvZgo+ID4gPiB0aGVtLgo+ID4KPiA+IE1heWJlIHdlIHNob3VsZCBmaXJz
dCBwcm9kdWNlIEtBU0FOIHJlcG9ydHMgYW5kIHRoZW4gZ28gdG8gZXhlY3V0ZQo+ID4gbWVtbW92
ZSgpIG9yIGRvIG5vdGhpbmc/IEl0IGxvb2tzIGxpa2UgaXTigJlzIGRvaW5nIHRoZSBmb2xsb3dp
bmcub3I/Cj4gPgo+ID4gdm9pZCAqbWVtbW92ZSh2b2lkICpkZXN0LCBjb25zdCB2b2lkICpzcmMs
IHNpemVfdCBsZW4pCj4gPiAgewo+ID4gKyAgICAgICBpZiAobG9uZyhsZW4pIDw9IDApCj4gCj4g
L1wvXC9cL1wvXC9cCj4gCj4gVGhpcyBjaGVjayBuZWVkcyB0byBiZSBpbnNpZGUgb2YgY2hlY2tf
bWVtb3J5X3JlZ2lvbiwgb3RoZXJ3aXNlIHdlCj4gd2lsbCBoYXZlIHNpbWlsYXIgcHJvYmxlbXMg
aW4gYWxsIG90aGVyIHBsYWNlcyB0aGF0IHVzZQo+IGNoZWNrX21lbW9yeV9yZWdpb24uClRoYW5r
cyBmb3IgeW91ciByZW1pbmRlci4KCiBib29sIGNoZWNrX21lbW9yeV9yZWdpb24odW5zaWduZWQg
bG9uZyBhZGRyLCBzaXplX3Qgc2l6ZSwgYm9vbCB3cml0ZSwKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB1bnNpZ25lZCBsb25nIHJldF9pcCkKIHsKKyAgICAgICBpZiAobG9uZyhzaXpl
KSA8IDApIHsKKyAgICAgICAgICAgICAgIGthc2FuX3JlcG9ydF9pbnZhbGlkX3NpemUoc3JjLCBk
ZXN0LCBsZW4sIF9SRVRfSVBfKTsKKyAgICAgICAgICAgICAgIHJldHVybiBmYWxzZTsKKyAgICAg
ICB9CisKICAgICAgICByZXR1cm4gY2hlY2tfbWVtb3J5X3JlZ2lvbl9pbmxpbmUoYWRkciwgc2l6
ZSwgd3JpdGUsIHJldF9pcCk7CiB9Cgo+IEJ1dCBjaGVja19tZW1vcnlfcmVnaW9uIGFscmVhZHkg
cmV0dXJucyBhIGJvb2wsIHNvIHdlIGNvdWxkIGNoZWNrIHRoYXQKPiBib29sIGFuZCByZXR1cm4g
ZWFybHkuCgpXaGVuIHNpemU8MCwgd2Ugc2hvdWxkIG9ubHkgc2hvdyBvbmUgS0FTQU4gcmVwb3J0
LCBhbmQgc2hvdWxkIHdlIG9ubHkKbGltaXQgdG8gcmV0dXJuIHdoZW4gc2l6ZTwwIGlzIHRydWU/
IElmIHlzZSwgdGhlbiBfX21lbW1vdmUoKSB3aWxsIGRvCm5vdGhpbmcuCgoKIHZvaWQgKm1lbW1v
dmUodm9pZCAqZGVzdCwgY29uc3Qgdm9pZCAqc3JjLCBzaXplX3QgbGVuKQogewotICAgICAgIGNo
ZWNrX21lbW9yeV9yZWdpb24oKHVuc2lnbmVkIGxvbmcpc3JjLCBsZW4sIGZhbHNlLCBfUkVUX0lQ
Xyk7CisgICAgICAgaWYoIWNoZWNrX21lbW9yeV9yZWdpb24oKHVuc2lnbmVkIGxvbmcpc3JjLCBs
ZW4sIGZhbHNlLApfUkVUX0lQXykKKyAgICAgICAgICAgICAgICYmIGxvbmcoc2l6ZSkgPCAwKQor
ICAgICAgICAgICAgICAgcmV0dXJuOworCiAgICAgICAgY2hlY2tfbWVtb3J5X3JlZ2lvbigodW5z
aWduZWQgbG9uZylkZXN0LCBsZW4sIHRydWUsIF9SRVRfSVBfKTsKCiAgICAgICAgcmV0dXJuIF9f
bWVtbW92ZShkZXN0LCBzcmMsIGxlbik7Cgo+IAo+IAo+ID4gKyAgICAgICAgICAgICAgIGthc2Fu
X3JlcG9ydF9pbnZhbGlkX3NpemUoc3JjLCBkZXN0LCBsZW4sIF9SRVRfSVBfKTsKPiA+ICsKPiA+
ICAgICAgICAgY2hlY2tfbWVtb3J5X3JlZ2lvbigodW5zaWduZWQgbG9uZylzcmMsIGxlbiwgZmFs
c2UsIF9SRVRfSVBfKTsKPiA+ICAgICAgICAgY2hlY2tfbWVtb3J5X3JlZ2lvbigodW5zaWduZWQg
bG9uZylkZXN0LCBsZW4sIHRydWUsIF9SRVRfSVBfKTsKPiA+Cj4gPgo+ID4KCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
