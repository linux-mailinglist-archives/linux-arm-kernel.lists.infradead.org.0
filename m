Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E54AB158D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 22:47:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3joZJ0aqlJaM8YY1qU6g1Qbw8nitZplXfyGZZ+JG7oE=; b=YQhwHfUnPEk2bk
	c5RLb00VmKy0GuZUSV6yfrguwG0RKAfMfNkA/y9mG1s62UNRCCqYfI0oIgzf7QnAHkIrNpUSZ6tJl
	zDdQV3DCPtNVU0zDr+IY2cSPXCOzplvDar5WcTv7iz5BtXbvXZKqbL3BOF6eOvslgJFwu6kKNRrMQ
	ToKyo+6tRsl2eqNzcuLSwWLcLgZj2txaMz/E59nu2op1ABPkbF2rFIRUwB3Ykr6eCcUS4uefBJdI5
	s4ja3KozUEUFxVN888oLDmyxNk8CUtVV+gegK7Fa3LlD6AmvI574yZ2sXSrV7Z9ak8rzOAgIaDw6P
	FFpQLehrqc18d9KxGMUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Vzt-0006dQ-AP; Thu, 12 Sep 2019 20:47:21 +0000
Received: from mailoutvs25.siol.net ([185.57.226.216] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8VzZ-0006d4-Mr
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 20:47:03 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 91F0952276C;
 Thu, 12 Sep 2019 22:46:59 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id PiO-ecvngsQu; Thu, 12 Sep 2019 22:46:59 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 3045752278E;
 Thu, 12 Sep 2019 22:46:59 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id C6B2352276C;
 Thu, 12 Sep 2019 22:46:58 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH 3/6] ARM: dts: sunxi: h3/h5: Add MBUS controller node
Date: Thu, 12 Sep 2019 22:46:58 +0200
Message-ID: <5193854.KWMFve8tAi@jernej-laptop>
In-Reply-To: <20190912203427.ajbmtm5djctpkz6p@localhost.localdomain>
References: <20190912175132.411-1-jernej.skrabec@siol.net>
 <1679881.yZ8pMUtPNZ@jernej-laptop>
 <20190912203427.ajbmtm5djctpkz6p@localhost.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_134701_914530_3FA9C4B5 
