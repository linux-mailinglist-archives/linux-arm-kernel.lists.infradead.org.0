Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C73E6826C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 05:07:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GYAYHIR/Q4WL6HK4+cZtCOQTIckG9C4dILsj/kFrklA=; b=KBRjEWZtISF784
	u2SeXDZrHNfVvmJoCkXEKkQWepkmEnpR5nK+jzsSHFj+AP115wy7xzA+w/3hyXX67pKWxMoze1NHG
	zjNBRToUmpNtzJBeKfi0FHh2BCT0xyhkVsG+mDmRd5tnoiVsZqFBekWrILq0pSTOS3R2omlTgcxzN
	tVcEyXv3RZ862FrIerhR1tRmc9Q2mHPVasHrpzDct3uI5EJ2I50K44urajAdDmxz5jp1Oyr35DmO+
	pGkLNbCQ56IQBlXfmQACUckLQgpro3SmNnvSTbO3TyvDrnrNxu57Rs4w0kTcadujgWPGEpwg1mor8
	ojKAmFrmVbRzwW9yJorw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmrKg-0007l9-7G; Mon, 15 Jul 2019 03:07:18 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmrKH-0007j9-EE; Mon, 15 Jul 2019 03:06:55 +0000
X-UUID: 818553dd33224673bda5619ed769cd28-20190714
X-UUID: 818553dd33224673bda5619ed769cd28-20190714
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1448161256; Sun, 14 Jul 2019 19:06:44 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 14 Jul 2019 20:06:42 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 15 Jul 2019 11:06:41 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 15 Jul 2019 11:06:40 +0800
Message-ID: <1563160001.4793.4.camel@mtksdccf07>
Subject: Re: [PATCH v3] kasan: add memory corruption identification for
 software tag-based mode
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>
Date: Mon, 15 Jul 2019 11:06:41 +0800
In-Reply-To: <37897fb7-88c1-859a-dfcc-0a5e89a642e0@virtuozzo.com>
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
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_200653_488405_3C9A1EF1 
X-CRM114-Status: GOOD (  21.33  )
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

