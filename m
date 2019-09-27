Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5D1C0731
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 16:22:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tEcluA0W9Zlj1Ec24V2G6YJS8mZETJ1FD49xuTYj8fo=; b=c7wmWrQHV8hvIo
	KZReouI9X5iuC8ui6zS+dP3PD6iKoxgVINMv/OMr7BLrEJEzm1mK97gNQlSwJsISQ+eb0Azc5Vzfy
	nG+KIsyu1jzqX4mkIo33YeZOs1SemW+z2BpbG14ioz6115MkUHo/GX7uY8XgF9LZfqQ1iYgacGcX8
	dVTko6YrgxvHP2aEhnBvJwGPcq9J1DRFrr//QxMRPEJlBvTJidxwmZimenbHYHeekv8Un2uFT5hQ/
	A4cKelle/PEqNx8m8zEIsMUipf9gX7m/4koai7OOlO+mVKE2eF4WPNMIl99KWjF3a5FyLlq9frPhq
	KA70LvOB8FBrU9N6l2fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDr8q-0003V2-Be; Fri, 27 Sep 2019 14:22:40 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDr8h-0003TY-Gb; Fri, 27 Sep 2019 14:22:33 +0000
X-UUID: d90e4749f4f749afb4c90e01ca4a3488-20190927
X-UUID: d90e4749f4f749afb4c90e01ca4a3488-20190927
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 388489; Fri, 27 Sep 2019 06:22:22 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Sep 2019 07:22:21 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Sep 2019 22:22:19 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 27 Sep 2019 22:22:19 +0800
Message-ID: <1569594142.9045.24.camel@mtksdccf07>
Subject: Re: [PATCH] kasan: fix the missing underflow in memmove and memcpy
 with CONFIG_KASAN_GENERIC=y
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Dmitry Vyukov <dvyukov@google.com>
Date: Fri, 27 Sep 2019 22:22:22 +0800
In-Reply-To: <CACT4Y+Zxz+R=qQxSMoipXoLjRqyApD3O0eYpK0nyrfGHE4NNPw@mail.gmail.com>
References: <20190927034338.15813-1-walter-zh.wu@mediatek.com>
 <CACT4Y+Zxz+R=qQxSMoipXoLjRqyApD3O0eYpK0nyrfGHE4NNPw@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_072231_563948_31D65839 
