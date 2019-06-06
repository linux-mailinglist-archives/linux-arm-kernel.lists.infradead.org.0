Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DCB236F3F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 10:57:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EIm6Oem+Aj1S0z40WmdE+l5pbewPlSyTvRwZ48KHAoc=; b=GXwsKP5F/fQryU
	s1EJJ7MpCZyCZFaz5B9Bc0oGMNZu7ObtwjVXm3VHwG8h7x1a27DrhZ4JIyjKWqe+WYqog0Z9qi1O4
	RCzX8ecG0LvNTS+u5BYFz49IL815jfjsKqjIgUd+51YPLkwGPat19+q5CYVHalWviLrAZc5Ny7cah
	LUuZwmynX/FPukXO9SWAa7we3ITlKg6w9MJbJYpKlXAW7q5qrPJx+/50g8jSOK7O3ph4rAITKaY1t
	nxLY4pG5BvN4mu+zfZRNiWed4K5SF6t03j8QdMVBeRlvEoqmLxEG7CUpKUVjL1SrzeNflhO2g01e1
	YGk26wWMcnWVfGgtdm1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYoDN-00011R-4J; Thu, 06 Jun 2019 08:57:41 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYoDG-000112-Ps; Thu, 06 Jun 2019 08:57:36 +0000
Received: from sntmail11s.snt-is.com (unknown [10.203.32.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge04.snt-world.com (Postfix) with ESMTPS id C37FA628550;
 Thu,  6 Jun 2019 10:57:32 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail11s.snt-is.com
 (10.203.32.181) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 6 Jun 2019
 10:57:32 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Thu, 6 Jun 2019 10:57:32 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v2 01/15] mtd: nand: Add max_bad_eraseblocks_per_lun info
 to memorg
Thread-Topic: [PATCH v2 01/15] mtd: nand: Add max_bad_eraseblocks_per_lun info
 to memorg
Thread-Index: AQHU0scN55ZCxKZqF0m+9YUbyTEVtKaLkFoAgAMr1oCAAAOKgIAAA36AgAABcoA=
Date: Thu, 6 Jun 2019 08:57:32 +0000
Message-ID: <e8131767-fce8-0041-5c23-7b8ed71857c3@kontron.de>
References: <20190304201522.11323-1-miquel.raynal@bootlin.com>
 <20190304201522.11323-2-miquel.raynal@bootlin.com>
 <CAO1O6se5=FDf2YTEEzmFJ4K6HQp_2ayU=WubxGAQJdMA4V4m-Q@mail.gmail.com>
 <5e5d473b-2f08-4230-0920-247c2c463c55@kontron.de>
 <20190606103951.1d774b9a@collabora.com>
 <0e04c73d-13cd-4416-569b-ee9e7c19ea4d@kontron.de>
In-Reply-To: <0e04c73d-13cd-4416-569b-ee9e7c19ea4d@kontron.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <8BA79DEF2D3462419E0C3481AECE33BB@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: C37FA628550.A0699
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: bbrezillon@kernel.org, boris.brezillon@collabora.com,
 computersforpeace@gmail.com, dwmw2@infradead.org,
 emil.lenngren@gmail.com, juliensu@mxic.com.tw,
 linux-arm-kernel@lists.infradead.org, linux-mtd@lists.infradead.org,
 marek.vasut@gmail.com, masonccyang@mxic.com.tw,
 miquel.raynal@bootlin.com, richard@nod.at,
 thomas.petazzoni@bootlin.com, tudor.ambarus@microchip.com,
 vigneshr@ti.com, yamada.masahiro@socionext.com
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_015735_155772_701FEACB 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.69 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Boris Brezillon <bbrezillon@kernel.org>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>, Emil Lenngren <emil.lenngren@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDYuMDYuMTkgMTA6NTIsIEZyaWVkZXIgU2NocmVtcGYgd3JvdGU6DQo+IE9uIDA2LjA2LjE5
IDEwOjM5LCBCb3JpcyBCcmV6aWxsb24gd3JvdGU6DQo+PiBPbiBUaHUsIDYgSnVuIDIwMTkgMDg6
Mjc6MTEgKzAwMDANCj4+IFNjaHJlbXBmIEZyaWVkZXIgPGZyaWVkZXIuc2NocmVtcGZAa29udHJv
bi5kZT4gd3JvdGU6DQo+Pg0KPj4+IEhpIEVtaWwsDQo+Pj4NCj4+PiBPbiAwNC4wNi4xOSAxMDow
MSwgRW1pbCBMZW5uZ3JlbiB3cm90ZToNCj4+Pj4gSGkgTWlxdWVsLA0KPj4+Pj4gwqDCoCBzdGF0
aWMgY29uc3Qgc3RydWN0IHNwaW5hbmRfaW5mbyBtYWNyb25peF9zcGluYW5kX3RhYmxlW10gPSB7
DQo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgU1BJTkFORF9JTkZPKCJNWDM1TEYxR0U0QUIiLCAw
eDEyLA0KPj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIE5BTkRf
TUVNT1JHKDEsIDIwNDgsIDY0LCA2NCwgMTAyNCwgMSwgMSwgMSksDQo+Pj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgTkFORF9NRU1PUkcoMSwgMjA0OCwgNjQsIDY0
LCAxMDI0LCA0MCwgMSwgMSwgMSksDQo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBOQU5EX0VDQ1JFUSg0LCA1MTIpLA0KPj4+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgU1BJTkFORF9JTkZPX09QX1ZBUklBTlRT
KCZyZWFkX2NhY2hlX3ZhcmlhbnRzLA0KPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAmd3JpdGVfY2FjaGVfdmFyaWFudHMsDQo+Pj4+PiBAQCAtMTAzLDcgKzEwMyw3
IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc3BpbmFuZF9pbmZvIA0KPj4+Pj4gbWFjcm9uaXhfc3Bp
bmFuZF90YWJsZVtdID0gew0KPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgU1BJTkFORF9FQ0NJTkZPKCZteDM1bGZ4Z2U0YWJfb29ibGF5b3V0LA0KPj4+
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBteDM1bGYxZ2U0YWJfZWNjX2dldF9zdGF0dXMpKSwNCj4+
Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBTUElOQU5EX0lORk8oIk1YMzVMRjJHRTRBQiIsIDB4MjIs
DQo+Pj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgTkFORF9NRU1P
UkcoMSwgMjA0OCwgNjQsIDY0LCAyMDQ4LCAyLCAxLCAxKSwNCj4+Pj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBOQU5EX01FTU9SRygxLCAyMDQ4LCA2NCwgNjQsIDIw
NDgsIDIwLCAyLCAxLCAxKSwNCj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIE5BTkRfRUNDUkVRKDQsIDUxMiksDQo+Pj4+DQo+Pj4+IE1heWJlIGEgYml0
IGxhdGUgdG8gdGhlIGRpc2N1c3Npb24sIGJ1dCBzaG91bGRuJ3QgMjAgYW5kIDQwIGJlIHN3YXBw
ZWQNCj4+Pj4gaGVyZSwgaS5lLiBpc24ndCBpdCB0aGUgbGFyZ2VyIGZsYXNoIHRoYXQgaGFzIG1v
cmUgbWF4IGJhZCBibG9ja3MgdGhhbg0KPj4+PiB0aGUgc21hbGxlciBvbmU/DQo+Pj4NCj4+PiBJ
IHRoaW5rIE1pcXVlbCBpcyBvdXQgb2Ygb2ZmaWNlIGZvciBzb21lIGRheXMsIHNvIEkganVzdCBj
aGVja2VkIGFuZCB5b3UNCj4+PiBhcmUgcmlnaHQsIHRoZSBtYXhpbXVtIG51bWJlciBvZiBiYWQg
YmxvY2tzIHNob3VsZCBiZSBzd2FwcGVkLg0KPj4+DQo+Pj4gQWN0dWFsbHkgdGhlcmUgaXMgYWxz
byBhIHdyb25nIHZhbHVlIGluIHRoZSBHaWdhRGV2aWNlIGRyaXZlcjogRm9yIHRoZQ0KPj4+IEdE
NUY0R1E0eEEgaXQgc2hvdWxkIGJlIDgwIGluc3RlYWQgb2YgNDAuDQo+Pg0KPj4gSGF2ZW4ndCBj
aGVja2VkIHRoZSBkYXRhc2hlZXQsIGJ1dCBrZWVwIGluIG1pbmQgdGhhdCB0aGlzIGlzIHRoZSBt
YXgNCj4+IG51bWJlciBvZiBlcmFzZWJsb2NrIHBlciBMVU4uDQo+IA0KPiBUaGUgZGF0YXNoZWV0
IGdpdmVzIDIwIGZvciB0aGUgMUcgdHlwZSBhbmQgNDAgZm9yIHRoZSAyRyB0eXBlLiBCb3RoIA0K
PiB0eXBlcyBoYXZlIG9ubHkgb25lIExVTi4gT25seSB0aGUgMkcgdHlwZSBoYXMgMiBwbGFuZXMs
IGJ1dCB0aGF0IA0KPiBzaG91bGRuJ3QgbWFrZSBhIGRpZmZlcmVuY2UsIHJpZ2h0Pw0KDQpTb3Jy
eSwgSSB3YXMgcmVmZXJyaW5nIHRvIHRoZSBNYWNyb25peCBjaGlwcy4gWW91IHdlcmUgcHJvYmFi
bHkgdGFsa2luZyANCmFib3V0IHRoZSBHaWdhRGV2aWNlLiBCdXQgdGhleSBhbGwgaGF2ZSBvbmx5
IG9uZSBMVU4sIHRvby4gU28gSSB0aGluayBJIA0KZ290IGl0IHJpZ2h0LgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
