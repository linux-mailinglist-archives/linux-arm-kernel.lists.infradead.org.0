Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6243D200
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 18:16:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IIlkm0TbhdcLle1iu47CmD7pXCzy3fjSfhYoW1ENCBU=; b=HF5SUSOS5Tzh4G
	9Uix8LydTau3JXwO7V3ld3/iRNwRIZliCDCYizCpf9KM6w1HU45eO/1biDWEHvEIJloWwMUmbw0mN
	3WgDks4ZA7k5WxaFFhzG6v40Stn+g3b3aX0IKQCBIposthdWzbUJrViOXHi9SccmcQQms/IfmONZu
	mOwOJaKmcgD6JpkACyVtvRr+O5Z5BidoN+EOxpRnEKco4j7Yoj/41N2H+x7gZad/QxbgZFddrhSmb
	0gjNGdOKHa1J4h1q7WEka1w7v6BgMV448Yb6SBFhb9zgiXvhRFleG9x2r0kxM9wjABRa3XTok/Vmx
	Z9dnTVJflew+1qGxF6uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hajRo-0003bT-79; Tue, 11 Jun 2019 16:16:32 +0000
Received: from mail-eopbgr130087.outbound.protection.outlook.com
 ([40.107.13.87] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hajRZ-0003aM-Qu
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 16:16:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V62MZGRGMMbrQeyOE7PZQ2os5bCk4rvVI+M7c82PXfk=;
 b=9G2Biz55UztgVXis7cstbPc7AAvPPPYdjiSU98VFtt9TvenGo0RektSATL7TUI5mP3/WrWLKCFs/u/z4kLmlQbC51H3p9uGs16oXurTAZYbF1r70LqKoEL+wPtvIucLBRvH6nRyHY2DkOVsnIb1RdVlL4Ys+6SUqhryKrS3kxz8=
Received: from DB6PR0802MB2133.eurprd08.prod.outlook.com (10.172.227.22) by
 DB6PR0802MB2294.eurprd08.prod.outlook.com (10.172.227.138) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Tue, 11 Jun 2019 16:16:11 +0000
Received: from DB6PR0802MB2133.eurprd08.prod.outlook.com
 ([fe80::8c26:bb4b:6c93:9d40]) by DB6PR0802MB2133.eurprd08.prod.outlook.com
 ([fe80::8c26:bb4b:6c93:9d40%2]) with mapi id 15.20.1965.017; Tue, 11 Jun 2019
 16:16:11 +0000
From: Alan Hayward <Alan.Hayward@arm.com>
To: Dave P Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH 0/2] arm64/sve: Fix mutating register endianness on
 big-endian
Thread-Topic: [PATCH 0/2] arm64/sve: Fix mutating register endianness on
 big-endian
Thread-Index: AQHVIHD8k0h+cQmmX0m6qipcRVpU1Q==
Date: Tue, 11 Jun 2019 16:16:11 +0000
Message-ID: <207E140D-AC57-4B0D-B838-94B92BE2B0A0@arm.com>
References: <1559839495-22315-1-git-send-email-Dave.Martin@arm.com>
 <20190607093858.GA21378@fuggles.cambridge.arm.com>
 <20190607154832.GH28398@e103592.cambridge.arm.com>
In-Reply-To: <20190607154832.GH28398@e103592.cambridge.arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3445.104.8)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Alan.Hayward@arm.com; 
x-originating-ip: [217.140.106.32]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f3f3a761-bb03-4b1a-5fdc-08d6ee881eb6
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB6PR0802MB2294; 
x-ms-traffictypediagnostic: DB6PR0802MB2294:
x-ms-exchange-purlcount: 1
nodisclaimer: True
x-microsoft-antispam-prvs: <DB6PR0802MB2294AF88CBEA55E1FAD9990E97ED0@DB6PR0802MB2294.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 006546F32A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(366004)(376002)(136003)(346002)(189003)(199004)(102836004)(83716004)(14444005)(6246003)(76176011)(72206003)(25786009)(6512007)(6506007)(6486002)(256004)(53936002)(229853002)(53546011)(71190400001)(6436002)(966005)(66066001)(71200400001)(57306001)(478600001)(6862004)(4326008)(33656002)(6306002)(14454004)(76116006)(91956017)(6636002)(66446008)(2616005)(316002)(5660300002)(7736002)(86362001)(73956011)(99286004)(82746002)(446003)(36756003)(66556008)(64756008)(305945005)(68736007)(486006)(26005)(66946007)(66476007)(11346002)(3846002)(6116002)(476003)(186003)(81166006)(2906002)(8676002)(54906003)(37006003)(81156014)(50226002)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0802MB2294;
 H:DB6PR0802MB2133.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 8woIs2d/w/pCY23EpPZeUfPKHwlYZQBOeKlR0GRAbp+eyCMZfOh23F8eB/qgS3g+HwmFksnBaKMJLTW9l0n4R5uCvmL71reNESv+eTm6dQYGG5hu2SZHwrq5JZxGE2OpmzMk0sAGyOQF3a4XB5T8TdZLz5AMYaL9gYnSYsdigi3cWCc4LgZqpAR2cZz2n7qI91l2QXqoz043TsT84TdEEUIdsC3W4tpxiIObGs4Nyi+6uO7PNoHsjjUO8MoFfFI3e2o9m/8/t0qPFEUvb5lqJ/7vY1BhmxsiNoaDbcSK90Y9KT4OTZHd4g5U3IwU4hW8RCCeC9LpEbvzip8of60wPhKOBUUL+CCmQOmN1S0pztwEi5yb+zWe0HMmQhEcvcWZ7hKu3VYKYX20DS2v03dic+OpQrlYR6tmcQOSClspYUU=
