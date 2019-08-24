Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F41CA9BDD8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 14:56:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=igYTdvHsqobHzk/LteQlY2P15MFk+xs/V1DBixYh6dg=; b=ZxBNTHkFMeYUSL
	n7erwWMt/VnlpUGJbSxAwhmBEb8Tc0y0IumV01e5BMpTHyzXO+uSdr8tXvhy8bVsYNJvNRQP3iIII
	PrV0cmkQBxIFDQwXb6bI3tWKw6pu+s7L3vZ+qk+EdmpnOEwMYL44w9Q8U3ymMan79XRFcgQLJoLVR
	METr0Xj2uurflXA7lv9672vviRTWCIfc3MTXc5bIq6YYPfxQ0Gzu/50kgPqDxzOnd5tDGKbs8oS8a
	rick1Wj1ASSi2i+6JVCHg8Na3GeNdibZ1Wrn0RDsyM3VGVkHACn4pG6h/x8IVNSfi7apRUFWLUrLE
	b31dTxlOUu0Y5VTdeZOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Vb5-0004mU-9t; Sat, 24 Aug 2019 12:56:47 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1VaY-0004gX-Dn
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 12:56:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1566651372; bh=/NrS6aEln0h6Nb+L6ubBa0Y4HHAw9yLpQ5MYGmF7ohk=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=jWLbiVYkns6Gqiqtu+08BKIDiA6ThnJFKCAcsPUWFABJZvgDcxScx4/DPJgrDoT3k
 zEP++TI3U08v2G8JtDKJbrCTI2zHxCgZrleIvLbMXwXmxlPMxm3hu6eL+CPslExgfT
 YXbL/KHjY1qq14+hymHaBRSVGJJfQGKRWDtXFq0s=
Date: Sat, 24 Aug 2019 14:56:12 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Subject: Re: [linux-sunxi] [PATCH v2 0/3] Add basic support for RTC on
 Allwinner H6 SoC
Message-ID: <20190824125612.zq5qsay2wv62wykt@core.my.home>
Mail-Followup-To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>, 
 linux-sunxi@googlegroups.com,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
References: <20190820151934.3860-1-megous@megous.com>
 <3686940.YHdMKP4MVq@jernej-laptop>
 <5421621.t8Lore9UF7@jernej-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5421621.t8Lore9UF7@jernej-laptop>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_055615_090278_45525DD7 
