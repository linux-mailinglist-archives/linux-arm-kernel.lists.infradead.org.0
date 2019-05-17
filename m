Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4B22197C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 16:04:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:In-Reply-To:References:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yIRF9lIcRhdhWKqd4tf2JJuhwo88aRU6Lho3g8q3shU=; b=knzgX+D3lUkVs2/WbQliTmWLa
	9iI05fGS0ntQXvijkJ4NEZhbLc2dgbUeut1psN2ZJVu53pzWUK2rz3jOkydhhg5kH5FjkM+4dlZ6p
	RWkFI28cn7/uTXjzXuEScp9MRAMlAJDpsmp6pe7/mK3APxF715+K3WLw5DESv7zrevJWzlRPQ3UBO
	Ng98qDw3kDu2FI5moAJIUsF8LNJGxEi11Evb1ymgXpiR4WFZZiHd4XbSJj9S1dRObHnsyVqotuxSx
	uiKHGh96qhXTbtYLOUuw4SmLvs3utLtN+4hCIKT1yA0v5clgfzLFbPARkLVnY4Ek+5rUvOj6b0kas
	/0C2r9L9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRdT2-00019g-5M; Fri, 17 May 2019 14:04:12 +0000
Received: from mail-eopbgr20077.outbound.protection.outlook.com ([40.107.2.77]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRdSu-000197-8g
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 14:04:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z8w8CryVAtJk4kW/HieBOAkdyZPJQDlUcXG4jj/t1Wo=;
 b=aTeVdQ7LNALzbEyiQtu/tIwXs8uPLpdJoU+zAujaUEsvvoTT/I3Ey2QnE60DijuoNCnOdlIksXT6wIggWLsnURcNTNkADvWDXBmBabgICv0IRHI+ID/6K7uV+w/TAe/DSmvCMr/6wS2F2q0TIfcqtArUlkuL5VxjNTDuDklA0Jw=
Received: from VI1PR0402MB3357.eurprd04.prod.outlook.com (52.134.1.18) by
 VI1PR0402MB3869.eurprd04.prod.outlook.com (52.134.16.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Fri, 17 May 2019 14:03:58 +0000
Received: from VI1PR0402MB3357.eurprd04.prod.outlook.com
 ([fe80::888f:9ea:6f65:508f]) by VI1PR0402MB3357.eurprd04.prod.outlook.com
 ([fe80::888f:9ea:6f65:508f%6]) with mapi id 15.20.1900.010; Fri, 17 May 2019
 14:03:58 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "stefan.wahren@i2se.com" <stefan.wahren@i2se.com>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>
Subject: Re: ARM: Possible memleak during i.MX6ULL probe
Thread-Topic: ARM: Possible memleak during i.MX6ULL probe
Thread-Index: AQHVDK4CWK/RucNw9USLrUdxzxzM0qZvSGIAgAAJDgCAAAfyAA==
Date: Fri, 17 May 2019 14:03:58 +0000
Message-ID: <02dc0ac5e132b848f5b39f98779f6ac10256a419.camel@nxp.com>
References: <8b0e51fc-2b26-f98d-7afa-26c6b397d847@i2se.com>
 <47c1ff2c3d904fdf7cac6ceba254ee7d67948805.camel@nxp.com>
 <9ed1247a-99c6-37f9-693a-28a12648bc0d@i2se.com>
In-Reply-To: <9ed1247a-99c6-37f9-693a-28a12648bc0d@i2se.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b9faf053-91ba-4ea1-e59a-08d6dad081ff
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(49563074)(7193020);
 SRVR:VI1PR0402MB3869; 
x-ms-traffictypediagnostic: VI1PR0402MB3869:
x-microsoft-antispam-prvs: <VI1PR0402MB38696DE66F194E02BF5821F6F90B0@VI1PR0402MB3869.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1751;
x-forefront-prvs: 0040126723
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(376002)(366004)(396003)(136003)(189003)(199004)(53936002)(110136005)(99286004)(102836004)(53546011)(54906003)(76176011)(6506007)(66066001)(2501003)(316002)(99936001)(2201001)(86362001)(5660300002)(4744005)(44832011)(486006)(476003)(73956011)(2616005)(478600001)(26005)(186003)(14454004)(6486002)(446003)(11346002)(6512007)(229853002)(6436002)(6116002)(3846002)(66556008)(5024004)(68736007)(4326008)(25786009)(71200400001)(71190400001)(6246003)(256004)(2906002)(8936002)(36756003)(66616009)(66476007)(64756008)(66446008)(66946007)(76116006)(8676002)(7736002)(81156014)(81166006)(305945005)(118296001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3869;
 H:VI1PR0402MB3357.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Ww90Wws80T8xEshZd0zADh6NQKJKcJBUzNWOuK5NdEhIxAAQ+STj40jnvpjDfgFt1vlriyBRsKCP/umxzV1tiKVKpdWwr91iz9GA4KWE9Nbq1b+V0UA/R76N0U6+hqDjBEIfQwuvYUOrkfOOt/psHZfJY9QVW3qEztvapAE6YtkeJZjKwKUJlpcjQrrnq/G+H7q33459SGJe+F+KGaifhS9zmwUAhfTniMi64T2cCeDmX+/cfrEIRfEVk49bFJ/vapQi5nWZ/RMmwRSzJM8gwwHDa3OHzFLBYZ2Dip6LnpAVFr2Dxx1zuPb4QLLau4iIbXr7CwQXLZcNiVccfM5NkZz2qTVLN5ZkLsaQCpD9p1bYoqARQBWCUlOmWhFPlEli14YcAEItNKxCyhurtGEZvNYBUDtA4PFcE919IhNrWhY=
Content-Type: multipart/mixed;
 boundary="_002_02dc0ac5e132b848f5b39f98779f6ac10256a419camelnxpcom_"
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9faf053-91ba-4ea1-e59a-08d6dad081ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2019 14:03:58.7268 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3869
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_070404_377295_8153649D 
X-CRM114-Status: GOOD (  19.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.77 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: dl-linux-imx <linux-imx@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--_002_02dc0ac5e132b848f5b39f98779f6ac10256a419camelnxpcom_
Content-Type: text/plain; charset="utf-8"
Content-ID: <625A597DA169B1409149F2C62FC878B1@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: base64

T24gRnJpLCAyMDE5LTA1LTE3IGF0IDE1OjM1ICswMjAwLCBTdGVmYW4gV2FocmVuIHdyb3RlOg0K
PiBIaSBEYW5pZWwsDQo+IA0KPiBPbiAxNy4wNS4xOSAxNTowMywgRGFuaWVsIEJhbHV0YSB3cm90
ZToNCj4gPiBIaSBTdGVmYW4sDQo+ID4gDQo+ID4gQ2FuIHlvdSB0cnkgdGhlIGZvbGxvd2luZyBw
YXRjaDoNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9iYXNlL3JlZ21hcC9yZWdtYXAt
ZGVidWdmcy5jDQo+ID4gYi9kcml2ZXJzL2Jhc2UvcmVnbWFwL3JlZ21hcC1kZWJ1Z2ZzLmMNCj4g
PiBpbmRleCAyNjNmODI1MTZmZjQuLmEyMjI1ZWZmZmRkYSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2
ZXJzL2Jhc2UvcmVnbWFwL3JlZ21hcC1kZWJ1Z2ZzLmMNCj4gPiArKysgYi9kcml2ZXJzL2Jhc2Uv
cmVnbWFwL3JlZ21hcC1kZWJ1Z2ZzLmMNCj4gPiBAQCAtNTc5LDYgKzU3OSw5IEBAIHZvaWQgcmVn
bWFwX2RlYnVnZnNfaW5pdChzdHJ1Y3QgcmVnbWFwICptYXAsDQo+ID4gY29uc3QNCj4gPiBjaGFy
ICpuYW1lKQ0KPiA+ICAgICAgICAgfQ0KPiA+ICANCj4gPiAgICAgICAgIGlmICghc3RyY21wKG5h
bWUsICJkdW1teSIpKSB7DQo+ID4gKyAgICAgICAgICAgICAgIGlmIChtYXAtPmRlYnVnZnNfbmFt
ZSkNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICBrZnJlZShtYXAtPmRlYnVnZnNfbmFtZSk7
DQo+ID4gKw0KPiA+ICAgICAgICAgICAgICAgICBtYXAtPmRlYnVnZnNfbmFtZSA9IGthc3ByaW50
ZihHRlBfS0VSTkVMLA0KPiA+ICJkdW1teSVkIiwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBkdW1teV9pbmRleCk7DQo+IA0KPiB1bmZvcnR1bmF0
ZWx5IHRoaXMgZG9lc24ndCBmaXggdGhlIGlzc3VlLg0KPiANCg0KVGhhdCdzIHN0cmFuZ2UuIEl0
IGNvdWxkIGJlIHRoYXQgd2UgYXJlIGRlYWxpbmcgd2l0aCBtdWx0aXBsZSBtZW1vcnkNCmxlYWtz
Lg0KDQpJZiB5b3UgaGF2ZSB0aW1lIEkgaGF2ZSB1cGRhdGVkIHRoZSBwcmV2aW91cyBwYXRjaCB3
aXRoIHNvbWUgZGVidWdnaW5nDQppbmZvLiBQbGVhc2UgZmluZCBpdCBhdHRhY2guIExldCBtZSBr
bm93IHRoZSByZXN1bHRzLg0KDQoNCg==

--_002_02dc0ac5e132b848f5b39f98779f6ac10256a419camelnxpcom_
Content-Type: text/x-patch;
	name="0001-regmap-debugfs-Fix-memory-leak-in-regmap_debugfs_ini.patch"
Content-Description:  0001-regmap-debugfs-Fix-memory-leak-in-regmap_debugfs_ini.patch
Content-Disposition: attachment;
	filename="0001-regmap-debugfs-Fix-memory-leak-in-regmap_debugfs_ini.patch";
	size=2837; creation-date="Fri, 17 May 2019 14:03:58 GMT";
	modification-date="Fri, 17 May 2019 14:03:58 GMT"
Content-ID: <68B0C38E477269488EE591F5878A47D0@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: base64

RnJvbSA1ZjZmOWEwNTFkYzAwMTk2NThiYmY2ZTQyNTE3MzE0ZThlNmM2ZGRmIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBEYW5pZWwgQmFsdXRhIDxkYW5pZWwuYmFsdXRhQG54cC5jb20+
CkRhdGU6IEZyaSwgMTcgTWF5IDIwMTkgMTY6MDc6MzUgKzAzMDAKU3ViamVjdDogW1BBVENIXSBy
ZWdtYXA6IGRlYnVnZnM6IEZpeCBtZW1vcnkgbGVhayBpbiByZWdtYXBfZGVidWdmc19pbml0CkNv
bnRlbnQtVHlwZTogdGV4dC9wbGFpbjsgY2hhcnNldD0iaXNvLTg4NTktMSIKCkFzIGRldGVjdGVk
IGJ5IGttZW1sZWFrIHJ1bm5pbmcgb24gaS5NWDZVTEwgYm9hcmQ6CgpucmVmZXJlbmNlZCBvYmpl
Y3QgMHhkODM2NjYwMCAoc2l6ZSA2NCk6CiAgY29tbSAic3dhcHBlci8wIiwgcGlkIDEsIGppZmZp
ZXMgNDI5NDkzNzM3MCAoYWdlIDkzMy4yMjBzKQogIGhleCBkdW1wIChmaXJzdCAzMiBieXRlcyk6
CiAgICA2NCA3NSA2ZCA2ZCA3OSAyZCA2OSA2ZiA2ZCA3NSA3OCA2MyAyZCA2NyA3MCA3MiAgZHVt
bXktaW9tdXhjLWdwcgogICAgNDAgMzIgMzAgNjUgMzQgMzAgMzAgMzAgMDAgZTMgZjMgYWIgZmUg
ZDEgMWIgZGQgIEAyMGU0MDAwLi4uLi4uLi4KICBiYWNrdHJhY2U6CiAgICBbPGIwNDAyYWVjPl0g
a2FzcHJpbnRmKzB4MmMvMHg1NAogICAgWzxhNmZiYWQyYz5dIHJlZ21hcF9kZWJ1Z2ZzX2luaXQr
MHg3Yy8weDMxYwogICAgWzw5YzhkOTFmYT5dIF9fcmVnbWFwX2luaXQrMHhiNWMvMHhjZjQKICAg
IFs8NWIxYzNkMmE+XSBvZl9zeXNjb25fcmVnaXN0ZXIrMHgxNjQvMHgyYzQKICAgIFs8NTk2YTVk
ODA+XSBzeXNjb25fbm9kZV90b19yZWdtYXArMHg2NC8weDkwCiAgICBbPDQ5YmQ1OTdiPl0gaW14
NnVsX2luaXRfbWFjaGluZSsweDM0LzB4YTAKICAgIFs8MjUwYTRkYWM+XSBjdXN0b21pemVfbWFj
aGluZSsweDFjLzB4MzAKICAgIFs8MmQxOWZkYWY+XSBkb19vbmVfaW5pdGNhbGwrMHg3Yy8weDM5
OAogICAgWzxlNjA4NDQ2OT5dIGtlcm5lbF9pbml0X2ZyZWVhYmxlKzB4MzI4LzB4NDQ4CiAgICBb
PDE2OGM5MTAxPl0ga2VybmVsX2luaXQrMHg4LzB4MTE0CiAgICBbPDkxMzI2OGFhPl0gcmV0X2Zy
b21fZm9yaysweDE0LzB4MjAKICAgIFs8Y2U3YjEzMWE+XSAweDAKClJvb3QgY2F1c2UgaXMgdGhh
dCBtYXAtPmRlYnVnZnNfbmFtZSBpcyBhbGxvY2F0ZWQgdXNpbmcga2FzcHJpbnRmCmFuZCB0aGVu
IHRoZSBwb2ludGVyIGlzIGxvc3QgYnkgYXNzaWduaW5nIGl0IG90aGVyIG1lbW9yeSBhZGRyZXNz
LgoKUmVwb3J0ZWQtYnk6IFN0ZWZhbiBXYWhyZW4gPHN0ZWZhbi53YWhyZW5AaTJzZS5jb20+ClNp
Z25lZC1vZmYtYnk6IERhbmllbCBCYWx1dGEgPGRhbmllbC5iYWx1dGFAbnhwLmNvbT4KLS0tCiBk
cml2ZXJzL2Jhc2UvcmVnbWFwL3JlZ21hcC1kZWJ1Z2ZzLmMgfCAxOCArKysrKysrKysrKysrKysr
KysKIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9iYXNlL3JlZ21hcC9yZWdtYXAtZGVidWdmcy5jIGIvZHJpdmVycy9iYXNlL3JlZ21hcC9yZWdt
YXAtZGVidWdmcy5jCmluZGV4IDI2M2Y4MjUxNmZmNC4uMTQ3YjgzYjU4NjAyIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2Jhc2UvcmVnbWFwL3JlZ21hcC1kZWJ1Z2ZzLmMKKysrIGIvZHJpdmVycy9iYXNl
L3JlZ21hcC9yZWdtYXAtZGVidWdmcy5jCkBAIC01NzAsNiArNTcwLDEwIEBAIHZvaWQgcmVnbWFw
X2RlYnVnZnNfaW5pdChzdHJ1Y3QgcmVnbWFwICptYXAsIGNvbnN0IGNoYXIgKm5hbWUpCiAJaWYg
KG1hcC0+ZGV2KQogCQlkZXZuYW1lID0gZGV2X25hbWUobWFwLT5kZXYpOwogCisJcHJfaW5mbygi
ZGVidWdmc19pbml0MTogbmFtZSAlcywgZGVidWdmc19uYW1lICVzXG4iLAorCQluYW1lID8gbmFt
ZSA6ICJOVUxMIiwKKwkJZGVidWdmc19uYW1lID8gZGVidWdmc19uYW1lIDogIk5VTEwiKTsKKwog
CWlmIChuYW1lKSB7CiAJCW1hcC0+ZGVidWdmc19uYW1lID0ga2FzcHJpbnRmKEdGUF9LRVJORUws
ICIlcy0lcyIsCiAJCQkJCSAgICAgIGRldm5hbWUsIG5hbWUpOwpAQCAtNTc4LDEzICs1ODIsMjcg
QEAgdm9pZCByZWdtYXBfZGVidWdmc19pbml0KHN0cnVjdCByZWdtYXAgKm1hcCwgY29uc3QgY2hh
ciAqbmFtZSkKIAkJbmFtZSA9IGRldm5hbWU7CiAJfQogCisJcHJfaW5mbygiZGVidWdmc19pbml0
MTogbmFtZSAlcywgZGVidWdmc19uYW1lICVzXG4iLAorCQluYW1lID8gbmFtZSA6ICJOVUxMIiwK
KwkJbWFwLT5kZWJ1Z2ZzX25hbWUgPyBtYXAtPmRlYnVnZnNfbmFtZSA6ICJOVUxMIik7CisKIAlp
ZiAoIXN0cmNtcChuYW1lLCAiZHVtbXkiKSkgeworCQorCQlwcl9pbmZvKCJkZWJ1Z2ZzX2luaXQy
OiBGcmVlaW5nIGRlYnVmc19uYW1lICVzXG4iLAorCQkJbWFwLT5kZWJ1Z2ZzX25hbWUgPyBtYXAt
PmRlYnVnZnNfbmFtZSA6ICJOVUxMIik7CisKKwkJa2ZyZWUobWFwLT5kZWJ1Z2ZzX25hbWUpOwor
CiAJCW1hcC0+ZGVidWdmc19uYW1lID0ga2FzcHJpbnRmKEdGUF9LRVJORUwsICJkdW1teSVkIiwK
IAkJCQkJCWR1bW15X2luZGV4KTsKIAkJbmFtZSA9IG1hcC0+ZGVidWdmc19uYW1lOwogCQlkdW1t
eV9pbmRleCsrOwogCX0KIAorCXByX2luZm8oImRlYnVnZnNfaW5pdDI6IG5hbWUgJXMsIGRlYnVn
ZnNfbmFtZSAlc1xuIiwKKwkJbmFtZSA/IG5hbWUgOiAiTlVMTCIsCisJCW1hcC0+ZGVidWdmc19u
YW1lID8gbWFwLT5kZWJ1Z2ZzX25hbWUgOiAiTlVMTCIpOworCiAJbWFwLT5kZWJ1Z2ZzID0gZGVi
dWdmc19jcmVhdGVfZGlyKG5hbWUsIHJlZ21hcF9kZWJ1Z2ZzX3Jvb3QpOwogCWlmICghbWFwLT5k
ZWJ1Z2ZzKSB7CiAJCWRldl93YXJuKG1hcC0+ZGV2LAotLSAKMi4xNy4xCgo=

--_002_02dc0ac5e132b848f5b39f98779f6ac10256a419camelnxpcom_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--_002_02dc0ac5e132b848f5b39f98779f6ac10256a419camelnxpcom_--

