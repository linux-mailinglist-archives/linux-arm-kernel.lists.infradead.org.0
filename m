Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4357463F4A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 04:29:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LoobMhPb8/wLBDjhPeM3XhlqA5elnnBezE5fwobYhQo=; b=O+iBpZEtr3/HcB
	P7DgDNPYWqVihc9Ih5R/fvDIQVA0n4y26mzC8nWDXyR2FMu6xYoVrJYEYVMYWVBQWndLw8Afs3KPU
	HWNjVfqMNGDr7WfWgPlJl+dT9BMTWBZRXmHy1wHAYuhXlZzQ/yQosTnsGsCpd1696PsgC0xrPCuI5
	MlTCCxbWkwRRh/IG80wXGsClEPNUeiRtS4jcH/AlGWSUYZc8maExe559IZyUjODLhzTuOYxyhLo3E
	ADrxMIAeZqoFVqAy3iv8rLHy4IeNDtN0YFd0DKfuj45uKawBaNF8uPpS+bdW6ly0/+Onbd45ZuXUE
	w4W4jKOYMvagdZKSGKOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl2MM-0000L2-Qo; Wed, 10 Jul 2019 02:29:31 +0000
Received: from mail-eopbgr00069.outbound.protection.outlook.com ([40.107.0.69]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl2M9-0000KI-Tl
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 02:29:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MUhylYQAUibI/PBZndhQZdrgXfSdeExvfg9NpKL3AYc=;
 b=k3/yneJsP1bKXVPLxfXgx4q7Twf3GcqwdA5lWz/4B45GNOaHBP40wL/iXt0hhHJHuPcBJKImdGt9D1YCoqB9WiD/eHGSWtalUIiCsxQhXhHrMf7bnRDZNXcrPLloY4by4g2tESvm3yTaPpij+PW4izwfk8RaSBJMevg630K9fps=
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com (52.134.5.23) by
 VI1PR0402MB3758.eurprd04.prod.outlook.com (52.134.15.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.19; Wed, 10 Jul 2019 02:29:11 +0000
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::cddf:10d0:7cb3:c4cc]) by VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::cddf:10d0:7cb3:c4cc%4]) with mapi id 15.20.2052.020; Wed, 10 Jul 2019
 02:29:11 +0000
From: Andy Duan <fugang.duan@nxp.com>
To: =?utf-8?B?TG90aGFyIFdhw59tYW5u?= <LW@KARO-electronics.de>
Subject: RE: [EXT] Re: [PATCH nvmem 1/1] nvmem: imx: correct the fuse word
 index
Thread-Topic: [EXT] Re: [PATCH nvmem 1/1] nvmem: imx: correct the fuse word
 index
Thread-Index: AQHVMnTebEkQdGkfgE+cLXzkUFRHUqa6mimAgAAFbBCAAK/PoIAATbyAgAACa6CAB4nF4A==
Date: Wed, 10 Jul 2019 02:29:11 +0000
Message-ID: <VI1PR0402MB3600EC453079A1A02BF04401FFF00@VI1PR0402MB3600.eurprd04.prod.outlook.com>
References: <20190704142015.10701-1-fugang.duan@nxp.com>
 <20190704174543.194a0158@karo-electronics.de>
 <VI1PR0402MB3600D635FF12DC861FAD9BF6FFFA0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <VI1PR0402MB360040318C9FB6656B46C566FFF50@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <20190705091235.365b93cb@karo-electronics.de>
 <VI1PR0402MB36002D8F896C5A5033A0DA4AFFF50@VI1PR0402MB3600.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR0402MB36002D8F896C5A5033A0DA4AFFF50@VI1PR0402MB3600.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=fugang.duan@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b0e1ef52-0ee2-4987-ad0a-08d704de64b1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3758; 
