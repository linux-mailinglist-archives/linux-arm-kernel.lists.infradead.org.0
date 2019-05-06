Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A86814FCF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 17:16:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uu6DcTKv5U9ut+PwoUwQI6C6j2pDwc6KlWrOCaTAdDY=; b=XpHv4v6MzFy/Be
	Q1GfzgCPCjFTNaVcSCTC5EATnd2AtmDAsQDXEiNIp2kDWCWl2mK0FKIUAgMGQWakLOMH6b9KB3zxt
	IAjuMwAsrv422cxpqM74AYg10VP2SHSPFTE+WJK9mkmfezGXg99EQDq72lnPoPhkN/T05GbTcm5lm
	xkVGfT0FES22Z1SRJKhzA6j+VQ4mbpIfmqZWMMPJ/tO14bXLMzZOZfnLL/wL3fGxBxqpsKWaexvB5
	gYRZRyUxW/yl60yQTpc7CRCMoeUADIslzzvV8s/cbexMSx2uehb0CT5eTZtEBzDOVq+kvpzy34iJZ
	tI23ffEtepkDQDWVXHoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNfLd-0002rD-30; Mon, 06 May 2019 15:16:09 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNfLV-0002qU-Hm; Mon, 06 May 2019 15:16:03 +0000
X-Originating-IP: 90.88.149.145
Received: from xps13 (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr
 [90.88.149.145]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 477A6FF839;
 Mon,  6 May 2019 15:13:44 +0000 (UTC)
Date: Mon, 6 May 2019 17:13:44 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v2 07/36] mtd: rawnand: Avoid a typedef
Message-ID: <20190506171344.6946b9ed@xps13>
In-Reply-To: <20190503145006.574af442@collabora.com>
References: <20190304222841.13899-1-miquel.raynal@bootlin.com>
 <20190304222841.13899-8-miquel.raynal@bootlin.com>
 <20190331135513.59257c1d@collabora.com>
 <20190503144030.7fbbc0d4@xps13>
 <20190503145006.574af442@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_081601_890518_6AB932E2 
