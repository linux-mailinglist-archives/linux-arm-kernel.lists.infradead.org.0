Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0DA36D18B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 18:12:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xOD3FM0bUlr6ycH/0aHy5W18wd45iWnBf+DKVs2YZEw=; b=STm8E10LYDxAGL
	s36h9eUhXL8IqDVJeMA5rWDGSVHMYC/xC4X4bry9kNicll9ETGjozA1I+X2pOTAuC3iRrRsJ7yZaP
	UHUogENlE1meN3nGPVlWOZyrTd9YeGNCg394GINu0xyNWT16Xc9w2S71ft3AuvCVX8vwd3cHECw3z
	uJvjOSy/nHcmgSunkOldM7bPGi7BkmW1xtoDPTWghUtrrcPnXtyASI5RHqgwAVHKGtRUJ3tk5lItv
	MJJlcPuPO3IYUdqip8NvXSB5S/uF4AoD3iO+ftBjshIGIH0b4+4akkIj19ZjrHmOOFd5IXBUzWSu0
	d57zBlK8BEXMKGl3cQFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho90i-0004nj-Ob; Thu, 18 Jul 2019 16:12:01 +0000
Received: from relay.sw.ru ([185.231.240.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho90I-0004l2-IF; Thu, 18 Jul 2019 16:11:37 +0000
Received: from [172.16.25.12] by relay.sw.ru with esmtp (Exim 4.92)
 (envelope-from <aryabinin@virtuozzo.com>)
 id 1ho902-00080M-Ln; Thu, 18 Jul 2019 19:11:18 +0300
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
From: Andrey Ryabinin <aryabinin@virtuozzo.com>
Message-ID: <9ab1871a-2605-ab34-3fd3-4b44a0e17ab7@virtuozzo.com>
Date: Thu, 18 Jul 2019 19:11:21 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1563160001.4793.4.camel@mtksdccf07>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_091134_608443_9B827A0F 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

CgpPbiA3LzE1LzE5IDY6MDYgQU0sIFdhbHRlciBXdSB3cm90ZToKPiBPbiBGcmksIDIwMTktMDct
MTIgYXQgMTM6NTIgKzAzMDAsIEFuZHJleSBSeWFiaW5pbiB3cm90ZToKPj4KPj4gT24gNy8xMS8x
OSAxOjA2IFBNLCBXYWx0ZXIgV3Ugd3JvdGU6Cj4+PiBPbiBXZWQsIDIwMTktMDctMTAgYXQgMjE6
MjQgKzAzMDAsIEFuZHJleSBSeWFiaW5pbiB3cm90ZToKPj4+Pgo+Pj4+IE9uIDcvOS8xOSA1OjUz
IEFNLCBXYWx0ZXIgV3Ugd3JvdGU6Cj4+Pj4+IE9uIE1vbiwgMjAxOS0wNy0wOCBhdCAxOTozMyAr
MDMwMCwgQW5kcmV5IFJ5YWJpbmluIHdyb3RlOgo+Pj4+Pj4KPj4+Pj4+IE9uIDcvNS8xOSA0OjM0
IFBNLCBEbWl0cnkgVnl1a292IHdyb3RlOgo+Pj4+Pj4+IE9uIE1vbiwgSnVsIDEsIDIwMTkgYXQg
MTE6NTYgQU0gV2FsdGVyIFd1IDx3YWx0ZXItemgud3VAbWVkaWF0ZWsuY29tPiB3cm90ZToKPj4+
Pgo+Pj4+Pj4+Cj4+Pj4+Pj4gU29ycnkgZm9yIGRlbGF5cy4gSSBhbSBvdmVyd2hlbG0gYnkgc29t
ZSB1cmdlbnQgd29yay4gSSBhZnJhaWQgdG8KPj4+Pj4+PiBwcm9taXNlIGFueSBkYXRlcyBiZWNh
dXNlIHRoZSBuZXh0IHdlZWsgSSBhbSBvbiBhIGNvbmZlcmVuY2UsIHRoZW4KPj4+Pj4+PiBhZ2Fp
biBhIGJhY2tsb2cgYW5kIGFuIGludGVybiBzdGFydGluZy4uLgo+Pj4+Pj4+Cj4+Pj4+Pj4gQW5k
cmV5LCBkbyB5b3Ugc3RpbGwgaGF2ZSBjb25jZXJucyByZSB0aGlzIHBhdGNoPyBUaGlzIGNoYW5n
ZSBhbGxvd3MKPj4+Pj4+PiB0byBwcmludCB0aGUgZnJlZSBzdGFjay4KPj4+Pj4+Cj4+Pj4+PiBJ
ICdtIG5vdCBzdXJlIHRoYXQgcXVhcmFudGluZSBpcyBhIGJlc3Qgd2F5IHRvIGRvIHRoYXQuIFF1
YXJhbnRpbmUgaXMgbWFkZSB0byBkZWxheSBmcmVlaW5nLCBidXQgd2UgZG9uJ3QgdGhhdCBoZXJl
Lgo+Pj4+Pj4gSWYgd2Ugd2FudCB0byByZW1lbWJlciBtb3JlIGZyZWUgc3RhY2tzIHdvdWxkbid0
IGJlIGVhc2llciBzaW1wbHkgdG8gcmVtZW1iZXIgbW9yZSBzdGFja3MgaW4gb2JqZWN0IGl0c2Vs
Zj8KPj4+Pj4+IFNhbWUgZm9yIHByZXZpb3VzbHkgdXNlZCB0YWdzIGZvciBiZXR0ZXIgdXNlLWFm
dGVyLWZyZWUgaWRlbnRpZmljYXRpb24uCj4+Pj4+Pgo+Pj4+Pgo+Pj4+PiBIaSBBbmRyZXksCj4+
Pj4+Cj4+Pj4+IFdlIGV2ZXIgdHJpZWQgdG8gdXNlIG9iamVjdCBpdHNlbGYgdG8gZGV0ZXJtaW5l
IHVzZS1hZnRlci1mcmVlCj4+Pj4+IGlkZW50aWZpY2F0aW9uLCBidXQgdGFnLWJhc2VkIEtBU0FO
IGltbWVkaWF0ZWx5IHJlbGVhc2VkIHRoZSBwb2ludGVyCj4+Pj4+IGFmdGVyIGNhbGwga2ZyZWUo
KSwgdGhlIG9yaWdpbmFsIG9iamVjdCB3aWxsIGJlIHVzZWQgYnkgYW5vdGhlcgo+Pj4+PiBwb2lu
dGVyLCBpZiB3ZSB1c2Ugb2JqZWN0IGl0c2VsZiB0byBkZXRlcm1pbmUgdXNlLWFmdGVyLWZyZWUg
aXNzdWUsIHRoZW4KPj4+Pj4gaXQgaGFzIG1hbnkgZmFsc2UgbmVnYXRpdmUgY2FzZXMuIHNvIHdl
IGNyZWF0ZSBhIGxpdGUgcXVhcmFudGluZShyaW5nCj4+Pj4+IGJ1ZmZlcnMpIHRvIHJlY29yZCBy
ZWNlbnQgZnJlZSBzdGFja3MgaW4gb3JkZXIgdG8gYXZvaWQgdGhvc2UgZmFsc2UKPj4+Pj4gbmVn
YXRpdmUgc2l0dWF0aW9ucy4KPj4+Pgo+Pj4+IEknbSB0ZWxsaW5nIHRoYXQgKm1vcmUqIHRoYW4g
b25lIGZyZWUgc3RhY2sgYW5kIGFsc28gdGFncyBwZXIgb2JqZWN0IGNhbiBiZSBzdG9yZWQuCj4+
Pj4gSWYgb2JqZWN0IHJldXNlZCB3ZSB3b3VsZCBzdGlsbCBoYXZlIGluZm9ybWF0aW9uIGFib3V0
IG4tbGFzdCB1c2FnZXMgb2YgdGhlIG9iamVjdC4KPj4+PiBJdCBzZWVtcyBsaWtlIG11Y2ggZWFz
aWVyIGFuZCBtb3JlIGVmZmljaWVudCBzb2x1dGlvbiB0aGFuIHBhdGNoIHlvdSBwcm9wb3Npbmcu
Cj4+Pj4KPj4+IFRvIG1ha2UgdGhlIG9iamVjdCByZXVzZWQsIHdlIG11c3QgZW5zdXJlIHRoYXQg
bm8gb3RoZXIgcG9pbnRlcnMgdXNlcyBpdAo+Pj4gYWZ0ZXIga2ZyZWUoKSByZWxlYXNlIHRoZSBw
b2ludGVyLgo+Pj4gU2NlbmFyaW86Cj4+PiAxKS4gVGhlIG9iamVjdCByZXVzZWQgaW5mb3JtYXRp
b24gaXMgdmFsaWQgd2hlbiBubyBhbm90aGVyIHBvaW50ZXIgdXNlcwo+Pj4gaXQuCj4+PiAyKS4g
VGhlIG9iamVjdCByZXVzZWQgaW5mb3JtYXRpb24gaXMgaW52YWxpZCB3aGVuIGFub3RoZXIgcG9p
bnRlciB1c2VzCj4+PiBpdC4KPj4+IERvIHlvdSBtZWFuIHRoYXQgdGhlIG9iamVjdCByZXVzZWQg
aXMgc2NlbmFyaW8gMSkgPwo+Pj4gSWYgeWVzLCBtYXliZSB3ZSBjYW4gY2hhbmdlIHRoZSBjYWxs
aW5nIHF1YXJhbnRpbmVfcHV0KCkgbG9jYXRpb24uIEl0Cj4+PiB3aWxsIGJlIGZ1bGx5IHVzZSB0
aGF0IHF1YXJhbnRpbmUsIGJ1dCBhdCBzY2VuYXJpbyAyKSBpdCBsb29rcyBsaWtlIHRvCj4+PiBu
ZWVkIHRoaXMgcGF0Y2guCj4+PiBJZiBubywgbWF5YmUgaSBtaXNzIHlvdXIgbWVhbmluZywgd291
bGQgeW91IHRlbGwgbWUgaG93IHRvIHVzZSBpbnZhbGlkCj4+PiBvYmplY3QgaW5mb3JtYXRpb24/
IG9yPwo+Pj4KPj4KPj4KPj4gS0FTQU4ga2VlcHMgaW5mb3JtYXRpb24gYWJvdXQgb2JqZWN0IHdp
dGggdGhlIG9iamVjdCwgcmlnaHQgYWZ0ZXIgcGF5bG9hZCBpbiB0aGUga2FzYW5fYWxsb2NfbWV0
YSBzdHJ1Y3QuCj4+IFRoaXMgaW5mb3JtYXRpb24gaXMgYWx3YXlzIHZhbGlkIGFzIGxvbmcgYXMg
c2xhYiBwYWdlIGFsbG9jYXRlZC4gQ3VycmVudGx5IGl0IGtlZXBzIG9ubHkgb25lIGxhc3QgZnJl
ZSBzdGFja3RyYWNlLgo+PiBJdCBjb3VsZCBiZSBleHRlbmRlZCB0byByZWNvcmQgbW9yZSBmcmVl
IHN0YWNrdHJhY2VzIGFuZCBhbHNvIHJlY29yZCBwcmV2aW91c2x5IHVzZWQgdGFncyB3aGljaCB3
aWxsIGFsbG93IHlvdQo+PiB0byBpZGVudGlmeSB1c2UtYWZ0ZXItZnJlZSBhbmQgZXh0cmFjdCBy
aWdodCBmcmVlIHN0YWNrdHJhY2UuCj4gCj4gVGhhbmtzIGZvciB5b3VyIGV4cGxhbmF0aW9uLgo+
IAo+IEZvciBleHRlbmQgc2x1YiBvYmplY3QsIGlmIG9uZSByZWNvcmQgaXMgOUIgKHNpemVvZih1
OCkrIHNpemVvZihzdHJ1Y3QKPiBrYXNhbl90cmFjaykpIGFuZCBhZGQgZml2ZSByZWNvcmRzIGlu
dG8gc2x1YiBvYmplY3QsIGV2ZXJ5IHNsdWIgb2JqZWN0Cj4gbWF5IGFkZCA0NUIgdXNhZ2UgYWZ0
ZXIgdGhlIHN5c3RlbSBydW5zIGxvbmdlci4gCj4gU2x1YiBvYmplY3QgbnVtYmVyIGlzIGVhc3kg
bW9yZSB0aGFuIDEsMDAwLDAwMChtYXliZSBpdCBtYXkgYmUgbW9yZQo+IGJpZ2dlciksIHRoZW4g
dGhlIGV4dGVuZGluZyBvYmplY3QgbWVtb3J5IHVzYWdlIHNob3VsZCBiZSA0NU1CLCBhbmQKPiB1
bmZvcnR1bmF0ZWx5IGl0IGlzIG5vIGxpbWl0LiBUaGUgbWVtb3J5IHVzYWdlIGlzIG1vcmUgYmln
Z2VyIHRoYW4gb3VyCj4gcGF0Y2guCgpObywgaXQncyBub3QgbmVjZXNzYXJpbHkgbW9yZS4KQW5k
IHRoZXJlIGFyZSBvdGhlciBhc3BlY3RzIHRvIGNvbnNpZGVyIHN1Y2ggYXMgcGVyZm9ybWFuY2Us
IGhvdyBzaW1wbGUgcmVsaWFibGUgdGhlIGNvZGUgaXMuCgo+IAo+IFdlIGhvcGUgdGFnLWJhc2Vk
IEtBU0FOIGFkdmFudGFnZSBpcyBzbWFsbGVyIG1lbW9yeSB1c2FnZS4gSWYgaXTigJlzCj4gcG9z
c2libGUsIHdlIHNob3VsZCBzcGVuZCBsZXNzIG1lbW9yeSBpbiBvcmRlciB0byBpZGVudGlmeQo+
IHVzZS1hZnRlci1mcmVlLiBXb3VsZCB5b3UgYWNjZXB0IG91ciBwYXRjaCBhZnRlciBmaW5lIHR1
bmUgaXQ/CgpTdXJlLCBpZiB5b3UgbWFuYWdlIHRvIGZpeCBpc3N1ZXMgYW5kIGRlbW9uc3RyYXRl
IHRoYXQgcGVyZm9ybWFuY2UgcGVuYWx0eSBvZiB5b3VyCnBhdGNoIGlzIGNsb3NlIHRvIHplcm8u
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
