Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6BFBACAA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 04:34:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/XWFSXoVGbmZj8k/1QiFPKhHNxwMYWDfBI5+KX+w4yY=; b=FGOZiGbJKiWe06
	xVd8y1OLvy72aTvcnxLJZROpvGtgW5u1pHhpVlkRlSyf835lwQyxWQA0wgK++28xGmWWyZYcDD3Vy
	Et+ek+7mbJyuFmrUi9TwU9ZXAu1Zv8v3rPG60Rig8agatouIxjq71GcqIDbq9o8ZMFTzWJNoy2imQ
	NhkVgCdT30LY7tMf7IH6wWusPBow8jMQVOmS1Ng18QFzyzprjtHJI9i30LLHcLFioJmBwz6RC666W
	wTghtnVdr+Kj7gXSTVbAJKeyfKm8TWDzNTqlsZ4Yq/MmTr9iKMtwxKtMtY1/hgdw9lDzSfVpCP84Y
	eLbbNOhj8yK4wR8d/NzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCEAy-0000yb-0n; Mon, 23 Sep 2019 02:34:08 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat
 Linux)) id 1iCEAX-0000pW-MD
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 02:33:43 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID x8N2WsLZ016325,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV01.realtek.com.tw[172.21.6.18])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id x8N2WsLZ016325
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 23 Sep 2019 10:32:54 +0800
Received: from RTITMBSVM04.realtek.com.tw ([fe80::e404:880:2ef1:1aa1]) by
 RTITCASV01.realtek.com.tw ([::1]) with mapi id 14.03.0468.000; Mon, 23 Sep
 2019 10:32:53 +0800
From: James Tai <james.tai@realtek.com>
To: "'Masahiro Yamada'" <yamada.masahiro@socionext.com>, Arnd Bergmann
 <arnd@arndb.de>
Subject: RE: [PATCH] ARM: Add support for Realtek SOC
Thread-Topic: [PATCH] ARM: Add support for Realtek SOC
Thread-Index: AQHVY67V+8blpY45FUyr2dN3mgK/RqccOwQAgAf67ACAAW8fgIAABQEAgBI1EbA=
Date: Mon, 23 Sep 2019 02:32:52 +0000
Message-ID: <43B123F21A8CFE44A9641C099E4196FFCF8E7CEE@RTITMBSVM04.realtek.com.tw>
References: <20190905054647.1235-1-james.tai@realtek.com>
 <CAK8P3a13=VBZnj6E=s7mZk0o7Q3XkMHgcsL12s-3psuOWsfOtQ@mail.gmail.com>
 <43B123F21A8CFE44A9641C099E4196FFCF8DA1D0@RTITMBSVM04.realtek.com.tw>
 <CAK8P3a39VrC1Xn+HZc5gvh1-nUYKywDGjTfO9WPCqim89WtGAg@mail.gmail.com>
 <CAK7LNATpbAMGU1u6T_1tX57mHbCR-57q+kDwXMOHAJ2R5kvfrg@mail.gmail.com>
In-Reply-To: <CAK7LNATpbAMGU1u6T_1tX57mHbCR-57q+kDwXMOHAJ2R5kvfrg@mail.gmail.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.187]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_193341_880625_44EF41C0 
X-CRM114-Status: GOOD (  17.11  )
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
Cc: Rob
 Herring <robh@kernel.org>, "Jason A . Donenfeld" <Jason@zx2c4.com>, Thierry
 Reding <treding@nvidia.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 =?utf-8?B?Q1lfSHVhbmdb6buD6Ymm5pmPXQ==?= <cy.huang@realtek.com>, Linus
 Walleij <linus.walleij@linaro.org>, Nicolas Pitre <nico@fluxnic.net>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Russell King <linux@armlinux.org.uk>, Stefan Agner <stefan@agner.ch>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Burton <paul.burton@mips.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 "jamestai.sky@gmail.com" <jamestai.sky@gmail.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Doug Anderson <armlinux@m.disordat.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Phinex Hung <phinex@realtek.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiBTdWJqZWN0OiBSZTogW1BBVENIXSBBUk06IEFkZCBzdXBwb3J0IGZvciBSZWFsdGVrIFNPQw0K