x-ms-traffictypediagnostic: VI1PR0402MB3758:
x-microsoft-antispam-prvs: <VI1PR0402MB37580E54F4DBD0F989E26BADFFF00@VI1PR0402MB3758.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0094E3478A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(366004)(396003)(39860400002)(376002)(189003)(199004)(68736007)(71190400001)(71200400001)(53936002)(25786009)(6246003)(66476007)(33656002)(6436002)(66446008)(9686003)(478600001)(229853002)(446003)(66574012)(55016002)(4326008)(54906003)(64756008)(6116002)(86362001)(8936002)(11346002)(2906002)(8676002)(305945005)(256004)(66066001)(316002)(3846002)(81156014)(76176011)(74316002)(26005)(81166006)(486006)(186003)(5660300002)(6506007)(76116006)(7736002)(7696005)(14454004)(66946007)(102836004)(52536014)(6916009)(476003)(66556008)(99286004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3758;
 H:VI1PR0402MB3600.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: W+PQdTzZ5U7wN+9KB74FWtFBs6PmOgqi0HNvKZz/Baij6YpzYBXNSZGkYjdvcwDRcij7y6rPv+LoZT7j3I558/2GvUP7EB40JEM5665nOhidQF3dE12RF21LNSliLK5vufH7WWtl6bj1oU+P0E63wtKWX5239SyPy4tTpAo+vORdmjclAOHj9uhR4N7q9AAQ+VYgpzFEvYmxGzos28r4YTw+kPODHq4Wip7l6Phh/C/GN+kpXRGR0Vl957nQufznb2OUqxhm3phRnUtAeD9ixN72qP2NFAXn34InSSuqMOlEpg/C5mcbY52CGxAIual4fJ+F1XBLchUXnkDAsb5mJKa3eDoX2OqIZAzKRnO3ZSd+ncoWByUk560j4EQwhYnnDzL/jsbqtwe6Gz+kdgQBk7690vWgckNknuGAbAw0fmA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0e1ef52-0ee2-4987-ad0a-08d704de64b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2019 02:29:11.4011 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fugang.duan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3758
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_192917_968640_5402225F 
X-CRM114-Status: GOOD (  24.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.69 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

RnJvbTogQW5keSBEdWFuIFNlbnQ6IEZyaWRheSwgSnVseSA1LCAyMDE5IDM6MzMgUE0NCj4gRnJv
bTogTG90aGFyIFdhw59tYW5uIDxMV0BLQVJPLWVsZWN0cm9uaWNzLmRlPiBTZW50OiBGcmlkYXks
IEp1bHkgNSwgMjAxOQ0KPiAzOjEzIFBNDQo+ID4gSGksDQo+ID4NCj4gPiBPbiBGcmksIDUgSnVs
IDIwMTkgMDI6NDY6MzIgKzAwMDAgQW5keSBEdWFuIHdyb3RlOg0KPiA+ID4gRnJvbTogQW5keSBE
dWFuIFNlbnQ6IEZyaWRheSwgSnVseSA1LCAyMDE5IDEyOjA4IEFNDQo+ID4gPiA+IEZyb206IExv
dGhhciBXYcOfbWFubiA8TFdAS0FSTy1lbGVjdHJvbmljcy5kZT4gU2VudDogVGh1cnNkYXksDQo+
IEp1bHkNCj4gPiA+ID4gNCwNCj4gPiA+ID4gMjAxOSAxMTo0NiBQTQ0KPiA+ID4gPiA+IEhpLA0K
PiA+ID4gPiA+DQo+ID4gPiA+ID4gT24gVGh1LCAgNCBKdWwgMjAxOSAyMjoyMDoxNSArMDgwMCBm
dWdhbmcuZHVhbkBueHAuY29tIHdyb3RlOg0KPiA+ID4gPiA+ID4gRnJvbTogRnVnYW5nIER1YW4g
PGZ1Z2FuZy5kdWFuQG54cC5jb20+DQo+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gaU1YOCBmdXNl
IHdvcmQgaW5kZXggcmVwcmVzZW50IGFzIG9uZSA0LWJ5dGVzIHdvcmQsIGl0IHNob3VsZA0KPiA+
ID4gPiA+ID4gbm90IGJlIGRpdmlkZWQgYnkgNC4NCj4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiBF
eHA6DQo+ID4gPiA+ID4gPiAtIE1BQzAgYWRkcmVzcyBsYXlvdXQgaW4gZnVzZToNCj4gPiA+ID4g
PiA+IG9mZnNldCA3MDg6IE1BQ1szXSBNQUNbMl0gTUFDWzFdIE1BQ1swXQ0KPiA+ID4gPiA+ID4g
b2Zmc2V0IDcwOTogWFggICAgIHh4ICAgICBNQUNbNV0gTUFDWzRdDQo+ID4gPiA+ID4gPg0KPiA+
ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogRnVnYW5nIER1YW4gPGZ1Z2FuZy5kdWFuQG54cC5jb20+
DQo+ID4gPiA+ID4gPiAtLS0NCj4gPiA+ID4gPiA+ICBkcml2ZXJzL252bWVtL2lteC1vY290cC1z
Y3UuYyB8IDYgKysrLS0tDQo+ID4gPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgMyBkZWxldGlvbnMoLSkNCj4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9udm1lbS9pbXgtb2NvdHAtc2N1LmMNCj4gPiA+ID4gPiA+IGIvZHJpdmVycy9u
dm1lbS9pbXgtb2NvdHAtc2N1LmMgaW5kZXggZDlkYzQ4Mi4uYmUyZjVmMCAxMDA2NDQNCj4gPiA+
ID4gPiA+IC0tLSBhL2RyaXZlcnMvbnZtZW0vaW14LW9jb3RwLXNjdS5jDQo+ID4gPiA+ID4gPiAr
KysgYi9kcml2ZXJzL252bWVtL2lteC1vY290cC1zY3UuYw0KPiA+ID4gPiA+ID4gQEAgLTcxLDgg
KzcxLDggQEAgc3RhdGljIGludCBpbXhfc2N1X29jb3RwX3JlYWQodm9pZCAqY29udGV4dCwNCj4g
PiA+ID4gPiA+IHVuc2lnbmVkDQo+ID4gPiA+ID4gaW50IG9mZnNldCwNCj4gPiA+ID4gPiA+ICAg
ICAgIHZvaWQgKnA7DQo+ID4gPiA+ID4gPiAgICAgICBpbnQgaSwgcmV0Ow0KPiA+ID4gPiA+ID4N
Cj4gPiA+ID4gPiA+IC0gICAgIGluZGV4ID0gb2Zmc2V0ID4+IDI7DQo+ID4gPiA+ID4gPiAtICAg
ICBudW1fYnl0ZXMgPSByb3VuZF91cCgob2Zmc2V0ICUgNCkgKyBieXRlcywgNCk7DQo+ID4gPiA+
ID4gPiArICAgICBpbmRleCA9IG9mZnNldDsNCj4gPiA+ID4gPiA+ICsgICAgIG51bV9ieXRlcyA9
IHJvdW5kX3VwKGJ5dGVzLCA0KTsNCj4gPiA+ID4gPiA+ICAgICAgIGNvdW50ID0gbnVtX2J5dGVz
ID4+IDI7DQo+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gICAgICAgaWYgKGNvdW50ID4gKHByaXYt
PmRhdGEtPm5yZWdzIC0gaW5kZXgpKSBAQCAtMTAwLDcNCj4gPiA+ID4gPiA+ICsxMDAsNyBAQCBz
dGF0aWMgaW50IGlteF9zY3Vfb2NvdHBfcmVhZCh2b2lkICpjb250ZXh0LCB1bnNpZ25lZA0KPiBp
bnQgb2Zmc2V0LA0KPiA+ID4gPiA+ID4gICAgICAgICAgICAgICBidWYrKzsNCj4gPiA+ID4gPiA+
ICAgICAgIH0NCj4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiAtICAgICBtZW1jcHkodmFsLCAodTgg
KilwICsgb2Zmc2V0ICUgNCwgYnl0ZXMpOw0KPiA+ID4gPiA+ID4gKyAgICAgbWVtY3B5KHZhbCwg
KHU4ICopcCwgYnl0ZXMpOw0KPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+ICAgICAgIGtmcmVlKHAp
Ow0KPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiBXaXRoIHRoZXNlIGNoYW5nZXMgeW91IGNvdWxkIHVz
ZSB0aGUgJ3ZhbCcgcG9pbnRlciBkaXJlY3RseSBhcw0KPiA+ID4gPiA+IHRoZSBkZXN0aW5hdGlv
biBmb3Igb2NvdHBfcmVhZCgpIHdpdGhvdXQgbmVlZCBmb3IgYW4gaW50ZXJtZWRpYXRlDQo+IGJ1
ZmZlci4NCj4gPiA+ID4gPg0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gTG90aGFyIFdhw59tYW5uDQo+
ID4gPiA+DQo+ID4gPiA+IFlvdSBhcmUgcmlnaHQsIGluIGZhY3QsIHdlIGNhbiByZW1vdmUgInAi
IGFuZCAiYnVmIiBwb2ludGVyLg0KPiA+ID4gPiBUaGFua3MgZm9yIHlvdXIgcmV2aWV3LCBJIHdp
bGwgc2VuZCBvdXQgdGhlIFYyLg0KPiA+ID4NCj4gPiA+IEhpIExvdGhhciwNCj4gPiA+DQo+ID4g
PiBJdCBzdGlsbCBuZWVkIGludGVybWVkaWF0ZSBidWZmZXIgdG8gcmVhZCBvdXQgbiB3b3JkcyAo
biAqIDQgYnl0ZXMpDQo+ID4gPiBmcm9tDQo+ID4gZUZ1c2UuDQo+ID4gPiBCZWNhdXNlICd2YWwn
IGJ1ZmZlciBzaXplIGlzIHJlYWwgY291bnQgcGFyc2VkIGZyb20gRFQsIHdoaWNoIGlzIG5vdA0K
PiA+ID4gYW4gaW50ZWdlcg0KPiA+IG11bHRpcGxlIG9mIDQuDQo+ID4gPg0KPiA+ID4gRm9yIGV4
YW1wbGUsIGNlbGwtPmJ5dGVzIGlzIHBhcnNlZCBmcm9tICJyZWciIHByb3BlcnR5IGFuZCBpdCBp
cw0KPiA+ID4gcmVhbCBjb3VudA0KPiA+IGxpa2UgNi4NCj4gPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgIGZlY19tYWMwOiBtYWNAMmM0IHsNCj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgcmVnID0gPDB4MmM0IDY+Ow0KPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAg
fTsNCj4gPiA+DQo+ID4gPiBTbyB3ZSBoYXZlIHRvIHVzZSBpbnRlcm1lZGlhdGUgYnVmZmVyIGhl
cmUuDQo+ID4gPg0KPiA+IHZhbCBpcyBhIHUzMiBwb2ludGVyLCBzbyBsZWdhbGx5IGl0IGNhbm5v
dCBwb2ludCB0byBhbnkgYnVmZmVyIHdob3NlDQo+ID4gc2l6ZSBpcyBub3QgZGl2aXNpYmxlIGJ5
IGZvdXIhDQo+ID4NCj4gWWVzLCB2YWwgaXMgYSB1MzIgcG9pbnRlciwgYXMgbXkgdW5kZXJzdGFu
ZCwgaXQgcG9pbnQgdG8gdGhlICdidWYnIHdob3NlIHNpemUgaXMNCj4gY2VsbC0+Ynl0ZXMgKHRo
ZSBzaXplIGlzIG5vdCBwYXJzZWQgZnJvbSAncmVnJyBwcm9wZXJ0eSkNCj4gDQo+IFRoZSBwaWVj
ZSBvZiBjb2RlOg0KPiBidWYgPSBremFsbG9jKGNlbGwtPmJ5dGVzLCBHRlBfS0VSTkVMKTsNCj4g
bnZtZW1fcmVnX3JlYWQobnZtZW0sIGNlbGwtPm9mZnNldCwgYnVmLCBjZWxsLT5ieXRlcyk7DQo+
IGlteF9zY3Vfb2NvdHBfcmVhZCh2b2lkICpjb250ZXh0LCB1bnNpZ25lZCBpbnQgb2Zmc2V0LCB2
b2lkICp2YWwsIHNpemVfdA0KPiBieXRlcyk7DQo+IA0KPiBJZiBzbywgd2Ugc3RpbGwgbmVlZCBp
bnRlcm1lZGlhdGUgYnVmZmVyIHRvIHJlYWQgb3V0IGVGdXNlIHdvcmRzLCBhbmQgY29weQ0KPiAn
Y2VsbC0+Ynl0ZXMnDQo+IGJ5dGVzIHRvICd2YWwnIGJ1ZmZlci4NCj4gTWF5IEkgdW5kZXJzdGFu
ZCB3cm9uZyA/IFRoYW5rcyB2ZXJ5IG11Y2ghDQoNCkxvdGhhciwgYW55IGNvbW1lbnQgPyBUaGFu
a3MgIQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