X-CRM114-Status: GOOD (  30.88  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mason Yang <masonccyang@mxic.com.tw>, Vignesh R <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>, Boris Brezillon <bbrezillon@kernel.org>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Paul Cercueil <paul@crapouillou.net>, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQm9yaXMsCgpCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29t
PiB3cm90ZSBvbiBGcmksIDMgTWF5CjIwMTkgMTQ6NTA6MDYgKzAyMDA6Cgo+IE9uIEZyaSwgMyBN
YXkgMjAxOSAxNDo0MDozMCArMDIwMAo+IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9v
dGxpbi5jb20+IHdyb3RlOgo+IAo+ID4gSGkgQm9yaXMsCj4gPiAKPiA+IEJvcmlzIEJyZXppbGxv
biA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+IHdyb3RlIG9uIFN1biwgMzEgTWFyCj4g
PiAyMDE5IDEzOjU1OjEzICswMjAwOgo+ID4gICAKPiA+ID4gT24gTW9uLCAgNCBNYXIgMjAxOSAy
MzoyODoxMiArMDEwMAo+ID4gPiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4u
Y29tPiB3cm90ZToKPiA+ID4gICAgIAo+ID4gPiA+IEluIG5ldyBjb2RlLCB0aGUgdXNlIG9mIHR5
cGVkZWYgaXMgZGlzY291cmFnZWQuIEJlZm9yZSBtb3ZpbmcgdGhpcwo+ID4gPiA+IHNlY3Rpb24g
b3V0IG9mIHRoZSByYXcgTkFORCBiYXNlLCBsZXQncyBzd2l0Y2ggdGhlIG5hbmRfZWNjX21vZGVz
X3QKPiA+ID4gPiB0eXBlIGludG8gYSByZWd1bGFyIG5hbmRfZWNjX21vZGUgZW51bWVyYXRpb24u
Cj4gPiA+ID4gCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJh
eW5hbEBib290bGluLmNvbT4KPiA+ID4gPiAtLS0KPiA+ID4gPiAgZHJpdmVycy9tdGQvbmFuZC9y
YXcvbmFuZF9iYXNlLmMgICAgICAgICAgICAgICB8IDQgKystLQo+ID4gPiA+ICBpbmNsdWRlL2xp
bnV4L210ZC9yYXduYW5kLmggICAgICAgICAgICAgICAgICAgIHwgNiArKystLS0KPiA+ID4gPiAg
aW5jbHVkZS9saW51eC9wbGF0Zm9ybV9kYXRhL210ZC1kYXZpbmNpLmggICAgICB8IDIgKy0KPiA+
ID4gPiAgaW5jbHVkZS9saW51eC9wbGF0Zm9ybV9kYXRhL210ZC1uYW5kLXMzYzI0MTAuaCB8IDIg
Ky0KPiA+ID4gPiAgNCBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25z
KC0pCj4gPiA+ID4gCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L25h
bmRfYmFzZS5jIGIvZHJpdmVycy9tdGQvbmFuZC9yYXcvbmFuZF9iYXNlLmMKPiA+ID4gPiBpbmRl
eCBlMTRmMDJhMDFlZmQuLjA1MTc0YzZhMzA5OSAxMDA2NDQKPiA+ID4gPiAtLS0gYS9kcml2ZXJz
L210ZC9uYW5kL3Jhdy9uYW5kX2Jhc2UuYwo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvbXRkL25hbmQv
cmF3L25hbmRfYmFzZS5jCj4gPiA+ID4gQEAgLTQ4ODEsOCArNDg4MSw4IEBAIHN0YXRpYyBpbnQg
b2ZfZ2V0X25hbmRfZWNjX21vZGUoc3RydWN0IGRldmljZV9ub2RlICpucCkKPiA+ID4gPiAgCj4g
PiA+ID4gIAkvKgo+ID4gPiA+ICAJICogRm9yIGJhY2t3YXJkIGNvbXBhdGliaWxpdHkgd2Ugc3Vw
cG9ydCBmZXcgb2Jzb2xldGVkIHZhbHVlcyB0aGF0IGRvbid0Cj4gPiA+ID4gLQkgKiBoYXZlIHRo
ZWlyIG1hcHBpbmdzIGludG8gbmFuZF9lY2NfbW9kZXNfdCBhbnltb3JlICh0aGV5IHdlcmUgbWVy
Z2VkCj4gPiA+ID4gLQkgKiB3aXRoIG90aGVyIGVudW1zKS4KPiA+ID4gPiArCSAqIGhhdmUgdGhl
aXIgbWFwcGluZ3MgaW50byB0aGUgbmFuZF9lY2NfbW9kZSBlbnVtIGFueW1vcmUgKHRoZXkgd2Vy
ZQo+ID4gPiA+ICsJICogbWVyZ2VkIHdpdGggb3RoZXIgZW51bXMpLgo+ID4gPiA+ICAJICovCj4g
PiA+ID4gIAlpZiAoIXN0cmNhc2VjbXAocG0sICJzb2Z0X2JjaCIpKQo+ID4gPiA+ICAJCXJldHVy
biBOQU5EX0VDQ19TT0ZUOwo+ID4gPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L210ZC9y
YXduYW5kLmggYi9pbmNsdWRlL2xpbnV4L210ZC9yYXduYW5kLmgKPiA+ID4gPiBpbmRleCAxNDc0
ODE4MzUwOGIuLmM1YmY2YmI0OTMyOSAxMDA2NDQKPiA+ID4gPiAtLS0gYS9pbmNsdWRlL2xpbnV4
L210ZC9yYXduYW5kLmgKPiA+ID4gPiArKysgYi9pbmNsdWRlL2xpbnV4L210ZC9yYXduYW5kLmgK
PiA+ID4gPiBAQCAtODcsMTQgKzg3LDE0IEBAIHN0cnVjdCBuYW5kX2NoaXA7Cj4gPiA+ID4gIC8q
Cj4gPiA+ID4gICAqIENvbnN0YW50cyBmb3IgRUNDX01PREVTCj4gPiA+ID4gICAqLwo+ID4gPiA+
IC10eXBlZGVmIGVudW0gewo+ID4gPiA+ICtlbnVtIG5hbmRfZWNjX21vZGUgewo+ID4gPiA+ICAJ
TkFORF9FQ0NfTk9ORSwKPiA+ID4gPiAgCU5BTkRfRUNDX1NPRlQsCj4gPiA+ID4gIAlOQU5EX0VD
Q19IVywKPiA+ID4gPiAgCU5BTkRfRUNDX0hXX1NZTkRST01FLAo+ID4gPiA+ICAJTkFORF9FQ0Nf
SFdfT09CX0ZJUlNULAo+ID4gPiA+ICAJTkFORF9FQ0NfT05fRElFLAo+ID4gPiA+IC19IG5hbmRf
ZWNjX21vZGVzX3Q7Cj4gPiA+ID4gK307ICAgICAgCj4gPiA+IAo+ID4gPiBIbSwgSSdtIHJlYWxs
eSBub3QgYSBiaWcgZmFuIG9mIHRoaXMgZW51bSBiZWNhdXNlIGl0J3MgbWl4aW5nIDIKPiA+ID4g
ZGlmZmVyZW50IGNvbmNlcHRzOiB0aGUgdHlwZSBvZiBFQ0MgZW5naW5lIHRvIHVzZSAob24tZGll
LAo+ID4gPiBody1jb250cm9sbGVyLXNpZGUsIHNvZnR3YXJlLCBuby1FQ0MpIGFuZCB0aGUgbGF5
b3V0IG9mCj4gPiA+IEVDQy9GUkVFIGJ5dGVzIChfU1lORFJPTUUsIF9PT0JfRklSU1QpLgo+ID4g
PiAKPiA+ID4gSSdkIHJlY29tbWVuZCBjcmVhdGluZyBhIG5hbmRfZWNjX2VuZ2luZV90eXBlIGVu
dW06Cj4gPiA+IAo+ID4gPiBlbnVtIG5hbmRfZWNjX2VuZ2luZV90eXBlIHsKPiA+ID4gCU5BTkRf
Tk9fRUNDX0VOR0lORSwKPiA+ID4gCU5BTkRfU09GVF9FQ0NfRU5HSU5FLAo+ID4gPiAJTkFORF9I
V19FQ0NfRU5HSU5FLAo+ID4gPiAJTkFORF9PTl9ESUVfRUNDX0VOR0lORSwKPiA+ID4gfTsKPiA+
ID4gCj4gPiA+IGFuZCB0aGVuIGNvbnZlcnQgdGhlIHJhdyBOQU5EIGxheWVyIHRvIHRoaXMgZW51
bSB3aGVuIHRoZSB0aW1lIGNvbWVzLiAgICAKPiA+IAo+ID4gSSBzdGFydGVkIHNvbWV0aGluZyBi
dXQgdGhpcyBnb2VzIHdheSB0b28gZmFyIGZyb20gd2hhdCBJIHdhbnQgdG8KPiA+IGFjaGlldmUu
IEkga25vdyBpdCB3b3VsZCBiZSBuaWNlIHRvIGhhdmUgaXQgYnV0IGl0IGhhcyBhbgo+ID4gaW5j
cmVhc2luZ2x5IG51bWJlciBvZiBzaWRlIGVmZmVjdHMgd2hpY2ggc2NhcmVkIG1lLiBUaGUgd2F5
IHRoZQo+ID4gc2VyaWVzIGlzIG9yZ2FuaXplZCBkb2VzIG5vdCBhbGxvdyB0byBlYXNpbHkgaWdu
b3JlIHRoZSByYXcgTkFORCBsYXllcgo+ID4gZmlyc3QgYW5kIHRoZW4gY29udmVydCBpdC4gSSBh
bSBnaXZpbmcgdXAgb24gdGhpcyBvbmUgZm9yIG5vdywgc29ycnkuICAKPiAKPiBJIGRvbid0IHRo
aW5rIHRoYXQncyBhIHdpc2UgY2hvaWNlLiBXaHkgbm90IGZvY3VzaW5nIG9uCj4gbmFuZF9kZXZp
Y2Uvc3BpbmFuZCB3aXRoIGEgY2xlYW4gaW1wbGVtZW50YXRpb24gdGhhdCBkb2VzIG5vdCB0cnkg
dG8KPiBjb252ZXJ0IHRoZSByYXduYW5kIGxheWVyIHRvIHRoaXMgYXBwcm9hY2g/CgpJIGtub3cs
IGFuZCB0aGF0IHdhcyBwcm9iYWJseSB0aGUgYmVzdCB0aGluZyB0byBkbywgdW5mb3J0dW5hdGVs
eSBJCnN0YXJ0ZWQgYmlnZ2VyIGJlY2F1c2UgdGhlcmUgd2FzIHNvIG11Y2ggdGhpbmdzIHRvIGNo
YW5nZSwgSSBnb3QgYSBiaXQKbG9zdCBhdCB0aGUgYmVnaW5uaW5nLiBJIGtub3cgdGhpcyBpcyBu
b3QgYSB2YWxpZCByZWFzb24gYnV0IGluCnByYWN0aWNlIEkgY291bGQgbm90IGNvbWUgd2l0aCBz
b21ldGhpbmcgbGlnaHRlciwgaWUuIGZvY3VzZWQgb24KU1BJLU5BTkQgb25seS4KCj4gVGhlIHJl
YXNvbiBJIGluaXRpYWxseQo+IHN0YXJ0ZWQgb3ZlciB3aXRoIGEgbmV3IGdlbmVyaWMgTkFORCBs
YXllciBpbnN0ZWFkIG9mIGNvcHlpbmcgdGhpbmdzCj4gZnJvbSBuYW5kX2Jhc2UgaXMgdGhhdCBJ
IHdhbnRlZCB0byBhdm9pZCBoYXZpbmcgdG8gZGVhbCB3aXRoIHN0dWZmIHRoYXQKPiB3ZXJlIG5v
dCBzbyBncmVhdCBpbiB0aGVyZSwgYW5kIGNsZWFybHkgbmFuZF9lY2NfbW9kZSBpcyBvbmUgb2Yg
dGhlbS4KCkkgdW5kZXJzdGFuZCB0aGF0IHNvIEkgdGhpbmsgSSBtYW5hZ2VkIHRvIGNsZWFuIHRo
ZSBzaXR1YXRpb24gd2l0aCBhCnByZWxpbWluYXJ5IHNlcmllcyB3aGljaCBJIHdpbGwgc2VuZCBz
b29uLgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
