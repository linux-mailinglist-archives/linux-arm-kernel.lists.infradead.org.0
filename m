Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB7547826
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 04:14:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ccFpSuRQByUc7xIaEuHtByW0RC94LCNS628iSr3NZdY=; b=PerZ3Zfg8pwXYc
	XVxi2TwTpaF1rFHCRv8Bnc1tIGKBp/5YvZzgjx3LjhZ9jbcyd5MAtpF+gyukSJdPYKhOTTjfliy7d
	g5OSvIp8BqvYwtfZgLxKEH81B/zBe7Knrg/kbdba612g/w2UbSTcL/e4a5P64kC6C0A2xoU+u1Q8X
	tq/t86S2Y/1WSPxeoLz1vJQaajcUDS70GInNV7Noc9ccMjqdc91Y9gxB9FAwItrhpeKIjI+VJJxXt
	pEtl8P5FeRJV7CAe4deKxcd44fshVw+9xBaF4Hd89vwJS9tC29UrXqFtWiGMbyf9J00GgzqVr7wnT
	TlC/lu8VLxKp4Xz1WiUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hchAb-0000Zx-Ao; Mon, 17 Jun 2019 02:14:53 +0000
Received: from mail-eopbgr40080.outbound.protection.outlook.com ([40.107.4.80]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hchAL-0000Yu-Ps
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 02:14:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NphQt7Hbr1DpnpxSJyikDLw4PleNIGyYOAK6f267kf4=;
 b=LvUsfVGRRpfYPiLTKIMIUdbfZ2sJOdUBt+goqKSqS8Ho+aRH9MsbCdDMYQMJwjW0FixNzpq9ww9/kc4Dnj8H6uDIomqBJS/e75OIxmemeSzZcF5si85r92VRefjoalYVdMgiPICFyyQ+LcouySMajnnno9Ygh80qFwQ6SE/6hkU=
Received: from AM6PR04MB6630.eurprd04.prod.outlook.com (20.179.247.83) by
 AM6PR04MB4743.eurprd04.prod.outlook.com (20.177.32.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.13; Mon, 17 Jun 2019 02:14:34 +0000
Received: from AM6PR04MB6630.eurprd04.prod.outlook.com
 ([fe80::7907:11c9:4eaa:4ea4]) by AM6PR04MB6630.eurprd04.prod.outlook.com
 ([fe80::7907:11c9:4eaa:4ea4%3]) with mapi id 15.20.1987.014; Mon, 17 Jun 2019
 02:14:34 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: "m.olbrich@pengutronix.de" <m.olbrich@pengutronix.de>,
 "thesven73@gmail.com" <thesven73@gmail.com>
Subject: Re: [PATCH v1] dmaengine: imx-sdma: remove BD_INTR for channel0
Thread-Topic: [PATCH v1] dmaengine: imx-sdma: remove BD_INTR for channel0
Thread-Index: AQHVIoyD1XkewTwW3U6Cbo4mPhim06aa+IgAgAArvYCAAE8sgIAEM14A
Date: Mon, 17 Jun 2019 02:14:34 +0000
Message-ID: <1560766686.30149.36.camel@nxp.com>
References: <20190614083959.37944-1-yibin.gong@nxp.com>
 <CAOMZO5Do+BsZEX43w283yWed8fQVtTC+zAvoktPLTj4c_f798w@mail.gmail.com>
 <CAGngYiUWy5FM-zsT55-yY=kahLObZGYw=zU0F9Tzp9T2S3G6LA@mail.gmail.com>
 <20190614180913.d66bbjrnw3gxt663@pengutronix.de>
In-Reply-To: <20190614180913.d66bbjrnw3gxt663@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.18.5.2-0ubuntu3.2 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 901edfa2-f197-4d7d-f8b6-08d6f2c98a96
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB4743; 
x-ms-traffictypediagnostic: AM6PR04MB4743:
x-microsoft-antispam-prvs: <AM6PR04MB4743C2031B6815E1B7DA920489EB0@AM6PR04MB4743.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0071BFA85B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(346002)(136003)(366004)(39860400002)(199004)(189003)(6486002)(7736002)(305945005)(5660300002)(4326008)(36756003)(71190400001)(71200400001)(6436002)(229853002)(110136005)(54906003)(2501003)(2906002)(476003)(2616005)(316002)(486006)(68736007)(11346002)(50226002)(8936002)(446003)(81166006)(81156014)(14444005)(256004)(478600001)(53546011)(6506007)(53936002)(26005)(8676002)(99286004)(76116006)(86362001)(14454004)(91956017)(66476007)(66556008)(66946007)(186003)(103116003)(64756008)(7416002)(102836004)(66446008)(76176011)(6116002)(6246003)(66066001)(3846002)(6512007)(25786009)(73956011)(99106002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4743;
 H:AM6PR04MB6630.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 67RMrzt1mLpZcdc069gAY8yT5QOV4HFFv4WFzKF7JykMFEXbevJnE1KDigASRJTyJHW0BrkQ4sVOnVc2dJ/dYKTVdYqhufZXH5qACa4irE7yalODu/W0LWsuxqnrB6MAHvJfs/PEZBz7RrkCveWpHxiQEhPoJ83GFLAI7Qo1R63+3nKe93kJDUwpiBZVMWxUJA8dA/p81TFLMhJ0wnCeKMbSOQnuWb/TSg2GZAGuQlrrNaHjfe9pESzdR/B8yIHzWj5SfX3zHXAbGRlY8MUIm/IoBYfqXulDN5GhBp32OvwDO93lnocUJZzGe8gZio6iLcHbD+x0DKTsQn2qZkkU760qvDdUyRh7XFHsmgkrfBj1dfDl2KzSy+JKn/oD1vzFCxbbD2+e020s+jfHsUh+LjsH9+asawjOjjXT8VzRRR8=
Content-ID: <CEA34CC396A31349A0561AABF6B06693@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 901edfa2-f197-4d7d-f8b6-08d6f2c98a96
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2019 02:14:34.5632 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yibin.gong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4743
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_191437_904586_F3BACFFA 
X-CRM114-Status: GOOD (  23.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.80 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "vkoul@kernel.org" <vkoul@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0wNi0xNCBhdCAxODowOSArMDAwMCwgTWljaGFlbCBPbGJyaWNoIHdyb3RlOg0KPiBP
biBGcmksIEp1biAxNCwgMjAxOSBhdCAwOToyNTo1MUFNIC0wNDAwLCBTdmVuIFZhbiBBc2Jyb2Vj
ayB3cm90ZToNCj4gPiANCj4gPiBPbiBGcmksIEp1biAxNCwgMjAxOSBhdCA2OjQ5IEFNIEZhYmlv
IEVzdGV2YW0gPGZlc3RldmFtQGdtYWlsLmNvbT4NCj4gPiB3cm90ZToNCj4gPiA+IA0KPiA+ID4g
DQo+ID4gPiBBY2NvcmRpbmcgdG8gdGhlIG9yaWdpbmFsIHJlcG9ydCBmcm9tIFN2ZW4gdGhlIGlz
c3VlIHN0YXJ0ZWQgdG8NCj4gPiA+IGhhcHBlbg0KPiA+ID4gb24gNS4wLCBzbyBpdCB3b3VsZCBi
ZSBnb29kIHRvIGFkZCBhIEZpeGVzIHRhZyBhbmQgQ2Mgc3RhYmxlIHNvDQo+ID4gPiB0aGF0DQo+
ID4gPiB0aGlzIGZpeCBjb3VsZCBiZSBiYWNrcG9ydGVkIHRvIDUuMC81LjEgc3RhYmxlIHRyZWVz
Lg0KPiA+IEdvb2QgY2F0Y2ggIQ0KPiA+IA0KPiA+IEhvd2V2ZXIsIHRoZSBpc3N1ZSBpcyBoaWdo
bHkgdGltaW5nLWRlcGVuZGVudC4gSXQgd2lsbCBjb21lIGFuZCBnbw0KPiA+IGRlcGVuZGluZw0K
PiA+IG9uIHRoZSBrZXJuZWwgdmVyc2lvbiwgZGV2aWNldHJlZSBhbmQgZGVmY29uZmlnLiBJZiBp
dCB3b3JrcyBmb3IgbWUNCj4gPiBvbg0KPiA+IDQuMTksIHRoYXQNCj4gPiBkb2Vzbid0IG1lYW4g
dGhlIGJ1ZyBpcyBnb25lIG9uIDQuMTkuDQo+ID4gDQo+ID4gTG9va2luZyBhdCB0aGUgY29tbWl0
IGhpc3RvcnksIEkgdGhpbmsgdGhlIGNvbW1pdCBiZWxvdyBwb3NzaWJseQ0KPiA+IGludHJvZHVj
ZWQgdGhlDQo+ID4gaXNzdWUuIFVudGlsIHRoaXMgY29tbWl0LCBzZG1hX3J1bl9jaGFubmVsKCkg
d291bGQgd2FpdCBvbiB0aGUNCj4gPiBpbnRlcnJ1cHQNCj4gPiBiZWZvcmUgcHJvY2VlZGluZy4g
SXQgaGFzIGJlZW4gdGhlcmUgc2luY2UgNC44Og0KPiA+IA0KPiA+IEZpeGVzOiAxZDA2OWJmYTNj
NzggKCJkbWFlbmdpbmU6IGlteC1zZG1hOiBhY2sgY2hhbm5lbCAwIElSUSBpbiB0aGUNCj4gPiBp
bnRlcnJ1cHQgaGFuZGxlciIpDQo+IEkgdGhpbmsgdGhpcyBpcyBjb3JyZWN0LiBTdGFydGluZyB3
aXRoIHRoaXMgY29tbWl0LCB0aGUgaW50ZXJydXB0DQo+IHN0YXR1cyBmcg0KPiBjaGFubmVsIDAg
aXMgbm8gbG9uZ2VyIGNsZWFyZWQgaW4gc2RtYV9ydW5fY2hhbm5lbDAoKSBhbmQNCj4gc2RtYV9p
bnRfaGFuZGxlcigpIGlzIGFsd2F5cyBjYWxsZWQgZm9yIGNoYW5uZWwgMC4NCj4gRHVyaW5nIGZp
cm13YXJlIGxvYWRpbmcgdGhlIGludGVycnVwdHMgYXJlIGVuYWJsZWQgYWdhaW4ganVzdCBiZWZv
cmUNCj4gdGhlDQo+IGNsb2NrcyBhcmUgZGlzYWJsZWQuIFRoZSBpbnRlcnJ1cHQgaXMgcGVuZGlu
ZyBhdCB0aGlzIG1vbWVudCBzbyBvbiBhDQo+IHNpbmdsZQ0KPiBjb3JlIHN5c3RlbSBJIHRoaW5r
IHRoaXMgd2lsbCBhbHdheXMgd29yayBhcyBleHBlY3RlZC4gSWYgdGhlDQo+IGZpcm13YXJlDQo+
IGxvYWRpbmcgYW5kIHRoZSBpbnRlcnJ1cHQgaGFuZGxlciBydW4gb24gZGlmZmVyZW50IGNvcmVz
IHRoZW4gdGhpcyBpcw0KPiByYWN5Lg0KPiBNYXliZSBzb21ldGhpbmcgZWxzZSBjaGFuZ2VkIHRv
IG1ha2UgdGhpcyBtb3JlIGxpa2VseT8NCj4gDQo+IFdpdGggdGhpcyBuZXcgY2hhbmdlIHNkbWFf
aW50X2hhbmRsZXIoKSBpcyBubyBsb25nZXIgY2FsbGVkIGZvcg0KPiBjaGFubmVsIDANCj4gcmln
aHQsIHNvIHlvdSBzaG91bGQgYWxzbyByZW1vdmUgdGhlIHNwZWNpYWwgaGFuZGxpbmcgdGhlcmUu
DQpXaGF0J3MgJ3NwZWNpYWwgaGFuZGxpbmcnIHNob3VsZCBiZSByZW1vdmVkIGhlcmU/IERvIHlv
dSBtZWFuIHB1dCBiZWxvdw0KcGllY2VzIG9mIHlvdXIgcGF0Y2ggYmFjaz8NCsKgc3RhdGljIGlu
dCBzZG1hX2xvYWRfc2NyaXB0KHN0cnVjdCBzZG1hX2VuZ2luZSAqc2RtYSwgdm9pZCAqYnVmLCBp
bnQNCnNpemUsDQpAQCAtNzI3LDkgKzcyMCw5IEBAIHN0YXRpYyBpcnFyZXR1cm5fdCBzZG1hX2lu
dF9oYW5kbGVyKGludCBpcnEsIHZvaWQNCipkZXZfaWQpDQrCoMKgwqDCoMKgwqDCoMKgdW5zaWdu
ZWQgbG9uZyBzdGF0Ow0KwqANCsKgwqDCoMKgwqDCoMKgwqBzdGF0ID0gcmVhZGxfcmVsYXhlZChz
ZG1hLT5yZWdzICsgU0RNQV9IX0lOVFIpOw0KLcKgwqDCoMKgwqDCoMKgLyogbm90IGludGVyZXN0
ZWQgaW4gY2hhbm5lbCAwIGludGVycnVwdHMgKi8NCi3CoMKgwqDCoMKgwqDCoHN0YXQgJj0gfjE7
DQrCoMKgwqDCoMKgwqDCoMKgd3JpdGVsX3JlbGF4ZWQoc3RhdCwgc2RtYS0+cmVncyArIFNETUFf
SF9JTlRSKTsNCivCoMKgwqDCoMKgwqDCoC8qIGNoYW5uZWwgMCBpcyBzcGVjaWFsIGFuZCBub3Qg
aGFuZGxlZCBoZXJlLCBzZWUNCnJ1bl9jaGFubmVsMCgpICovDQorwqDCoMKgwqDCoMKgwqBzdGF0
ICY9IH4xOw0KDQo+IA0KPiBNaWNoYWVsDQo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