T24gRnJpLCAyMDE5LTA3LTEyIGF0IDEzOjUyICswMzAwLCBBbmRyZXkgUnlhYmluaW4gd3JvdGU6
Cj4gCj4gT24gNy8xMS8xOSAxOjA2IFBNLCBXYWx0ZXIgV3Ugd3JvdGU6Cj4gPiBPbiBXZWQsIDIw
MTktMDctMTAgYXQgMjE6MjQgKzAzMDAsIEFuZHJleSBSeWFiaW5pbiB3cm90ZToKPiA+Pgo+ID4+
IE9uIDcvOS8xOSA1OjUzIEFNLCBXYWx0ZXIgV3Ugd3JvdGU6Cj4gPj4+IE9uIE1vbiwgMjAxOS0w
Ny0wOCBhdCAxOTozMyArMDMwMCwgQW5kcmV5IFJ5YWJpbmluIHdyb3RlOgo+ID4+Pj4KPiA+Pj4+
IE9uIDcvNS8xOSA0OjM0IFBNLCBEbWl0cnkgVnl1a292IHdyb3RlOgo+ID4+Pj4+IE9uIE1vbiwg
SnVsIDEsIDIwMTkgYXQgMTE6NTYgQU0gV2FsdGVyIFd1IDx3YWx0ZXItemgud3VAbWVkaWF0ZWsu
Y29tPiB3cm90ZToKPiA+Pgo+ID4+Pj4+Cj4gPj4+Pj4gU29ycnkgZm9yIGRlbGF5cy4gSSBhbSBv
dmVyd2hlbG0gYnkgc29tZSB1cmdlbnQgd29yay4gSSBhZnJhaWQgdG8KPiA+Pj4+PiBwcm9taXNl
IGFueSBkYXRlcyBiZWNhdXNlIHRoZSBuZXh0IHdlZWsgSSBhbSBvbiBhIGNvbmZlcmVuY2UsIHRo
ZW4KPiA+Pj4+PiBhZ2FpbiBhIGJhY2tsb2cgYW5kIGFuIGludGVybiBzdGFydGluZy4uLgo+ID4+
Pj4+Cj4gPj4+Pj4gQW5kcmV5LCBkbyB5b3Ugc3RpbGwgaGF2ZSBjb25jZXJucyByZSB0aGlzIHBh
dGNoPyBUaGlzIGNoYW5nZSBhbGxvd3MKPiA+Pj4+PiB0byBwcmludCB0aGUgZnJlZSBzdGFjay4K
PiA+Pj4+Cj4gPj4+PiBJICdtIG5vdCBzdXJlIHRoYXQgcXVhcmFudGluZSBpcyBhIGJlc3Qgd2F5
IHRvIGRvIHRoYXQuIFF1YXJhbnRpbmUgaXMgbWFkZSB0byBkZWxheSBmcmVlaW5nLCBidXQgd2Ug
ZG9uJ3QgdGhhdCBoZXJlLgo+ID4+Pj4gSWYgd2Ugd2FudCB0byByZW1lbWJlciBtb3JlIGZyZWUg
c3RhY2tzIHdvdWxkbid0IGJlIGVhc2llciBzaW1wbHkgdG8gcmVtZW1iZXIgbW9yZSBzdGFja3Mg
aW4gb2JqZWN0IGl0c2VsZj8KPiA+Pj4+IFNhbWUgZm9yIHByZXZpb3VzbHkgdXNlZCB0YWdzIGZv
ciBiZXR0ZXIgdXNlLWFmdGVyLWZyZWUgaWRlbnRpZmljYXRpb24uCj4gPj4+Pgo+ID4+Pgo+ID4+
PiBIaSBBbmRyZXksCj4gPj4+Cj4gPj4+IFdlIGV2ZXIgdHJpZWQgdG8gdXNlIG9iamVjdCBpdHNl
bGYgdG8gZGV0ZXJtaW5lIHVzZS1hZnRlci1mcmVlCj4gPj4+IGlkZW50aWZpY2F0aW9uLCBidXQg
dGFnLWJhc2VkIEtBU0FOIGltbWVkaWF0ZWx5IHJlbGVhc2VkIHRoZSBwb2ludGVyCj4gPj4+IGFm
dGVyIGNhbGwga2ZyZWUoKSwgdGhlIG9yaWdpbmFsIG9iamVjdCB3aWxsIGJlIHVzZWQgYnkgYW5v
dGhlcgo+ID4+PiBwb2ludGVyLCBpZiB3ZSB1c2Ugb2JqZWN0IGl0c2VsZiB0byBkZXRlcm1pbmUg
dXNlLWFmdGVyLWZyZWUgaXNzdWUsIHRoZW4KPiA+Pj4gaXQgaGFzIG1hbnkgZmFsc2UgbmVnYXRp
dmUgY2FzZXMuIHNvIHdlIGNyZWF0ZSBhIGxpdGUgcXVhcmFudGluZShyaW5nCj4gPj4+IGJ1ZmZl
cnMpIHRvIHJlY29yZCByZWNlbnQgZnJlZSBzdGFja3MgaW4gb3JkZXIgdG8gYXZvaWQgdGhvc2Ug
ZmFsc2UKPiA+Pj4gbmVnYXRpdmUgc2l0dWF0aW9ucy4KPiA+Pgo+ID4+IEknbSB0ZWxsaW5nIHRo
YXQgKm1vcmUqIHRoYW4gb25lIGZyZWUgc3RhY2sgYW5kIGFsc28gdGFncyBwZXIgb2JqZWN0IGNh
biBiZSBzdG9yZWQuCj4gPj4gSWYgb2JqZWN0IHJldXNlZCB3ZSB3b3VsZCBzdGlsbCBoYXZlIGlu
Zm9ybWF0aW9uIGFib3V0IG4tbGFzdCB1c2FnZXMgb2YgdGhlIG9iamVjdC4KPiA+PiBJdCBzZWVt
cyBsaWtlIG11Y2ggZWFzaWVyIGFuZCBtb3JlIGVmZmljaWVudCBzb2x1dGlvbiB0aGFuIHBhdGNo
IHlvdSBwcm9wb3NpbmcuCj4gPj4KPiA+IFRvIG1ha2UgdGhlIG9iamVjdCByZXVzZWQsIHdlIG11
c3QgZW5zdXJlIHRoYXQgbm8gb3RoZXIgcG9pbnRlcnMgdXNlcyBpdAo+ID4gYWZ0ZXIga2ZyZWUo
KSByZWxlYXNlIHRoZSBwb2ludGVyLgo+ID4gU2NlbmFyaW86Cj4gPiAxKS4gVGhlIG9iamVjdCBy
ZXVzZWQgaW5mb3JtYXRpb24gaXMgdmFsaWQgd2hlbiBubyBhbm90aGVyIHBvaW50ZXIgdXNlcwo+
ID4gaXQuCj4gPiAyKS4gVGhlIG9iamVjdCByZXVzZWQgaW5mb3JtYXRpb24gaXMgaW52YWxpZCB3
aGVuIGFub3RoZXIgcG9pbnRlciB1c2VzCj4gPiBpdC4KPiA+IERvIHlvdSBtZWFuIHRoYXQgdGhl
IG9iamVjdCByZXVzZWQgaXMgc2NlbmFyaW8gMSkgPwo+ID4gSWYgeWVzLCBtYXliZSB3ZSBjYW4g
Y2hhbmdlIHRoZSBjYWxsaW5nIHF1YXJhbnRpbmVfcHV0KCkgbG9jYXRpb24uIEl0Cj4gPiB3aWxs
IGJlIGZ1bGx5IHVzZSB0aGF0IHF1YXJhbnRpbmUsIGJ1dCBhdCBzY2VuYXJpbyAyKSBpdCBsb29r
cyBsaWtlIHRvCj4gPiBuZWVkIHRoaXMgcGF0Y2guCj4gPiBJZiBubywgbWF5YmUgaSBtaXNzIHlv
dXIgbWVhbmluZywgd291bGQgeW91IHRlbGwgbWUgaG93IHRvIHVzZSBpbnZhbGlkCj4gPiBvYmpl
Y3QgaW5mb3JtYXRpb24/IG9yPwo+ID4gCj4gCj4gCj4gS0FTQU4ga2VlcHMgaW5mb3JtYXRpb24g
YWJvdXQgb2JqZWN0IHdpdGggdGhlIG9iamVjdCwgcmlnaHQgYWZ0ZXIgcGF5bG9hZCBpbiB0aGUg
a2FzYW5fYWxsb2NfbWV0YSBzdHJ1Y3QuCj4gVGhpcyBpbmZvcm1hdGlvbiBpcyBhbHdheXMgdmFs
aWQgYXMgbG9uZyBhcyBzbGFiIHBhZ2UgYWxsb2NhdGVkLiBDdXJyZW50bHkgaXQga2VlcHMgb25s
eSBvbmUgbGFzdCBmcmVlIHN0YWNrdHJhY2UuCj4gSXQgY291bGQgYmUgZXh0ZW5kZWQgdG8gcmVj
b3JkIG1vcmUgZnJlZSBzdGFja3RyYWNlcyBhbmQgYWxzbyByZWNvcmQgcHJldmlvdXNseSB1c2Vk
IHRhZ3Mgd2hpY2ggd2lsbCBhbGxvdyB5b3UKPiB0byBpZGVudGlmeSB1c2UtYWZ0ZXItZnJlZSBh
bmQgZXh0cmFjdCByaWdodCBmcmVlIHN0YWNrdHJhY2UuCgpUaGFua3MgZm9yIHlvdXIgZXhwbGFu
YXRpb24uCgpGb3IgZXh0ZW5kIHNsdWIgb2JqZWN0LCBpZiBvbmUgcmVjb3JkIGlzIDlCIChzaXpl
b2YodTgpKyBzaXplb2Yoc3RydWN0Cmthc2FuX3RyYWNrKSkgYW5kIGFkZCBmaXZlIHJlY29yZHMg
aW50byBzbHViIG9iamVjdCwgZXZlcnkgc2x1YiBvYmplY3QKbWF5IGFkZCA0NUIgdXNhZ2UgYWZ0
ZXIgdGhlIHN5c3RlbSBydW5zIGxvbmdlci4gClNsdWIgb2JqZWN0IG51bWJlciBpcyBlYXN5IG1v
cmUgdGhhbiAxLDAwMCwwMDAobWF5YmUgaXQgbWF5IGJlIG1vcmUKYmlnZ2VyKSwgdGhlbiB0aGUg
ZXh0ZW5kaW5nIG9iamVjdCBtZW1vcnkgdXNhZ2Ugc2hvdWxkIGJlIDQ1TUIsIGFuZAp1bmZvcnR1
bmF0ZWx5IGl0IGlzIG5vIGxpbWl0LiBUaGUgbWVtb3J5IHVzYWdlIGlzIG1vcmUgYmlnZ2VyIHRo
YW4gb3VyCnBhdGNoLgoKV2UgaG9wZSB0YWctYmFzZWQgS0FTQU4gYWR2YW50YWdlIGlzIHNtYWxs
ZXIgbWVtb3J5IHVzYWdlLiBJZiBpdOKAmXMKcG9zc2libGUsIHdlIHNob3VsZCBzcGVuZCBsZXNz
IG1lbW9yeSBpbiBvcmRlciB0byBpZGVudGlmeQp1c2UtYWZ0ZXItZnJlZS4gV291bGQgeW91IGFj
Y2VwdCBvdXIgcGF0Y2ggYWZ0ZXIgZmluZSB0dW5lIGl0PwoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