Content-ID: <2C650654427C904D95CBB17C66F9EF58@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3f3a761-bb03-4b1a-5fdc-08d6ee881eb6
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2019 16:16:11.6354 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Alan.Hayward@arm.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0802MB2294
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_091617_924958_D68FC147 
X-CRM114-Status: GOOD (  18.65  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.87 listed in list.dnswl.org]
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
 "gdb@sourceware.org" <gdb@sourceware.org>, Will Deacon <Will.Deacon@arm.com>,
 Zhang Lei <zhang.lei@jp.fujitsu.com>, Julien Grall <Julien.Grall@arm.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>, nd <nd@arm.com>,
 =?utf-8?B?QWxleCBCZW5uw6ll?= <alex.bennee@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gT24gNyBKdW4gMjAxOSwgYXQgMTY6NDgsIERhdmUgTWFydGluIDxEYXZlLk1hcnRpbkBh
cm0uY29tPiB3cm90ZToNCj4gDQo+IE9uIEZyaSwgSnVuIDA3LCAyMDE5IGF0IDEwOjM4OjU4QU0g
KzAxMDAsIFdpbGwgRGVhY29uIHdyb3RlOg0KPj4gT24gVGh1LCBKdW4gMDYsIDIwMTkgYXQgMDU6
NDQ6NTNQTSArMDEwMCwgRGF2ZSBNYXJ0aW4gd3JvdGU6DQo+Pj4gQnkgaW5zcGVjdGlvbiB3aGls
ZSBkZWJ1Z2dpbmcgc29tZXRoaW5nIGVsc2UsIEkgbm90aWNlZCB0aGF0IHRoZSBieXRlDQo+Pj4g
b3JkZXIgb2YgRlBTSU1EIFYtcmVnaXN0ZXIgc3RvcmVzIGFuZCBTVkUgWi1yZWdpc3RlciBzdG9y
ZXMgaXMgbm90IHRoZQ0KPj4+IHNhbWUgd2hlbiBydW5uaW5nIG9uIGJpZy1lbmRpYW4uDQo+Pj4g
DQo+Pj4gVGhpcyBpcyBub3QgcHJvcGVybHkgdGFrZW4gaW50byBhY2NvdW50IHdoZW4gbW92aW5n
IGJldHdlZW4gdGhlIEZQU0lNRA0KPj4+IGFuZCBTVkUgcmVnaXN0ZXIgdmlld3MgaW5zaWRlIHRo
ZSBrZXJuZWwsIHJlc3VsdGluZyBpbiB0aGUgYnl0ZXMgb2YgYQ0KPj4+IFYtcmVnaXN0ZXIgZ2V0
dGluZyBzcG9udGFuZW91c2x5IHJldmVyc2VkIGluIHNvbWUgc2l0dWF0aW9ucywgZnJvbQ0KPj4+
IHVzZXJzcGFjZSdzIHBvaW50IG9mIHZpZXcuICBUaGUgc2lnbmFsIGZyYW1lIGFuZCBwdHJhY2Ug
aW50ZXJmYWNlIGFyZQ0KPj4+IGFsc28gYWZmZWN0ZWQuICBUaGUgS1ZNIEFCSSBmb3JiaWRzIG1p
eGluZyB0aGUgdHdvIHZpZXdzIGFuZCBzbyBzaG91bGQNCj4+PiBub3QgYmUgYWZmZWN0ZWQuDQo+
Pj4gDQo+Pj4gU2VlIHBhdGNoIDIgZm9yIGRldGFpbHMuDQo+Pj4gDQo+Pj4gUGF0Y2ggMSBkb2Vz
IHNvbWUgdHJpdmlhbCBwcmVwYXJhdG9yeSByZWZhY3RvcmluZy4NCj4+IA0KPj4gU29ycnkgdG8g
YmUgYSBwYWluLCBidXQgd291bGQgeW91IGJlIGFibGUgdG8gZmxpcCB0aGlzIHNlcmllcyByb3Vu
ZCBzbyB0aGF0DQo+PiB0aGUgZml4IGRvZXNuJ3QgZGVwZW5kIG9uIHRoZSByZWZhY3RvcmluZywg
cGxlYXNlPyBUaGF0IHdheSB3ZSBjYW4gcHV0IGl0DQo+PiBpbnRvIHN0YWJsZSB3aXRob3V0IHRo
ZSBkZXBlbmRlbmN5Lg0KPj4gDQo+Pj4gZ2RiIG1heSBvciBtYXkgbm90IGJlIGFmZmVjdGVkIGJ5
IHRoaXMsIGRlcGVuZGluZyBvbiBob3cgaXQgdXNlcyB0aGUNCj4+PiBOVF9QUkZQUkVHIGFuZCBO
VF9BUk1fU1ZFIHJlZ3NldHMuICBJJ2xsIGxlYXZlIGl0IHRvIHRoZSBkZXZlbG9wZXJzIHRvDQo+
Pj4gYXNzZXNzIHRoYXQuDQo+PiANCj4+IFdvdWxkbid0IHRoaXMgYmUgZWFzeSBlbm91Z2ggdG8g
dGVzdD8NCj4gDQo+IFNvLCBnZGIgd29ya3MgT0sgb24gYmlnLWVuZGlhbiBidXQgd2VpcmQgc3R1
ZmYgaGFwcGVuaW5nIG9uIGJvdGggd2l0aA0KPiBhbmQgd2l0aG91dCB0aGUgZml4Lg0KPiANCj4g
VGhlcmUgYXJlIHBsYWNlcyBpbiB0aGUgZ2RiIGNvZGUgaXRzZWxmIHdoZXJlIGl0IGlzIGxpa2Vs
eSBtaXNzaW5nDQo+IGVuZGlhbm5lc3MgY29udmVyc2lvbnMsIGJ1dCBJIG5lZWQgdG8gZm9sbG93
IHVwIHdpdGggdGhlIGdkYiBmb2xrcyB0bw0KPiBjbGFyaWZ5IHdoZXRoZXIgbXkgcGF0Y2ggaXMg
bWlzc2luZyBzb21ldGhpbmfigKYNCg0KKEkgYWRkZWQgdGhlIFNWRSBzdXBwb3J0IGZvciBHREIp
Lg0KDQpJ4oCZdmUgdHJpZWQgdGhlc2UgY2hhbmdlcyBvdXQgbXlzZWxmIHVzaW5nIEdEQi4NCldp
dGggeW91ciBjaGFuZ2VzIGV2ZXJ5dGhpbmcgbG9va3MgZ29vZCwgYXBhcnQgZnJvbToNCiogR0RC
IGdldHMgaXQgd3Jvbmcgd2hlbiB0aGUgcHRyYWNlIHN2ZSBzdHJ1Y3R1cmUgY29udGFpbnMgYSBm
cHNpbWQuDQoqIEkgbmVlZCB0byBkbyBzb21lIHRlc3RpbmcgYXJvdW5kIHNpZ2NvbnRleHRzLCBi
dXQgYWdhaW4gSSB0aGluayBHREINCiAgd2lsbCBuZWVkIGEgc2xpZ2h0IGNoYW5nZS4NCknigJls
bCBnZXQgc29tZSBwYXRjaGVzIHRvZ2V0aGVyIGZvciBHREIuDQoNCg0KPiBUaGUgcHRyYWNlIGNo
YW5nZSBpcyB0aGVvcmV0aWNhbGx5IGFuIEFCSSBicmVhaywgYnV0IHNpbmNlIHRoZSBjdXJyZW50
DQo+IGJlaGF2aW91ciBpcyBvYnZpb3VzbHkgd3JvbmcsIEkgY29uc2lkZXIgdGhpcyBhIGZpeC4N
Cg0KSeKAmW0gaGFwcHkgd2l0aCB0aGlzIGNoYW5nZSBmcm9tIEdEQidzIHNpZGUuDQoNCg0KVGhh
bmtzLA0KQWxhbi4NCg0KDQo+IA0KPiBDaGVlcnMNCj4gLS0tRGF2ZQ0KPiANCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QNCj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnDQo+
IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbA0KPiANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
