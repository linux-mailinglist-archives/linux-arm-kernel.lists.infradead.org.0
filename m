Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1435D765B4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 14:28:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vkct/0FjH8AzqS59M+TQoSQvSCB+FsbL9GitJMs0vn4=; b=FWoYkw+uuDNerz
	6iBqg+x5QryZZ4AcgKw0lLMlBRT2S8x0yM2B6vgtaINg/scs/cUNVr0o2ySelkqX9doWcwDfsaKNQ
	w+7ugLey50srhLvJRcMmClXVlzcDrMvj3Mb+P4PsXMZmtnMIFPkZMNwjM7u6KobNcnfGFrCZ37N+B
	mC1DrdBxK60maofqkDiVOmRM6Ls3r+qE8f2S8usoMh09vtPGI+1x4VemDmgdqTMHc72l1u9ePXfd+
	L+Za1ugNdN2HJQuFATZ6TkKQpvCobphcO17NS7C6HtYwbTAVpNTVfHWt/wJgR9EC2gH9WfRQPndUf
	vjv855CBHekrgXfkLGbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqzLF-0003vj-5Q; Fri, 26 Jul 2019 12:28:57 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqzKq-0003tw-Ve; Fri, 26 Jul 2019 12:28:34 +0000
X-UUID: 8706d99214264433bb299cabc12455b5-20190726
X-UUID: 8706d99214264433bb299cabc12455b5-20190726
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 755713311; Fri, 26 Jul 2019 04:28:20 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 26 Jul 2019 05:28:18 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 26 Jul 2019 20:28:17 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 26 Jul 2019 20:28:17 +0800
Message-ID: <1564144097.515.3.camel@mtksdccf07>
Subject: Re: [PATCH v3] kasan: add memory corruption identification for
 software tag-based mode
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>
Date: Fri, 26 Jul 2019 20:28:17 +0800
In-Reply-To: <e62da62a-2a63-3a1c-faeb-9c5561a5170c@virtuozzo.com>
References: <20190613081357.1360-1-walter-zh.wu@mediatek.com>
 <da7591c9-660d-d380-d59e-6d70b39eaa6b@virtuozzo.com>
 <1560447999.15814.15.camel@mtksdccf07>
 <1560479520.15814.34.camel@mtksdccf07>
 <1560744017.15814.49.camel@mtksdccf07>
 <CACT4Y+Y3uS59rXf92ByQuFK_G4v0H8NNnCY1tCbr4V+PaZF3ag@mail.gmail.com>
 <1560774735.15814.54.camel@mtksdccf07>
 <1561974995.18866.1.camel@mtksdccf07>
 <CACT4Y+aMXTBE0uVkeZz+MuPx3X1nESSBncgkScWvAkciAxP1RA@mail.gmail.com>
 <ebc99ee1-716b-0b18-66ab-4e93de02ce50@virtuozzo.com>
 <1562640832.9077.32.camel@mtksdccf07>
 <d9fd1d5b-9516-b9b9-0670-a1885e79f278@virtuozzo.com>
 <1562839579.5846.12.camel@mtksdccf07>
 <37897fb7-88c1-859a-dfcc-0a5e89a642e0@virtuozzo.com>
 <1563160001.4793.4.camel@mtksdccf07>
 <9ab1871a-2605-ab34-3fd3-4b44a0e17ab7@virtuozzo.com>
 <1563789162.31223.3.camel@mtksdccf07>
 <e62da62a-2a63-3a1c-faeb-9c5561a5170c@virtuozzo.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_052833_021501_0C589999 
X-CRM114-Status: GOOD (  27.17  )
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>, "Jason
 A . Donenfeld" <Jason@zx2c4.com>, Vasily
 Gorbik <gor@linux.ibm.com>, Arnd Bergmann <arnd@arndb.de>,
 Linux-MM <linux-mm@kvack.org>, Andrey Konovalov <andreyknvl@google.com>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 Pekka Enberg <penberg@kernel.org>, Martin
 Schwidefsky <schwidefsky@de.ibm.com>, Miles Chen <miles.chen@mediatek.com>,
 Alexander Potapenko <glider@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 David Rientjes <rientjes@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Christoph Lameter <cl@linux.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAyMDE5LTA3LTI2IGF0IDE1OjAwICswMzAwLCBBbmRyZXkgUnlhYmluaW4gd3JvdGU6
