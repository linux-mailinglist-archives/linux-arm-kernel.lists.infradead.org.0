Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF112913E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 08:48:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wkH1O4PYKvhmeukKk2uxqtDYmJ4SQSyn6jOVHQnpvYA=; b=Fo//Uw6Y/bn5WQ
	aXgplVC3CQmsA0EIu9BEKA9Th05fkle+oLM9IyD942FyOD1yy2mC0ONQRX8xzVAfoShjU3XSLU+Qj
	YGRSGcDIhyYVAwQTvuCHg0oihRrwznipSvW1U9NgBlvToax6HAEdbAva5HAlP1Kza3e7X6b0XMC2A
	PAZ4oMYnYXoyqllGfO+P3JnJqUmgagurMhIKnkjvpbWkteXm8TtcdLuBE001AiwqnbDT+cdUpSyM/
	DUjLHOV0NzUx+XN8+SLuhoGBNxG+qpwAQcfSIhjXAQyGguqorTlrsijEnIBh8Gs2yTq93BWY6kJLw
	uVoJ5vksNOsBpkO7YiCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU40H-0002bo-PG; Fri, 24 May 2019 06:48:33 +0000
Received: from mail-eopbgr30045.outbound.protection.outlook.com ([40.107.3.45]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU407-0002au-G0
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 06:48:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=if3gIDarwCV6dwPuPN+tRbwQYXaYDYlsOOp5pvSoeL8=;
 b=co2M1jFzdHC9gnaFqCM4f1Ug58wjEFiM/phIs9tt7Uix1h6dSypzvrf9aIfYOS76Q1lh0nSjHXc+9/AD8ZvSaNq5Yus4XD1cTsgL7h26Z7p9Fb1J/NQQm300rpq/b44YKrglp800iTWvh1ZxEDVnsgLuf4Au20pCi6vp7zhPD9c=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5441.eurprd04.prod.outlook.com (20.178.112.218) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.15; Fri, 24 May 2019 06:48:19 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378%6]) with mapi id 15.20.1922.018; Fri, 24 May 2019
 06:48:18 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH V3 RESEND 3/4] defconfig: arm64: enable i.MX8 SCU octop
 driver
Thread-Topic: [PATCH V3 RESEND 3/4] defconfig: arm64: enable i.MX8 SCU octop
 driver
Thread-Index: AQHVEEBCaBd2PozlHEuFjnNzl2G7GKZ4rEkAgAEpmHA=
Date: Fri, 24 May 2019 06:48:18 +0000
Message-ID: <AM0PR04MB4481AF7816B9E9D6F35290EF88020@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190522020040.30283-1-peng.fan@nxp.com>
 <20190522020040.30283-3-peng.fan@nxp.com> <20190523125235.GV9261@dragon>
