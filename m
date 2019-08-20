Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D822E9575E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 08:37:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LKCid/kek3rxNzIKkBJ1bEAU1ai19aDKIECOsmW70LM=; b=nIvYtK4WDGl+Kl
	ToU1+uVUEApKS0hVp2p/XteRupVvI8j05eC6C51iO1kZYyytZxkMtZyExHNiVqb1C5UXW70UpUN5a
	VGjw7fKpLicDUm7i1MQPhut7S8vp24HRd56Oo0uQH1k+rX91gP0PcIS9Q7BfiBjZbAQqSY/rGNiuX
	oW5WY0+9gZ123OIgy6/HCgOsQSV4dhr1TGi+HxJNXJSyDSOpJVrIxbnLAGbkHdUrnbsPDvP9ff0XN
	UxEOJhpGHufhMNwNdFtnpSNuPK3NfH4FRkTz5xWGOQdivp/AO5Kl9irCz8o7OhXRxb0ww9fambzE+
	O+l3d0/vwqqVJ9NbXkdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzxmH-0004uO-Rf; Tue, 20 Aug 2019 06:37:58 +0000
Received: from mail-eopbgr50062.outbound.protection.outlook.com ([40.107.5.62]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzxlz-0004to-6o
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 06:37:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LKeGFqcIboKfl3rb1JYdSGcuh32wxsvN89aiwRAu90LY2esUEU3rysHrWtXxe3ZvSiGcYWTHyZ6fvHgQ5Ee/1pFZcLxTKvFcqGCcO+E4sB7LyvPggx1vVGV/xBVi39a+jjV6EadtaTLKyITCh8nGnadiZc8USsvMGT7AZeR5d+IDgvX5zGjG6gJeL+ofCR7hVuGWDs7VkcM5eUUXxX/Ou6393yvNWeu+N9trIxeuIc70qDJ7rhPwMMaHzgYj7kT2WT0e4H1p1mBERemtIXXzWf5oqfsrdi53b27kx7ugFiPrfr8gpLPl0053YdS3N1/pJsdHqLi7t16vGXnO3UWsOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fyHo+GZ7pHNa3r+eHh1o5vRf4kbgk0P/d3BTXlJl0GY=;
 b=nwwf4GU3mXzt5RKcmqaL+Jk0An8DC6hxU/weB1fafpGT+TW6iislzV3DJg+VqsBNwHdaY/ubeDeqVszZhHc3yTaydSjVSLbCVPqez4hIB+R6gG2le3jnAZDWUuz0siGphv7FXth1kjb/OUqimi6Uq7g34ThklRKGQgPaboIMEmNoyN1RQPboqb1s6E9YvA9j9esIq2Sts4rnlzLjSyFNtCDXW2sXgA5O/RgDnl2l+kdPzWO/kIImL/6qSY5n52Y28/mc4FKJl0XUq+hQo4L7GkNJmW83Q/YGm+gD9zB7M7+DBWPjdFsXT6tzzw5LCQgh8zqTkfZ/dUXqGSiOlORDvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fyHo+GZ7pHNa3r+eHh1o5vRf4kbgk0P/d3BTXlJl0GY=;
 b=WLF3g2ZZM0WCymSj/hxpIi+sxHwEep+dhqQQ9/oTVQAV7tX1gYofoL8Td6/Eg0/Q+oGv50sb9Wlcn+xWTCrbLQDMiyYPzbMHegrku2A85o40SYPu2Z9R53nJxPB+WEI3hTc7pu2ZOBXqSgfoC6nfF7QXsTBMnMUe/yNJ21vN2q0=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4234.eurprd04.prod.outlook.com (52.134.108.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Tue, 20 Aug 2019 06:37:33 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f%4]) with mapi id 15.20.2178.018; Tue, 20 Aug 2019
 06:37:33 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "robin.murphy@arm.com" <robin.murphy@arm.com>, "will@kernel.org"
 <will@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>
Subject: RE: [PATCH V5 0/3] perf: imx8_ddr_perf: add AXI ID filter
Thread-Topic: [PATCH V5 0/3] perf: imx8_ddr_perf: add AXI ID filter
Thread-Index: AQHVTbTc2dpn1miwlUae+nfBRVHxV6bxRokQgBJg/wA=
Date: Tue, 20 Aug 2019 06:37:33 +0000
Message-ID: <DB7PR04MB461878E49BA85AD3BE1FB662E6AB0@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <20190808064216.6950-1-qiangqing.zhang@nxp.com>
 <VI1PR04MB4910CE0F28AFD6E278EE106088D70@VI1PR04MB4910.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB4910CE0F28AFD6E278EE106088D70@VI1PR04MB4910.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a69611ae-aa0b-4f0a-22d2-08d72538e1d4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB4234; 