PiANCj4gT24gV2VkLCBTZXAgMTEsIDIwMTkgYXQgNToxNyBQTSBBcm5kIEJlcmdtYW5uIDxhcm5k
QGFybmRiLmRlPiB3cm90ZToNCj4gPg0KPiA+IE9uIFdlZCwgU2VwIDExLCAyMDE5IGF0IDk6NDYg
QU0gSmFtZXMgVGFpW+aItOW/l+WzsF0NCj4gPGphbWVzLnRhaUByZWFsdGVrLmNvbT4gd3JvdGU6
DQo+ID4gPiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIEFSTTogQWRkIHN1cHBvcnQgZm9yIFJlYWx0
ZWsgU09DDQo+ID4NCj4gPiA+ID4gPiBAQCAtMTQ4LDYgKzE0OCw3IEBAIGVuZGlmDQo+ID4gPiA+
ID4gIHRleHRvZnMtJChDT05GSUdfQVJDSF9NU004WDYwKSA6PSAweDAwMjA4MDAwDQo+ID4gPiA+
ID4gIHRleHRvZnMtJChDT05GSUdfQVJDSF9NU004OTYwKSA6PSAweDAwMjA4MDAwDQo+ID4gPiA+
ID4gIHRleHRvZnMtJChDT05GSUdfQVJDSF9NRVNPTikgOj0gMHgwMDIwODAwMA0KPiA+ID4gPiA+
ICt0ZXh0b2ZzLSQoQ09ORklHX0FSQ0hfUkVBTFRFSykgOj0gMHgwMDIwODAwMA0KPiA+ID4gPiA+
ICB0ZXh0b2ZzLSQoQ09ORklHX0FSQ0hfQVhYSUEpIDo9IDB4MDAzMDgwMDANCj4gPiA+ID4NCj4g
PiA+ID4gQ2FuIHlvdSBleHBsYWluIHdoeSB0aGlzIGlzIG5lZWRlZCBmb3IgeW91ciBwbGF0Zm9y
bT8NCj4gPiA+ID4NCj4gPiA+IFdlIG5lZWQgdG8gcmVzZXJ2ZSBtZW1vcnkgKDB4MDAwMDAwMDAg
fiAweDAwMUIwMDAwKSBmb3Igcm9tIGFuZCBib290DQo+IGNvZGUuDQo+ID4NCj4gPiBPay4NCj4g
DQo+IA0KPiBJIGRvIG5vdCBsaWtlIHRoaXMgbXVjaC4NCj4gDQo+IFRoaXMgcGxhdGZvcm0gaXMg
QVJDSF9NVUxUSV9WNy4NCj4gDQo+IEFSTV9QQVRDSF9QSFlTX1ZJUlQgYWxsb3dzIHlvdSB0byBw
bGFjZSB0aGUga2VybmVsIGltYWdlIGFueXdoZXJlIGluDQo+IG1lbW9yeSBhcyBsb25nIGFzIHRo
ZSBiYXNlIGlzIGFsaWduZWQgYXQgMTZNQi4NCj4gDQo+IFRoZSBtaW5pbXVtICd0ZXh0b2ZzLXkg
Oj0gMHgwMDA4MDAwJyArIGV4dHJhIDE2TUIgb2Zmc2V0IHdpbGwgY3JlYXRlIGEgc3BhY2UNCj4g
KDB4MDAwMDAwMDAgfiAweDAxMDA4MDAwKS4NCj4gDQo+IFRoaXMgaXMgbW9yZSB0aGFuIG5lZWRl
ZCwgYnV0IGl0IGlzIG5vdCBhIGJpZyBkZWFsIHRvIHdhc3RlIHNvbWUgbWVnYWJ5dGVzIG9mDQo+
IG1lbW9yeS4NCj4gDQoNCk9LLiBJIHVuZGVyc3RhbmQuDQoNCj4gLS0NCj4gQmVzdCBSZWdhcmRz
DQo+IE1hc2FoaXJvIFlhbWFkYQ0KPiANCj4gLS0tLS0tUGxlYXNlIGNvbnNpZGVyIHRoZSBlbnZp
cm9ubWVudCBiZWZvcmUgcHJpbnRpbmcgdGhpcyBlLW1haWwuDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
