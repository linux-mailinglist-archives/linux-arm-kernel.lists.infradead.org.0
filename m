Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F20E560769
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:09:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oKldE73c1Tj22+WF1klMDaELbdxSHGPbElE+N8mdpLE=; b=WocKw9ix4Ln/Nv
	jW6PyTJhotxuBK5cq+fLPhFclNBBHWhYVpKFQ6U7Cho5Q9Sj2N4l1r8GCQfDw3Yk3CIRPWoEWz5co
	/+p2JlquqaZNo8sADAR0rZxO0r6ftQeJ7WdJ9sOtfVGmM0DeR6k1e/2aRUVhlRqtN7B+/8uyfNp6J
	ABJxPit1AUf3gIs0yrlyqZVQN+b+hPJNnWAqhUk17zsK4PYY7E+6USfrbwozqe2hRibE3d/Bukffz
	gUBCCXKgfQWOzzpAibmw0AqGXKtYh3zHlagwTcUc61dk0ZrZ3olyfmsN1fwALb95VRki7sUpUhaSR
	3kMfOyqSgP7UdTgGPUEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOts-0003YX-8B; Fri, 05 Jul 2019 14:09:20 +0000
Received: from mail-eopbgr40047.outbound.protection.outlook.com ([40.107.4.47]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjOth-0003Vn-Ei
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 14:09:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z9SbYqWKT8xzCa4XrH4nv/1VRvV7Qt7GV08Eu8ox6w4=;
 b=RZbnFG3am4nNiiyDUdpWpSfsA+ryNSMzTw5gu4n+6fYkzVz8s5XCcUgURTBMI3Z3/QdJpiDDJcFpfRbVhjPYMsFX29G+08T+6ZWidQR2IAganF/P39eXfUzX9vuFXUnxFAeth53CHZIyYJGsacyPARLALRMzQqALMGzR00RQ+V0=
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com (52.134.5.23) by
 VI1PR0402MB2767.eurprd04.prod.outlook.com (10.172.255.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18; Fri, 5 Jul 2019 07:32:47 +0000
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::cddf:10d0:7cb3:c4cc]) by VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::cddf:10d0:7cb3:c4cc%4]) with mapi id 15.20.2052.010; Fri, 5 Jul 2019
 07:32:46 +0000
From: Andy Duan <fugang.duan@nxp.com>
To: =?utf-8?B?TG90aGFyIFdhw59tYW5u?= <LW@KARO-electronics.de>
Subject: RE: [EXT] Re: [PATCH nvmem 1/1] nvmem: imx: correct the fuse word
 index
Thread-Topic: [EXT] Re: [PATCH nvmem 1/1] nvmem: imx: correct the fuse word
 index
Thread-Index: AQHVMnTebEkQdGkfgE+cLXzkUFRHUqa6mimAgAAFbBCAAK/PoIAATbyAgAACa6A=
Date: Fri, 5 Jul 2019 07:32:46 +0000
Message-ID: <VI1PR0402MB36002D8F896C5A5033A0DA4AFFF50@VI1PR0402MB3600.eurprd04.prod.outlook.com>
References: <20190704142015.10701-1-fugang.duan@nxp.com>
 <20190704174543.194a0158@karo-electronics.de>
 <VI1PR0402MB3600D635FF12DC861FAD9BF6FFFA0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <VI1PR0402MB360040318C9FB6656B46C566FFF50@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <20190705091235.365b93cb@karo-electronics.de>
