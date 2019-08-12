Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FA4898FD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 10:50:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2hbvDeZMV20MBhncYNE2/+u/G5LiWuLWeqrTQj0ngEM=; b=Q+zv/op+jd10ND
	8vOm2j35Et0u/glNgUjeX8CvXjZBeNjZ94EA7sW2G8Xf6X2pAiuDFJpbpWW/qPH0ohvA0TVOzwAhd
	MEs0hZZ5NwC/uIQ3DEpjXURHIje6dP5cUjs09rVRGxGJ+/ettp1OXFex82TY1f96PcLWfPGLM/qRF
	GWEevLqdNbZOBs9eQ7u3Yz/KPpALL42DBDR+/b8mkH88nJpDUCO4mBNpMHbg8HnJiLQAJmNyrCJeN
	HuwTdI1oUXLPqYaHPmrk2vboivsz9ECzH2zuhR3vrazFvvbeADvn0p5zuRkcncgnOiOU4+JE42Mjy
	6TJzt7is3GZTQF3qYtrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx62F-0003cL-Ss; Mon, 12 Aug 2019 08:50:35 +0000
Received: from mail-eopbgr140108.outbound.protection.outlook.com
 ([40.107.14.108] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx623-0003be-EI
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 08:50:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ku/J0ds0a4PyLckG6FFPVp4WtQ7KG7XoAjGROln4WP4Y5FdpwSLykxl7U/uEvvxOK6klzK8O78AatS8Jx3URNhzzd2dCsspMUEAkhI2LXwOVGsLOZI4twuo8gRS+LB9P1AQTefRYYEACcmkO663JpzUBKORYPn1meza/4T/WAgvpCTI4Ek8yvALSQgjRrzh1iH48FM0gNV2abWu1ZG2CTbZhmwgESiyTwmmat+v6qMPSqHSPzUdgORp43ZpZWvnVNwdBB5Az0ERLhukH54jU44wksgAamEkOYZDhqEZCYbd9JAaIcbUz5ErbqJhoxan2eqY59M062orXviAHy4S4Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GOhibu6xEanOtkoR1moDXTu7acU984OLeVavohygIhw=;
 b=FwMX49XMfnUH0zOhD019u0qV1xvN/4OghtSL8228Nvty+XaUvUOkJPO8bStUEVEn6RunKu6vDyLymwdT9UoHflbi5d4NAUQOdo0kecmkeN0wRgXEYrSTv01+RCUjQ1I0y52n+/QJ6BZwOMhvjJZEsuHdnUO7/meSDM3Xy3REQcX6c9az1uKX5yb95fXsEKM5nfwOdGtz90ZgrljudpaCsaaGppiW1nq7B8E2OCCQi/CciEWlbMnA4qYCvDdIm1hQyiSHg1qLcltfWN6z+Pk942tqefcAsuh6FIHgmc4ed5beCbNIW2RmcLtDapDQGk3JTNzGNYf9k/q9vZhjfhysIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GOhibu6xEanOtkoR1moDXTu7acU984OLeVavohygIhw=;
 b=uHoxQaDZcyZ0cv+mkSWnYR+q2ZXqA0eXvAWrQavTZznRUn0KRfTFwtD2fgtgcdI26+m+bQ7AQN58SzvH4phWS1Cd1hdcg0QkrOgS5qbCj8wq+PXqoNFRnfKPtO86/lfltISeIepLJxRVeVeJH6OwxP4bBpOAUccy/0Vr0ckKco8=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB2879.eurprd05.prod.outlook.com (10.172.255.149) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.16; Mon, 12 Aug 2019 08:50:17 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.022; Mon, 12 Aug 2019
 08:50:17 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "git@andred.net" <git@andred.net>
Subject: Re: [PATCH] ARM: dts: imx7d: sbc-iot-imx7: add recovery for i2c3/4
Thread-Topic: [PATCH] ARM: dts: imx7d: sbc-iot-imx7: add recovery for i2c3/4
Thread-Index: AQHVT8bJ2A+rECE7DUKJu1AKyiMjFqb3Nl4A
Date: Mon, 12 Aug 2019 08:50:17 +0000
Message-ID: <5b59f3c2b78eaf717885fa005158a0e8a6c51591.camel@toradex.com>
References: <20190807082556.5013-6-philippe.schenker@toradex.com>
 <20190810215817.5118-1-git@andred.net>
In-Reply-To: <20190810215817.5118-1-git@andred.net>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4089134b-10dd-48e3-f4a3-08d71f02199b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR0502MB2879; 
x-ms-traffictypediagnostic: VI1PR0502MB2879:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB2879EB0E514377482F714BFDF4D30@VI1PR0502MB2879.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(396003)(39840400004)(366004)(376002)(346002)(189003)(199004)(5660300002)(446003)(6506007)(14444005)(66066001)(6916009)(6512007)(6486002)(478600001)(6436002)(4326008)(256004)(66476007)(66556008)(64756008)(66446008)(7416002)(486006)(25786009)(14454004)(2351001)(11346002)(76116006)(476003)(44832011)(91956017)(66946007)(36756003)(316002)(2616005)(53936002)(71200400001)(71190400001)(118296001)(305945005)(7736002)(76176011)(186003)(54906003)(81166006)(81156014)(2501003)(99286004)(1730700003)(8676002)(102836004)(8936002)(229853002)(26005)(6246003)(6116002)(3846002)(2906002)(5640700003)(86362001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB2879;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: LS4PssZoDsuXTlnkySFKCWVVSLTqGpZLYh1Y49+b6RfbELMTvjwAYJsshvlaMvYsViExvfmOIb2PIuWkRnkAY/ZyhMPeYV/+hT91v6eJ42xnjpmKvTlwtH51S5dxBMze/xrVBCpe8PY5dtwN6BV2MvjieNZpXu4hkoiEWXprcqObYVpyADUhBoPJ35CwGLNJf6+1in2SYA3TR1G18B/bEheuxLK1vILOWaZFDP8rJRJcdaK4vEiXrzCRvvpcPDQn5ItKTH3pITfM0aOWhs7C6hhZEbjdfFGIfmNIyJRiaTx+iDLHkVSycCfHlC5jsn/C/Y9adwN0+oCWKNJpCEh0S/n8CNgEfq9R2cmdq3cPVvYv2A727ZPOkktO6E8M7NWHjfaNFeAMsxrVctRoBRTf7GqMh3+zraS5S5uaVaTruDw=
Content-ID: <C4650A38930A7543B5311F4BB78928C8@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4089134b-10dd-48e3-f4a3-08d71f02199b
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 08:50:17.3462 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LMJSDV/AqGeJ7IOJRUnpvpJ0jULBO/To2NC9RPFf6nmQ5VN6xYH9f4braxnqu3We8xgJHLErKKuUqlFNRi7uEd2Iiv3XgovNvQWWN4avyWE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB2879
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_015023_651581_62418F6D 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.108 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0LCAyMDE5LTA4LTEwIGF0IDIyOjU4ICswMTAwLCBBbmRyw6kgRHJhc3ppayB3cm90ZToN
Cj4gT24gV2VkLCAwNyBBdWcgMjAxOSAwODoyNjoxNSArMDAwMCwgUGhpbGlwcGUgU2NoZW5rZXIg
d3JvdGU6DQo+ID4gRnJvbTogT2xla3NhbmRyIFN1dm9yb3YgPG9sZWtzYW5kci5zdXZvcm92QHRv
cmFkZXguY29tPg0KPiA+IA0KPiA+IC0gYWRkIHJlY292ZXJ5IG1vZGUgZm9yIGFwcGxpY2FibGUg
aTJjIGJ1c2VzIGZvcg0KPiA+ICAgQ29saWJyaSBpTVg3IG1vZHVsZS4NCj4gPiANCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBPbGVrc2FuZHIgU3V2b3JvdiA8b2xla3NhbmRyLnN1dm9yb3ZAdG9yYWRleC5j
b20+DQo+ID4gU2lnbmVkLW9mZi1ieTogUGhpbGlwcGUgU2NoZW5rZXIgPHBoaWxpcHBlLnNjaGVu
a2VyQHRvcmFkZXguY29tPg0KPiA+IC0tLQ0KPiA+IA0KPiA+IENoYW5nZXMgaW4gdjM6IE5vbmUN
Cj4gPiBDaGFuZ2VzIGluIHYyOiBOb25lDQo+ID4gDQo+ID4gIGFyY2gvYXJtL2Jvb3QvZHRzL2lt
eDctY29saWJyaS5kdHNpIHwgMjUgKysrKysrKysrKysrKysrKysrKysrKystLQ0KPiA+ICAxIGZp
bGUgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14Ny1jb2xpYnJpLmR0c2kNCj4gPiBiL2Fy
Y2gvYXJtL2Jvb3QvZHRzL2lteDctY29saWJyaS5kdHNpDQo+ID4gaW5kZXggYThkOTkyZjNlODk3
Li4yNDgwNjIzYzkyZmYgMTAwNjQ0DQo+ID4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14Ny1j
b2xpYnJpLmR0c2kNCj4gPiArKysgYi9hcmNoL2FybS9ib290L2R0cy9pbXg3LWNvbGlicmkuZHRz
aQ0KPiA+IEBAIC0xNDAsOCArMTQwLDEyIEBADQo+ID4gDQo+ID4gICZpMmMxIHsNCj4gPiAgCWNs
b2NrLWZyZXF1ZW5jeSA9IDwxMDAwMDA+Ow0KPiA+IC0JcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0
IjsNCj4gPiArCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCIsICJncGlvIjsNCj4gPiAgCXBpbmN0
cmwtMCA9IDwmcGluY3RybF9pMmMxICZwaW5jdHJsX2kyYzFfaW50PjsNCj4gPiArCXBpbmN0cmwt
MSA9IDwmcGluY3RybF9pMmMxX3JlY292ZXJ5ICZwaW5jdHJsX2kyYzFfaW50PjsNCj4gPiArCXNj
bC1ncGlvcyA9IDwmZ3BpbzEgNCBHUElPX0FDVElWRV9ISUdIPjsNCj4gDQo+IHNjbC1ncGlvcyBz
aG91bGQgYmUgKEdQSU9fQUNUSVZFX0hJR0ggfCBHUElPX09QRU5fRFJBSU4pIHNpbmNlDQo+IGNv
bW1pdCBkMmQwYWQyYWVjNGEgKCJpMmM6IGlteDogdXNlIG9wZW4gZHJhaW4gZm9yIHJlY292ZXJ5
IEdQSU8iKQ0KPiANCj4gT3RoZXJ3aXNlIHlvdSdsbCBnZXQgYSBib290LXRpbWUgd2FybmluZzoN
Cj4gICAgZW5mb3JjZWQgb3BlbiBkcmFpbiBwbGVhc2UgZmxhZyBpdCBwcm9wZXJseSBpbiBEVC9B
Q1BJIERTRFQvYm9hcmQNCj4gZmlsZQ0KDQpUaGFua3MgZm9yIHBvaW50aW5nIHRoaXMgb3V0LCBJ
IGFkZGVkIHRoaXMgZm9yIHY0Lg0KDQpQaGlsaXBwZQ0KPiANCj4gPiArCXNkYS1ncGlvcyA9IDwm
Z3BpbzEgNSBHUElPX0FDVElWRV9ISUdIPjsNCj4gPiArDQo+ID4gIAlzdGF0dXMgPSAib2theSI7
DQo+ID4gDQo+ID4gIAljb2RlYzogc2d0bDUwMDBAYSB7DQo+ID4gQEAgLTI0Miw4ICsyNDYsMTEg
QEANCj4gPiANCj4gPiAgJmkyYzQgew0KPiA+ICAJY2xvY2stZnJlcXVlbmN5ID0gPDEwMDAwMD47
DQo+ID4gLQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOw0KPiA+ICsJcGluY3RybC1uYW1lcyA9
ICJkZWZhdWx0IiwgImdwaW8iOw0KPiA+ICAJcGluY3RybC0wID0gPCZwaW5jdHJsX2kyYzQ+Ow0K
PiA+ICsJcGluY3RybC0xID0gPCZwaW5jdHJsX2kyYzRfcmVjb3Zlcnk+Ow0KPiA+ICsJc2NsLWdw
aW9zID0gPCZncGlvNyA4IEdQSU9fQUNUSVZFX0hJR0g+Ow0KPiANCj4gYW5kIGhlcmUsIHRvby4N
Cj4gDQo+IENoZWVycywNCj4gQW5kcsOpDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
