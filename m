Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A44F9129DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 10:27:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MWUM6oGRRc8M/fQLEa2Qu/DTgfrFg09rN0tjTvrccFw=; b=mOw7cL1d7n2GBJ
	yRf3jy316Vnl/qtFj25T0wa4AlSQR5ti2N6uDKs5OOVCLWu/IRNe6QEuQS9OmqPHfQu7ySu6W8U26
	/3bgsbuZGCi0XaPcc2S4fuZNTxONpLgIVrEDosIhkA9G0JLJi3kahLzXo+yp7fDUO2WHlSCOCUeZe
	FWwQUDdVk6YBw51mrSmEHUpqzlFuz+nk5uvwgEW79icPFehhwUN66TVAyO3fDwLATCS3KU6RwFxSl
	k3xpKUoQwSzk1xQAZ3MmKYQSmJesbZxNx7Y3OajoXEmi153ovvRi5fhxDta/gS2gdDT3V//5yCM3H
	inOxjpyT3wyCIC5gFJBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMTX9-0005L3-Ae; Fri, 03 May 2019 08:27:07 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMTX3-0005KV-2v; Fri, 03 May 2019 08:27:02 +0000
X-Originating-IP: 90.88.149.145
Received: from xps13 (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr
 [90.88.149.145]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id B11361C0011;
 Fri,  3 May 2019 08:26:47 +0000 (UTC)
Date: Fri, 3 May 2019 10:26:46 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v2 06/36] mtd: nand: Rename a core structure
Message-ID: <20190503102646.78415a9a@xps13>
In-Reply-To: <20190331133001.7b313cf0@collabora.com>
References: <20190304222841.13899-1-miquel.raynal@bootlin.com>
 <20190304222841.13899-7-miquel.raynal@bootlin.com>
 <20190331133001.7b313cf0@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_012701_276211_74F71826 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
PiB3cm90ZSBvbiBTdW4sIDMxIE1hcgoyMDE5IDEzOjMwOjAxICswMjAwOgoKPiBPbiBNb24sICA0
IE1hciAyMDE5IDIzOjI4OjExICswMTAwCj4gTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBi
b290bGluLmNvbT4gd3JvdGU6Cj4gCj4gPiBQcmVwYXJlIHRoZSBtaWdyYXRpb24gdG8gYSBnZW5l
cmljIEVDQyBlbmdpbmUgYnkgcmVuYW1pbmcgdGhlCj4gPiBuYW5kX2VjY19yZXEgc3RydWN0dXJl
IGludG8gbmFuZF9lY2NfY29uZi4gVGhpcyBzdHJ1Y3R1cmUgd2lsbCBiZSB0aGUKPiA+IGJhc2Ug
b2YgYSB3aWRlciAnbmFuZF9lY2MnIHN0cnVjdHVyZS4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTog
TWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4KPiA+IC0tLQo+ID4gIGlu
Y2x1ZGUvbGludXgvbXRkL25hbmQuaCAgICB8IDggKysrKy0tLS0KPiA+ICBpbmNsdWRlL2xpbnV4
L210ZC9zcGluYW5kLmggfCAyICstCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMo
KyksIDUgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L210
ZC9uYW5kLmggYi9pbmNsdWRlL2xpbnV4L210ZC9uYW5kLmgKPiA+IGluZGV4IDg0YWI3NmYzNGM3
NC4uNzhjZjkwNTA4M2M5IDEwMDY0NAo+ID4gLS0tIGEvaW5jbHVkZS9saW51eC9tdGQvbmFuZC5o
Cj4gPiArKysgYi9pbmNsdWRlL2xpbnV4L210ZC9uYW5kLmgKPiA+IEBAIC0xMjMsMTEgKzEyMywx
MSBAQCBzdHJ1Y3QgbmFuZF9wYWdlX2lvX3JlcSB7Cj4gPiAgfTsKPiA+ICAKPiA+ICAvKioKPiA+
IC0gKiBzdHJ1Y3QgbmFuZF9lY2NfcmVxIC0gTkFORCBFQ0MgcmVxdWlyZW1lbnRzCj4gPiArICog
c3RydWN0IG5hbmRfZWNjX2NvbmYgLSBOQU5EIEVDQyBjb25maWd1cmF0aW9uICAKPiAKPiBNYXli
ZSBuYW5kX2VjY19pbmZvLCBuYW5kX2VjY19jYXBzIG9yIG5hbmRfZWNjX3Byb3BzIHdvdWxkIGJl
IG1vcmUKPiBhcHByb3ByaWF0ZSBhcyBfY29uZiBzZWVtcyB0byBpbXBseSB5b3UgY2FuIGNoYW5n
ZSBpdCwgd2hpY2ggaXMgbm90Cj4gdGhlIGNhc2Ugd2hlbiB5b3UgdXNlIHRoaXMgc3RydWN0IHRv
IGV4cHJlc3MgY2hpcCByZXF1aXJlbWVudHMgb3Igd2hlbgo+IHlvdSB1c2UgYW4gb24tZGllIEVD
QyB3aGljaCBpcyBub3QgY29uZmlndXJhYmxlLgoKbmFuZF9lY2NfcHJvcHMgc291bmRzIGdvb2Qg
dG8gbWUhCgpUaGFua3MsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
