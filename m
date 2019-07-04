Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 987D15FB86
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 18:07:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S/Bokj3PP3jTDw6stLcgXpPsAsL3lgt2M1ejT/NvZbQ=; b=PeZbJUshfeMYin
	F6eixWLBwVpFNlQq7B2LTQ7LoSKXmmQkMYpq0xZvdw5DbDFJGZ1/ujCP9LrlyuZ/OWG/9+fYKFFTX
	9SbUtDK0ctFBWhjNTh9b4hs2K452hG/pPVm4jWc8lXiJKjbuaszsSr1zhBH4NjGt8kW7eLgX2Q/IL
	BWmpZrQ12S4o9f+XgACXxI3Dw1gv9BC+0uO5VyQlkZEH85Bp06PV0R/Ox/bYivh26t38xqBtq2Df5
	5gXpiI1GLPsQ6fSpv0yMnzinR7hD9mDhR4skzFirTnVIzssHU3fwwfTBQEa4BOOxedoE3etotIgV2
	nYe/Wm0QTEFk+n5p180g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj4H5-0002os-Cx; Thu, 04 Jul 2019 16:07:55 +0000
Received: from mail-eopbgr130078.outbound.protection.outlook.com
 ([40.107.13.78] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj4Gt-0002oR-95
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 16:07:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2iFW0WQ8bJgEALmd3QgpdmEP9eBZMqocDAWuh8X4nIY=;
 b=m/uIqTiDO0JKJGxcy3+zhazIyiEWE8wTWNnt0n042g/ojPxVbhvAq82CGqIAsUHxtabv0kjNp+52uvFiiX9rENO2i13a7XixjxfBNnRjaq3MHSQ0nmM4DtviKglS9veUWILtMVseUpGGFpW0m9SMGWSwfG/lexwv3lJgMy0hZaI=
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com (52.134.5.23) by
 VI1PR0402MB2784.eurprd04.prod.outlook.com (10.175.20.136) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.15; Thu, 4 Jul 2019 16:07:38 +0000
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::cddf:10d0:7cb3:c4cc]) by VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::cddf:10d0:7cb3:c4cc%4]) with mapi id 15.20.2052.010; Thu, 4 Jul 2019
 16:07:38 +0000
From: Andy Duan <fugang.duan@nxp.com>
To: =?utf-8?B?TG90aGFyIFdhw59tYW5u?= <LW@KARO-electronics.de>
Subject: RE: [EXT] Re: [PATCH nvmem 1/1] nvmem: imx: correct the fuse word
 index
Thread-Topic: [EXT] Re: [PATCH nvmem 1/1] nvmem: imx: correct the fuse word
 index
Thread-Index: AQHVMnTebEkQdGkfgE+cLXzkUFRHUqa6mimAgAAFbBA=
Date: Thu, 4 Jul 2019 16:07:38 +0000
Message-ID: <VI1PR0402MB3600D635FF12DC861FAD9BF6FFFA0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
References: <20190704142015.10701-1-fugang.duan@nxp.com>
 <20190704174543.194a0158@karo-electronics.de>
In-Reply-To: <20190704174543.194a0158@karo-electronics.de>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=fugang.duan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1ecd5a4b-acb6-417c-e181-08d70099bc12
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB2784; 
x-ms-traffictypediagnostic: VI1PR0402MB2784:
x-microsoft-antispam-prvs: <VI1PR0402MB2784EB6C36FB5DDC9DD2A75BFFFA0@VI1PR0402MB2784.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0088C92887
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(136003)(39860400002)(346002)(396003)(199004)(189003)(52536014)(6506007)(229853002)(8676002)(9686003)(305945005)(54906003)(6916009)(73956011)(6436002)(102836004)(2906002)(76116006)(64756008)(66446008)(7736002)(66556008)(5660300002)(316002)(7696005)(26005)(76176011)(186003)(66066001)(55016002)(81156014)(66476007)(66946007)(81166006)(8936002)(476003)(446003)(11346002)(486006)(99286004)(6116002)(3846002)(68736007)(53936002)(478600001)(6246003)(74316002)(66574012)(33656002)(4326008)(25786009)(256004)(14454004)(86362001)(71200400001)(71190400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2784;
 H:VI1PR0402MB3600.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nSXVLB0IFBnq8XsCJZHWSdAV0raa4roXHb3E1zt7CDkbyXGTsiZwcLX6zImED8ochMozk91gl7ZNcyvRlZVqM98Ghorr/SmeLJdc7RUizvvwhs85EYzHnNGtTTUokiQYVVw0IXvBoe6hmSZGCOX3YsuOaCFmEzs/CENVEfPMgDDRQjqufPnYJXM/r3B0jLP2amRx6KDcTFXYX08WfG/0IqVo6TWlocw0ES3rWvCgpLxOJ8IadqySnfxhBTpu71u1HjXWh0fsprPGfaiK4kfJwexT8S6MXJ4i7jTGKc/AxtXhwJrr/gv+sPVmMpGKalR5blcbcA5Wp01a2/GrxVtU7SNn98zYd3Yb+gEEPm//yCh9RZ9UeU9KsvtsShIKdLQAej+HvDFke/7TSF66HkbaSDAncI1JrH2mPyY95r+XtLo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ecd5a4b-acb6-417c-e181-08d70099bc12
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2019 16:07:38.1264 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fugang.duan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2784
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_090743_327119_40728AA6 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.78 listed in list.dnswl.org]
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

