Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF9E76503
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 14:00:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iCFqHWIUdmFO0Pr/79hAzOZ3A8yONrURh0DMxg815ck=; b=LocKf7SOSZL+D7
	wGPGhjn0FuwD7ddgvAUBLJbb7+oQpm5ySvHS9moM6Wo9NBojVAlh+9TwghUrlKTFw+5h4zAF3v45J
	pEvNKPqWAGTOaL/n4GqLs8QY8y02Ar4YO5+hIviBtg825v+1y4rUkdxKx1hGALezIbfY79dvWdqES
	3rtH65OJlxPdNJxnKTmznGDPtXvhCIaxRyKCyDqtiS751TpNp6siDSGtwDhJ6fvpL0ud4uFNJCR68
	OlcQswzjjpAgqa037SpfsVzsc9suhRoSpi76+6zkzseAmzDYlDehoechA2OkhDkmazsbekDdCsSMA
	An+d7ScObTcZsjWLGA3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqyts-0000aH-WF; Fri, 26 Jul 2019 12:00:41 +0000
Received: from relay.sw.ru ([185.231.240.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqytR-0000Jc-IA; Fri, 26 Jul 2019 12:00:15 +0000
Received: from [172.16.25.12] by relay.sw.ru with esmtp (Exim 4.92)
 (envelope-from <aryabinin@virtuozzo.com>)
 id 1hqytE-0007LO-Dd; Fri, 26 Jul 2019 15:00:00 +0300
Subject: Re: [PATCH v3] kasan: add memory corruption identification for
 software tag-based mode
To: Walter Wu <walter-zh.wu@mediatek.com>
References: <20190613081357.1360-1-walter-zh.wu@mediatek.com>
 <da7591c9-660d-d380-d59e-6d70b39eaa6b@virtuozzo.com>
 <1560447999.15814.15.camel@mtksdccf07> <1560479520.15814.34.camel@mtksdccf07>
 <1560744017.15814.49.camel@mtksdccf07>
 <CACT4Y+Y3uS59rXf92ByQuFK_G4v0H8NNnCY1tCbr4V+PaZF3ag@mail.gmail.com>
 <1560774735.15814.54.camel@mtksdccf07> <1561974995.18866.1.camel@mtksdccf07>
 <CACT4Y+aMXTBE0uVkeZz+MuPx3X1nESSBncgkScWvAkciAxP1RA@mail.gmail.com>
 <ebc99ee1-716b-0b18-66ab-4e93de02ce50@virtuozzo.com>
 <1562640832.9077.32.camel@mtksdccf07>
 <d9fd1d5b-9516-b9b9-0670-a1885e79f278@virtuozzo.com>
 <1562839579.5846.12.camel@mtksdccf07>
 <37897fb7-88c1-859a-dfcc-0a5e89a642e0@virtuozzo.com>
 <1563160001.4793.4.camel@mtksdccf07>
 <9ab1871a-2605-ab34-3fd3-4b44a0e17ab7@virtuozzo.com>
 <1563789162.31223.3.camel@mtksdccf07>
From: Andrey Ryabinin <aryabinin@virtuozzo.com>
Message-ID: <e62da62a-2a63-3a1c-faeb-9c5561a5170c@virtuozzo.com>
Date: Fri, 26 Jul 2019 15:00:00 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1563789162.31223.3.camel@mtksdccf07>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_050013_602251_D801C1B3 
X-CRM114-Status: GOOD (  21.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 "Jason A . Donenfeld" <Jason@zx2c4.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Arnd Bergmann <arnd@arndb.de>, Linux-MM <linux-mm@kvack.org>,
 Andrey Konovalov <andreyknvl@google.com>, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, Pekka Enberg <penberg@kernel.org>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Miles Chen <miles.chen@mediatek.com>, Alexander Potapenko <glider@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 David Rientjes <rientjes@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Christoph Lameter <cl@linux.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA3LzIyLzE5IDEyOjUyIFBNLCBXYWx0ZXIgV3Ugd3JvdGU6Cj4gT24gVGh1LCAyMDE5LTA3
LTE4IGF0IDE5OjExICswMzAwLCBBbmRyZXkgUnlhYmluaW4gd3JvdGU6Cj4+Cj4+IE9uIDcvMTUv
MTkgNjowNiBBTSwgV2FsdGVyIFd1IHdyb3RlOgo+Pj4gT24gRnJpLCAyMDE5LTA3LTEyIGF0IDEz
OjUyICswMzAwLCBBbmRyZXkgUnlhYmluaW4gd3JvdGU6Cj4+Pj4KPj4+PiBPbiA3LzExLzE5IDE6
MDYgUE0sIFdhbHRlciBXdSB3cm90ZToKPj4+Pj4gT24gV2VkLCAyMDE5LTA3LTEwIGF0IDIxOjI0
ICswMzAwLCBBbmRyZXkgUnlhYmluaW4gd3JvdGU6Cj4+Pj4+Pgo+Pj4+Pj4gT24gNy85LzE5IDU6
NTMgQU0sIFdhbHRlciBXdSB3cm90ZToKPj4+Pj4+PiBPbiBNb24sIDIwMTktMDctMDggYXQgMTk6
MzMgKzAzMDAsIEFuZHJleSBSeWFiaW5pbiB3cm90ZToKPj4+Pj4+Pj4KPj4+Pj4+Pj4gT24gNy81
LzE5IDQ6MzQgUE0sIERtaXRyeSBWeXVrb3Ygd3JvdGU6Cj4+Pj4+Pj4+PiBPbiBNb24sIEp1bCAx
LCAyMDE5IGF0IDExOjU2IEFNIFdhbHRlciBXdSA8d2FsdGVyLXpoLnd1QG1lZGlhdGVrLmNvbT4g
d3JvdGU6Cj4+Pj4+Pgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IFNvcnJ5IGZvciBkZWxheXMuIEkgYW0g
b3ZlcndoZWxtIGJ5IHNvbWUgdXJnZW50IHdvcmsuIEkgYWZyYWlkIHRvCj4+Pj4+Pj4+PiBwcm9t
aXNlIGFueSBkYXRlcyBiZWNhdXNlIHRoZSBuZXh0IHdlZWsgSSBhbSBvbiBhIGNvbmZlcmVuY2Us
IHRoZW4KPj4+Pj4+Pj4+IGFnYWluIGEgYmFja2xvZyBhbmQgYW4gaW50ZXJuIHN0YXJ0aW5nLi4u
Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gQW5kcmV5LCBkbyB5b3Ugc3RpbGwgaGF2ZSBjb25jZXJucyBy
ZSB0aGlzIHBhdGNoPyBUaGlzIGNoYW5nZSBhbGxvd3MKPj4+Pj4+Pj4+IHRvIHByaW50IHRoZSBm
cmVlIHN0YWNrLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBJICdtIG5vdCBzdXJlIHRoYXQgcXVhcmFudGlu
ZSBpcyBhIGJlc3Qgd2F5IHRvIGRvIHRoYXQuIFF1YXJhbnRpbmUgaXMgbWFkZSB0byBkZWxheSBm
cmVlaW5nLCBidXQgd2UgZG9uJ3QgdGhhdCBoZXJlLgo+Pj4+Pj4+PiBJZiB3ZSB3YW50IHRvIHJl
bWVtYmVyIG1vcmUgZnJlZSBzdGFja3Mgd291bGRuJ3QgYmUgZWFzaWVyIHNpbXBseSB0byByZW1l
bWJlciBtb3JlIHN0YWNrcyBpbiBvYmplY3QgaXRzZWxmPwo+Pj4+Pj4+PiBTYW1lIGZvciBwcmV2
aW91c2x5IHVzZWQgdGFncyBmb3IgYmV0dGVyIHVzZS1hZnRlci1mcmVlIGlkZW50aWZpY2F0aW9u
Lgo+Pj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+Pj4gSGkgQW5kcmV5LAo+Pj4+Pj4+Cj4+Pj4+Pj4gV2Ug
ZXZlciB0cmllZCB0byB1c2Ugb2JqZWN0IGl0c2VsZiB0byBkZXRlcm1pbmUgdXNlLWFmdGVyLWZy
ZWUKPj4+Pj4+PiBpZGVudGlmaWNhdGlvbiwgYnV0IHRhZy1iYXNlZCBLQVNBTiBpbW1lZGlhdGVs
eSByZWxlYXNlZCB0aGUgcG9pbnRlcgo+Pj4+Pj4+IGFmdGVyIGNhbGwga2ZyZWUoKSwgdGhlIG9y
aWdpbmFsIG9iamVjdCB3aWxsIGJlIHVzZWQgYnkgYW5vdGhlcgo+Pj4+Pj4+IHBvaW50ZXIsIGlm
IHdlIHVzZSBvYmplY3QgaXRzZWxmIHRvIGRldGVybWluZSB1c2UtYWZ0ZXItZnJlZSBpc3N1ZSwg
dGhlbgo+Pj4+Pj4+IGl0IGhhcyBtYW55IGZhbHNlIG5lZ2F0aXZlIGNhc2VzLiBzbyB3ZSBjcmVh
dGUgYSBsaXRlIHF1YXJhbnRpbmUocmluZwo+Pj4+Pj4+IGJ1ZmZlcnMpIHRvIHJlY29yZCByZWNl
bnQgZnJlZSBzdGFja3MgaW4gb3JkZXIgdG8gYXZvaWQgdGhvc2UgZmFsc2UKPj4+Pj4+PiBuZWdh
dGl2ZSBzaXR1YXRpb25zLgo+Pj4+Pj4KPj4+Pj4+IEknbSB0ZWxsaW5nIHRoYXQgKm1vcmUqIHRo
YW4gb25lIGZyZWUgc3RhY2sgYW5kIGFsc28gdGFncyBwZXIgb2JqZWN0IGNhbiBiZSBzdG9yZWQu
Cj4+Pj4+PiBJZiBvYmplY3QgcmV1c2VkIHdlIHdvdWxkIHN0aWxsIGhhdmUgaW5mb3JtYXRpb24g
YWJvdXQgbi1sYXN0IHVzYWdlcyBvZiB0aGUgb2JqZWN0Lgo+Pj4+Pj4gSXQgc2VlbXMgbGlrZSBt
dWNoIGVhc2llciBhbmQgbW9yZSBlZmZpY2llbnQgc29sdXRpb24gdGhhbiBwYXRjaCB5b3UgcHJv
cG9zaW5nLgo+Pj4+Pj4KPj4+Pj4gVG8gbWFrZSB0aGUgb2JqZWN0IHJldXNlZCwgd2UgbXVzdCBl
bnN1cmUgdGhhdCBubyBvdGhlciBwb2ludGVycyB1c2VzIGl0Cj4+Pj4+IGFmdGVyIGtmcmVlKCkg
cmVsZWFzZSB0aGUgcG9pbnRlci4KPj4+Pj4gU2NlbmFyaW86Cj4+Pj4+IDEpLiBUaGUgb2JqZWN0
IHJldXNlZCBpbmZvcm1hdGlvbiBpcyB2YWxpZCB3aGVuIG5vIGFub3RoZXIgcG9pbnRlciB1c2Vz
Cj4+Pj4+IGl0Lgo+Pj4+PiAyKS4gVGhlIG9iamVjdCByZXVzZWQgaW5mb3JtYXRpb24gaXMgaW52
YWxpZCB3aGVuIGFub3RoZXIgcG9pbnRlciB1c2VzCj4+Pj4+IGl0Lgo+Pj4+PiBEbyB5b3UgbWVh
biB0aGF0IHRoZSBvYmplY3QgcmV1c2VkIGlzIHNjZW5hcmlvIDEpID8KPj4+Pj4gSWYgeWVzLCBt
YXliZSB3ZSBjYW4gY2hhbmdlIHRoZSBjYWxsaW5nIHF1YXJhbnRpbmVfcHV0KCkgbG9jYXRpb24u
IEl0Cj4+Pj4+IHdpbGwgYmUgZnVsbHkgdXNlIHRoYXQgcXVhcmFudGluZSwgYnV0IGF0IHNjZW5h
cmlvIDIpIGl0IGxvb2tzIGxpa2UgdG8KPj4+Pj4gbmVlZCB0aGlzIHBhdGNoLgo+Pj4+PiBJZiBu
bywgbWF5YmUgaSBtaXNzIHlvdXIgbWVhbmluZywgd291bGQgeW91IHRlbGwgbWUgaG93IHRvIHVz
ZSBpbnZhbGlkCj4+Pj4+IG9iamVjdCBpbmZvcm1hdGlvbj8gb3I/Cj4+Pj4+Cj4+Pj4KPj4+Pgo+
Pj4+IEtBU0FOIGtlZXBzIGluZm9ybWF0aW9uIGFib3V0IG9iamVjdCB3aXRoIHRoZSBvYmplY3Qs
IHJpZ2h0IGFmdGVyIHBheWxvYWQgaW4gdGhlIGthc2FuX2FsbG9jX21ldGEgc3RydWN0Lgo+Pj4+
IFRoaXMgaW5mb3JtYXRpb24gaXMgYWx3YXlzIHZhbGlkIGFzIGxvbmcgYXMgc2xhYiBwYWdlIGFs
bG9jYXRlZC4gQ3VycmVudGx5IGl0IGtlZXBzIG9ubHkgb25lIGxhc3QgZnJlZSBzdGFja3RyYWNl
Lgo+Pj4+IEl0IGNvdWxkIGJlIGV4dGVuZGVkIHRvIHJlY29yZCBtb3JlIGZyZWUgc3RhY2t0cmFj
ZXMgYW5kIGFsc28gcmVjb3JkIHByZXZpb3VzbHkgdXNlZCB0YWdzIHdoaWNoIHdpbGwgYWxsb3cg
eW91Cj4+Pj4gdG8gaWRlbnRpZnkgdXNlLWFmdGVyLWZyZWUgYW5kIGV4dHJhY3QgcmlnaHQgZnJl
ZSBzdGFja3RyYWNlLgo+Pj4KPj4+IFRoYW5rcyBmb3IgeW91ciBleHBsYW5hdGlvbi4KPj4+Cj4+
PiBGb3IgZXh0ZW5kIHNsdWIgb2JqZWN0LCBpZiBvbmUgcmVjb3JkIGlzIDlCIChzaXplb2YodTgp
KyBzaXplb2Yoc3RydWN0Cj4+PiBrYXNhbl90cmFjaykpIGFuZCBhZGQgZml2ZSByZWNvcmRzIGlu
dG8gc2x1YiBvYmplY3QsIGV2ZXJ5IHNsdWIgb2JqZWN0Cj4+PiBtYXkgYWRkIDQ1QiB1c2FnZSBh
ZnRlciB0aGUgc3lzdGVtIHJ1bnMgbG9uZ2VyLiAKPj4+IFNsdWIgb2JqZWN0IG51bWJlciBpcyBl
YXN5IG1vcmUgdGhhbiAxLDAwMCwwMDAobWF5YmUgaXQgbWF5IGJlIG1vcmUKPj4+IGJpZ2dlciks
IHRoZW4gdGhlIGV4dGVuZGluZyBvYmplY3QgbWVtb3J5IHVzYWdlIHNob3VsZCBiZSA0NU1CLCBh
bmQKPj4+IHVuZm9ydHVuYXRlbHkgaXQgaXMgbm8gbGltaXQuIFRoZSBtZW1vcnkgdXNhZ2UgaXMg
bW9yZSBiaWdnZXIgdGhhbiBvdXIKPj4+IHBhdGNoLgo+Pgo+PiBObywgaXQncyBub3QgbmVjZXNz
YXJpbHkgbW9yZS4KPj4gQW5kIHRoZXJlIGFyZSBvdGhlciBhc3BlY3RzIHRvIGNvbnNpZGVyIHN1
Y2ggYXMgcGVyZm9ybWFuY2UsIGhvdyBzaW1wbGUgcmVsaWFibGUgdGhlIGNvZGUgaXMuCj4+Cj4+
Pgo+Pj4gV2UgaG9wZSB0YWctYmFzZWQgS0FTQU4gYWR2YW50YWdlIGlzIHNtYWxsZXIgbWVtb3J5
IHVzYWdlLiBJZiBpdOKAmXMKPj4+IHBvc3NpYmxlLCB3ZSBzaG91bGQgc3BlbmQgbGVzcyBtZW1v
cnkgaW4gb3JkZXIgdG8gaWRlbnRpZnkKPj4+IHVzZS1hZnRlci1mcmVlLiBXb3VsZCB5b3UgYWNj
ZXB0IG91ciBwYXRjaCBhZnRlciBmaW5lIHR1bmUgaXQ/Cj4+Cj4+IFN1cmUsIGlmIHlvdSBtYW5h
Z2UgdG8gZml4IGlzc3VlcyBhbmQgZGVtb25zdHJhdGUgdGhhdCBwZXJmb3JtYW5jZSBwZW5hbHR5
IG9mIHlvdXIKPj4gcGF0Y2ggaXMgY2xvc2UgdG8gemVyby4KPiAKPiAKPiBJIHJlbWVtYmVyIHRo
YXQgdGhlcmUgYXJlIGFscmVhZHkgdGhlIGxpc3RzIHdoaWNoIHlvdSBjb25jZXJuLiBNYXliZSB3
ZQo+IGNhbiB0cnkgdG8gc29sdmUgdGhvc2UgcHJvYmxlbXMgb25lIGJ5IG9uZS4KPiAKPiAxLiBk
ZWFkbG9jayBpc3N1ZT8gY2F1c2UgYnkga21hbGxvYygpIGFmdGVyIGtmcmVlKCk/CgpzbXBfY2Fs
bF9vbl9jcHUoKQoKPiAyLiBkZWNyZWFzZSBhbGxvY2F0aW9uIGZhaWwsIHRvIG1vZGlmeSBHRlBf
Tk9XQUlUIGZsYWcgdG8gR0ZQX0tFUk5FTD8KCk5vLCB0aGlzIGlzIG5vdCBnb25uYSB3b3JrLiBJ
ZGVhbGx5IHdlIHNob3VsZG4ndCBoYXZlIGFueSBhbGxvY2F0aW9ucyB0aGVyZS4KSXQncyBub3Qg
cmVsaWFibGUgYW5kIGl0IGh1cnRzIHBlcmZvcm1hbmNlLgoKCj4gMy4gY2hlY2sgd2hldGhlciBz
bGltIDQ4IGJ5dGVzIChzaXplb2YgKHFsaXN0X29iamVjdCkgKwo+IHNpemVvZihrYXNhbl9hbGxv
Y19tZXRhKSkgYW5kIGFkZGl0aW9uYWwgdW5pcXVlIHN0YWNrdHJhY2UgaW4KPiBzdGFja2RlcG90
Pwo+IDQuIGR1cGxpY2F0ZSBzdHJ1Y3QgJ2thc2FuX3RyYWNrJyBpbmZvcm1hdGlvbiBpbiB0d28g
ZGlmZmVyZW50IHBsYWNlcwo+IAoKWXVwLgoKPiBXb3VsZCB5b3UgaGF2ZSBhbnkgb3RoZXIgY29u
Y2Vybj8gb3I/Cj4gCgpJdCB3b3VsZCBiZSBuaWNlIHRvIHNlZSBzb21lIHBlcmZvcm1hbmNlIG51
bWJlcnMuIFNvbWV0aGluZyB0aGF0IHVzZXMgc2xhYiBhbGxvY2F0aW9ucyBhIGxvdCwgZS5nLiBu
ZXRwZXJmIFNUUkVBTV9TVFJFQU0gdGVzdC4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