X-CRM114-Status: GOOD (  19.90  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.216 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 wens@csie.org, robh+dt@kernel.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG5lIMSNZXRydGVrLCAxMi4gc2VwdGVtYmVyIDIwMTkgb2IgMjI6MzQ6MjcgQ0VTVCBqZSBNYXhp
bWUgUmlwYXJkIG5hcGlzYWwoYSk6Cj4gT24gVGh1LCBTZXAgMTIsIDIwMTkgYXQgMTA6Mjg6MzdQ
TSArMDIwMCwgSmVybmVqIMWga3JhYmVjIHdyb3RlOgo+ID4gRG5lIMSNZXRydGVrLCAxMi4gc2Vw
dGVtYmVyIDIwMTkgb2IgMjI6MjA6NTcgQ0VTVCBqZSBNYXhpbWUgUmlwYXJkIApuYXBpc2FsKGEp
Ogo+ID4gPiBIaSwKPiA+ID4gCj4gPiA+IE9uIFRodSwgU2VwIDEyLCAyMDE5IGF0IDA3OjUxOjI5
UE0gKzAyMDAsIEplcm5laiBTa3JhYmVjIHdyb3RlOgo+ID4gPiA+IEJvdGgsIEgzIGFuZCBINSwg
Y29udGFpbiBNQlVTLCB3aGljaCBpcyB0aGUgYnVzIHVzZWQgYnkgRE1BIGRldmljZXMgdG8KPiA+
ID4gPiBhY2Nlc3Mgc3lzdGVtIG1lbW9yeS4KPiA+ID4gPiAKPiA+ID4gPiBNQlVTIGNvbnRyb2xs
ZXIgaXMgcmVzcG9uc2libGUgZm9yIGFyYml0cmF0aW9uIGJldHdlZW4gY2hhbm5lbHMgYmFzZWQK
PiA+ID4gPiBvbiBzZXQgcHJpb3JpdHkgYW5kIGNhbiBkbyBzb21lIG90aGVyIHRoaW5ncyBhcyB3
ZWxsLCBsaWtlIHJlcG9ydAo+ID4gPiA+IGJhbmR3aWR0aCB1c2VkLiBJdCBhbHNvIG1hcHMgUkFN
IHJlZ2lvbiB0byBkaWZmZXJlbnQgYWRkcmVzcyB0aGFuIENQVS4KPiA+ID4gPiAKPiA+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+Cj4g
PiA+ID4gLS0tCj4gPiA+ID4gCj4gPiA+ID4gIGFyY2gvYXJtL2Jvb3QvZHRzL3N1bnhpLWgzLWg1
LmR0c2kgfCA5ICsrKysrKysrKwo+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25z
KCspCj4gPiA+ID4gCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bnhp
LWgzLWg1LmR0c2kKPiA+ID4gPiBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bnhpLWgzLWg1LmR0c2kg
aW5kZXggZWJhMTkwYjNmOWRlLi5lZjFkMDM4MTI2MzYKPiA+ID4gPiAxMDA2NDQKPiA+ID4gPiAt
LS0gYS9hcmNoL2FybS9ib290L2R0cy9zdW54aS1oMy1oNS5kdHNpCj4gPiA+ID4gKysrIGIvYXJj
aC9hcm0vYm9vdC9kdHMvc3VueGktaDMtaDUuZHRzaQo+ID4gPiA+IEBAIC0xMDksNiArMTA5LDcg
QEAKPiA+ID4gPiAKPiA+ID4gPiAgCQljb21wYXRpYmxlID0gInNpbXBsZS1idXMiOwo+ID4gPiA+
ICAJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ID4gPiA+ICAJCSNzaXplLWNlbGxzID0gPDE+Owo+
ID4gPiA+IAo+ID4gPiA+ICsJCWRtYS1yYW5nZXM7Cj4gPiA+ID4gCj4gPiA+ID4gIAkJcmFuZ2Vz
Owo+ID4gPiA+ICAJCQo+ID4gPiA+ICAJCWRpc3BsYXlfY2xvY2tzOiBjbG9ja0AxMDAwMDAwIHsK
PiA+ID4gPiAKPiA+ID4gPiBAQCAtNTM4LDYgKzUzOSwxNCBAQAo+ID4gPiA+IAo+ID4gPiA+ICAJ
CQl9Owo+ID4gPiA+ICAJCQo+ID4gPiA+ICAJCX07Cj4gPiA+ID4gCj4gPiA+ID4gKwkJbWJ1czog
ZHJhbS1jb250cm9sbGVyQDFjNjIwMDAgewo+ID4gPiA+ICsJCQljb21wYXRpYmxlID0gImFsbHdp
bm5lcixzdW44aS1oMy1tYnVzIjsKPiA+ID4gPiArCQkJcmVnID0gPDB4MDFjNjIwMDAgMHgxMDAw
PjsKPiA+ID4gPiArCQkJY2xvY2tzID0gPCZjY3UgMTEzPjsKPiA+ID4gPiArCQkJZG1hLXJhbmdl
cyA9IDwweDAwMDAwMDAwIDB4NDAwMDAwMDAKPiA+IAo+ID4gMHhjMDAwMDAwMD47Cj4gPiAKPiA+
ID4gPiArCQkJI2ludGVyY29ubmVjdC1jZWxscyA9IDwxPjsKPiA+ID4gPiArCQl9Owo+ID4gPiA+
ICsKPiA+ID4gCj4gPiA+IElmIHRoYXQncyBlYXN5IGVub3VnaCB0byBhY2Nlc3MsIGNhbiB5b3Ug
YWxzbyBhZGQgdGhlIHJlZmVyZW5jZXMgaW4KPiA+ID4gdGhlIGRldmljZXMgdGhhdCBhcmUgYWxy
ZWFkeSB0aGVyZT8gKENTSSBhbmQgREUgY29tZXMgdG8gbXkgbWluZCwgYnV0Cj4gPiA+IHRoZXJl
IG1pZ2h0IGJlIG90aGVycykuCj4gPiAKPiA+IFN0cmFuZ2VseSwgREUyIGRvZXNuJ3QgdXNlIHRo
aXMgb2Zmc2V0LiBUaGF0IHdhcyB0ZXN0ZWQgb24gT3JhbmdlUGkKPiA+IFBsdXMyRSwKPiA+IHdo
aWNoIGhhcyAyIEdpQiBvZiBSQU0gYW5kIHN1YnRyYWN0aW5nIHRoaXMgb2Zmc2V0IGNhdXNlcyBj
b3JydXB0ZWQgaW1hZ2UuCj4gCj4gT2ssIHdlaXJkLiBCdXQgaWYgaXQgd2FzIHRlc3RlZCB0aGVu
IGZpbmUgYnkgbWUgOikKPiAKPiA+IEJ1dCBJIGNhbiBhZGQgdGhpcyBwcm9wZXJ0aWVzIHRvIENT
SSB0b28uIEhvd2V2ZXIsIHdvdWxkbid0IHRoYXQgbmVlZCBDU0kKPiA+IERUIGJpbmRpbmcgZXhw
YW5zaW9uIHdpdGggdGhvc2UgcHJvcGVydGllcz8gb3RoZXR3aXNlIERUIGNoZWNrIHdpbGwgZmFp
bC4KPiBPaCByaWdodCwgd2UgZGVmaW5pdGVseSBuZWVkIHRvIHVwZGF0ZSB0aGUgYmluZGluZyBp
bmRlZWQuIFRoZSBjb2RlCj4gc2hvdWxkIGJlIGFibGUgdG8gY29wZSB3aXRoIGJvdGggY2FzZXMg
YWxyZWFkeS4KCkkgZ3Vlc3MgaXQncyBiZXR0ZXIgdG8gaGFuZGxlIHRoYXQgd2l0aCBhbm90aGVy
IHBhdGNoIHNlcmllcyB0aGVuPyBDaGFuZ2luZyAKQ1NJIGJpbmRpbmdzIGRvZXNuJ3QgZml0IGhl
cmUuCgpCZXN0IHJlZ2FyZHMsCkplcm5lagoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
