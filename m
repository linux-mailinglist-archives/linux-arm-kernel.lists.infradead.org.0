Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02AD1477BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 03:42:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Jz5lVIjqSxvl75QHpiJVobg00BjjME66N6wvs5wcoI=; b=p8W5MVgqMVRxeM
	M4hSasHa7dKP+H5ymTtPGTkobcWzTB54/y+z7xrIuZ9P+FecwUc0iNppGbGljrYZOXjAmyBjSuinN
	fRrQlF1gMSoyPlwE/MvxUdBAX/ZiO9+kQFdF/jmFTxE5caOD1ihxM0TDSQ18DQG1IQBz7Mh6i4Brv
	ZCC9D//3ovlSG1CgSrZo+rtPLXgI+jI9PL0PPu9u7jS/HygZEtnlTjar6dZSZWkMlSvH7PiqoAngY
	lhulME6kVudZebH07wWAxuHmcMVDB6S+ymqlPh/OzBlh6cRgm1Waw56/ZpAxuAeDvt1Qy1luuof1j
	iGZxZb6Zhlc7Huvt7SXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcgfS-0002VB-6v; Mon, 17 Jun 2019 01:42:42 +0000
Received: from mail-eopbgr60052.outbound.protection.outlook.com ([40.107.6.52]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcgfF-0002UI-83
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 01:42:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JnMfmIM4zoL5n2T8UAOE8MqThpp8X6NMfe6LdmNAP7s=;
 b=pjFMKxZkvPOsx7HJ0+wzHOhVMt04oDXerdISe+5HiSgP5MBdcfoZtlJmLkJlJ8bjQPDKCrxLXK5FAuPo1U3IFwedsoityjzxbSp1bewAOHjjiCUJGJWGB2ab2QN+E+FK306phWvVr+Mb4nYTAq/ikAyIMcvFcr9vTJdvByhHhxU=
Received: from AM6PR04MB6630.eurprd04.prod.outlook.com (20.179.247.83) by
 AM6PR04MB4168.eurprd04.prod.outlook.com (52.135.168.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.12; Mon, 17 Jun 2019 01:42:24 +0000
Received: from AM6PR04MB6630.eurprd04.prod.outlook.com
 ([fe80::7907:11c9:4eaa:4ea4]) by AM6PR04MB6630.eurprd04.prod.outlook.com
 ([fe80::7907:11c9:4eaa:4ea4%3]) with mapi id 15.20.1987.014; Mon, 17 Jun 2019
 01:42:24 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: "thesven73@gmail.com" <thesven73@gmail.com>
Subject: Re: [PATCH v1] dmaengine: imx-sdma: remove BD_INTR for channel0
Thread-Topic: [PATCH v1] dmaengine: imx-sdma: remove BD_INTR for channel0
Thread-Index: AQHVIoyD1XkewTwW3U6Cbo4mPhim06abJv8AgAR20wA=
Date: Mon, 17 Jun 2019 01:42:24 +0000
Message-ID: <1560764756.30149.5.camel@nxp.com>
References: <20190614083959.37944-1-yibin.gong@nxp.com>
 <CAGngYiU_sNiAi0gYFEUg6=TfvUWH+6Nhid9PqYa6x+nb4UkVWA@mail.gmail.com>
In-Reply-To: <CAGngYiU_sNiAi0gYFEUg6=TfvUWH+6Nhid9PqYa6x+nb4UkVWA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.18.5.2-0ubuntu3.2 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 061ca480-5fb1-410f-16f2-08d6f2c50c43
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB4168; 
x-ms-traffictypediagnostic: AM6PR04MB4168:
x-microsoft-antispam-prvs: <AM6PR04MB4168112658DB361E66F6E46889EB0@AM6PR04MB4168.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0071BFA85B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(376002)(39860400002)(366004)(136003)(189003)(199004)(86362001)(76176011)(81166006)(476003)(66066001)(478600001)(1361003)(3846002)(6116002)(14454004)(1411001)(25786009)(103116003)(7416002)(36756003)(2351001)(53936002)(71190400001)(71200400001)(4326008)(2501003)(5660300002)(99286004)(66446008)(64756008)(6486002)(53546011)(6506007)(316002)(11346002)(6512007)(66556008)(26005)(6246003)(54906003)(256004)(91956017)(14444005)(102836004)(5640700003)(76116006)(2906002)(73956011)(2616005)(7736002)(6916009)(486006)(8676002)(186003)(50226002)(229853002)(8936002)(305945005)(6436002)(66946007)(81156014)(66476007)(446003)(68736007)(99106002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4168;
 H:AM6PR04MB6630.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 8Ana/xTy2uIQ3UdsDAUPsjmCddfi69YqyEE6+PfOCSTVlB1TrkfOKg/iqCby2vp8Emuxug+kEi8BexuZFcrPRffTmG31ub155HvgnBzTBkVzyMgqfTOfeXdRgbthq/sovnORJNkZbkdaz+NwQMh5buV4j8rhbE4rn0sdrfzYT/T5B0T9YoA0wNT7ashjeVekoghJetC0H1y4v1xiffrHobqIJSWgFHZsDpTltuF7mfQcyxQ7NuY9XXFE9XG0JrNkRQ9KxawBHHcsnaueKm0wBp3OE3MM3a0ShVcG0suORNXc8LLtupVo40ShdFkZ2ZKO+e8imTUOfrocBqyAoTS+d43RgRHtlSm5yolXdTZ+qDJdilvrz0sc41jZO9C9AUwcsIAco0DUQzuuhRPrPA648NDlFooEq9zHpCehqffSARU=
Content-ID: <EA32B7B22C84424BAE4031078951904A@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 061ca480-5fb1-410f-16f2-08d6f2c50c43
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2019 01:42:24.6427 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yibin.gong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4168
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_184229_541314_B27CA8A4 
X-CRM114-Status: GOOD (  17.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.52 listed in list.dnswl.org]
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
 "m.olbrich@pengutronix.de" <m.olbrich@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0wNi0xNCBhdCAxMzozNSArMDAwMCwgU3ZlbiBWYW4gQXNicm9lY2sgd3JvdGU6DQo+
IEhpIFJvYmluLCBzZWUgY29tbWVudHMgaW5saW5lLg0KPiANCj4gT24gRnJpLCBKdW4gMTQsIDIw
MTkgYXQgNDozOCBBTSA8eWliaW4uZ29uZ0BueHAuY29tPiB3cm90ZToNCj4gPiANCj4gPiANCj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEvaW14LXNkbWEuYyBiL2RyaXZlcnMvZG1hL2lteC1z
ZG1hLmMNCj4gPiBpbmRleCBkZWVhOWFhLi5iNWExZWUyIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZl
cnMvZG1hL2lteC1zZG1hLmMNCj4gPiArKysgYi9kcml2ZXJzL2RtYS9pbXgtc2RtYS5jDQo+ID4g
QEAgLTc0Miw3ICs3NDIsNyBAQCBzdGF0aWMgaW50IHNkbWFfbG9hZF9zY3JpcHQoc3RydWN0IHNk
bWFfZW5naW5lDQo+ID4gKnNkbWEsIHZvaWQgKmJ1ZiwgaW50IHNpemUsDQo+ID4gwqDCoMKgwqDC
oMKgwqDCoHNwaW5fbG9ja19pcnFzYXZlKCZzZG1hLT5jaGFubmVsXzBfbG9jaywgZmxhZ3MpOw0K
PiA+IA0KPiA+IMKgwqDCoMKgwqDCoMKgwqBiZDAtPm1vZGUuY29tbWFuZCA9IEMwX1NFVFBNOw0K
PiA+IC3CoMKgwqDCoMKgwqDCoGJkMC0+bW9kZS5zdGF0dXMgPSBCRF9ET05FIHwgQkRfSU5UUiB8
IEJEX1dSQVAgfCBCRF9FWFREOw0KPiA+ICvCoMKgwqDCoMKgwqDCoGJkMC0+bW9kZS5zdGF0dXMg
PSBCRF9ET05FIHwgQkRfV1JBUCB8IEJEX0VYVEQ7DQo+IEkgdGVzdGVkIHRoaXMgY2hhbmdlIG9u
IGl0cyBvd24sIGFuZCBpdCBzZWVtZWQgc3VmZmljaWVudCB0byBtYWtlIHRoZQ0KPiBjcmFzaA0K
PiBkaXNhcHBlYXIuDQo+IA0KPiA+IA0KPiA+IMKgwqDCoMKgwqDCoMKgwqBiZDAtPm1vZGUuY291
bnQgPSBzaXplIC8gMjsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgYmQwLT5idWZmZXJfYWRkciA9IGJ1
Zl9waHlzOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBiZDAtPmV4dF9idWZmZXJfYWRkciA9IGFkZHJl
c3M7DQo+ID4gQEAgLTEwNjQsNyArMTA2NCw3IEBAIHN0YXRpYyBpbnQgc2RtYV9sb2FkX2NvbnRl
eHQoc3RydWN0DQo+ID4gc2RtYV9jaGFubmVsICpzZG1hYykNCj4gPiDCoMKgwqDCoMKgwqDCoMKg
Y29udGV4dC0+Z1JlZ1s3XSA9IHNkbWFjLT53YXRlcm1hcmtfbGV2ZWw7DQo+ID4gDQo+ID4gwqDC
oMKgwqDCoMKgwqDCoGJkMC0+bW9kZS5jb21tYW5kID0gQzBfU0VURE07DQo+ID4gLcKgwqDCoMKg
wqDCoMKgYmQwLT5tb2RlLnN0YXR1cyA9IEJEX0RPTkUgfCBCRF9JTlRSIHwgQkRfV1JBUCB8IEJE
X0VYVEQ7DQo+ID4gK8KgwqDCoMKgwqDCoMKgYmQwLT5tb2RlLnN0YXR1cyA9IEJEX0RPTkUgfCBC
RF9XUkFQIHwgQkRfRVhURDsNCj4gVGhpcyBmdW5jdGlvbiBpc24ndCBwYXJ0IG9mIHRoZSBmaXJt
d2FyZSBsb2FkIHBhdGgsIHNvIGhvdyBjYW4gaXQgYmUNCj4gcmVsYXRlZA0KPiB0byBmaXhpbmcg
dGhlIGZpcm13YXJlIGNyYXNoPw0KWWVzLCB0aGF0J3Mgbm90IGluIHlvdXIgZmlybXdhcmUgbG9h
ZCBjYXNlLCBidXQgSSB3YW50IHRvIGtlZXAgdGhlIHNhbWUNCmJlaGF2aW9yIGZvciBhbGwgY2hh
bm5lbDAgY29uZGl0aW9ucywgZG9uJ3Qgd29ycnksIGhhcm1sZXNzIGhlcmUuwqANCj4gDQo+IElm
IHRoaXMgaXMgYW4gdW5yZWxhdGVkIGVmZmljaWVuY3kgc2F2aW5nLCBtYXliZSBpdCBzaG91bGQg
Z28gaW50bw0KPiBpdHMNCj4gb3duIHBhdGNoPw0KPiBNYXliZSB3ZSB3YW50IGJ1Z2ZpeCBwYXRj
aGVzIHRvIGJlIGFzIHNtYWxsIGFuZCBzcGVjaWZpYyBhcyBwb3NzaWJsZSwNCj4gc28gdGhleQ0K
PiBjYW4gbW9yZSBlYXNpbHkgYmUgYmFja3BvcnRlZCB0byBvbGRlciBrZXJuZWxzPw0KPiANCj4g
PiANCj4gPiDCoMKgwqDCoMKgwqDCoMKgYmQwLT5tb2RlLmNvdW50ID0gc2l6ZW9mKCpjb250ZXh0
KSAvIDQ7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoGJkMC0+YnVmZmVyX2FkZHIgPSBzZG1hLT5jb250
ZXh0X3BoeXM7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoGJkMC0+ZXh0X2J1ZmZlcl9hZGRyID0gMjA0
OCArIChzaXplb2YoKmNvbnRleHQpIC8gNCkgKg0KPiA+IGNoYW5uZWw7DQo+ID4gLS0NCj4gPiAy
LjcuNA0KPiA+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
