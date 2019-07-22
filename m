Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C32EF6FD19
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 11:54:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=drDDcftL34cmlIroHrv/2QNFiRE6Xc33kAbv98spknA=; b=NV0MwA84A2Kd1z
	NYCnHoAvDBIOs3EIbpjx883bX09W+ryMpoPKe0puFIEw7aId4UuG0nXBq2KTf/2OLv2arsYQ+xmgR
	svIxlfR9sO9udfT3uScI3JXjAuyLscg4G31y6v1TKyflv7JqEyuVLjGeX9i2rHpMaqdFnMI1U50di
	nl+HV8JzFhtaFfSwLebOb4QqjKggYAqTBlC7XYTcm+icGXPqp9+ekQwjiKl1VD/jGJQxiayjtzkFh
	ZBr9Ug3/3AcyaeSmdGArV6/7I4zoWH3k9ZHeoasF/9/wVdJ52fPniXvogc9x+EHX9agmQsOUBAeEo
	4LyK4zXrfWXiCGcIX82Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpV1G-0007jx-4R; Mon, 22 Jul 2019 09:54:10 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpV01-0007FZ-OV; Mon, 22 Jul 2019 09:52:55 +0000
X-UUID: 21f05225ab2344b496ba0b8dd244600d-20190722
X-UUID: 21f05225ab2344b496ba0b8dd244600d-20190722
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2001861494; Mon, 22 Jul 2019 01:52:45 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 22 Jul 2019 02:52:43 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 22 Jul 2019 17:52:42 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 22 Jul 2019 17:52:42 +0800
Message-ID: <1563789162.31223.3.camel@mtksdccf07>
Subject: Re: [PATCH v3] kasan: add memory corruption identification for
 software tag-based mode
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>
Date: Mon, 22 Jul 2019 17:52:42 +0800
In-Reply-To: <9ab1871a-2605-ab34-3fd3-4b44a0e17ab7@virtuozzo.com>
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
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_025254_053135_A04E1FD5 
X-CRM114-Status: GOOD (  24.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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

T24gVGh1LCAyMDE5LTA3LTE4IGF0IDE5OjExICswMzAwLCBBbmRyZXkgUnlhYmluaW4gd3JvdGU6
Cj4gCj4gT24gNy8xNS8xOSA2OjA2IEFNLCBXYWx0ZXIgV3Ugd3JvdGU6Cj4gPiBPbiBGcmksIDIw
MTktMDctMTIgYXQgMTM6NTIgKzAzMDAsIEFuZHJleSBSeWFiaW5pbiB3cm90ZToKPiA+Pgo+ID4+
IE9uIDcvMTEvMTkgMTowNiBQTSwgV2FsdGVyIFd1IHdyb3RlOgo+ID4+PiBPbiBXZWQsIDIwMTkt
MDctMTAgYXQgMjE6MjQgKzAzMDAsIEFuZHJleSBSeWFiaW5pbiB3cm90ZToKPiA+Pj4+Cj4gPj4+
PiBPbiA3LzkvMTkgNTo1MyBBTSwgV2FsdGVyIFd1IHdyb3RlOgo+ID4+Pj4+IE9uIE1vbiwgMjAx
OS0wNy0wOCBhdCAxOTozMyArMDMwMCwgQW5kcmV5IFJ5YWJpbmluIHdyb3RlOgo+ID4+Pj4+Pgo+
ID4+Pj4+PiBPbiA3LzUvMTkgNDozNCBQTSwgRG1pdHJ5IFZ5dWtvdiB3cm90ZToKPiA+Pj4+Pj4+
IE9uIE1vbiwgSnVsIDEsIDIwMTkgYXQgMTE6NTYgQU0gV2FsdGVyIFd1IDx3YWx0ZXItemgud3VA
bWVkaWF0ZWsuY29tPiB3cm90ZToKPiA+Pj4+Cj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gU29ycnkgZm9y
IGRlbGF5cy4gSSBhbSBvdmVyd2hlbG0gYnkgc29tZSB1cmdlbnQgd29yay4gSSBhZnJhaWQgdG8K
PiA+Pj4+Pj4+IHByb21pc2UgYW55IGRhdGVzIGJlY2F1c2UgdGhlIG5leHQgd2VlayBJIGFtIG9u
IGEgY29uZmVyZW5jZSwgdGhlbgo+ID4+Pj4+Pj4gYWdhaW4gYSBiYWNrbG9nIGFuZCBhbiBpbnRl
cm4gc3RhcnRpbmcuLi4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBBbmRyZXksIGRvIHlvdSBzdGlsbCBo
YXZlIGNvbmNlcm5zIHJlIHRoaXMgcGF0Y2g/IFRoaXMgY2hhbmdlIGFsbG93cwo+ID4+Pj4+Pj4g
dG8gcHJpbnQgdGhlIGZyZWUgc3RhY2suCj4gPj4+Pj4+Cj4gPj4+Pj4+IEkgJ20gbm90IHN1cmUg
dGhhdCBxdWFyYW50aW5lIGlzIGEgYmVzdCB3YXkgdG8gZG8gdGhhdC4gUXVhcmFudGluZSBpcyBt
YWRlIHRvIGRlbGF5IGZyZWVpbmcsIGJ1dCB3ZSBkb24ndCB0aGF0IGhlcmUuCj4gPj4+Pj4+IElm
IHdlIHdhbnQgdG8gcmVtZW1iZXIgbW9yZSBmcmVlIHN0YWNrcyB3b3VsZG4ndCBiZSBlYXNpZXIg
c2ltcGx5IHRvIHJlbWVtYmVyIG1vcmUgc3RhY2tzIGluIG9iamVjdCBpdHNlbGY/Cj4gPj4+Pj4+
IFNhbWUgZm9yIHByZXZpb3VzbHkgdXNlZCB0YWdzIGZvciBiZXR0ZXIgdXNlLWFmdGVyLWZyZWUg
aWRlbnRpZmljYXRpb24uCj4gPj4+Pj4+Cj4gPj4+Pj4KPiA+Pj4+PiBIaSBBbmRyZXksCj4gPj4+
Pj4KPiA+Pj4+PiBXZSBldmVyIHRyaWVkIHRvIHVzZSBvYmplY3QgaXRzZWxmIHRvIGRldGVybWlu
ZSB1c2UtYWZ0ZXItZnJlZQo+ID4+Pj4+IGlkZW50aWZpY2F0aW9uLCBidXQgdGFnLWJhc2VkIEtB
U0FOIGltbWVkaWF0ZWx5IHJlbGVhc2VkIHRoZSBwb2ludGVyCj4gPj4+Pj4gYWZ0ZXIgY2FsbCBr
ZnJlZSgpLCB0aGUgb3JpZ2luYWwgb2JqZWN0IHdpbGwgYmUgdXNlZCBieSBhbm90aGVyCj4gPj4+
Pj4gcG9pbnRlciwgaWYgd2UgdXNlIG9iamVjdCBpdHNlbGYgdG8gZGV0ZXJtaW5lIHVzZS1hZnRl
ci1mcmVlIGlzc3VlLCB0aGVuCj4gPj4+Pj4gaXQgaGFzIG1hbnkgZmFsc2UgbmVnYXRpdmUgY2Fz
ZXMuIHNvIHdlIGNyZWF0ZSBhIGxpdGUgcXVhcmFudGluZShyaW5nCj4gPj4+Pj4gYnVmZmVycykg
dG8gcmVjb3JkIHJlY2VudCBmcmVlIHN0YWNrcyBpbiBvcmRlciB0byBhdm9pZCB0aG9zZSBmYWxz
ZQo+ID4+Pj4+IG5lZ2F0aXZlIHNpdHVhdGlvbnMuCj4gPj4+Pgo+ID4+Pj4gSSdtIHRlbGxpbmcg
dGhhdCAqbW9yZSogdGhhbiBvbmUgZnJlZSBzdGFjayBhbmQgYWxzbyB0YWdzIHBlciBvYmplY3Qg
Y2FuIGJlIHN0b3JlZC4KPiA+Pj4+IElmIG9iamVjdCByZXVzZWQgd2Ugd291bGQgc3RpbGwgaGF2
ZSBpbmZvcm1hdGlvbiBhYm91dCBuLWxhc3QgdXNhZ2VzIG9mIHRoZSBvYmplY3QuCj4gPj4+PiBJ
dCBzZWVtcyBsaWtlIG11Y2ggZWFzaWVyIGFuZCBtb3JlIGVmZmljaWVudCBzb2x1dGlvbiB0aGFu
IHBhdGNoIHlvdSBwcm9wb3NpbmcuCj4gPj4+Pgo+ID4+PiBUbyBtYWtlIHRoZSBvYmplY3QgcmV1
c2VkLCB3ZSBtdXN0IGVuc3VyZSB0aGF0IG5vIG90aGVyIHBvaW50ZXJzIHVzZXMgaXQKPiA+Pj4g
YWZ0ZXIga2ZyZWUoKSByZWxlYXNlIHRoZSBwb2ludGVyLgo+ID4+PiBTY2VuYXJpbzoKPiA+Pj4g
MSkuIFRoZSBvYmplY3QgcmV1c2VkIGluZm9ybWF0aW9uIGlzIHZhbGlkIHdoZW4gbm8gYW5vdGhl
ciBwb2ludGVyIHVzZXMKPiA+Pj4gaXQuCj4gPj4+IDIpLiBUaGUgb2JqZWN0IHJldXNlZCBpbmZv
cm1hdGlvbiBpcyBpbnZhbGlkIHdoZW4gYW5vdGhlciBwb2ludGVyIHVzZXMKPiA+Pj4gaXQuCj4g
Pj4+IERvIHlvdSBtZWFuIHRoYXQgdGhlIG9iamVjdCByZXVzZWQgaXMgc2NlbmFyaW8gMSkgPwo+
ID4+PiBJZiB5ZXMsIG1heWJlIHdlIGNhbiBjaGFuZ2UgdGhlIGNhbGxpbmcgcXVhcmFudGluZV9w
dXQoKSBsb2NhdGlvbi4gSXQKPiA+Pj4gd2lsbCBiZSBmdWxseSB1c2UgdGhhdCBxdWFyYW50aW5l
LCBidXQgYXQgc2NlbmFyaW8gMikgaXQgbG9va3MgbGlrZSB0bwo+ID4+PiBuZWVkIHRoaXMgcGF0
Y2guCj4gPj4+IElmIG5vLCBtYXliZSBpIG1pc3MgeW91ciBtZWFuaW5nLCB3b3VsZCB5b3UgdGVs
bCBtZSBob3cgdG8gdXNlIGludmFsaWQKPiA+Pj4gb2JqZWN0IGluZm9ybWF0aW9uPyBvcj8KPiA+
Pj4KPiA+Pgo+ID4+Cj4gPj4gS0FTQU4ga2VlcHMgaW5mb3JtYXRpb24gYWJvdXQgb2JqZWN0IHdp
dGggdGhlIG9iamVjdCwgcmlnaHQgYWZ0ZXIgcGF5bG9hZCBpbiB0aGUga2FzYW5fYWxsb2NfbWV0
YSBzdHJ1Y3QuCj4gPj4gVGhpcyBpbmZvcm1hdGlvbiBpcyBhbHdheXMgdmFsaWQgYXMgbG9uZyBh
cyBzbGFiIHBhZ2UgYWxsb2NhdGVkLiBDdXJyZW50bHkgaXQga2VlcHMgb25seSBvbmUgbGFzdCBm
cmVlIHN0YWNrdHJhY2UuCj4gPj4gSXQgY291bGQgYmUgZXh0ZW5kZWQgdG8gcmVjb3JkIG1vcmUg
ZnJlZSBzdGFja3RyYWNlcyBhbmQgYWxzbyByZWNvcmQgcHJldmlvdXNseSB1c2VkIHRhZ3Mgd2hp
Y2ggd2lsbCBhbGxvdyB5b3UKPiA+PiB0byBpZGVudGlmeSB1c2UtYWZ0ZXItZnJlZSBhbmQgZXh0
cmFjdCByaWdodCBmcmVlIHN0YWNrdHJhY2UuCj4gPiAKPiA+IFRoYW5rcyBmb3IgeW91ciBleHBs
YW5hdGlvbi4KPiA+IAo+ID4gRm9yIGV4dGVuZCBzbHViIG9iamVjdCwgaWYgb25lIHJlY29yZCBp
cyA5QiAoc2l6ZW9mKHU4KSsgc2l6ZW9mKHN0cnVjdAo+ID4ga2FzYW5fdHJhY2spKSBhbmQgYWRk
IGZpdmUgcmVjb3JkcyBpbnRvIHNsdWIgb2JqZWN0LCBldmVyeSBzbHViIG9iamVjdAo+ID4gbWF5
IGFkZCA0NUIgdXNhZ2UgYWZ0ZXIgdGhlIHN5c3RlbSBydW5zIGxvbmdlci4gCj4gPiBTbHViIG9i
amVjdCBudW1iZXIgaXMgZWFzeSBtb3JlIHRoYW4gMSwwMDAsMDAwKG1heWJlIGl0IG1heSBiZSBt
b3JlCj4gPiBiaWdnZXIpLCB0aGVuIHRoZSBleHRlbmRpbmcgb2JqZWN0IG1lbW9yeSB1c2FnZSBz
aG91bGQgYmUgNDVNQiwgYW5kCj4gPiB1bmZvcnR1bmF0ZWx5IGl0IGlzIG5vIGxpbWl0LiBUaGUg
bWVtb3J5IHVzYWdlIGlzIG1vcmUgYmlnZ2VyIHRoYW4gb3VyCj4gPiBwYXRjaC4KPiAKPiBObywg
aXQncyBub3QgbmVjZXNzYXJpbHkgbW9yZS4KPiBBbmQgdGhlcmUgYXJlIG90aGVyIGFzcGVjdHMg
dG8gY29uc2lkZXIgc3VjaCBhcyBwZXJmb3JtYW5jZSwgaG93IHNpbXBsZSByZWxpYWJsZSB0aGUg
Y29kZSBpcy4KPiAKPiA+IAo+ID4gV2UgaG9wZSB0YWctYmFzZWQgS0FTQU4gYWR2YW50YWdlIGlz
IHNtYWxsZXIgbWVtb3J5IHVzYWdlLiBJZiBpdOKAmXMKPiA+IHBvc3NpYmxlLCB3ZSBzaG91bGQg
c3BlbmQgbGVzcyBtZW1vcnkgaW4gb3JkZXIgdG8gaWRlbnRpZnkKPiA+IHVzZS1hZnRlci1mcmVl
LiBXb3VsZCB5b3UgYWNjZXB0IG91ciBwYXRjaCBhZnRlciBmaW5lIHR1bmUgaXQ/Cj4gCj4gU3Vy
ZSwgaWYgeW91IG1hbmFnZSB0byBmaXggaXNzdWVzIGFuZCBkZW1vbnN0cmF0ZSB0aGF0IHBlcmZv
cm1hbmNlIHBlbmFsdHkgb2YgeW91cgo+IHBhdGNoIGlzIGNsb3NlIHRvIHplcm8uCgoKSSByZW1l
bWJlciB0aGF0IHRoZXJlIGFyZSBhbHJlYWR5IHRoZSBsaXN0cyB3aGljaCB5b3UgY29uY2Vybi4g
TWF5YmUgd2UKY2FuIHRyeSB0byBzb2x2ZSB0aG9zZSBwcm9ibGVtcyBvbmUgYnkgb25lLgoKMS4g
ZGVhZGxvY2sgaXNzdWU/IGNhdXNlIGJ5IGttYWxsb2MoKSBhZnRlciBrZnJlZSgpPwoyLiBkZWNy
ZWFzZSBhbGxvY2F0aW9uIGZhaWwsIHRvIG1vZGlmeSBHRlBfTk9XQUlUIGZsYWcgdG8gR0ZQX0tF
Uk5FTD8KMy4gY2hlY2sgd2hldGhlciBzbGltIDQ4IGJ5dGVzIChzaXplb2YgKHFsaXN0X29iamVj
dCkgKwpzaXplb2Yoa2FzYW5fYWxsb2NfbWV0YSkpIGFuZCBhZGRpdGlvbmFsIHVuaXF1ZSBzdGFj
a3RyYWNlIGluCnN0YWNrZGVwb3Q/CjQuIGR1cGxpY2F0ZSBzdHJ1Y3QgJ2thc2FuX3RyYWNrJyBp
bmZvcm1hdGlvbiBpbiB0d28gZGlmZmVyZW50IHBsYWNlcwoKV291bGQgeW91IGhhdmUgYW55IG90
aGVyIGNvbmNlcm4/IG9yPwoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