X-CRM114-Status: GOOD (  24.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

T24gRnJpLCAyMDE5LTA5LTI3IGF0IDE1OjA3ICswMjAwLCBEbWl0cnkgVnl1a292IHdyb3RlOgo+
IE9uIEZyaSwgU2VwIDI3LCAyMDE5IGF0IDU6NDMgQU0gV2FsdGVyIFd1IDx3YWx0ZXItemgud3VA
bWVkaWF0ZWsuY29tPiB3cm90ZToKPiA+Cj4gPiBtZW1tb3ZlKCkgYW5kIG1lbWNweSgpIGhhdmUg
bWlzc2luZyB1bmRlcmZsb3cgaXNzdWVzLgo+ID4gV2hlbiAtNyA8PSBzaXplIDwgMCwgdGhlbiBL
QVNBTiB3aWxsIG1pc3MgdG8gY2F0Y2ggdGhlIHVuZGVyZmxvdyBpc3N1ZS4KPiA+IEl0IGxvb2tz
IGxpa2Ugc2hhZG93IHN0YXJ0IGFkZHJlc3MgYW5kIHNoYWRvdyBlbmQgYWRkcmVzcyBpcyB0aGUg
c2FtZSwKPiA+IHNvIGl0IGRvZXMgbm90IGFjdHVhbGx5IGNoZWNrIGFueXRoaW5nLgo+ID4KPiA+
IFRoZSBmb2xsb3dpbmcgdGVzdCBpcyBpbmRlZWQgbm90IGNhdWdodCBieSBLQVNBTjoKPiA+Cj4g
PiAgICAgICAgIGNoYXIgKnAgPSBrbWFsbG9jKDY0LCBHRlBfS0VSTkVMKTsKPiA+ICAgICAgICAg
bWVtc2V0KChjaGFyICopcCwgMCwgNjQpOwo+ID4gICAgICAgICBtZW1tb3ZlKChjaGFyICopcCwg
KGNoYXIgKilwICsgNCwgLTIpOwo+ID4gICAgICAgICBrZnJlZSgoY2hhciopcCk7Cj4gPgo+ID4g
SXQgc2hvdWxkIGJlIGNoZWNrZWQgaGVyZToKPiA+Cj4gPiB2b2lkICptZW1tb3ZlKHZvaWQgKmRl
c3QsIGNvbnN0IHZvaWQgKnNyYywgc2l6ZV90IGxlbikKPiA+IHsKPiA+ICAgICAgICAgY2hlY2tf
bWVtb3J5X3JlZ2lvbigodW5zaWduZWQgbG9uZylzcmMsIGxlbiwgZmFsc2UsIF9SRVRfSVBfKTsK
PiA+ICAgICAgICAgY2hlY2tfbWVtb3J5X3JlZ2lvbigodW5zaWduZWQgbG9uZylkZXN0LCBsZW4s
IHRydWUsIF9SRVRfSVBfKTsKPiA+Cj4gPiAgICAgICAgIHJldHVybiBfX21lbW1vdmUoZGVzdCwg
c3JjLCBsZW4pOwo+ID4gfQo+ID4KPiA+IFdlIGZpeCB0aGUgc2hhZG93IGVuZCBhZGRyZXNzIHdo
aWNoIGlzIGNhbGN1bGF0ZWQsIHRoZW4gZ2VuZXJpYyBLQVNBTgo+ID4gZ2V0IHRoZSByaWdodCBz
aGFkb3cgZW5kIGFkZHJlc3MgYW5kIGRldGVjdCB0aGlzIHVuZGVyZmxvdyBpc3N1ZS4KPiA+Cj4g
PiBbMV0gaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0xOTkzNDEK
PiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBXYWx0ZXIgV3UgPHdhbHRlci16aC53dUBtZWRpYXRlay5j
b20+Cj4gPiBSZXBvcnRlZC1ieTogRG1pdHJ5IFZ5dWtvdiA8ZHZ5dWtvdkBnb29nbGUuY29tPgo+
ID4gLS0tCj4gPiAgbGliL3Rlc3Rfa2FzYW4uYyAgIHwgMzYgKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrCj4gPiAgbW0va2FzYW4vZ2VuZXJpYy5jIHwgIDggKysrKysrLS0KPiA+
ICAyIGZpbGVzIGNoYW5nZWQsIDQyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPgo+
ID4gZGlmZiAtLWdpdCBhL2xpYi90ZXN0X2thc2FuLmMgYi9saWIvdGVzdF9rYXNhbi5jCj4gPiBp
bmRleCBiNjNiMzY3YTk0ZTguLjhiZDAxNDg1MjU1NiAxMDA2NDQKPiA+IC0tLSBhL2xpYi90ZXN0
X2thc2FuLmMKPiA+ICsrKyBiL2xpYi90ZXN0X2thc2FuLmMKPiA+IEBAIC0yODAsNiArMjgwLDQw
IEBAIHN0YXRpYyBub2lubGluZSB2b2lkIF9faW5pdCBrbWFsbG9jX29vYl9pbl9tZW1zZXQodm9p
ZCkKPiA+ICAgICAgICAga2ZyZWUocHRyKTsKPiA+ICB9Cj4gPgo+ID4gK3N0YXRpYyBub2lubGlu
ZSB2b2lkIF9faW5pdCBrbWFsbG9jX29vYl9pbl9tZW1tb3ZlX3VuZGVyZmxvdyh2b2lkKQo+ID4g
K3sKPiA+ICsgICAgICAgY2hhciAqcHRyOwo+ID4gKyAgICAgICBzaXplX3Qgc2l6ZSA9IDY0Owo+
ID4gKwo+ID4gKyAgICAgICBwcl9pbmZvKCJ1bmRlcmZsb3cgb3V0LW9mLWJvdW5kcyBpbiBtZW1t
b3ZlXG4iKTsKPiA+ICsgICAgICAgcHRyID0ga21hbGxvYyhzaXplLCBHRlBfS0VSTkVMKTsKPiA+
ICsgICAgICAgaWYgKCFwdHIpIHsKPiA+ICsgICAgICAgICAgICAgICBwcl9lcnIoIkFsbG9jYXRp
b24gZmFpbGVkXG4iKTsKPiA+ICsgICAgICAgICAgICAgICByZXR1cm47Cj4gPiArICAgICAgIH0K
PiA+ICsKPiA+ICsgICAgICAgbWVtc2V0KChjaGFyICopcHRyLCAwLCA2NCk7Cj4gPiArICAgICAg
IG1lbW1vdmUoKGNoYXIgKilwdHIsIChjaGFyICopcHRyICsgNCwgLTIpOwo+ID4gKyAgICAgICBr
ZnJlZShwdHIpOwo+ID4gK30KPiA+ICsKPiA+ICtzdGF0aWMgbm9pbmxpbmUgdm9pZCBfX2luaXQg
a21hbGxvY19vb2JfaW5fbWVtbW92ZV9vdmVyZmxvdyh2b2lkKQo+ID4gK3sKPiA+ICsgICAgICAg
Y2hhciAqcHRyOwo+ID4gKyAgICAgICBzaXplX3Qgc2l6ZSA9IDY0Owo+ID4gKwo+ID4gKyAgICAg
ICBwcl9pbmZvKCJvdmVyZmxvdyBvdXQtb2YtYm91bmRzIGluIG1lbW1vdmVcbiIpOwo+ID4gKyAg
ICAgICBwdHIgPSBrbWFsbG9jKHNpemUsIEdGUF9LRVJORUwpOwo+ID4gKyAgICAgICBpZiAoIXB0
cikgewo+ID4gKyAgICAgICAgICAgICAgIHByX2VycigiQWxsb2NhdGlvbiBmYWlsZWRcbiIpOwo+
ID4gKyAgICAgICAgICAgICAgIHJldHVybjsKPiA+ICsgICAgICAgfQo+ID4gKwo+ID4gKyAgICAg
ICBtZW1zZXQoKGNoYXIgKilwdHIsIDAsIDY0KTsKPiA+ICsgICAgICAgbWVtbW92ZSgoY2hhciAq
KXB0ciArIHNpemUsIChjaGFyICopcHRyLCAyKTsKPiA+ICsgICAgICAga2ZyZWUocHRyKTsKPiA+
ICt9Cj4gPiArCj4gPiAgc3RhdGljIG5vaW5saW5lIHZvaWQgX19pbml0IGttYWxsb2NfdWFmKHZv
aWQpCj4gPiAgewo+ID4gICAgICAgICBjaGFyICpwdHI7Cj4gPiBAQCAtNzM0LDYgKzc2OCw4IEBA
IHN0YXRpYyBpbnQgX19pbml0IGttYWxsb2NfdGVzdHNfaW5pdCh2b2lkKQo+ID4gICAgICAgICBr
bWFsbG9jX29vYl9tZW1zZXRfNCgpOwo+ID4gICAgICAgICBrbWFsbG9jX29vYl9tZW1zZXRfOCgp
Owo+ID4gICAgICAgICBrbWFsbG9jX29vYl9tZW1zZXRfMTYoKTsKPiA+ICsgICAgICAga21hbGxv
Y19vb2JfaW5fbWVtbW92ZV91bmRlcmZsb3coKTsKPiA+ICsgICAgICAga21hbGxvY19vb2JfaW5f
bWVtbW92ZV9vdmVyZmxvdygpOwo+ID4gICAgICAgICBrbWFsbG9jX3VhZigpOwo+ID4gICAgICAg
ICBrbWFsbG9jX3VhZl9tZW1zZXQoKTsKPiA+ICAgICAgICAga21hbGxvY191YWYyKCk7Cj4gPiBk
aWZmIC0tZ2l0IGEvbW0va2FzYW4vZ2VuZXJpYy5jIGIvbW0va2FzYW4vZ2VuZXJpYy5jCj4gPiBp
bmRleCA2MTZmOWRkODJkMTIuLjM0Y2EyM2Q1OWU2NyAxMDA2NDQKPiA+IC0tLSBhL21tL2thc2Fu
L2dlbmVyaWMuYwo+ID4gKysrIGIvbW0va2FzYW4vZ2VuZXJpYy5jCj4gPiBAQCAtMTMxLDkgKzEz
MSwxMyBAQCBzdGF0aWMgX19hbHdheXNfaW5saW5lIGJvb2wgbWVtb3J5X2lzX3BvaXNvbmVkX24o
dW5zaWduZWQgbG9uZyBhZGRyLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgc2l6ZV90IHNpemUpCj4gPiAgewo+ID4gICAgICAgICB1bnNpZ25lZCBs
b25nIHJldDsKPiA+ICsgICAgICAgdm9pZCAqc2hhZG93X3N0YXJ0ID0ga2FzYW5fbWVtX3RvX3No
YWRvdygodm9pZCAqKWFkZHIpOwo+ID4gKyAgICAgICB2b2lkICpzaGFkb3dfZW5kID0ga2FzYW5f
bWVtX3RvX3NoYWRvdygodm9pZCAqKWFkZHIgKyBzaXplIC0gMSkgKyAxOwo+ID4KPiA+IC0gICAg
ICAgcmV0ID0gbWVtb3J5X2lzX25vbnplcm8oa2FzYW5fbWVtX3RvX3NoYWRvdygodm9pZCAqKWFk
ZHIpLAo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAga2FzYW5fbWVtX3RvX3NoYWRvdygodm9p
ZCAqKWFkZHIgKyBzaXplIC0gMSkgKyAxKTsKPiA+ICsgICAgICAgaWYgKChsb25nKXNpemUgPCAw
KQo+ID4gKyAgICAgICAgICAgICAgIHNoYWRvd19lbmQgPSBrYXNhbl9tZW1fdG9fc2hhZG93KCh2
b2lkICopYWRkciArIHNpemUpOwo+IAo+IEhpIFdhbHRlciwKPiAKPiBUaGFua3MgZm9yIHdvcmtp
bmcgb24gdGhpcy4KPiAKPiBJZiBzaXplPDAsIGRvZXMgaXQgbWFrZSBzZW5zZSB0byBjb250aW51
ZSBhdCBhbGw/IFdlIHdpbGwgc3RpbGwgY2hlY2sKPiAxUEIgb2Ygc2hhZG93IG1lbW9yeT8gV2hh
dCBoYXBwZW5zIHdoZW4gd2UgcGFzcyBzdWNoIGh1Z2UgcmFuZ2UgdG8KPiBtZW1vcnlfaXNfbm9u
emVybz8KPiBQZXJoYXBzIGl0J3MgYmV0dGVyIHRvIHByb2R1Y2UgYW4gZXJyb3IgYW5kIGJhaWwg
b3V0IGltbWVkaWF0ZWx5IGlmIHNpemU8MD8KCkkgYWdyZWUgd2l0aCB3aGF0IHlvdSBzYWlkLiB3
aGVuIHNpemU8MCwgaXQgaXMgaW5kZWVkIGFuIHVucmVhc29uYWJsZQpiZWhhdmlvciwgaXQgc2hv
dWxkIGJlIGJsb2NrZWQgZnJvbSBjb250aW51aW5nIHRvIGRvLgoKCj4gQWxzbywgd2hhdCdzIHRo
ZSBmYWlsdXJlIG1vZGUgb2YgdGhlIHRlc3RzPyBEaWRuJ3QgdGhleSBiYWRseSBjb3JydXB0Cj4g
bWVtb3J5PyBXZSB0cmllZCB0byBrZWVwIHRlc3RzIHN1Y2ggdGhhdCB0aGV5IHByb2R1Y2UgdGhl
IEtBU0FOCj4gcmVwb3J0cywgYnV0IGRvbid0IGJhZGx5IGNvcnJ1cHQgbWVtb3J5IGIvYy8gd2Ug
bmVlZCB0byBydW4gYWxsIG9mCj4gdGhlbS4KCk1heWJlIHdlIHNob3VsZCBmaXJzdCBwcm9kdWNl
IEtBU0FOIHJlcG9ydHMgYW5kIHRoZW4gZ28gdG8gZXhlY3V0ZQptZW1tb3ZlKCkgb3IgZG8gbm90
aGluZz8gSXQgbG9va3MgbGlrZSBpdOKAmXMgZG9pbmcgdGhlIGZvbGxvd2luZy5vcj8KCnZvaWQg
Km1lbW1vdmUodm9pZCAqZGVzdCwgY29uc3Qgdm9pZCAqc3JjLCBzaXplX3QgbGVuKQogeworICAg
ICAgIGlmIChsb25nKGxlbikgPD0gMCkKKyAgICAgICAgICAgICAgIGthc2FuX3JlcG9ydF9pbnZh
bGlkX3NpemUoc3JjLCBkZXN0LCBsZW4sIF9SRVRfSVBfKTsKKwogICAgICAgIGNoZWNrX21lbW9y
eV9yZWdpb24oKHVuc2lnbmVkIGxvbmcpc3JjLCBsZW4sIGZhbHNlLCBfUkVUX0lQXyk7CiAgICAg
ICAgY2hlY2tfbWVtb3J5X3JlZ2lvbigodW5zaWduZWQgbG9uZylkZXN0LCBsZW4sIHRydWUsIF9S
RVRfSVBfKTsKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