RnJvbTogTG90aGFyIFdhw59tYW5uIDxMV0BLQVJPLWVsZWN0cm9uaWNzLmRlPiBTZW50OiBUaHVy
c2RheSwgSnVseSA0LCAyMDE5IDExOjQ2IFBNDQo+IEhpLA0KPiANCj4gT24gVGh1LCAgNCBKdWwg
MjAxOSAyMjoyMDoxNSArMDgwMCBmdWdhbmcuZHVhbkBueHAuY29tIHdyb3RlOg0KPiA+IEZyb206
IEZ1Z2FuZyBEdWFuIDxmdWdhbmcuZHVhbkBueHAuY29tPg0KPiA+DQo+ID4gaU1YOCBmdXNlIHdv
cmQgaW5kZXggcmVwcmVzZW50IGFzIG9uZSA0LWJ5dGVzIHdvcmQsIGl0IHNob3VsZCBub3QgYmUN
Cj4gPiBkaXZpZGVkIGJ5IDQuDQo+ID4NCj4gPiBFeHA6DQo+ID4gLSBNQUMwIGFkZHJlc3MgbGF5
b3V0IGluIGZ1c2U6DQo+ID4gb2Zmc2V0IDcwODogTUFDWzNdIE1BQ1syXSBNQUNbMV0gTUFDWzBd
DQo+ID4gb2Zmc2V0IDcwOTogWFggICAgIHh4ICAgICBNQUNbNV0gTUFDWzRdDQo+ID4NCj4gPiBT
aWduZWQtb2ZmLWJ5OiBGdWdhbmcgRHVhbiA8ZnVnYW5nLmR1YW5AbnhwLmNvbT4NCj4gPiAtLS0N
Cj4gPiAgZHJpdmVycy9udm1lbS9pbXgtb2NvdHAtc2N1LmMgfCA2ICsrKy0tLQ0KPiA+ICAxIGZp
bGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbnZtZW0vaW14LW9jb3RwLXNjdS5jDQo+ID4gYi9kcml2ZXJzL252
bWVtL2lteC1vY290cC1zY3UuYyBpbmRleCBkOWRjNDgyLi5iZTJmNWYwIDEwMDY0NA0KPiA+IC0t
LSBhL2RyaXZlcnMvbnZtZW0vaW14LW9jb3RwLXNjdS5jDQo+ID4gKysrIGIvZHJpdmVycy9udm1l
bS9pbXgtb2NvdHAtc2N1LmMNCj4gPiBAQCAtNzEsOCArNzEsOCBAQCBzdGF0aWMgaW50IGlteF9z
Y3Vfb2NvdHBfcmVhZCh2b2lkICpjb250ZXh0LCB1bnNpZ25lZA0KPiBpbnQgb2Zmc2V0LA0KPiA+
ICAgICAgIHZvaWQgKnA7DQo+ID4gICAgICAgaW50IGksIHJldDsNCj4gPg0KPiA+IC0gICAgIGlu
ZGV4ID0gb2Zmc2V0ID4+IDI7DQo+ID4gLSAgICAgbnVtX2J5dGVzID0gcm91bmRfdXAoKG9mZnNl
dCAlIDQpICsgYnl0ZXMsIDQpOw0KPiA+ICsgICAgIGluZGV4ID0gb2Zmc2V0Ow0KPiA+ICsgICAg
IG51bV9ieXRlcyA9IHJvdW5kX3VwKGJ5dGVzLCA0KTsNCj4gPiAgICAgICBjb3VudCA9IG51bV9i
eXRlcyA+PiAyOw0KPiA+DQo+ID4gICAgICAgaWYgKGNvdW50ID4gKHByaXYtPmRhdGEtPm5yZWdz
IC0gaW5kZXgpKSBAQCAtMTAwLDcgKzEwMCw3IEBADQo+ID4gc3RhdGljIGludCBpbXhfc2N1X29j
b3RwX3JlYWQodm9pZCAqY29udGV4dCwgdW5zaWduZWQgaW50IG9mZnNldCwNCj4gPiAgICAgICAg
ICAgICAgIGJ1ZisrOw0KPiA+ICAgICAgIH0NCj4gPg0KPiA+IC0gICAgIG1lbWNweSh2YWwsICh1
OCAqKXAgKyBvZmZzZXQgJSA0LCBieXRlcyk7DQo+ID4gKyAgICAgbWVtY3B5KHZhbCwgKHU4ICop
cCwgYnl0ZXMpOw0KPiA+DQo+ID4gICAgICAga2ZyZWUocCk7DQo+ID4NCj4gV2l0aCB0aGVzZSBj
aGFuZ2VzIHlvdSBjb3VsZCB1c2UgdGhlICd2YWwnIHBvaW50ZXIgZGlyZWN0bHkgYXMgdGhlIGRl
c3RpbmF0aW9uDQo+IGZvciBvY290cF9yZWFkKCkgd2l0aG91dCBuZWVkIGZvciBhbiBpbnRlcm1l
ZGlhdGUgYnVmZmVyLg0KPiANCj4gDQo+IExvdGhhciBXYcOfbWFubg0KDQpZb3UgYXJlIHJpZ2h0
LCBpbiBmYWN0LCB3ZSBjYW4gcmVtb3ZlICJwIiBhbmQgImJ1ZiIgcG9pbnRlci4NClRoYW5rcyBm
b3IgeW91ciByZXZpZXcsIEkgd2lsbCBzZW5kIG91dCB0aGUgVjIuDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