Cj4gCj4gT24gNy8yMi8xOSAxMjo1MiBQTSwgV2FsdGVyIFd1IHdyb3RlOgo+ID4gT24gVGh1LCAy
MDE5LTA3LTE4IGF0IDE5OjExICswMzAwLCBBbmRyZXkgUnlhYmluaW4gd3JvdGU6Cj4gPj4KPiA+
PiBPbiA3LzE1LzE5IDY6MDYgQU0sIFdhbHRlciBXdSB3cm90ZToKPiA+Pj4gT24gRnJpLCAyMDE5
LTA3LTEyIGF0IDEzOjUyICswMzAwLCBBbmRyZXkgUnlhYmluaW4gd3JvdGU6Cj4gPj4+Pgo+ID4+
Pj4gT24gNy8xMS8xOSAxOjA2IFBNLCBXYWx0ZXIgV3Ugd3JvdGU6Cj4gPj4+Pj4gT24gV2VkLCAy
MDE5LTA3LTEwIGF0IDIxOjI0ICswMzAwLCBBbmRyZXkgUnlhYmluaW4gd3JvdGU6Cj4gPj4+Pj4+
Cj4gPj4+Pj4+IE9uIDcvOS8xOSA1OjUzIEFNLCBXYWx0ZXIgV3Ugd3JvdGU6Cj4gPj4+Pj4+PiBP
biBNb24sIDIwMTktMDctMDggYXQgMTk6MzMgKzAzMDAsIEFuZHJleSBSeWFiaW5pbiB3cm90ZToK
PiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+IE9uIDcvNS8xOSA0OjM0IFBNLCBEbWl0cnkgVnl1a292IHdy
b3RlOgo+ID4+Pj4+Pj4+PiBPbiBNb24sIEp1bCAxLCAyMDE5IGF0IDExOjU2IEFNIFdhbHRlciBX
dSA8d2FsdGVyLXpoLnd1QG1lZGlhdGVrLmNvbT4gd3JvdGU6Cj4gPj4+Pj4+Cj4gPj4+Pj4+Pj4+
Cj4gPj4+Pj4+Pj4+IFNvcnJ5IGZvciBkZWxheXMuIEkgYW0gb3ZlcndoZWxtIGJ5IHNvbWUgdXJn
ZW50IHdvcmsuIEkgYWZyYWlkIHRvCj4gPj4+Pj4+Pj4+IHByb21pc2UgYW55IGRhdGVzIGJlY2F1
c2UgdGhlIG5leHQgd2VlayBJIGFtIG9uIGEgY29uZmVyZW5jZSwgdGhlbgo+ID4+Pj4+Pj4+PiBh
Z2FpbiBhIGJhY2tsb2cgYW5kIGFuIGludGVybiBzdGFydGluZy4uLgo+ID4+Pj4+Pj4+Pgo+ID4+
Pj4+Pj4+PiBBbmRyZXksIGRvIHlvdSBzdGlsbCBoYXZlIGNvbmNlcm5zIHJlIHRoaXMgcGF0Y2g/
IFRoaXMgY2hhbmdlIGFsbG93cwo+ID4+Pj4+Pj4+PiB0byBwcmludCB0aGUgZnJlZSBzdGFjay4K
PiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+IEkgJ20gbm90IHN1cmUgdGhhdCBxdWFyYW50aW5lIGlzIGEg
YmVzdCB3YXkgdG8gZG8gdGhhdC4gUXVhcmFudGluZSBpcyBtYWRlIHRvIGRlbGF5IGZyZWVpbmcs
IGJ1dCB3ZSBkb24ndCB0aGF0IGhlcmUuCj4gPj4+Pj4+Pj4gSWYgd2Ugd2FudCB0byByZW1lbWJl
ciBtb3JlIGZyZWUgc3RhY2tzIHdvdWxkbid0IGJlIGVhc2llciBzaW1wbHkgdG8gcmVtZW1iZXIg
bW9yZSBzdGFja3MgaW4gb2JqZWN0IGl0c2VsZj8KPiA+Pj4+Pj4+PiBTYW1lIGZvciBwcmV2aW91
c2x5IHVzZWQgdGFncyBmb3IgYmV0dGVyIHVzZS1hZnRlci1mcmVlIGlkZW50aWZpY2F0aW9uLgo+
ID4+Pj4+Pj4+Cj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gSGkgQW5kcmV5LAo+ID4+Pj4+Pj4KPiA+Pj4+
Pj4+IFdlIGV2ZXIgdHJpZWQgdG8gdXNlIG9iamVjdCBpdHNlbGYgdG8gZGV0ZXJtaW5lIHVzZS1h
ZnRlci1mcmVlCj4gPj4+Pj4+PiBpZGVudGlmaWNhdGlvbiwgYnV0IHRhZy1iYXNlZCBLQVNBTiBp
bW1lZGlhdGVseSByZWxlYXNlZCB0aGUgcG9pbnRlcgo+ID4+Pj4+Pj4gYWZ0ZXIgY2FsbCBrZnJl
ZSgpLCB0aGUgb3JpZ2luYWwgb2JqZWN0IHdpbGwgYmUgdXNlZCBieSBhbm90aGVyCj4gPj4+Pj4+
PiBwb2ludGVyLCBpZiB3ZSB1c2Ugb2JqZWN0IGl0c2VsZiB0byBkZXRlcm1pbmUgdXNlLWFmdGVy
LWZyZWUgaXNzdWUsIHRoZW4KPiA+Pj4+Pj4+IGl0IGhhcyBtYW55IGZhbHNlIG5lZ2F0aXZlIGNh
c2VzLiBzbyB3ZSBjcmVhdGUgYSBsaXRlIHF1YXJhbnRpbmUocmluZwo+ID4+Pj4+Pj4gYnVmZmVy
cykgdG8gcmVjb3JkIHJlY2VudCBmcmVlIHN0YWNrcyBpbiBvcmRlciB0byBhdm9pZCB0aG9zZSBm
YWxzZQo+ID4+Pj4+Pj4gbmVnYXRpdmUgc2l0dWF0aW9ucy4KPiA+Pj4+Pj4KPiA+Pj4+Pj4gSSdt
IHRlbGxpbmcgdGhhdCAqbW9yZSogdGhhbiBvbmUgZnJlZSBzdGFjayBhbmQgYWxzbyB0YWdzIHBl
ciBvYmplY3QgY2FuIGJlIHN0b3JlZC4KPiA+Pj4+Pj4gSWYgb2JqZWN0IHJldXNlZCB3ZSB3b3Vs
ZCBzdGlsbCBoYXZlIGluZm9ybWF0aW9uIGFib3V0IG4tbGFzdCB1c2FnZXMgb2YgdGhlIG9iamVj
dC4KPiA+Pj4+Pj4gSXQgc2VlbXMgbGlrZSBtdWNoIGVhc2llciBhbmQgbW9yZSBlZmZpY2llbnQg
c29sdXRpb24gdGhhbiBwYXRjaCB5b3UgcHJvcG9zaW5nLgo+ID4+Pj4+Pgo+ID4+Pj4+IFRvIG1h
a2UgdGhlIG9iamVjdCByZXVzZWQsIHdlIG11c3QgZW5zdXJlIHRoYXQgbm8gb3RoZXIgcG9pbnRl
cnMgdXNlcyBpdAo+ID4+Pj4+IGFmdGVyIGtmcmVlKCkgcmVsZWFzZSB0aGUgcG9pbnRlci4KPiA+
Pj4+PiBTY2VuYXJpbzoKPiA+Pj4+PiAxKS4gVGhlIG9iamVjdCByZXVzZWQgaW5mb3JtYXRpb24g
aXMgdmFsaWQgd2hlbiBubyBhbm90aGVyIHBvaW50ZXIgdXNlcwo+ID4+Pj4+IGl0Lgo+ID4+Pj4+
IDIpLiBUaGUgb2JqZWN0IHJldXNlZCBpbmZvcm1hdGlvbiBpcyBpbnZhbGlkIHdoZW4gYW5vdGhl
ciBwb2ludGVyIHVzZXMKPiA+Pj4+PiBpdC4KPiA+Pj4+PiBEbyB5b3UgbWVhbiB0aGF0IHRoZSBv
YmplY3QgcmV1c2VkIGlzIHNjZW5hcmlvIDEpID8KPiA+Pj4+PiBJZiB5ZXMsIG1heWJlIHdlIGNh
biBjaGFuZ2UgdGhlIGNhbGxpbmcgcXVhcmFudGluZV9wdXQoKSBsb2NhdGlvbi4gSXQKPiA+Pj4+
PiB3aWxsIGJlIGZ1bGx5IHVzZSB0aGF0IHF1YXJhbnRpbmUsIGJ1dCBhdCBzY2VuYXJpbyAyKSBp
dCBsb29rcyBsaWtlIHRvCj4gPj4+Pj4gbmVlZCB0aGlzIHBhdGNoLgo+ID4+Pj4+IElmIG5vLCBt
YXliZSBpIG1pc3MgeW91ciBtZWFuaW5nLCB3b3VsZCB5b3UgdGVsbCBtZSBob3cgdG8gdXNlIGlu
dmFsaWQKPiA+Pj4+PiBvYmplY3QgaW5mb3JtYXRpb24/IG9yPwo+ID4+Pj4+Cj4gPj4+Pgo+ID4+
Pj4KPiA+Pj4+IEtBU0FOIGtlZXBzIGluZm9ybWF0aW9uIGFib3V0IG9iamVjdCB3aXRoIHRoZSBv
YmplY3QsIHJpZ2h0IGFmdGVyIHBheWxvYWQgaW4gdGhlIGthc2FuX2FsbG9jX21ldGEgc3RydWN0
Lgo+ID4+Pj4gVGhpcyBpbmZvcm1hdGlvbiBpcyBhbHdheXMgdmFsaWQgYXMgbG9uZyBhcyBzbGFi
IHBhZ2UgYWxsb2NhdGVkLiBDdXJyZW50bHkgaXQga2VlcHMgb25seSBvbmUgbGFzdCBmcmVlIHN0
YWNrdHJhY2UuCj4gPj4+PiBJdCBjb3VsZCBiZSBleHRlbmRlZCB0byByZWNvcmQgbW9yZSBmcmVl
IHN0YWNrdHJhY2VzIGFuZCBhbHNvIHJlY29yZCBwcmV2aW91c2x5IHVzZWQgdGFncyB3aGljaCB3
aWxsIGFsbG93IHlvdQo+ID4+Pj4gdG8gaWRlbnRpZnkgdXNlLWFmdGVyLWZyZWUgYW5kIGV4dHJh
Y3QgcmlnaHQgZnJlZSBzdGFja3RyYWNlLgo+ID4+Pgo+ID4+PiBUaGFua3MgZm9yIHlvdXIgZXhw
bGFuYXRpb24uCj4gPj4+Cj4gPj4+IEZvciBleHRlbmQgc2x1YiBvYmplY3QsIGlmIG9uZSByZWNv
cmQgaXMgOUIgKHNpemVvZih1OCkrIHNpemVvZihzdHJ1Y3QKPiA+Pj4ga2FzYW5fdHJhY2spKSBh
bmQgYWRkIGZpdmUgcmVjb3JkcyBpbnRvIHNsdWIgb2JqZWN0LCBldmVyeSBzbHViIG9iamVjdAo+
ID4+PiBtYXkgYWRkIDQ1QiB1c2FnZSBhZnRlciB0aGUgc3lzdGVtIHJ1bnMgbG9uZ2VyLiAKPiA+
Pj4gU2x1YiBvYmplY3QgbnVtYmVyIGlzIGVhc3kgbW9yZSB0aGFuIDEsMDAwLDAwMChtYXliZSBp
dCBtYXkgYmUgbW9yZQo+ID4+PiBiaWdnZXIpLCB0aGVuIHRoZSBleHRlbmRpbmcgb2JqZWN0IG1l
bW9yeSB1c2FnZSBzaG91bGQgYmUgNDVNQiwgYW5kCj4gPj4+IHVuZm9ydHVuYXRlbHkgaXQgaXMg
bm8gbGltaXQuIFRoZSBtZW1vcnkgdXNhZ2UgaXMgbW9yZSBiaWdnZXIgdGhhbiBvdXIKPiA+Pj4g
cGF0Y2guCj4gPj4KPiA+PiBObywgaXQncyBub3QgbmVjZXNzYXJpbHkgbW9yZS4KPiA+PiBBbmQg
dGhlcmUgYXJlIG90aGVyIGFzcGVjdHMgdG8gY29uc2lkZXIgc3VjaCBhcyBwZXJmb3JtYW5jZSwg
aG93IHNpbXBsZSByZWxpYWJsZSB0aGUgY29kZSBpcy4KPiA+Pgo+ID4+Pgo+ID4+PiBXZSBob3Bl
IHRhZy1iYXNlZCBLQVNBTiBhZHZhbnRhZ2UgaXMgc21hbGxlciBtZW1vcnkgdXNhZ2UuIElmIGl0
4oCZcwo+ID4+PiBwb3NzaWJsZSwgd2Ugc2hvdWxkIHNwZW5kIGxlc3MgbWVtb3J5IGluIG9yZGVy
IHRvIGlkZW50aWZ5Cj4gPj4+IHVzZS1hZnRlci1mcmVlLiBXb3VsZCB5b3UgYWNjZXB0IG91ciBw
YXRjaCBhZnRlciBmaW5lIHR1bmUgaXQ/Cj4gPj4KPiA+PiBTdXJlLCBpZiB5b3UgbWFuYWdlIHRv
IGZpeCBpc3N1ZXMgYW5kIGRlbW9uc3RyYXRlIHRoYXQgcGVyZm9ybWFuY2UgcGVuYWx0eSBvZiB5
b3VyCj4gPj4gcGF0Y2ggaXMgY2xvc2UgdG8gemVyby4KPiA+IAo+ID4gCj4gPiBJIHJlbWVtYmVy
IHRoYXQgdGhlcmUgYXJlIGFscmVhZHkgdGhlIGxpc3RzIHdoaWNoIHlvdSBjb25jZXJuLiBNYXli
ZSB3ZQo+ID4gY2FuIHRyeSB0byBzb2x2ZSB0aG9zZSBwcm9ibGVtcyBvbmUgYnkgb25lLgo+ID4g
Cj4gPiAxLiBkZWFkbG9jayBpc3N1ZT8gY2F1c2UgYnkga21hbGxvYygpIGFmdGVyIGtmcmVlKCk/
Cj4gCj4gc21wX2NhbGxfb25fY3B1KCkKCj4gPiAyLiBkZWNyZWFzZSBhbGxvY2F0aW9uIGZhaWws
IHRvIG1vZGlmeSBHRlBfTk9XQUlUIGZsYWcgdG8gR0ZQX0tFUk5FTD8KPiAKPiBObywgdGhpcyBp
cyBub3QgZ29ubmEgd29yay4gSWRlYWxseSB3ZSBzaG91bGRuJ3QgaGF2ZSBhbnkgYWxsb2NhdGlv
bnMgdGhlcmUuCj4gSXQncyBub3QgcmVsaWFibGUgYW5kIGl0IGh1cnRzIHBlcmZvcm1hbmNlLgo+
IApJIGRvbnQga25vdyB0aGlzIG1lYW5pbmcsIHdlIG5lZWQgY3JlYXRlIGEgcW9iamVjdCBhbmQg
cHV0IGludG8KcXVhcmFudGluZSwgc28gbWF5IG5lZWQgdG8gY2FsbCBrbWVtX2NhY2hlX2FsbG9j
KCksIHdvdWxkIHlvdSBhZ3JlZSB0aGlzCmFjdGlvbj8KCj4gCj4gPiAzLiBjaGVjayB3aGV0aGVy
IHNsaW0gNDggYnl0ZXMgKHNpemVvZiAocWxpc3Rfb2JqZWN0KSArCj4gPiBzaXplb2Yoa2FzYW5f
YWxsb2NfbWV0YSkpIGFuZCBhZGRpdGlvbmFsIHVuaXF1ZSBzdGFja3RyYWNlIGluCj4gPiBzdGFj
a2RlcG90Pwo+ID4gNC4gZHVwbGljYXRlIHN0cnVjdCAna2FzYW5fdHJhY2snIGluZm9ybWF0aW9u
IGluIHR3byBkaWZmZXJlbnQgcGxhY2VzCj4gPiAKPiAKPiBZdXAuCj4gCj4gPiBXb3VsZCB5b3Ug
aGF2ZSBhbnkgb3RoZXIgY29uY2Vybj8gb3I/Cj4gPiAKPiAKPiBJdCB3b3VsZCBiZSBuaWNlIHRv
IHNlZSBzb21lIHBlcmZvcm1hbmNlIG51bWJlcnMuIFNvbWV0aGluZyB0aGF0IHVzZXMgc2xhYiBh
bGxvY2F0aW9ucyBhIGxvdCwgZS5nLiBuZXRwZXJmIFNUUkVBTV9TVFJFQU0gdGVzdC4KPiAKb2ss
IHdlIHdpbGwgZG8gaXQuCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