In-Reply-To: <20190705091235.365b93cb@karo-electronics.de>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=fugang.duan@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 27919343-8696-4e2a-dc35-08d7011af9e2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB2767; 
x-ms-traffictypediagnostic: VI1PR0402MB2767:
x-microsoft-antispam-prvs: <VI1PR0402MB276747DE7CC7E90001896692FFF50@VI1PR0402MB2767.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 008960E8EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(376002)(346002)(396003)(366004)(199004)(189003)(478600001)(76176011)(3846002)(6116002)(4326008)(6916009)(5660300002)(256004)(7696005)(86362001)(76116006)(66574012)(14454004)(25786009)(73956011)(102836004)(71200400001)(71190400001)(66476007)(66556008)(66446008)(6506007)(66946007)(64756008)(99286004)(186003)(8936002)(81156014)(81166006)(2906002)(8676002)(74316002)(26005)(7736002)(52536014)(229853002)(6246003)(486006)(54906003)(55016002)(476003)(53936002)(6436002)(68736007)(33656002)(316002)(305945005)(9686003)(11346002)(446003)(66066001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2767;
 H:VI1PR0402MB3600.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: HStEOap7jkmvowjQ04wlleAmefIxEpA++zFbvMIAJRaJ7s9ClIPpOYV+bJol27QMW01/zwPeHC6K9Nj+rAqj+tYOfU09HrxnHTwpKTSpQbW5l5a65QRvsb+RYv7lr99+E4yfG1fOS1h5B222dLk5LPLoK4waEiL5HI24xH8nJcJTXHYHnMtBeh36AQI+rHTDrEZj8rRxXLkKDBWUnfXK6mI+Ei58Y7f/uaR3QbVIxzGP7mhSQ/ZVHhjKfC5bKYfHWw+JLgAmOTvg/HBFVJC1Kb6GbBHMh1aXxa1hun/pbmKrVoEEGO+f6svFCmT0ROQv/NstGHzE9sVMOrBZ7ZseA4dR0ieo5SbzxXKFY7EzUPR5U23og/PE69hqpEnxYT9bA1bw24TPvCS97riAAiIEVYczzLprFUyS9AnuHrBkakk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27919343-8696-4e2a-dc35-08d7011af9e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2019 07:32:46.8986 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fugang.duan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2767
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_070909_493267_B91963FF 
X-CRM114-Status: GOOD (  21.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTG90aGFyIFdhw59tYW5uIDxMV0BLQVJPLWVsZWN0cm9uaWNzLmRlPiBTZW50OiBGcmlk
YXksIEp1bHkgNSwgMjAxOSAzOjEzIFBNDQo+IEhpLA0KPiANCj4gT24gRnJpLCA1IEp1bCAyMDE5
IDAyOjQ2OjMyICswMDAwIEFuZHkgRHVhbiB3cm90ZToNCj4gPiBGcm9tOiBBbmR5IER1YW4gU2Vu
dDogRnJpZGF5LCBKdWx5IDUsIDIwMTkgMTI6MDggQU0NCj4gPiA+IEZyb206IExvdGhhciBXYcOf
bWFubiA8TFdAS0FSTy1lbGVjdHJvbmljcy5kZT4gU2VudDogVGh1cnNkYXksIEp1bHkNCj4gPiA+
IDQsDQo+ID4gPiAyMDE5IDExOjQ2IFBNDQo+ID4gPiA+IEhpLA0KPiA+ID4gPg0KPiA+ID4gPiBP
biBUaHUsICA0IEp1bCAyMDE5IDIyOjIwOjE1ICswODAwIGZ1Z2FuZy5kdWFuQG54cC5jb20gd3Jv
dGU6DQo+ID4gPiA+ID4gRnJvbTogRnVnYW5nIER1YW4gPGZ1Z2FuZy5kdWFuQG54cC5jb20+DQo+
ID4gPiA+ID4NCj4gPiA+ID4gPiBpTVg4IGZ1c2Ugd29yZCBpbmRleCByZXByZXNlbnQgYXMgb25l
IDQtYnl0ZXMgd29yZCwgaXQgc2hvdWxkDQo+ID4gPiA+ID4gbm90IGJlIGRpdmlkZWQgYnkgNC4N
Cj4gPiA+ID4gPg0KPiA+ID4gPiA+IEV4cDoNCj4gPiA+ID4gPiAtIE1BQzAgYWRkcmVzcyBsYXlv
dXQgaW4gZnVzZToNCj4gPiA+ID4gPiBvZmZzZXQgNzA4OiBNQUNbM10gTUFDWzJdIE1BQ1sxXSBN
QUNbMF0NCj4gPiA+ID4gPiBvZmZzZXQgNzA5OiBYWCAgICAgeHggICAgIE1BQ1s1XSBNQUNbNF0N
Cj4gPiA+ID4gPg0KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEZ1Z2FuZyBEdWFuIDxmdWdhbmcu
ZHVhbkBueHAuY29tPg0KPiA+ID4gPiA+IC0tLQ0KPiA+ID4gPiA+ICBkcml2ZXJzL252bWVtL2lt
eC1vY290cC1zY3UuYyB8IDYgKysrLS0tDQo+ID4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9udm1lbS9pbXgtb2NvdHAtc2N1LmMNCj4gPiA+ID4gPiBiL2RyaXZlcnMv
bnZtZW0vaW14LW9jb3RwLXNjdS5jIGluZGV4IGQ5ZGM0ODIuLmJlMmY1ZjAgMTAwNjQ0DQo+ID4g
PiA+ID4gLS0tIGEvZHJpdmVycy9udm1lbS9pbXgtb2NvdHAtc2N1LmMNCj4gPiA+ID4gPiArKysg
Yi9kcml2ZXJzL252bWVtL2lteC1vY290cC1zY3UuYw0KPiA+ID4gPiA+IEBAIC03MSw4ICs3MSw4
IEBAIHN0YXRpYyBpbnQgaW14X3NjdV9vY290cF9yZWFkKHZvaWQgKmNvbnRleHQsDQo+ID4gPiA+
ID4gdW5zaWduZWQNCj4gPiA+ID4gaW50IG9mZnNldCwNCj4gPiA+ID4gPiAgICAgICB2b2lkICpw
Ow0KPiA+ID4gPiA+ICAgICAgIGludCBpLCByZXQ7DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiAtICAg
ICBpbmRleCA9IG9mZnNldCA+PiAyOw0KPiA+ID4gPiA+IC0gICAgIG51bV9ieXRlcyA9IHJvdW5k
X3VwKChvZmZzZXQgJSA0KSArIGJ5dGVzLCA0KTsNCj4gPiA+ID4gPiArICAgICBpbmRleCA9IG9m
ZnNldDsNCj4gPiA+ID4gPiArICAgICBudW1fYnl0ZXMgPSByb3VuZF91cChieXRlcywgNCk7DQo+
ID4gPiA+ID4gICAgICAgY291bnQgPSBudW1fYnl0ZXMgPj4gMjsNCj4gPiA+ID4gPg0KPiA+ID4g
PiA+ICAgICAgIGlmIChjb3VudCA+IChwcml2LT5kYXRhLT5ucmVncyAtIGluZGV4KSkgQEAgLTEw
MCw3ICsxMDAsNw0KPiA+ID4gPiA+IEBAIHN0YXRpYyBpbnQgaW14X3NjdV9vY290cF9yZWFkKHZv
aWQgKmNvbnRleHQsIHVuc2lnbmVkIGludCBvZmZzZXQsDQo+ID4gPiA+ID4gICAgICAgICAgICAg
ICBidWYrKzsNCj4gPiA+ID4gPiAgICAgICB9DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiAtICAgICBt
ZW1jcHkodmFsLCAodTggKilwICsgb2Zmc2V0ICUgNCwgYnl0ZXMpOw0KPiA+ID4gPiA+ICsgICAg
IG1lbWNweSh2YWwsICh1OCAqKXAsIGJ5dGVzKTsNCj4gPiA+ID4gPg0KPiA+ID4gPiA+ICAgICAg
IGtmcmVlKHApOw0KPiA+ID4gPiA+DQo+ID4gPiA+IFdpdGggdGhlc2UgY2hhbmdlcyB5b3UgY291
bGQgdXNlIHRoZSAndmFsJyBwb2ludGVyIGRpcmVjdGx5IGFzIHRoZQ0KPiA+ID4gPiBkZXN0aW5h
dGlvbiBmb3Igb2NvdHBfcmVhZCgpIHdpdGhvdXQgbmVlZCBmb3IgYW4gaW50ZXJtZWRpYXRlIGJ1
ZmZlci4NCj4gPiA+ID4NCj4gPiA+ID4NCj4gPiA+ID4gTG90aGFyIFdhw59tYW5uDQo+ID4gPg0K
PiA+ID4gWW91IGFyZSByaWdodCwgaW4gZmFjdCwgd2UgY2FuIHJlbW92ZSAicCIgYW5kICJidWYi
IHBvaW50ZXIuDQo+ID4gPiBUaGFua3MgZm9yIHlvdXIgcmV2aWV3LCBJIHdpbGwgc2VuZCBvdXQg
dGhlIFYyLg0KPiA+DQo+ID4gSGkgTG90aGFyLA0KPiA+DQo+ID4gSXQgc3RpbGwgbmVlZCBpbnRl
cm1lZGlhdGUgYnVmZmVyIHRvIHJlYWQgb3V0IG4gd29yZHMgKG4gKiA0IGJ5dGVzKSBmcm9tDQo+
IGVGdXNlLg0KPiA+IEJlY2F1c2UgJ3ZhbCcgYnVmZmVyIHNpemUgaXMgcmVhbCBjb3VudCBwYXJz
ZWQgZnJvbSBEVCwgd2hpY2ggaXMgbm90IGFuIGludGVnZXINCj4gbXVsdGlwbGUgb2YgNC4NCj4g
Pg0KPiA+IEZvciBleGFtcGxlLCBjZWxsLT5ieXRlcyBpcyBwYXJzZWQgZnJvbSAicmVnIiBwcm9w
ZXJ0eSBhbmQgaXQgaXMgcmVhbCBjb3VudA0KPiBsaWtlIDYuDQo+ID4gICAgICAgICAgICAgICAg
ICAgICAgICAgZmVjX21hYzA6IG1hY0AyYzQgew0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgcmVnID0gPDB4MmM0IDY+Ow0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgIH07
DQo+ID4NCj4gPiBTbyB3ZSBoYXZlIHRvIHVzZSBpbnRlcm1lZGlhdGUgYnVmZmVyIGhlcmUuDQo+
ID4NCj4gdmFsIGlzIGEgdTMyIHBvaW50ZXIsIHNvIGxlZ2FsbHkgaXQgY2Fubm90IHBvaW50IHRv
IGFueSBidWZmZXIgd2hvc2Ugc2l6ZSBpcyBub3QNCj4gZGl2aXNpYmxlIGJ5IGZvdXIhDQo+IA0K
WWVzLCB2YWwgaXMgYSB1MzIgcG9pbnRlciwgYXMgbXkgdW5kZXJzdGFuZCwgaXQgcG9pbnQgdG8g
dGhlICdidWYnIHdob3NlIHNpemUgaXMgY2VsbC0+Ynl0ZXMNCih0aGUgc2l6ZSBpcyBub3QgcGFy
c2VkIGZyb20gJ3JlZycgcHJvcGVydHkpDQoNClRoZSBwaWVjZSBvZiBjb2RlOiANCmJ1ZiA9IGt6
YWxsb2MoY2VsbC0+Ynl0ZXMsIEdGUF9LRVJORUwpOw0KbnZtZW1fcmVnX3JlYWQobnZtZW0sIGNl
bGwtPm9mZnNldCwgYnVmLCBjZWxsLT5ieXRlcyk7DQppbXhfc2N1X29jb3RwX3JlYWQodm9pZCAq
Y29udGV4dCwgdW5zaWduZWQgaW50IG9mZnNldCwgdm9pZCAqdmFsLCBzaXplX3QgYnl0ZXMpOw0K
DQpJZiBzbywgd2Ugc3RpbGwgbmVlZCBpbnRlcm1lZGlhdGUgYnVmZmVyIHRvIHJlYWQgb3V0IGVG
dXNlIHdvcmRzLCBhbmQgY29weSAnY2VsbC0+Ynl0ZXMnDQpieXRlcyB0byAndmFsJyBidWZmZXIu
IA0KTWF5IEkgdW5kZXJzdGFuZCB3cm9uZyA/IFRoYW5rcyB2ZXJ5IG11Y2ghDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
