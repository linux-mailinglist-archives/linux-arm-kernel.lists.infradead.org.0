Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 857104232B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 12:59:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ouq9as32DiyE8ZEVyDkslMTFD+aOTKWKUoPCM5blpWQ=; b=fnjV9WBZBDu9z+
	N1r6/KcZU+hozslgzwG3T64tSKtowbcdhQGVym/rl+z/r3cvb0hbg48ACa0YzL6R6nIZv+1CbgUzs
	04nR9vCcMvfDpgu+QiMG8njermPhMkUJsNbVb09wG+JVgPuoqEKvrkQO+x0lSTUD2wPAGMG6vuW4X
	6GYg0rRrO6HgTT7fllyW/lrW/Ewfqzzx+O4mUbEJ4wmesg5zPVOeWZaOVwBvws+J4+d+IYLCs4qwz
	LhhKRIv/pBmfIb7EsW5rcKEBn17BO7sTRiIS4VFLDKTxxGC+P9FnEk+w7nl0xx71MhwrlzbmKtDfO
	mJBQfhKx4Ngzj2Zj6npg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb0yl-0006CN-QW; Wed, 12 Jun 2019 10:59:44 +0000
Received: from mail-eopbgr140070.outbound.protection.outlook.com
 ([40.107.14.70] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb0yM-0005xg-6p
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 10:59:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e/00UKVuhIOamJpRmg/SyScWonWCV65tPqwvPyMwLDQ=;
 b=tuJkXUEzAE2gYIMwG3kS6iwLus9pd5D/KtcR3ONurL0BRjm7hXdKY2l86xyxjs9FSTYqdrZyGYjqX+FQjalN6+Mm/47+yFjG3ft6AiIZ8CxurFXfI1Cy/lDocLCYSDlg8pDzAzVY+mU+m3RJrmri+vBpt3Jmr4sAcC7NqO+qxog=
Received: from DB6PR0802MB2133.eurprd08.prod.outlook.com (10.172.227.22) by
 DB6PR0802MB2216.eurprd08.prod.outlook.com (10.172.227.137) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Wed, 12 Jun 2019 10:59:14 +0000
Received: from DB6PR0802MB2133.eurprd08.prod.outlook.com
 ([fe80::8c26:bb4b:6c93:9d40]) by DB6PR0802MB2133.eurprd08.prod.outlook.com
 ([fe80::8c26:bb4b:6c93:9d40%2]) with mapi id 15.20.1965.017; Wed, 12 Jun 2019
 10:59:14 +0000
From: Alan Hayward <Alan.Hayward@arm.com>
To: =?utf-8?B?QWxleCBCZW5uw6ll?= <alex.bennee@linaro.org>
Subject: Re: [PATCH 0/2] arm64/sve: Fix mutating register endianness on
 big-endian
Thread-Topic: [PATCH 0/2] arm64/sve: Fix mutating register endianness on
 big-endian
Thread-Index: AQHVIHD7k0h+cQmmX0m6qipcRVpU1aaX1YmAgAAFUoA=
Date: Wed, 12 Jun 2019 10:59:14 +0000
Message-ID: <889DC301-3504-4F96-9F33-FCCD792DD877@arm.com>
References: <1559839495-22315-1-git-send-email-Dave.Martin@arm.com>
 <20190607093858.GA21378@fuggles.cambridge.arm.com>
 <20190607154832.GH28398@e103592.cambridge.arm.com>
 <207E140D-AC57-4B0D-B838-94B92BE2B0A0@arm.com>
 <87v9xbdr3o.fsf@zen.linaroharston>
In-Reply-To: <87v9xbdr3o.fsf@zen.linaroharston>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3445.104.8)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Alan.Hayward@arm.com; 
x-originating-ip: [217.140.106.32]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7bc0c72d-bf39-4068-ea97-08d6ef2501c0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB6PR0802MB2216; 
x-ms-traffictypediagnostic: DB6PR0802MB2216:
nodisclaimer: True
x-microsoft-antispam-prvs: <DB6PR0802MB22168031BF3EA66812970E8797EC0@DB6PR0802MB2216.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(136003)(366004)(39860400002)(376002)(189003)(199004)(6116002)(6486002)(66946007)(14454004)(11346002)(229853002)(476003)(486006)(2616005)(6436002)(2906002)(316002)(50226002)(186003)(478600001)(6506007)(26005)(446003)(53546011)(68736007)(81166006)(76176011)(36756003)(25786009)(8936002)(72206003)(86362001)(4326008)(81156014)(5660300002)(305945005)(256004)(6246003)(57306001)(54906003)(71200400001)(7736002)(71190400001)(102836004)(14444005)(33656002)(66574012)(3846002)(53936002)(66556008)(76116006)(99286004)(6916009)(6512007)(66476007)(66446008)(66066001)(73956011)(8676002)(91956017)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0802MB2216;
 H:DB6PR0802MB2133.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: JPO87FZ3ZaSPBdHgatQNididCz25cWZaNDxksM/YoGJbpWvcUXnqYUcH/ektJRtMrUmHBG56r7ABh/POxGyXEE43ikHh+oVrf/oTWJ14jyMF+Gtiu971Sl1X2qToYmOggoaQplCaQ+PhchriOaLLLbGXH0JWok7UbV0qklqj7yQvdPNo/yqGu9ubPTCsIKRUQqI9eeDbrPIbQLFF4+19CdwKNMZnBVOwLVutcoorvreI0ZKgSc9fCKz1X2cLdyBo4EzvlKjGhDk33EMnUkhx+dn8CwhHA27nOcWCye/ETD56axOVA19dWDyrmUqwlOqanaHg4z3JHxFU8XdN179F/DcrMP5zbBWgjko8IXXcRYYgTOoWr52JxlFGqNkQZ/zgbqvGzOFNdcO1MQHhuqZtYKkPLwHEvjhIim1fiK1zve0=
