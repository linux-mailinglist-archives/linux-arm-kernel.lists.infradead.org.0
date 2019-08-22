Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 164B498D28
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 10:14:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e5mZuOT80o3lAfEufhx8JrUtluMDrhyAp+QWeQSg8zk=; b=AnF0sZAEHPA+GM
	RYVfMsvfdT+vD1Qv4Zn9RaEqCGAvuSA2OiLKeynHVD0zCl+YaOejVIkWCF9q8qsJWsZlC8nhWMFcy
	oV77OhY17lzuM2Hj8WPajqL0x1NMNd2N8r4AKxRCwJvWqdDJUxBoDJ+5bqC2/sphAErasajjSocM3
	Zi1zynbE4ZM/T40J65xkGUf54LwOYteNFWn4sniq5rO4hKiTyZA9EU0zfIfs9vaHH2xdQCBkb8xbu
	7nqo5nvnsYRiYYqZPAkhpMEtYSz/39GHM0NqoT8gOz9bdrQtVsFjjUqZ9MdVt3FoGQa8jS12q7DCP
	FwugJdHaOk/LqkCd4QjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0iEQ-0005jD-DE; Thu, 22 Aug 2019 08:14:06 +0000
Received: from mail-eopbgr60044.outbound.protection.outlook.com ([40.107.6.44]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0iDA-0005Rr-Es
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 08:12:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J47PsnD+UkSTv/d+spcS+bJH9FoqGLU7L+J9QQDV+bojBGP+1JvRgwqXxWEXjDocOlVoD+A0VIPG3LEhd/jwQmibP3o1vcOZsreBmvBVyvOp0plcwSJE35uoPe6PoNtVzaxbE6FoiKQ2yaGUmLmNbpnfhstlikdGpd5kBMUxMi5J2hJQL2yWvc4SPPbGmxA2zhvppLA8r5m2gpeIH+rqCIGqMJkarinoumKQPzIU4ADwPW8jm9z0DkkOIF2SAD+KcPLgTVqJGJxrbXDXymA1vwhi3m1/2OnLV4wNKXzDnn3Zevic3mFsABzeHlhf+bavSi8XSa6LHptQYGIpu2VcKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RY2QFor1bpfw1XLvsGfcTLracdfzoN6ZXByEwvgvims=;
 b=brOqsvg6t9aMafAqsmLcG9dp/OQYc5RVNXtrgNl9Jo7fR0CnVyHbRIKbRXUX4KZS7Xzlr6UWTw49ZNnYTdOXdry924w817KOaDLsK4rX/InAZ2emLXhKjpb7keXB2GtruFp2JPHcaA7DBR2FKeoRsIqgUfvaIT06+sXmaQn6N8CbCNZMuEOQCdvnOXigSVT6o/no9q63s4zB7ip+NvuImsEIhVksrEdSLSPnU/Da/NDnHo1/xPeetCo+lokyLzpJXZRnX8bMVwJSqXmJhWiCagzQBWl5NvAXicbcGkSVa4RGZaWGzCo5vpn4fWUCaIJLswM8pZ9evkRkByx9kKO8lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RY2QFor1bpfw1XLvsGfcTLracdfzoN6ZXByEwvgvims=;
 b=OReKZotiFhP1pd0ilVRccktWFNgO0twlRgVIVAJy+XYGR2j8thcJ1udOI978HEIaLRrO0New4JYvOz0oV7aSeIJ1ZTyuVWn6ZG3YmVBkaoMamEByAs483AjHpfuehq0TJNZ5ALgKiQUwZcJDEcq6DjJX4d4o9Su5pl3CGFHFa88=
Received: from VI1PR04MB4094.eurprd04.prod.outlook.com (52.133.13.160) by
 VI1PR04MB3229.eurprd04.prod.outlook.com (10.170.227.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Thu, 22 Aug 2019 08:12:41 +0000
Received: from VI1PR04MB4094.eurprd04.prod.outlook.com
 ([fe80::c85e:7409:9270:3c3c]) by VI1PR04MB4094.eurprd04.prod.outlook.com
 ([fe80::c85e:7409:9270:3c3c%7]) with mapi id 15.20.2178.020; Thu, 22 Aug 2019
 08:12:41 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: dl-linux-imx <linux-imx@nxp.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "festevam@gmail.com" <festevam@gmail.com>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>, "robh@kernel.org" <robh@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "andrew.smirnov@gmail.com"
 <andrew.smirnov@gmail.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "l.stach@pengutronix.de"
 <l.stach@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: Re: [PATCH] soc: imx: gpcv2: Print the correct error code
Thread-Topic: [PATCH] soc: imx: gpcv2: Print the correct error code
Thread-Index: AQHVWD4fgayU539kwkO1006xyo5ogKcG0j8A
Date: Thu, 22 Aug 2019 08:12:41 +0000
Message-ID: <075dae8683762c2ea2bd8f7d8f539d79a0660f86.camel@nxp.com>
References: <ceab1bb4984d0a4f59a580cd9956c1fd6d6a78f3.1566405120.git.agx@sigxcpu.org>
In-Reply-To: <ceab1bb4984d0a4f59a580cd9956c1fd6d6a78f3.1566405120.git.agx@sigxcpu.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 95612c4f-4b47-42ea-aacf-08d726d880f2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR04MB3229; 
x-ms-traffictypediagnostic: VI1PR04MB3229:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB3229E5503C366B531616D6F4F9A50@VI1PR04MB3229.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1360;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(396003)(39860400002)(376002)(366004)(199004)(189003)(86362001)(66574012)(2616005)(486006)(5660300002)(4744005)(44832011)(6436002)(316002)(446003)(118296001)(66066001)(11346002)(76176011)(476003)(14454004)(6116002)(3846002)(2201001)(186003)(6486002)(66476007)(229853002)(66946007)(26005)(66446008)(64756008)(50226002)(76116006)(102836004)(2501003)(6506007)(256004)(7416002)(99286004)(8676002)(7736002)(14444005)(8936002)(25786009)(6246003)(36756003)(6512007)(71200400001)(53936002)(2906002)(110136005)(71190400001)(305945005)(81156014)(478600001)(81166006)(66556008)(99106002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3229;
 H:VI1PR04MB4094.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 47ASpHnu2zqR+KUDEQgckaQBkSs0T6q3nidkWQye5/c/oApAZdHXKoXF5z0QZJHO66jsXs31WJ4n9YUyC99ouqxQuCE2z9yDmDOb9A7E2MoQ+8ZmxPF7RUJq50BYkNG4GHQCGCZxtXiCHMQTtDWxuiv5uYZbYaXUWHGiGORRPqHM3lOhUi75TqHXYERW6OMGjrrmtBDvzLM01ZsaSHad1NoACFngdfkxOKQdeYmQ82Jp1/zAGnmuKPb9RP8tOgO3P3q7EWmPa0tm+ow0a1fl20ODOEj1Vlh9VYzqvlE7d/qCls7pMxorM90mvdPrht+HYG03Wp6E1USK8LsHd0KQM+rPdoQALS1WnRUvZkgOo0e7uTGYuKYhrpadtdV3d3EFOjfHI6RKbEvPKlyQK5YwD2fgs3pOcwzknDXJMamAZ4o=
Content-ID: <0D832D7F0A81D6458CAAFB73AD2A126E@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95612c4f-4b47-42ea-aacf-08d726d880f2
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 08:12:41.3323 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Nyd46aiXblzJQPxb9goG+kamhKuO/ts2HV9qP+2ZtF6GBakrX8H0ArYs7hxlfbfYDsfAVJHNgKNVf0eQWd1Sog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3229
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_011248_700811_4C0B0822 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyMDE5LTA4LTIxIGF0IDE4OjMzICswMjAwLCBHdWlkbyBHw7xudGhlciB3cm90ZToN
Cj4gVGhlIGN1cnJlbnQgY29kZSBwcmludHMgJ3JldCcgKHRodXMgMCkgd2hpbGUgaXQgc2hvdWxk
IHVzZSAnZXJyJy4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEd1aWRvIEfDvG50aGVyIDxhZ3hAc2ln
eGNwdS5vcmc+DQoNClJldmlld2VkLWJ5OiBEYW5pZWwgQmFsdXRhIDxkYW5pZWwuYmFsdXRhQG54
cC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL3NvYy9pbXgvZ3BjdjIuYyB8IDIgKy0NCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvc29jL2lteC9ncGN2Mi5jIGIvZHJpdmVycy9zb2MvaW14L2dwY3YyLmMN
Cj4gaW5kZXggMzFiOGQwMDJkODU1Li5iMGRmZmIwNmMwNWQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvc29jL2lteC9ncGN2Mi5jDQo+ICsrKyBiL2RyaXZlcnMvc29jL2lteC9ncGN2Mi5jDQo+IEBA
IC0xOTgsNyArMTk4LDcgQEAgc3RhdGljIGludCBpbXhfZ3BjX3B1X3BnY19zd19weHhfcmVxKHN0
cnVjdA0KPiBnZW5lcmljX3BtX2RvbWFpbiAqZ2VucGQsDQo+ICAJCWVyciA9IHJlZ3VsYXRvcl9k
aXNhYmxlKGRvbWFpbi0+cmVndWxhdG9yKTsNCj4gIAkJaWYgKGVycikNCj4gIAkJCWRldl9lcnIo
ZG9tYWluLT5kZXYsDQo+IC0JCQkJImZhaWxlZCB0byBkaXNhYmxlIHJlZ3VsYXRvcjogJWRcbiIs
DQo+IHJldCk7DQo+ICsJCQkJImZhaWxlZCB0byBkaXNhYmxlIHJlZ3VsYXRvcjogJWRcbiIsDQo+
IGVycik7DQo+ICAJCS8qIFByZXNlcnZlIGVhcmxpZXIgZXJyb3IgY29kZSAqLw0KPiAgCQlyZXQg
PSByZXQgPzogZXJyOw0KPiAgCX0NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
