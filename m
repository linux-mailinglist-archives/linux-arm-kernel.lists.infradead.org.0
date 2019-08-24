Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C509BD50
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 13:33:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c6TAqeHARqEkrrCtHKL+wAnt8EE5C/b/sIXqyqYAIZk=; b=fucd3a5P+VVtdV
	tQr82wOZrMvJGSignNl03QR6Cz+6GQGKEhimJ7x/ocol2sC53/A1ie8yDi3B5re5Jp7mjP4DDnsC4
	IXqCMIREgAIlZZw3M+de26eo3cWffpHUguX6Xp1boyU9VJvecjQerP3J8HAKQHdhK+O6T7B4GRyzK
	jux9RpvL5QR99gCpYqBv1uO68iNwq5PlgGmB7Q7Z1n47IscPt8ZyzDS7/22eGnUfs0T6Rki3AzAB/
	qXYcSUKZzO0aLglPcGjA4Dq5+NfdCLnUOgO8CiXkXpGlZTX1fnF5/RCieppwzf8wIAoD7I7xfJC7U
	X2PDXkbTENuwrsn5q0CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1UIU-0005mq-03; Sat, 24 Aug 2019 11:33:30 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1UIM-0005m7-Os
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 11:33:24 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 49A361BF208;
 Sat, 24 Aug 2019 11:33:19 +0000 (UTC)
Date: Sat, 24 Aug 2019 13:33:17 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Linus Walleij <linus.walleij@linaro.org>, Yan Markman
 <ymarkman@marvell.com>
Subject: Re: [PATCH 0/3] CP115 pinctrl support
Message-ID: <20190824133317.371dec4f@xps13>
In-Reply-To: <CACRpkdY-AtaS67u4s58PifFtP5C7xp4P15J+hW_Dba=Gb4rhSQ@mail.gmail.com>
References: <20190805101607.29811-1-miquel.raynal@bootlin.com>
 <CACRpkdar5jE116CcywYxLR9JKWunRusJjNw7f3C0SFK4-4+dNQ@mail.gmail.com>
 <CACRpkdbEw5eCKb=nTCK4wuMsPEadEQdGx62cGRhk7F78p5X2CA@mail.gmail.com>
 <20190814143457.664b04c8@windsurf.home>
 <CACRpkdY-AtaS67u4s58PifFtP5C7xp4P15J+hW_Dba=Gb4rhSQ@mail.gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_043322_961761_301C3A00 