Content-ID: <B005DF90952CAA46A0B69D7787CBF2BD@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bc0c72d-bf39-4068-ea97-08d6ef2501c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 10:59:14.0361 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Alan.Hayward@arm.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0802MB2216
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_035918_265424_72924217 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.70 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Peter Maydell <peter.maydell@linaro.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>, Will Deacon <Will.Deacon@arm.com>,
 Zhang Lei <zhang.lei@jp.fujitsu.com>, Julien Grall <Julien.Grall@arm.com>,
 "gdb@sourceware.org" <gdb@sourceware.org>, nd <nd@arm.com>,
 Dave P Martin <Dave.Martin@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gT24gMTIgSnVuIDIwMTksIGF0IDExOjQwLCBBbGV4IEJlbm7DqWUgPGFsZXguYmVubmVl
QGxpbmFyby5vcmc+IHdyb3RlOg0KPiANCj4gDQo+IEFsYW4gSGF5d2FyZCA8QWxhbi5IYXl3YXJk
QGFybS5jb20+IHdyaXRlczoNCj4gDQo+Pj4gT24gNyBKdW4gMjAxOSwgYXQgMTY6NDgsIERhdmUg
TWFydGluIDxEYXZlLk1hcnRpbkBhcm0uY29tPiB3cm90ZToNCj4+PiANCj4+PiBPbiBGcmksIEp1
biAwNywgMjAxOSBhdCAxMDozODo1OEFNICswMTAwLCBXaWxsIERlYWNvbiB3cm90ZToNCj4+Pj4g
T24gVGh1LCBKdW4gMDYsIDIwMTkgYXQgMDU6NDQ6NTNQTSArMDEwMCwgRGF2ZSBNYXJ0aW4gd3Jv
dGU6DQo+Pj4+PiBCeSBpbnNwZWN0aW9uIHdoaWxlIGRlYnVnZ2luZyBzb21ldGhpbmcgZWxzZSwg
SSBub3RpY2VkIHRoYXQgdGhlIGJ5dGUNCj4+Pj4+IG9yZGVyIG9mIEZQU0lNRCBWLXJlZ2lzdGVy
IHN0b3JlcyBhbmQgU1ZFIFotcmVnaXN0ZXIgc3RvcmVzIGlzIG5vdCB0aGUNCj4+Pj4+IHNhbWUg
d2hlbiBydW5uaW5nIG9uIGJpZy1lbmRpYW4uDQo+Pj4+PiANCj4+Pj4+IFRoaXMgaXMgbm90IHBy
b3Blcmx5IHRha2VuIGludG8gYWNjb3VudCB3aGVuIG1vdmluZyBiZXR3ZWVuIHRoZSBGUFNJTUQN
Cj4+Pj4+IGFuZCBTVkUgcmVnaXN0ZXIgdmlld3MgaW5zaWRlIHRoZSBrZXJuZWwsIHJlc3VsdGlu
ZyBpbiB0aGUgYnl0ZXMgb2YgYQ0KPj4+Pj4gVi1yZWdpc3RlciBnZXR0aW5nIHNwb250YW5lb3Vz
bHkgcmV2ZXJzZWQgaW4gc29tZSBzaXR1YXRpb25zLCBmcm9tDQo+Pj4+PiB1c2Vyc3BhY2UncyBw
b2ludCBvZiB2aWV3LiAgVGhlIHNpZ25hbCBmcmFtZSBhbmQgcHRyYWNlIGludGVyZmFjZSBhcmUN
Cj4+Pj4+IGFsc28gYWZmZWN0ZWQuICBUaGUgS1ZNIEFCSSBmb3JiaWRzIG1peGluZyB0aGUgdHdv
IHZpZXdzIGFuZCBzbyBzaG91bGQNCj4+Pj4+IG5vdCBiZSBhZmZlY3RlZC4NCj4+Pj4+IA0KPj4+
Pj4gU2VlIHBhdGNoIDIgZm9yIGRldGFpbHMuDQo+Pj4+PiANCj4+Pj4+IFBhdGNoIDEgZG9lcyBz
b21lIHRyaXZpYWwgcHJlcGFyYXRvcnkgcmVmYWN0b3JpbmcuDQo+Pj4+IA0KPj4+PiBTb3JyeSB0
byBiZSBhIHBhaW4sIGJ1dCB3b3VsZCB5b3UgYmUgYWJsZSB0byBmbGlwIHRoaXMgc2VyaWVzIHJv
dW5kIHNvIHRoYXQNCj4+Pj4gdGhlIGZpeCBkb2Vzbid0IGRlcGVuZCBvbiB0aGUgcmVmYWN0b3Jp
bmcsIHBsZWFzZT8gVGhhdCB3YXkgd2UgY2FuIHB1dCBpdA0KPj4+PiBpbnRvIHN0YWJsZSB3aXRo
b3V0IHRoZSBkZXBlbmRlbmN5Lg0KPj4+PiANCj4+Pj4+IGdkYiBtYXkgb3IgbWF5IG5vdCBiZSBh
ZmZlY3RlZCBieSB0aGlzLCBkZXBlbmRpbmcgb24gaG93IGl0IHVzZXMgdGhlDQo+Pj4+PiBOVF9Q
UkZQUkVHIGFuZCBOVF9BUk1fU1ZFIHJlZ3NldHMuICBJJ2xsIGxlYXZlIGl0IHRvIHRoZSBkZXZl
bG9wZXJzIHRvDQo+Pj4+PiBhc3Nlc3MgdGhhdC4NCj4+Pj4gDQo+Pj4+IFdvdWxkbid0IHRoaXMg
YmUgZWFzeSBlbm91Z2ggdG8gdGVzdD8NCj4+PiANCj4+PiBTbywgZ2RiIHdvcmtzIE9LIG9uIGJp
Zy1lbmRpYW4gYnV0IHdlaXJkIHN0dWZmIGhhcHBlbmluZyBvbiBib3RoIHdpdGgNCj4+PiBhbmQg
d2l0aG91dCB0aGUgZml4Lg0KPj4+IA0KPj4+IFRoZXJlIGFyZSBwbGFjZXMgaW4gdGhlIGdkYiBj
b2RlIGl0c2VsZiB3aGVyZSBpdCBpcyBsaWtlbHkgbWlzc2luZw0KPj4+IGVuZGlhbm5lc3MgY29u
dmVyc2lvbnMsIGJ1dCBJIG5lZWQgdG8gZm9sbG93IHVwIHdpdGggdGhlIGdkYiBmb2xrcyB0bw0K
Pj4+IGNsYXJpZnkgd2hldGhlciBteSBwYXRjaCBpcyBtaXNzaW5nIHNvbWV0aGluZ+KApg0KPj4g
DQo+PiAoSSBhZGRlZCB0aGUgU1ZFIHN1cHBvcnQgZm9yIEdEQikuDQo+PiANCj4+IEnigJl2ZSB0
cmllZCB0aGVzZSBjaGFuZ2VzIG91dCBteXNlbGYgdXNpbmcgR0RCLg0KPj4gV2l0aCB5b3VyIGNo
YW5nZXMgZXZlcnl0aGluZyBsb29rcyBnb29kLCBhcGFydCBmcm9tOg0KPj4gKiBHREIgZ2V0cyBp
dCB3cm9uZyB3aGVuIHRoZSBwdHJhY2Ugc3ZlIHN0cnVjdHVyZSBjb250YWlucyBhIGZwc2ltZC4N
Cj4+ICogSSBuZWVkIHRvIGRvIHNvbWUgdGVzdGluZyBhcm91bmQgc2lnY29udGV4dHMsIGJ1dCBh
Z2FpbiBJIHRoaW5rIEdEQg0KPj4gIHdpbGwgbmVlZCBhIHNsaWdodCBjaGFuZ2UuDQo+PiBJ4oCZ
bGwgZ2V0IHNvbWUgcGF0Y2hlcyB0b2dldGhlciBmb3IgR0RCLg0KPiANCj4gV2hlcmUgaXMgdGhl
IGxhdGVzdCBzdGF0ZSBvZiBTVkUgc3VwcG9ydCBmb3IgR0RCPyBJIHJlYWxseSBzaG91bGQgY2hl
Y2sNCj4gdGhlIFFFTVUgZ2Ric3R1YiBkb2VzIHRoZSBjb3JyZWN0IHRoaW5ncyBmb3IgU1ZFIHJl
Z2lzdGVycyBidXQgSSB3YXMNCj4gd2FpdGluZyBmb3IgdXBzdHJlYW0gZ2RiIHN1cHBvcnQuDQoN
ClNWRSBpcyBzdXBwb3J0ZWQgaW4gR0RCIDguMi4NCg0KSWYgeW91ciBwcm9ncmFtIHN0YXJ0cyBj
aGFuZ2luZyB2ZWN0b3IgbGVuZ3RocyB3aGlsc3QgdGhlIHByb2Nlc3MgaXMgcnVubmluZywNCnRo
ZW4geW914oCZbGwgcnVuIGludG8gaXNzdWVzLiBGaXhlZCBmb3IgR0RCIGluIEhFQUQsIGJ1dCBu
b3QgZm9yIHJlbW90ZSBzdHVicy4NCkxldCBtZSBrbm93IGlmIHRoYXTigJlzIGEgcHJvYmxlbSBm
b3IgeW91IC0gSeKAmXZlIHlldCB0byBmaW5kIHJlYWwgdXNlcyBjYXNlcw0KZm9yIG5lZWRpbmcg
aXQuDQoNCg0KQWxhbi4NCg0KPiANCj4gLS0NCj4gQWxleCBCZW5uw6llDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