In-Reply-To: <20190523125235.GV9261@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5d6fc62a-a3ef-46b2-44a4-08d6e013ce4c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5441; 
x-ms-traffictypediagnostic: AM0PR04MB5441:
x-ms-exchange-purlcount: 2
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <AM0PR04MB5441B44BDA6ABDC8EF251D6F88020@AM0PR04MB5441.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-forefront-prvs: 0047BC5ADE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(39860400002)(376002)(366004)(136003)(13464003)(199004)(189003)(102836004)(71200400001)(71190400001)(256004)(229853002)(76176011)(486006)(53546011)(25786009)(44832011)(478600001)(99286004)(6506007)(6916009)(305945005)(446003)(11346002)(66066001)(33656002)(26005)(476003)(7736002)(186003)(4326008)(6246003)(14454004)(7696005)(86362001)(6116002)(74316002)(54906003)(52536014)(5660300002)(55016002)(7416002)(3846002)(6436002)(81156014)(8676002)(2906002)(76116006)(81166006)(9686003)(6306002)(316002)(966005)(64756008)(66446008)(66556008)(66476007)(53936002)(68736007)(8936002)(73956011)(66946007)(15866825006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5441;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Zt0rAD5JcsCDdpaN3FV1KCDQhKCQ9TXUgOjBXfFziKxOVb80W4ncp2F4dF9uxQzXspTRVyg1LhTX3poMS7dYvMcflJwCn6saTCkuXjPwd9OMER5oE7kLGDUiRmPjEU/rXmT7Jo+gkbw16SBJKU56LGFzDCwtrClziApqcUqusnBdxANL74ZnbRPLTOv2bBnKdEMMe0Pwud3bOy3g4GeuH31aTXm7DsiEg3/ARarXxDM+2qvYxgvvV3dE8jpJTLCF+coo9JlioLGlzZYSsvOlGEdvBv0LrRFasoZMPDZowCl3dQHQ2HSrWXinoY7sgpbPuTnzXrflkIE64qSC9N7T/zRTZ+f72XCkRkY82Xg3NRh/dcpuE5SlJeC7MXjd9PGi0BO/hNNc82GKDuEbn9XwNLYoWGSaGqcDQvsP5xwUUQE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d6fc62a-a3ef-46b2-44a4-08d6e013ce4c
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2019 06:48:18.8649 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5441
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_234823_923097_1E06C86B 
X-CRM114-Status: GOOD (  16.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Olof Johansson <olof@lixom.net>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <andy.gross@linaro.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 Shawn Guo <shawn.guo@linaro.org>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU2hhd24sDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU2hhd24g
R3VvIFttYWlsdG86c2hhd25ndW9Aa2VybmVsLm9yZ10NCj4gU2VudDogMjAxOcTqNdTCMjPI1SAy
MDo1Mw0KPiBUbzogUGVuZyBGYW4gPHBlbmcuZmFuQG54cC5jb20+DQo+IENjOiBzcmluaXZhcy5r
YW5kYWdhdGxhQGxpbmFyby5vcmc7IHJvYmgrZHRAa2VybmVsLm9yZzsNCj4gcy5oYXVlckBwZW5n
dXRyb25peC5kZTsgZmVzdGV2YW1AZ21haWwuY29tOyBkbC1saW51eC1pbXgNCj4gPGxpbnV4LWlt
eEBueHAuY29tPjsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsNCj4gbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsNCj4g
dmFuLmZyZWVuaXhAZ21haWwuY29tOyBDYXRhbGluIE1hcmluYXMgPGNhdGFsaW4ubWFyaW5hc0Bh
cm0uY29tPjsgV2lsbA0KPiBEZWFjb24gPHdpbGwuZGVhY29uQGFybS5jb20+OyBTaGF3biBHdW8g
PHNoYXduLmd1b0BsaW5hcm8ub3JnPjsgQW5keQ0KPiBHcm9zcyA8YW5keS5ncm9zc0BsaW5hcm8u
b3JnPjsgTWF4aW1lIFJpcGFyZA0KPiA8bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT47IE9sb2Yg
Sm9oYW5zc29uIDxvbG9mQGxpeG9tLm5ldD47IEphZ2FuIFRla2kNCj4gPGphZ2FuQGFtYXJ1bGFz
b2x1dGlvbnMuY29tPjsgQmpvcm4gQW5kZXJzc29uDQo+IDxiam9ybi5hbmRlcnNzb25AbGluYXJv
Lm9yZz47IExlb25hcmQgQ3Jlc3RleiA8bGVvbmFyZC5jcmVzdGV6QG54cC5jb20+Ow0KPiBNYXJj
IEdvbnphbGV6IDxtYXJjLncuZ29uemFsZXpAZnJlZS5mcj47IEVucmljIEJhbGxldGJvIGkgU2Vy
cmENCj4gPGVucmljLmJhbGxldGJvQGNvbGxhYm9yYS5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFU
Q0ggVjMgUkVTRU5EIDMvNF0gZGVmY29uZmlnOiBhcm02NDogZW5hYmxlIGkuTVg4IFNDVQ0KPiBv
Y3RvcCBkcml2ZXINCj4gDQo+IE9uIFdlZCwgTWF5IDIyLCAyMDE5IGF0IDAxOjQ3OjA1QU0gKzAw
MDAsIFBlbmcgRmFuIHdyb3RlOg0KPiA+IEJ1aWxkIGluIENPTkZJR19OVk1FTV9JTVhfT0NPVFBf
U0NVLg0KPiA+DQo+ID4gQ2M6IENhdGFsaW4gTWFyaW5hcyA8Y2F0YWxpbi5tYXJpbmFzQGFybS5j
b20+DQo+ID4gQ2M6IFdpbGwgRGVhY29uIDx3aWxsLmRlYWNvbkBhcm0uY29tPg0KPiA+IENjOiBT
aGF3biBHdW8gPHNoYXduLmd1b0BsaW5hcm8ub3JnPg0KPiA+IENjOiBBbmR5IEdyb3NzIDxhbmR5
Lmdyb3NzQGxpbmFyby5vcmc+DQo+ID4gQ2M6IE1heGltZSBSaXBhcmQgPG1heGltZS5yaXBhcmRA
Ym9vdGxpbi5jb20+DQo+ID4gQ2M6IE9sb2YgSm9oYW5zc29uIDxvbG9mQGxpeG9tLm5ldD4NCj4g
PiBDYzogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+DQo+ID4gQ2M6IEJq
b3JuIEFuZGVyc3NvbiA8Ympvcm4uYW5kZXJzc29uQGxpbmFyby5vcmc+DQo+ID4gQ2M6IExlb25h
cmQgQ3Jlc3RleiA8bGVvbmFyZC5jcmVzdGV6QG54cC5jb20+DQo+ID4gQ2M6IE1hcmMgR29uemFs
ZXogPG1hcmMudy5nb256YWxlekBmcmVlLmZyPg0KPiA+IENjOiBFbnJpYyBCYWxsZXRibyBpIFNl
cnJhIDxlbnJpYy5iYWxsZXRib0Bjb2xsYWJvcmEuY29tPg0KPiA+IENjOiBsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcNCj4gPiBSZXZpZXdlZC1ieTogRG9uZyBBaXNoZW5nIDxh
aXNoZW5nLmRvbmdAbnhwLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBQZW5nIEZhbiA8cGVuZy5m
YW5AbnhwLmNvbT4NCj4gDQo+IFBsZWFzZSBkbyBub3QgdXNlIGJhc2U2NCBlbmNvZGluZyBmb3Ig
cGF0Y2ggcG9zdGluZy4NCg0KU2luY2UgU3Jpbml2YXMgcGlja2VkIHVwIHBhdGNoIDEvNCBhbmQg
Mi80LCBzbyBqdXN0IHJlc2VuZCB0aGUNCnBhdGNoIDMvNCBhbmQgcGF0Y2ggNC80Lg0KDQpodHRw
czovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzEwOTU5MTQ5Lw0KaHR0cHM6Ly9wYXRjaHdv
cmsua2VybmVsLm9yZy9wYXRjaC8xMDk1OTE1MS8NCg0KVGhhbmtzLA0KUGVuZy4NCj4gDQo+IFNo
YXduDQo+IA0KPiA+IC0tLQ0KPiA+DQo+ID4gVjM6DQo+ID4gIE5vIGNoYW5nZQ0KPiA+IFYyOg0K
PiA+ICByZW5hbWUgcGF0Y2ggdGl0bGUsIGFkZCByZXZpZXcgdGFnDQo+ID4NCj4gPiAgYXJjaC9h
cm02NC9jb25maWdzL2RlZmNvbmZpZyB8IDEgKw0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKykNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29u
ZmlnDQo+ID4gYi9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnIGluZGV4IDk3OWE5NWM5MTVi
Ni4uMzJiODUxMDJiODU3DQo+IDEwMDY0NA0KPiA+IC0tLSBhL2FyY2gvYXJtNjQvY29uZmlncy9k
ZWZjb25maWcNCj4gPiArKysgYi9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnDQo+ID4gQEAg
LTc0OCw2ICs3NDgsNyBAQCBDT05GSUdfSElTSV9QTVU9eQ0KPiA+ICBDT05GSUdfUUNPTV9MMl9Q
TVU9eQ0KPiA+ICBDT05GSUdfUUNPTV9MM19QTVU9eQ0KPiA+ICBDT05GSUdfTlZNRU1fSU1YX09D
T1RQPXkNCj4gPiArQ09ORklHX05WTUVNX0lNWF9PQ09UUF9TQ1U9eQ0KPiA+ICBDT05GSUdfUUNP
TV9RRlBST009eQ0KPiA+ICBDT05GSUdfUk9DS0NISVBfRUZVU0U9eQ0KPiA+ICBDT05GSUdfVU5J
UEhJRVJfRUZVU0U9eQ0KPiA+IC0tDQo+ID4gMi4xNi40DQo+ID4NCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