x-ms-traffictypediagnostic: DB7PR04MB4234:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB4234429047DA1916ECFB6157E6AB0@DB7PR04MB4234.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:586;
x-forefront-prvs: 013568035E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(366004)(39860400002)(346002)(136003)(13464003)(199004)(189003)(229853002)(476003)(569044001)(26005)(6506007)(53546011)(9686003)(4326008)(316002)(2906002)(66066001)(14454004)(102836004)(11346002)(478600001)(53936002)(186003)(8676002)(305945005)(2201001)(256004)(5660300002)(81156014)(81166006)(25786009)(3846002)(6116002)(71200400001)(33656002)(74316002)(71190400001)(486006)(66556008)(66476007)(66946007)(76116006)(8936002)(7736002)(66446008)(64756008)(86362001)(6246003)(7696005)(76176011)(54906003)(2501003)(6436002)(55016002)(446003)(110136005)(52536014)(99286004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4234;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /ybrM0T3XqyFyl3BIvtTZUuP6n9BNqngWYWWl1Dk+pSz521PkcTOmxoU6VYxBu7R5+dbC+7TFxBYicJiBQPoi5euzi+EgiImMMnAMVXfki81AYQYSAWyFMZoim1pxS46sRjvXz5/TOWD9RWAE7rUraN9YQKaXu0WkLHxLXQdux1mtriVaU197eiZTIPPlEEKWDTuBn/laH+1OiGmv41KYbuwjpXjELJqCs0wyCvaarlj6s3A/iYArZluFXZgpPIm3sFUK01bnEvqbeHfdwSb5aFTchi5eog95PmJRbX3PAPXVG6arMWfom7aSW588W518PV5KCswoZFdaibLED+3cm8qti71pMM5aM7/cEZkeIgumvAiq2YFG3wxkgId17bww5itH0DzbjnB4kx5znCjmfipjpacTYOzw68/f4R36QE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a69611ae-aa0b-4f0a-22d2-08d72538e1d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2019 06:37:33.1275 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CokXdAB6dbASpl6eXKObSIWKoFxKhm8ZuoI+Uv35i0jO4w44ArzTjeBTYOzY0ChIo32SLWXum4VCoz+TjG9Usg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4234
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_233739_257390_1D34E126 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.62 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Frank Li <frank.li@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQpLaW5kbHkgcGluZy4uLg0KDQpCZXN0IFJlZ2FyZHMsDQpKb2FraW0gWmhhbmcNCg0KPiAtLS0t
LU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBGcmFuayBMaQ0KPiBTZW50OiAyMDE5xOo4
1MI4yNUgMjE6NTYNCj4gVG86IEpvYWtpbSBaaGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5jb20+
OyByb2Jpbi5tdXJwaHlAYXJtLmNvbTsNCj4gd2lsbEBrZXJuZWwub3JnOyBtYXJrLnJ1dGxhbmRA
YXJtLmNvbQ0KPiBDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBkbC1s
aW51eC1pbXggPGxpbnV4LWlteEBueHAuY29tPg0KPiBTdWJqZWN0OiBSRTogW1BBVENIIFY1IDAv
M10gcGVyZjogaW14OF9kZHJfcGVyZjogYWRkIEFYSSBJRCBmaWx0ZXINCj4gDQo+IA0KPiANCj4g
PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IEpvYWtpbSBaaGFuZw0KPiA+
IFNlbnQ6IFRodXJzZGF5LCBBdWd1c3QgOCwgMjAxOSAxOjQ1IEFNDQo+ID4gVG86IHJvYmluLm11
cnBoeUBhcm0uY29tOyB3aWxsQGtlcm5lbC5vcmc7IG1hcmsucnV0bGFuZEBhcm0uY29tDQo+ID4g
Q2M6IEZyYW5rIExpIDxmcmFuay5saUBueHAuY29tPjsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnOw0KPiA+IGRsLWxpbnV4LSBpbXggPGxpbnV4LWlteEBueHAuY29tPjsgSm9h
a2ltIFpoYW5nDQo+ID4gPHFpYW5ncWluZy56aGFuZ0BueHAuY29tPg0KPiA+IFN1YmplY3Q6IFtQ
QVRDSCBWNSAwLzNdIHBlcmY6IGlteDhfZGRyX3BlcmY6IGFkZCBBWEkgSUQgZmlsdGVyDQo+ID4N
Cj4gPiBBZGQgQVhJIElEIGZpbHRlciBmb3IgaW14OG0gZGRyIHBlcmYuDQo+ID4NCj4gPiBKb2Fr
aW0gWmhhbmcgKDMpOg0KPiA+ICAgcGVyZjogaW14OF9kZHJfcGVyZjogYWRkIEFYSSBJRCBmaWx0
ZXIgc3VwcG9ydA0KPiA+ICAgRG9jdW1lbnRhdGlvbjogYWRtaW4tZ3VpZGU6IHBlcmY6IGFkZCBp
Lk1YOCBkZHIgcG11IHVzZXIgZG9jDQo+ID4gICBNQUlOVEFJTkVSUzogYWRkIGlteDggZGRyIHBl
cmYgYWRtaW4tZ3VpZGUgbWFpbnRhaW5lciBpbmZvcm1hdGlvbg0KPiA+DQo+ID4gIERvY3VtZW50
YXRpb24vYWRtaW4tZ3VpZGUvcGVyZi9pbXgtZGRyLnJzdCB8IDMwICsrKysrKysrKysrDQo+ID4g
IE1BSU5UQUlORVJTICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAxICsNCj4gPiAg
ZHJpdmVycy9wZXJmL2ZzbF9pbXg4X2Rkcl9wZXJmLmMgICAgICAgICAgIHwgNjMNCj4gKysrKysr
KysrKysrKysrKysrKysrLQ0KPiA+ICAzIGZpbGVzIGNoYW5nZWQsIDkyIGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pICBjcmVhdGUgbW9kZSAxMDA2NDQNCj4gPiBEb2N1bWVudGF0aW9uL2Fk
bWluLWd1aWRlL3BlcmYvaW14LWRkci5yc3QNCj4gPg0KPiBBY2tlZC1ieTogRnJhbmsgTGkgPEZy
YW5rLmxpQG54cC5jb20+DQo+IA0KPiA+IC0tDQo+ID4gMi4xNy4xDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
