Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E95C8CD97
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 10:05:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fdEENimvGJr8iat0IgztUtCDMNUQgtj5rIbVtuBnHE4=; b=GeLJWRRicFxWM9
	W0GSyUicL680eSNk+KiH/tn00g4FglLn5CSYQHX3E2c4/WwfnpVgYlr47voIRqDAy7Vlkmxh9Annb
	aQ4GFcVGP6tSvAx3Gukri1NRKVU99Z/btYPdgXo88wW36m2P6IH5zbtoCNK6fbPjk5rfxIW7yz2F9
	5ELxx7CH51jObukbBoGxZfJ/6Rt0+k9mzwrbX3ZOTGZIOjQILiZ2Cb/rASy0Y6u7ZCxyANT/zm1Xv
	q8Hmm3jGamIv4PG8t3JS35HPKMWyfH8OT/IqbC+BTvXYHArP9EPjQACaK+RXN3j+vw4zfyQifvtWN
	61hVlc2hCADqVPopAkbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxoHr-0003P6-5Z; Wed, 14 Aug 2019 08:05:39 +0000
Received: from mail-eopbgr150058.outbound.protection.outlook.com
 ([40.107.15.58] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxoHR-0003Fc-6z
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 08:05:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a/WOC326CVDrsYVzLuXkFqPscbe6NC4Ys6h49ggB6N2935KyyW3qHYYvklpz59FrzMBkqWJpniC71qZXgPo9ipIVNtvXgneIt0wQmNTWuEnyyKAanCTuVKtaffJQRzQIQ6XOmsqK/EugflTUCYkoH8w7qoHmyZcra0criBNF+7c/1gLKqNYIed1fbE1G0G4Ke+2uaVAqlA/6Xv634E7k6X3jriQU/vyqs82eQhloga7HIISMEnVphw5VqyH/edD7ZTcXNc1Qnl3xH4Od+txHbENnOJMMQjLBa7xQVa1qFZu9zyrMQZmVHqwM107pMEXPpwzcxYiyvk1yUT1zFpWj6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w4VadzdZkke9/tpKXWFVN9Mx1lxW7Qm9xwoXExTI35c=;
 b=V+kNQcRgVH0CIBP1p6ZSaIHPt8d6HuYBsluxEn1whqR1CiPcvuCSriZRGcunW7IVa9YCs5Jt7uMnJmx4AfnAVh/0q5CDJPpxNQHQZGgIa7/Z4ddHrF2LmzVeu8Akkyr61d17Dhgs9VbyLKoEF/gJrXnctW2PqIPC8ewGVChnYYv9gIX3ZUe0q1z/QDpEIz2D2tyRv6NIRvnePsXt7AaS0z6bNnRBFcJlf2Lo5xG4OFgOyVHwKTWPBZIPlCHSeIKnf0sjm3RatBMEAfYg+aFAw7mafe97eRFkbx7Ad9xp7V38VurPAdwPUCveNzz/mENKY1ylo8RrBPkn1N0XaB/h5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w4VadzdZkke9/tpKXWFVN9Mx1lxW7Qm9xwoXExTI35c=;
 b=YGMYfm22Yfw7YKdR2cmMgmp6mUj0p06jevCj26UrvtXghjb9gUfL5bxsjPP4eXqe+Nm9BaXKcZm1CDZEnNmo2Zy1OgWEA3YqcftCx1T/Kv+uAJ2uEPj1ea8d8lTd5lvqwW7ytFtfLu5IzSn8ZnmmeMta62q0J6El0mXzOvCzl4I=
Received: from DB8PR04MB6715.eurprd04.prod.outlook.com (20.179.251.14) by
 DB8PR04MB7082.eurprd04.prod.outlook.com (52.135.62.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.15; Wed, 14 Aug 2019 08:05:09 +0000
Received: from DB8PR04MB6715.eurprd04.prod.outlook.com
 ([fe80::b0ab:d127:ca27:e1fa]) by DB8PR04MB6715.eurprd04.prod.outlook.com
 ([fe80::b0ab:d127:ca27:e1fa%7]) with mapi id 15.20.2157.022; Wed, 14 Aug 2019
 08:05:09 +0000
From: Robert Chiras <robert.chiras@nxp.com>
To: "robh@kernel.org" <robh@kernel.org>
Subject: Re: [EXT] Re: [PATCH 05/10] dt-bindings: display: Add max-res
 property for mxsfb
Thread-Topic: [EXT] Re: [PATCH 05/10] dt-bindings: display: Add max-res
 property for mxsfb
Thread-Index: AQHVLCOYopWLBVbJWkWVaSjBvKksZabXEyyAgCOChgA=
Date: Wed, 14 Aug 2019 08:05:09 +0000
Message-ID: <1565769908.3209.51.camel@nxp.com>
References: <1561555938-21595-1-git-send-email-robert.chiras@nxp.com>
 <1561555938-21595-6-git-send-email-robert.chiras@nxp.com>
 <20190722174853.GA31795@bogus>
In-Reply-To: <20190722174853.GA31795@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.18.5.2-0ubuntu3.2 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=robert.chiras@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8cd1198c-46a3-4e7d-62f7-08d7208e2064
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR04MB7082; 
x-ms-traffictypediagnostic: DB8PR04MB7082:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB708241512E6825FBA1B44A12E3AD0@DB8PR04MB7082.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01294F875B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(136003)(346002)(376002)(39860400002)(199004)(189003)(54906003)(66946007)(8936002)(53936002)(66066001)(36756003)(25786009)(186003)(26005)(66556008)(66476007)(6506007)(64756008)(66446008)(316002)(91956017)(6436002)(5660300002)(102836004)(6512007)(6486002)(76116006)(86362001)(6916009)(14454004)(229853002)(4326008)(5640700003)(8676002)(44832011)(486006)(305945005)(2616005)(446003)(11346002)(2351001)(2501003)(103116003)(50226002)(476003)(478600001)(71190400001)(71200400001)(81166006)(81156014)(1730700003)(99286004)(6246003)(76176011)(7416002)(14444005)(6116002)(7736002)(256004)(3846002)(2906002)(99106002)(17423001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB7082;
 H:DB8PR04MB6715.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: R9uBR0pe8Ey+bwDQ4fySmAgXAQmtsmBLsS3jq6FLsl9k35vq9hrsDze6qd/X1RC6TNgJQhAwxIScv94guDBaX9zBKftSbzp6DElMhK0EnhI7LyH6+joPV2nISxW4+klpRAGm+H8M7FAhXTMefKb68hM/aeOd6kniVGajuzyH70Pb1RlJnuzm8/Aj7/7k01jvO3DntklSSSP3ucw+2RBQw3jbROlY/xfCUJm8f/lZ2LRMN+zkucWBw0k80e+tkrP9NUP6ZCQkRivQtceJroewZFJVKw8CGzOI75qYsOl1UGJAqBjHVnT3o01adbla27ojPZJ+JQ7ryxrKvdEd/Wm6XDITEeg/4Y1iHaSJ5vUwv3JbxCZ38zkx9lJuonWxRnb8lbULNApS4fpop+8acGJYJud5RK1gs8YnOuMisfLf3hk=
Content-ID: <B8F60CC76CEA6D43B646C80F09DD0708@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cd1198c-46a3-4e7d-62f7-08d7208e2064
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2019 08:05:09.5490 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +z8rojZLKTKID+u03VDOIbcvCOYSYryq2vcJQhpw9rLuOFnhm7dNKQRoda5nJuFaE5jgWT7JXxE5Ze6fwlPloQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_010513_952520_6890C3AE 
X-CRM114-Status: GOOD (  22.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.58 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "marex@denx.de" <marex@denx.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "airlied@linux.ie" <airlied@linux.ie>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>, dl-linux-imx <linux-imx@nxp.com>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTHUsIDIwMTktMDctMjIgYXQgMTE6NDggLTA2MDAsIFJvYiBIZXJyaW5nIHdyb3RlOg0KPiBP
biBXZWQsIEp1biAyNiwgMjAxOSBhdCAwNDozMjoxM1BNICswMzAwLCBSb2JlcnQgQ2hpcmFzIHdy
b3RlOg0KPiA+IA0KPiA+IEFkZCBuZXcgb3B0aW9uYWwgcHJvcGVydHkgJ21heC1yZXMnLCB0byBs
aW1pdCB0aGUgbWF4aW11bSBzdXBwb3J0ZWQNCj4gPiByZXNvbHV0aW9uIGJ5IHRoZSBNWFNGQl9E
Uk0gZHJpdmVyLg0KPiBCaW5kaW5ncyBhcmUgZm9yIGgvdyBkZXNjcmlwdGlvbiwgbm90IGRyaXZl
ciBjb25maWcuDQo+IA0KPiA+IA0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IFJvYmVydCBDaGly
YXMgPHJvYmVydC5jaGlyYXNAbnhwLmNvbT4NCj4gPiAtLS0NCj4gPiDCoERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L214c2ZiLnR4dCB8IDYgKysrKysrDQo+ID4gwqAx
IGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L214c2ZiLnR4dA0KPiA+IGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbXhzZmIudHh0DQo+ID4g
aW5kZXggNDcyZTFlYS4uNTVlMjJlZCAxMDA2NDQNCj4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9teHNmYi50eHQNCj4gPiArKysgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9teHNmYi50eHQNCj4gPiBAQCAtMTcsNiAr
MTcsMTIgQEAgUmVxdWlyZWQgcHJvcGVydGllczoNCj4gPiDCoFJlcXVpcmVkIHN1Yi1ub2RlczoN
Cj4gPiDCoMKgwqAtIHBvcnQ6IFRoZSBjb25uZWN0aW9uIHRvIGFuIGVuY29kZXIgY2hpcC4NCj4g
PiANCj4gPiArT3B0aW9uYWwgcHJvcGVydGllczoNCj4gPiArLSBtYXgtcmVzOsKgwqDCoGFuIGFy
cmF5IHdpdGggYSBtYXhpbXVtIG9mIHR3byBpbnRlZ2VycywgcmVwcmVzZW50aW5nDQo+ID4gdGhl
DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbWF4aW11bSBzdXBwb3J0ZWQgcmVzb2x1
dGlvbiwgaW4gdGhlIGZvcm0gb2YNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqA8bWF4
WD4sIDxtYXhZPjsgaWYgb25lIG9mIHRoZSBpdGVtIGlzIDwwPiwgdGhlDQo+ID4gZGVmYXVsdA0K
PiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRyaXZlci1kZWZpbmVkIG1heGltdW0gcmVz
b2x1dGlvbiBmb3IgdGhhdCBheGlzIGlzDQo+ID4gdXNlZA0KPiBJIHN1cHBvc2Ugd2hhdCB5b3Ug
YXJlIGFmdGVyIGlzIGJhbmR3aWR0aCBsaW1pdHM/IElJUkMsIHRoZXJlJ3MNCj4gYWxyZWFkeQ0K
PiBzb21lIGJpbmRpbmdzIGV4cHJlc3Npbmcgc3VjaCBsaW1pdHMuIEFsc28sIHdvdWxkbid0IHlv
dSBuZWVkIHRvDQo+IGFjY291bnQNCj4gZm9yIGJwcCBhbmQgdXNpbmcgdGhlIDJuZCBwbGFuZSAo
SUlSQyB0aGF0IHRoZXJlIGlzIG9uZSkuDQpJIGFtIHNvcnJ5IGZvciB0aGlzIGxhdGUgcmVwbHks
IGJ1dCBJIHdhcyBsb29raW5nIGFmdGVyIHRoZSBleGlzdGluZw0KYmluZGluZ3MgZXhwcmVzc2lu
ZyBzdWNoIGxpbWl0cy4gSSBkaWRuJ3QgZmluZCBzdWNoIGJpbmRpbmdzIHJlbGF0ZWQgdG8NCnRo
aXMgZHJpdmVyIHRob3VnaCwgSSBmb3VuZCBzb21lIGxpbWl0cyBwcmVzZW50IGluIHNvbWUgb3Ro
ZXIgZHJpdmVycy4NCkluZGVlZCwgdGhpcyBsaW1pdGF0aW9uIGlzIGFjdHVhbGx5IGR1ZSB0byBi
YW5kd2lkdGggbGltaXRhdGlvbiwgYnV0DQp0aGUgcHJvYmxlbSBpcyB0aGF0IHRoaXMgbGltaXRh
dGlvbiBjb21lcyBpLk1YOE0gKGtub3duIGFzIG1TY2FsZQ0KODUwRCksIHdoZXJlIHRoZSBtZW1v
cnkgYmFuZHdpZHRoIGNhbm5vdCBzdXBwb3J0OiBHUFUvVlBVIHdvcmtsb2FkIGluDQp0aGUgc2Ft
ZSB0aW1lIHdpdGggYm90aCBEQ1NTIGRyaXZpbmcgNGtANjDCoGFuZCBlTENESUYgZHJpdmluZyAx
MDgwcEA2MC4NClNpbmNlIGVMQ0RJRiBpcyBhIHNlY29uZGFyeSBkaXNwbGF5IHdlIHRob3VnaCB0
byBhZGQgdGhlIHBvc2liaWxpdHkgdG8NCmxpbWl0IGl0J3MgYmFuZHdpZHRoIGJ5IGxpbWl0aW5n
IHRoZSByZXNvbHV0aW9uLg0KSW5kZWVkLCB0aGVyZSBpcyBhbHNvIGEgc2Vjb25kIHBsYW5lLCBi
dXQgY3VycmVudGx5IG5vdCB5ZXQgc3VwcG9ydGVkDQoodGhlcmUgaXMgbm8gc3VwcG9ydCBmb3Ig
c2Vjb25kIHBsYW5lIGluIE1YU0ZCIGluIHRoZSB1cHN0cmVhbSBkcml2ZXINCm9yIGluIG91ciBp
bnRlcm5hbCB0cmVlKS4NCklmIHlvdSB0aGluayB0aGlzIGxpbWl0YXRpb24gZG9lc24ndCBtYWtl
IHNlbnNlLCBJIGNhbiBqdXN0IGRyb3AgaXQuDQo+IA0KPiBSb2INCg0KVGhhbmtzLA0KUm9iZXJ0
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