X-CRM114-Status: GOOD (  18.82  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, "open list:OPEN
 FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>, "open
 list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTGludXMsCgpMaW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+IHdyb3Rl
IG9uIFRodSwgMTUgQXVnIDIwMTkKMTA6MTA6NDYgKzAyMDA6Cgo+IE9uIFdlZCwgQXVnIDE0LCAy
MDE5IGF0IDI6MzUgUE0gVGhvbWFzIFBldGF6em9uaQo+IDx0aG9tYXMucGV0YXp6b25pQGJvb3Rs
aW4uY29tPiB3cm90ZToKPiA+IE9uIFdlZCwgMTQgQXVnIDIwMTkgMTA6MTI6MzYgKzAyMDAKPiA+
IExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGluYXJvLm9yZz4gd3JvdGU6Cj4gPiAgCj4g
PiA+IE9uIFdlZCwgQXVnIDcsIDIwMTkgYXQgMjo0NyBQTSBMaW51cyBXYWxsZWlqIDxsaW51cy53
YWxsZWlqQGxpbmFyby5vcmc+IHdyb3RlOiAgCj4gPiA+ID4gT24gTW9uLCBBdWcgNSwgMjAxOSBh
dCAxMjoxNiBQTSBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPiB3cm90
ZToKPiA+ID4gPiAgCj4gPiA+ID4gPiBUaGlzIGlzIHRoZSBzZWNvbmQgYmF0Y2ggb2YgY2hhbmdl
cyAob3V0IG9mIHRocmVlKSB0byBzdXBwb3J0IHRoZSBicmFuZAo+ID4gPiA+ID4gbmV3IE1hcnZl
bGwgQ045MTMwIFNvQ3Mgd2hpY2ggYXJlIG1hZGUgb2Ygb25lIEFQODA3IGFuZCBvbmUgQ1AxMTUu
Cj4gPiA+ID4gPgo+ID4gPiA+ID4gV2UgYWRkIGEgbmV3IGNvbXBhdGlibGUgKGFuZCB0aGUgcmVs
ZXZhbnQgc3VwcG9ydCBpbiB0aGUgcGluY3RybAo+ID4gPiA+ID4gZHJpdmVyKSBiZWZvcmUgdGhl
IGFkZGl0aW9uIGluIGJhdGNoIDMvMyBvZiBDTjkxMzAgU29DcyBEVCB1c2luZyBpdC4gIAo+ID4g
PiA+Cj4gPiA+ID4gV2FpdGluZyBmb3IgcmV2aWV3IGZyb20gdGhlIE12ZWJ1IG1haW50YWluZXJz
Lgo+ID4gPiA+Cj4gPiA+ID4gSWYgaXQgdGFrZXMgdG9vIGxvbmcganVzdCBudWRnZSBtZSwgaXQg
bG9va3MgZ29vZCB0byBtZS4gIAo+ID4gPgo+ID4gPiBTbyBpZiB0aGUgb3RoZXIgTVZFQlUgbWFp
bnRhaW5lcnMgZG9uJ3QgcmVhbGx5IGxvb2sgbXVjaCBhdCBNVkVCVQo+ID4gPiBwYXRjaGVzIGFu
eW1vcmUgd2hpbGUgTWlxdWVsIGlzIHdvcmtpbmcgYSBsb3Qgb24gdGhlIHBsYXRmb3JtLAo+ID4g
PiB3aGF0IGFib3V0IGxpc3RpbmcgTWlxdWVsIGFzIG1haW50YWluZXIgdW5kZXIgdGhlIFNvQyBl
bnRyeSwgaG0/ICAKPiA+Cj4gPiBNaXF1ZWwgc2VudCBoaXMgc2VyaWVzIG9uIEF1Z3VzdCA1LCBp
LmUgOSBkYXlzIGFnby4gV2UncmUgaW4gQXVndXN0LCBpbgo+ID4gdGhlIG1pZGRsZSBvZiB0aGUg
c3VtbWVyIHZhY2F0aW9ucyBmb3IgbWFueSBwZW9wbGUuIFdoaWxlIGl0IGlzIG5pY2UgdG8KPiA+
IHNlZSBzdWJzeXN0ZW0gbWFpbnRhaW5lcnMgd2hvIHdhbnQgdG8gZ2V0IGNvZGUgbWVyZ2VkIGlu
IGEgdGltZWx5Cj4gPiBmYXNoaW9uLCBJIHRoaW5rIGl0IGlzIHByb2JhYmx5IHdpc2UgdG8gZ2l2
ZSBpdCBzb21lIG1vcmUgdGltZSBmb3IKPiA+IHJldmlldyBpbiB0aGlzIHBlcmlvZCBvZiB0aGUg
eWVhci4gIAo+IAo+IE9LIHRoZW4gbWF5YmUgSSBhbSBhIGJpdCBpbXBhdGllbnQuCgpBY3R1YWxs
eSBHcmVnb3J5IGlzIG9uIHZhY2F0aW9uIHVudGlsIFNlcHRlbWJlciwgc28gaWYgd2Ugc3RpbGwg
YXJlIGluCnRpbWUgZm9yIHRoaXMgbWVyZ2Ugd2luZG93IEkgc3VwcG9zZSB5b3UgY2FuIHRha2Ug
aXQuCgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
