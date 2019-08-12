Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A44D389C1F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 12:59:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pYTp2mKwqfBjoU1vVVI18gmWwG1s/cfngO04R3jqrW0=; b=QEr2QGibdhl8aa
	ZnSfQvpIYpzKPbySxJRsAdSCy8TUZoQBT4OMIaLcJCLg1ufzylAo8yPTNfbTE9S1yvYtFQnW82oO3
	2eh5p63xIpxn4RE3CmU3Ujcsa6PzepbSGpoqe7XAW+IxE1zxtRoN1KswSjuhxFZ9wTt+6QCzGNxoe
	D+HIIch51fg8+t5JCodJLdmK0amyqII8WB6ExVQBDkdTg+QN+CPYUeDKTuTo2T3ZHWgPBRigXu28N
	IfYrgjR+OUD+dy1NzVFGEQCJqU965z9xBvCXLjyP1nptGnZoRD5IAISG4GwrnJeCSRnYFOBY9hi6q
	UOJO2fK0i5X+94rT7vdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx83G-0004Vu-IR; Mon, 12 Aug 2019 10:59:46 +0000
Received: from mail-eopbgr130122.outbound.protection.outlook.com
 ([40.107.13.122] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx82u-0004VU-So
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 10:59:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IuTRhGf2ZJxliLUZFjlAITmJeiC8xWuAniqk2rkCC5rGOFw+doSYGpF4fyq24LAZLJ5NyWn2N+wATieIjHg199Rc7WeVUEtjacHB6kXgmRFTKkMBmUqERH9NfkMETLOze2hwqmi6LnNeI7Gc+JGN4k0rqCQXHiL4ntQtdMQfWCEmtyoWOATJ2gvKn0bcAb6uYz6CAFnOYPBZeSHdAcmBQIpXzLDNbUE2kSIMSamCGaVEBNpKnGNUZ9kRlW0gkQTaT1cGThhl61rRfOMsNQDh9s5n1LAyaviqjcKa2O+1vLUqStkUbZupMjqFoQkNOpQeHeK+OPPF+B0nRKiYJ1vTPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+2xhQobUc2rRhp5kmDObpJuKamNn87J+odFug7SIfaE=;
 b=UhkMShVKhwV/C90g9i6mtTwsawHnS1jn4YmZy7Ax9r8O3AfTj8K+NE04l4obsyLsn5Sq68UwXCr6VNVGf4XxTZL8ABg+BckG7+4bB9h4131gLO7cfOJnk6BS8mo4pahSGNmp1gBVsVf3bc0qg0oZu9pQ0lhRGezGaqCoVesYSCza4mUvJPFQerxt7lFWOhrlOnl5Q4Mp5/YQJmn7/2k4Mhwjyt2bTphhqr98/c16tFNND4dohQYWj61+dqMGT8KLOPmnViWvipPB0Na+AjFZqQ7l73B3zO4uxJPGO7xa839R7z/VXsw0BzKqmgkU7Bsbvy/Lpo4kR2GoKIUMyrAjYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+2xhQobUc2rRhp5kmDObpJuKamNn87J+odFug7SIfaE=;
 b=ZCgbyyBVYEBIh/2VqqYRxcxOcHWWdVqcRoj5RXr3vJxMbdEnuHk5SuZ08zOPA2jraGrjVLflEZz1bfSpNNxsNC/ZfimDTQWTUe+GNjEviIr+7J2sMwapB32iqPrbBO0q/eM1cwNVmB9UdcnnV/kW9lVtGNZLSqkhk4uQkoahsUk=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3983.eurprd05.prod.outlook.com (52.134.18.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Mon, 12 Aug 2019 10:59:20 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.022; Mon, 12 Aug 2019
 10:59:20 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "stefan@agner.ch" <stefan@agner.ch>, Marcel Ziswiler
 <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "michal.vokac@ysoft.com"
 <michal.vokac@ysoft.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>
Subject: Re: [PATCH v3 05/21] ARM: dts: add recovery for I2C for iMX7
Thread-Topic: [PATCH v3 05/21] ARM: dts: add recovery for I2C for iMX7
Thread-Index: AQHVTPnHBymxxsKMCkWQ+k28WDfDKab3QxYAgAAc8YA=
Date: Mon, 12 Aug 2019 10:59:19 +0000
Message-ID: <bfbf1b9c233da9362cdca5e000bc1dc7b92f08a2.camel@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
 <20190807082556.5013-6-philippe.schenker@toradex.com>
 <cd0da6ed-6b59-be60-34b2-74eb603aa10d@ysoft.com>
In-Reply-To: <cd0da6ed-6b59-be60-34b2-74eb603aa10d@ysoft.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4db9d560-d881-4019-2115-08d71f14209e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3983; 
x-ms-traffictypediagnostic: VI1PR0502MB3983:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB3983B3F86E99DC5CE13FCA9AF4D30@VI1PR0502MB3983.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(39840400004)(376002)(346002)(366004)(136003)(199004)(189003)(91956017)(71200400001)(71190400001)(2906002)(76116006)(66946007)(66476007)(478600001)(256004)(66556008)(7416002)(118296001)(6116002)(3846002)(14454004)(81156014)(81166006)(8676002)(8936002)(4326008)(36756003)(14444005)(229853002)(305945005)(6506007)(26005)(66066001)(76176011)(25786009)(110136005)(316002)(54906003)(99286004)(102836004)(44832011)(6486002)(64756008)(6436002)(66446008)(5660300002)(53936002)(6512007)(7736002)(2501003)(6246003)(476003)(2201001)(186003)(86362001)(486006)(11346002)(2616005)(446003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3983;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 8aA0Px4zMVCNgVsDA16OepDfhfkkAiX4pfFqIinuMQAqdl1BSrs63gYvssvu1h+GXSk1sJbpvmE+MS0glRNj5qtEQbFXumPaDrlkp9/ms9SKZhzGbeOv/8An7QNFlxQQZqC9uEk32Z/RNRO3UTrv5AXOT9+zY/IHeFdOCZqpUL96VzsvSCpBKdq3F4BK0ELq4cpfMKXBqNP9b509aJ0mBswitAZBK9slPbNQVeuL9WG0JmgL0zD6xVgKDTuxSDqvxLojRMfSqNAJhjjLME+sV6Q+m7SnVuxTg3RKyjQWN7tCcGGhyZ3QOmNPFSssChlIW4SwHcWl5owduJ3mqDSr7iLfluqTL/VOBH1mCZSPyebS0Q4E8D8kEzoL2O0cO4J47/mC6vHg72pyDYV1dHalrvB3LhpBLRWCZh7h/C5nG1w=
Content-ID: <15A196EE244FFF46BAD0486B46FCD407@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4db9d560-d881-4019-2115-08d71f14209e
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 10:59:19.9887 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6PytLYfrS6/TvQ1BLxzWtL5LyablOpB28h9BnxWzkx7IkqjuG8T1moK8eVw9ThFVY72f0a1gCvjgLW7h+sZqKTM53dQkfJQmU7YAZNSPNY8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3983
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_035925_091051_A54A1FB5 
X-CRM114-Status: GOOD (  19.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.122 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAyMDE5LTA4LTEyIGF0IDExOjE1ICswMjAwLCBNaWNoYWwgVm9rw6HEjSB3cm90ZToN
Cj4gT24gMDcuIDA4LiAxOSAxMDoyNiwgUGhpbGlwcGUgU2NoZW5rZXIgd3JvdGU6DQo+ID4gRnJv
bTogT2xla3NhbmRyIFN1dm9yb3YgPG9sZWtzYW5kci5zdXZvcm92QHRvcmFkZXguY29tPg0KPiA+
IA0KPiA+IC0gYWRkIHJlY292ZXJ5IG1vZGUgZm9yIGFwcGxpY2FibGUgaTJjIGJ1c2VzIGZvcg0K
PiA+ICAgIENvbGlicmkgaU1YNyBtb2R1bGUuDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogT2xl
a3NhbmRyIFN1dm9yb3YgPG9sZWtzYW5kci5zdXZvcm92QHRvcmFkZXguY29tPg0KPiA+IFNpZ25l
ZC1vZmYtYnk6IFBoaWxpcHBlIFNjaGVua2VyIDxwaGlsaXBwZS5zY2hlbmtlckB0b3JhZGV4LmNv
bT4NCj4gPiAtLS0NCj4gSGkgUGhpbGlwcGUsDQo+IA0KPiBzaW5jZSB5b3UgYXJlIGdvaW5nIHRv
IHNlbmQgdjQgYW55d2F5IEkgc3VnZ2VzdCB5b3UgdXBkYXRlIHRoZSBzdWJqZWN0DQo+IHRvIGJl
IGNvbnNpc3RlbnQgYWNyb3NzIGFsbCB0aGUgcGF0Y2hlcy4NCj4gDQo+IAkiQVJNOiBkdHM6IGlt
eDctY29saWJyaTogYWRkIHJlY292ZXJ5IGZvciBJMkMgZm9yIGlNWDciDQo+IA0KPiBmaXRzIGJl
dHRlciBJIHRoaW5rLg0KPiANCj4gVGhhbmsgeW91LA0KPiBNaWNoYWwNCg0KT2theSwgd2lsbCBk
byB0aGF0IGZvciB2NC4gSSdsbCBnbyBvdmVyIGFsbCBtZXNzYWdlcyB0aGVuIGFnYWluIGFuZCBz
ZWUNCnRoYXQgaXQgaXMgY29uc2lzdGVudC4NCg0KUGhpbGlwcGUNCj4gDQo+ID4gQ2hhbmdlcyBp
biB2MzogTm9uZQ0KPiA+IENoYW5nZXMgaW4gdjI6IE5vbmUNCj4gPiANCj4gPiAgIGFyY2gvYXJt
L2Jvb3QvZHRzL2lteDctY29saWJyaS5kdHNpIHwgMjUgKysrKysrKysrKysrKysrKysrKysrKyst
LQ0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
DQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDctY29saWJyaS5k
dHNpDQo+ID4gYi9hcmNoL2FybS9ib290L2R0cy9pbXg3LWNvbGlicmkuZHRzaQ0KPiA+IGluZGV4
IGE4ZDk5MmYzZTg5Ny4uMjQ4MDYyM2M5MmZmIDEwMDY0NA0KPiA+IC0tLSBhL2FyY2gvYXJtL2Jv
b3QvZHRzL2lteDctY29saWJyaS5kdHNpDQo+ID4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14
Ny1jb2xpYnJpLmR0c2kNCj4gPiBAQCAtMTQwLDggKzE0MCwxMiBAQA0KPiA+ICAgDQo+ID4gICAm
aTJjMSB7DQo+ID4gICAJY2xvY2stZnJlcXVlbmN5ID0gPDEwMDAwMD47DQo+ID4gLQlwaW5jdHJs
LW5hbWVzID0gImRlZmF1bHQiOw0KPiA+ICsJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IiwgImdw
aW8iOw0KPiA+ICAgCXBpbmN0cmwtMCA9IDwmcGluY3RybF9pMmMxICZwaW5jdHJsX2kyYzFfaW50
PjsNCj4gPiArCXBpbmN0cmwtMSA9IDwmcGluY3RybF9pMmMxX3JlY292ZXJ5ICZwaW5jdHJsX2ky
YzFfaW50PjsNCj4gPiArCXNjbC1ncGlvcyA9IDwmZ3BpbzEgNCBHUElPX0FDVElWRV9ISUdIPjsN
Cj4gPiArCXNkYS1ncGlvcyA9IDwmZ3BpbzEgNSBHUElPX0FDVElWRV9ISUdIPjsNCj4gPiArDQo+
ID4gICAJc3RhdHVzID0gIm9rYXkiOw0KPiA+ICAgDQo+ID4gICAJY29kZWM6IHNndGw1MDAwQGEg
ew0KPiA+IEBAIC0yNDIsOCArMjQ2LDExIEBADQo+ID4gICANCj4gPiAgICZpMmM0IHsNCj4gPiAg
IAljbG9jay1mcmVxdWVuY3kgPSA8MTAwMDAwPjsNCj4gPiAtCXBpbmN0cmwtbmFtZXMgPSAiZGVm
YXVsdCI7DQo+ID4gKwlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiLCAiZ3BpbyI7DQo+ID4gICAJ
cGluY3RybC0wID0gPCZwaW5jdHJsX2kyYzQ+Ow0KPiA+ICsJcGluY3RybC0xID0gPCZwaW5jdHJs
X2kyYzRfcmVjb3Zlcnk+Ow0KPiA+ICsJc2NsLWdwaW9zID0gPCZncGlvNyA4IEdQSU9fQUNUSVZF
X0hJR0g+Ow0KPiA+ICsJc2RhLWdwaW9zID0gPCZncGlvNyA5IEdQSU9fQUNUSVZFX0hJR0g+Ow0K
PiA+ICAgfTsNCj4gPiAgIA0KPiA+ICAgJmxjZGlmIHsNCj4gPiBAQCAtNTQwLDYgKzU0NywxMyBA
QA0KPiA+ICAgCQk+Ow0KPiA+ICAgCX07DQo+ID4gICANCj4gPiArCXBpbmN0cmxfaTJjNF9yZWNv
dmVyeTogaTJjNC1yZWNvdmVyeWdycCB7DQo+ID4gKwkJZnNsLHBpbnMgPSA8DQo+ID4gKwkJCU1Y
N0RfUEFEX0VORVQxX1JHTUlJX1REMl9fR1BJTzdfSU84CTB4NDAwMDAwN2YNCj4gPiArCQkJTVg3
RF9QQURfRU5FVDFfUkdNSUlfVEQzX19HUElPN19JTzkJMHg0MDAwMDA3Zg0KPiA+ICsJCT47DQo+
ID4gKwl9Ow0KPiA+ICsNCj4gPiAgIAlwaW5jdHJsX2xjZGlmX2RhdDogbGNkaWYtZGF0LWdycCB7
DQo+ID4gICAJCWZzbCxwaW5zID0gPA0KPiA+ICAgCQkJTVg3RF9QQURfTENEX0RBVEEwMF9fTENE
X0RBVEEwCQkweDc5DQo+ID4gQEAgLTc0MCw2ICs3NTQsMTMgQEANCj4gPiAgIAkJPjsNCj4gPiAg
IAl9Ow0KPiA+ICAgDQo+ID4gKwlwaW5jdHJsX2kyYzFfcmVjb3Zlcnk6IGkyYzEtcmVjb3Zlcnln
cnAgew0KPiA+ICsJCWZzbCxwaW5zID0gPA0KPiA+ICsJCQlNWDdEX1BBRF9MUFNSX0dQSU8xX0lP
MDRfX0dQSU8xX0lPNAkweDQwMDAwMDdmDQo+ID4gKwkJCU1YN0RfUEFEX0xQU1JfR1BJTzFfSU8w
NV9fR1BJTzFfSU81CTB4NDAwMDAwN2YNCj4gPiArCQk+Ow0KPiA+ICsJfTsNCj4gPiArDQo+ID4g
ICAJcGluY3RybF9jZF91c2RoYzE6IHVzZGhjMS1jZC1ncnAgew0KPiA+ICAgCQlmc2wscGlucyA9
IDwNCj4gPiAgIAkJCU1YN0RfUEFEX0xQU1JfR1BJTzFfSU8wMF9fR1BJTzFfSU8wCTB4NTkgLyog
Q0QNCj4gPiAqLw0KPiA+IA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
