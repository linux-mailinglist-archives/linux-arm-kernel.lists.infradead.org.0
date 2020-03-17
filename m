Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0313C187E99
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 11:46:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AEOVRuPpytIHRZd1HJwOm8D0MF2SGEIUHRxWufxZWNM=; b=Svx4pRwPmkDkV9
	wHiivL5YITxxsv9HkuKRPBRTWZqBGy6bXB0AStiG3u3lsKKXFnUq/iuG2qWDHqv8QOf+nh+p2BOF1
	JcG/j6GFJyVA8oExGq23eDzwk2TuEke9xa8unoy+/aC/PJHph4laJ4X9rTYi74DxT0Vm2GQ7WPMaC
	z1z5Zf1MQqsd+L6kc4KUPkxm7eF6pzLIkLXbNiRScUwBJ+4Y1HoTFKoJJpiAFgOcPj74VC/Qht9MZ
	vf/7XZDUJwQLlyG+orbeyycLhzQJkNZAMJKyG6EGI1c37MK4+5THu2CHcN+BYcS9/lt6Vv5mYOCEd
	fxqxuGpujcxM13UyjY8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE9jO-0008LF-6j; Tue, 17 Mar 2020 10:45:54 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE9jF-0008KS-Ln
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 10:45:47 +0000
Received: from sntmail11s.snt-is.com (unknown [10.203.32.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id BBAB767A7C0;
 Tue, 17 Mar 2020 11:45:40 +0100 (CET)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail11s.snt-is.com
 (10.203.32.181) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Tue, 17 Mar
 2020 11:45:40 +0100
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1913.007; Tue, 17 Mar 2020 11:45:40 +0100
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Peng Fan <peng.fan@nxp.com>, Abel Vesa <abel.vesa@nxp.com>, Mike Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Shawn Guo
 <shawnguo@kernel.org>, Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam
 <fabio.estevam@nxp.com>, Anson Huang <anson.huang@nxp.com>, Jacky Bai
 <ping.bai@nxp.com>
Subject: Re: [PATCH v2] clk: imx8mm: Switch to platform driver
Thread-Topic: [PATCH v2] clk: imx8mm: Switch to platform driver
Thread-Index: AQHV3Nj/eAC8KOmHpke/9mSCMhEqHagN6HgAgD15JoCAAPP1AIAAclyA
Date: Tue, 17 Mar 2020 10:45:40 +0000
Message-ID: <4cdbd500-2199-762c-43d9-2a49bd8e2414@kontron.de>
References: <1562682003-20951-1-git-send-email-abel.vesa@nxp.com>
 <2df024c3-ab46-4e33-f961-5ef994aea145@kontron.de>
 <c2a9d048-6a33-f357-ac88-4eb81002fe93@kontron.de>
 <9dae8bb7-b1da-28b5-a6e9-42102a5c3be3@kontron.de>
 <AM0PR04MB4481780CEA5A8A7DB87C7D9F88F60@AM0PR04MB4481.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB4481780CEA5A8A7DB87C7D9F88F60@AM0PR04MB4481.eurprd04.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <1172F57047C547449EA5A455818DC942@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: BBAB767A7C0.A1251
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: abel.vesa@nxp.com, anson.huang@nxp.com,
 fabio.estevam@nxp.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-imx@nxp.com, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, mturquette@baylibre.com, peng.fan@nxp.com,
 ping.bai@nxp.com, sboyd@kernel.org, shawnguo@kernel.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_034546_037019_87D1F80C 
X-CRM114-Status: GOOD (  17.40  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_ABUSE_MALW   Contains an abused malware URL listed in
 the Spamhaus DBL blocklist [URIs: paste.ee]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.208.41.68 listed in list.dnswl.org]
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUGVuZywNCg0KT24gMTcuMDMuMjAgMDQ6NTYsIFBlbmcgRmFuIHdyb3RlOg0KPj4gU3ViamVj
dDogUmU6IFtQQVRDSCB2Ml0gY2xrOiBpbXg4bW06IFN3aXRjaCB0byBwbGF0Zm9ybSBkcml2ZXIN
Cj4+DQo+PiBPbiAwNi4wMi4yMCAxMTozNywgRnJpZWRlciBTY2hyZW1wZiB3cm90ZToNCj4+PiBP
biAwNi4wMi4yMCAxMTozNCwgU2NocmVtcGYgRnJpZWRlciB3cm90ZToNCj4+Pj4gSGksDQo+Pj4+
DQo+Pj4+IE9uIDA5LjA3LjE5IDE2OjIwLCBBYmVsIFZlc2Egd3JvdGU6DQo+Pj4+PiBUaGVyZSBp
cyBubyBzdHJvbmcgcmVhc29uIGZvciB0aGlzIHRvIHVzZSBDTEtfT0ZfREVDTEFSRSBpbnN0ZWFk
IG9mDQo+Pj4+PiBiZWluZyBhIHBsYXRmb3JtIGRyaXZlci4gUGx1cywgdGhpcyB3aWxsIG5vdyBi
ZSBhbGlnbmVkIHdpdGggdGhlDQo+Pj4+PiBvdGhlciBpLk1YOE0gY2xvY2sgZHJpdmVycyB3aGlj
aCBhcmUgcGxhdGZvcm0gZHJpdmVycy4NCj4+Pj4+DQo+Pj4+PiBJbiBvcmRlciB0byBtYWtlIHRo
ZSBjbG9jayBwcm92aWRlciBhIHBsYXRmb3JtIGRyaXZlciBhbGwgdGhlIGRhdGENCj4+Pj4+IGFu
ZCBjb2RlIG5lZWRzIHRvIGJlIG91dHNpZGUgb2YgLmluaXQgc2VjdGlvbi4NCj4+Pj4+DQo+Pj4+
PiBTaWduZWQtb2ZmLWJ5OiBBYmVsIFZlc2EgPGFiZWwudmVzYUBueHAuY29tPg0KPj4+Pj4gQWNr
ZWQtYnk6IFN0ZXBoZW4gQm95ZCA8c2JveWRAa2VybmVsLm9yZz4NCj4+Pj4NCj4+Pj4gVGhpcyBo
YXMgYmVlbiB1cHN0cmVhbSBmb3IgcXVpdGUgc29tZSB0aW1lIG5vdywgYnV0IHNvbWVob3cgSSBo
YXZlIGFuDQo+Pj4+IGlzc3VlIHdpdGggU1BJIG9uIHRoZSBpLk1YOE1NIHRoYXQgZ2V0cyByZXNv
bHZlZCB3aGVuIEkgcmV2ZXJ0IHRoaXMNCj4+Pj4gcGF0Y2guDQo+Pj4+DQo+Pj4+IFdoZW4gSSB0
cnkgdG8gcHJvYmUgYW4gU1BJIE5PUiBmbGFzaCB3aXRoIGxhdGVzdCA1LjQgb3IgZXZlbiA1LjU6
DQo+Pj4+DQo+Pj4+ICDCoMKgwqDCoHNwaV9pbXggMzA4MjAwMDAuc3BpOiBkbWEgc2V0dXAgZXJy
b3IgLTE5LCB1c2UgcGlvDQo+Pj4+ICDCoMKgwqDCoHNwaS1ub3Igc3BpMC4wOiB1bnJlY29nbml6
ZWQgSkVERUMgaWQgYnl0ZXM6IDAwIDAwIDAwIDAwIDAwIDAwDQo+Pj4+ICDCoMKgwqDCoHNwaV9p
bXggMzA4MjAwMDAuc3BpOiBwcm9iZWQNCj4+Pj4NCj4+Pj4gV2hlbiBJIHJldmVydCB0aGlzIHBh
dGNoOg0KPj4+Pg0KPj4+PiAgwqDCoMKgwqBzcGlfaW14IDMwODIwMDAwLnNwaTogZG1hIHNldHVw
IGVycm9yIC0xOSwgdXNlIHBpbw0KPj4+PiAgwqDCoMKgwqBzcGktbm9yIHNwaTAuMDogbXgyNXIx
NjM1ZiAoMjA0OCBLYnl0ZXMpDQo+Pj4+ICDCoMKgwqDCoHNwaV9pbXggMzA4MjAwMDAuc3BpOiBw
cm9iZWQNCj4+Pj4NCj4+Pj4gUGxlYXNlIG5vdGUsIHRoYXQgaW4gYm90aCBjYXNlcyBJIGhhdmUg
ZGlzYWJsZWQgRE1BLCBhcyB0aGlzIGNhdXNlcw0KPj4+PiBldmVuIG1vcmUgdHJvdWJsZSAoc2Vl
IFsxXSkuIEJ1dCBldmVuIHdpdGggRE1BIGVuYWJsZWQgYW5kIGlnbm9yaW5nDQo+Pj4+IHRoZSBE
TUEgZXJyb3JzLCB0aGUgaXNzdWUgZGVzY3JpYmVkIGFib3ZlIG9jY3Vycy4NCj4+Pj4NCj4+Pj4g
RG9lcyBzb21lb25lIGhhdmUgYW4gaWRlYSB3aGF0J3Mgd3Jvbmc/DQo+Pj4+IEFtIEkgdGhlIG9u
bHkgdXNlciBvZiBTUEkgb24gaS5NWDhNTSBhcyB0aGlzIGlzc3VlIHNlZW1zIHRvIGV4aXN0DQo+
Pj4+IHVwc3RyZWFtIHNpbmNlIHY1LjQtcmMxPw0KPj4NCj4+IFRoaXMgaXNzdWUgc3RpbGwgcGVy
c2lzdHMgaW4gdjUuNi1yYzYuIENhbiBzb21lb25lIHBsZWFzZSBoYXZlIGEgbG9vaz8NCj4gDQo+
IFdvdWxkIHlvdSBwb3N0IHlvdXIgZnVsbCBib290IGxvZyBzb21ld2hlcmU/DQoNClN1cmUsIHRo
ZSB0d28gYm9vdGxvZ3MgYXJlIGhlcmU6IGh0dHBzOi8vcGFzdGUuZWUvcC84dUR3ZC4NClRoZSBv
bmx5IGRpZmZlcmVuY2UgaXMgdGhhdCBpbiB0aGUgT0sgY2FzZSB0aGlzIHBhdGNoIGlzIGFwcGxp
ZWQ6IA0KaHR0cHM6Ly9wYXN0ZS5lZS9wL3hVQnJPDQoNCj4gDQo+IFdpdGggc3VjY2Vzcy9mYWls
IGNhc2UsIGFyZSB0aGVyZSBhbnkgZGlmZmVyZW5jZXMgaW4gc3BpIGNvbnRyb2xsZXIgcmVnaXN0
ZXJzPw0KPiBJIHN1cHBvc2Ugbm8uDQoNCk5vLCB0aGV5IGFyZSB0aGUgc2FtZSwgZXhjZXB0IGZv
ciBCVVJTVF9MRU5HVEggaW4gRUNTUEkxX0NPTlJFRywgd2hpY2ggDQppcyAweDJGIGluIGNhc2Ug
b2YgZmFpbHVyZSBhbmQgMHgzRiBpbiBjYXNlIGl0IGlzIHdvcmtpbmcuIEJ1dCBJIGd1ZXNzIA0K
dGhhdCdzIGEgcmVzdWx0IG9mIHRoZSBmYWlsZWQvc3VjY2Vzc2Z1bCB0cmFuc2ZlcnMuDQoNCj4g
DQo+IERpZCB5b3UgbWVhc3VyZSB0aGUgc2lnbmFsIHNheWluZyBkYXRhIGluIHdoZW4gY3MgaXMg
bG93Pw0KDQpJdCdzIGEgYml0IGRpZmZpY3VsdCB0byBhY2Nlc3MgdGhlIHNpZ25hbHMgb24gdGhl
IGJvYXJkIHNvIEkgZGlkbid0IA0KY2hlY2sgdGhlIHNpZ25hbHMsIHlldC4NCg0KPiANCj4gQW55
d2F5IGl0IGlzIGEgYml0IHdpcmVkIHNpbmNlIHRoaXMgcGF0Y2gganVzdCBkZWxheWVkIHRoZSBw
cm9iZSBmb3IgYSB3aGlsZS4NCg0KWWVzLCBpdCdzIHJlYWxseSB3ZWlyZCBhbmQgaXQncyB2ZXJ5
IHVuZm9ydHVuYXRlIHRoYXQgdGhlIEVWSyBkb2VzIG5vdCANCmhhdmUgYSBTUEkgZGV2aWNlIG9u
Ym9hcmQuIEkgZ3Vlc3MgdGhhdCB3b3VsZCBoYXZlIGhlbHBlZCB0byBwcmV2ZW50IA0KcmVncmVz
c2lvbnMgZHVlIHRvIGJldHRlciB0ZXN0aW5nLg0KDQpJZiB5b3UgaGF2ZSBhbnkgc3VnZ2VzdGlv
bnMsIHBsZWFzZSBsZXQgbWUga25vdy4NCg0KVGhhbmtzLA0KRnJpZWRlcgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