X-CRM114-Status: GOOD (  24.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBTYXQsIEF1ZyAyNCwgMjAxOSBhdCAxMDowNjoxNEFNICswMjAwLCBKZXJuZWogxaBr
cmFiZWMgd3JvdGU6Cj4gRG5lIHNvYm90YSwgMjQuIGF2Z3VzdCAyMDE5IG9iIDEwOjA0OjI0IENF
U1QgamUgSmVybmVqIMWga3JhYmVjIG5hcGlzYWwoYSk6Cj4gPiBIaSEKPiA+IAo+ID4gRG5lIHRv
cmVrLCAyMC4gYXZndXN0IDIwMTkgb2IgMTc6MTk6MzEgQ0VTVCBqZSBtZWdvdXNAbWVnb3VzLmNv
bSBuYXBpc2FsKGEpOgo+ID4gPiBGcm9tOiBPbmRyZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNv
bT4KPiA+ID4gCj4gPiA+IEkgd2VudCB0aHJvdWdoIHRoZSBkYXRhc2hlZXRzIGZvciBINiBhbmQg
SDUsIGFuZCBjb21wYXJlZCB0aGUgZGlmZmVyZW5jZXMuCj4gPiA+IFJUQ3MgYXJlIGxhcmdlbHkg
c2ltaWxhciwgYnV0IG5vdCBlbnRpcmVseSBjb21wYXRpYmxlLiBJbmNvbXBhdGliaWxpdGllcwo+
ID4gPiBhcmUgaW4gZGV0YWlscyBub3QgeWV0IGltcGxlbWVudGVkIGJ5IHRoZSBydGMgZHJpdmVy
IHRob3VnaC4KPiA+ID4gCj4gPiA+IEkgYWxzbyBjb3JyZWN0ZWQgdGhlIGNsb2NrIHRyZWUgaW4g
SDYgRFRTSS4KPiA+ID4gCj4gPiA+IFRoaXMgcGF0Y2hzZXQgaXMgbmVjZXNzYXJ5IGZvciBpbXBs
ZW1lbnRpbmcgdGhlIFdpRmkvQmx1ZXRvb3RoIHN1cHBvcnQKPiA+ID4gb24gYm9hcmRzIHVzaW5n
IEg2IFNvQy4KPiA+ID4gCj4gPiA+IFRoZXJlIHdhcyBzb21lIGRpc2N1c3Npb24gcHJldmlvdXNs
eSBvZiBkZXNjcmliaW5nIEhPU0MsIERDWE8gYW5kIFhPCj4gPiA+IG9zY2lsbGF0b3JzIGFuZCBj
bG9ja3MgYXMgcGFydCBvZiBSVEMgaW4gRFQsIGJ1dCBJIGRlY2lkZWQgYWdhaW5zdCBpdAo+ID4g
PiBiZWNhdXNlIGl0J3Mgbm90IG5lY2Vzc2FyeSwgYmVjdXNlIGluZm9ybWF0aW9uIHRoYXQgd291
bGQgYmUgcHJvdmlkZWQKPiA+ID4gYXMgYSBwYXJ0IG9mIERUIGNhbiBhbHJlYWR5IGJlIGRldGVy
bWluZWQgYXQgcnVudGltZSBmcm9tIFJUQyByZWdpc3RlcnMsCj4gPiA+IHNvIHRoaXMgd291ZG4n
dCBhZGQgYW55IHZhbHVlIGFuZCB3b3VsZCBvbmx5IGludHJvZHVjZSBjb21wbGljYXRpb25zCj4g
PiA+IHRvIHRoZSBkcml2ZXIuIFNlZTogaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9jb3Zl
ci8xMDg5ODA4My8KPiA+ID4gCj4gPiA+IFBsZWFzZSB0YWtlIGEgbG9vay4KPiA+ID4gCj4gPiA+
IAo+ID4gPiBUaGFuayB5b3UgYW5kIHJlZ2FyZHMsCj4gPiA+IAo+ID4gPiAgIE9uZHJlaiBKaXJt
YW4KPiA+IAo+ID4gU29ycnkgZm9yIGEgYml0IGxhdGUgdGVzdCwgYnV0IHdpdGggeW91ciBwYXRj
aGVzIG9uIFRhbml4IFRYNiBib3ggSSBnZXQgdGhpcwo+ID4gaW4gZG1lc2c6Cj4gPiAKPiA+IFsg
ICAxNy40MzE3NDJdIHN1bjZpLXJ0YyA3MDAwMDAwLnJ0YzogRmFpbGVkIHRvIHNldCBydGMgdGlt
ZS4KPiA+IFsgICAyMC40Mzk3NDJdIHN1bjZpLXJ0YyA3MDAwMDAwLnJ0YzogcnRjIGlzIHN0aWxs
IGJ1c3kuCj4gPiBbICAgMjEuNDM1NzQ0XSBzdW42aS1ydGMgNzAwMDAwMC5ydGM6IHJ0YyBpcyBz
dGlsbCBidXN5Lgo+ID4gWyAgIDI0LjA1NTc0MV0gc3VuNmktcnRjIDcwMDAwMDAucnRjOiBydGMg
aXMgc3RpbGwgYnVzeS4KPiA+IFsgICAyNC40Mzk3NTJdIHN1bjZpLXJ0YyA3MDAwMDAwLnJ0Yzog
cnRjIGlzIHN0aWxsIGJ1c3kuCj4gPiAKPiA+IExhc3QgbGluZSBpcyByZXBlYXRlZCBub24tc3Rv
cC4KPiA+IAo+ID4gQW55IGlkZWEgd2hhdCBjb3VsZCBiZSB3cm9uZz8KPiAKPiBBZGRpdGlvbmFs
IGluZm8gLSB0aGlzIGlzIG9uIGtlcm5lbCA1LjIuNiB3aXRoIHlvdXIgcGF0Y2hlcyBhcHBsaWVk
LgoKRG8geW91IGhhdmUgc2NoZW1hdGljcywgb3IgYSBGRVggZmlsZSBmb3IgdGhlIGJvYXJkIG9y
IGFueSBvdGhlciBpbmZvIG9uIGhvdyB0aGUKUlRDIGlzIHNldCB1cCBvbiB0aGF0IGJvYXJkPwoK
Q2FuIHlvdSBkdW1wIHRoZSBSVEMgcmVnaXN0ZXIgcmFuZ2U/CgpyZWdhcmRzLAoJby4KCj4gQmVz
dCByZWdhcmRzLAo+IEplcm5lago+IAo+IAo+IAo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
