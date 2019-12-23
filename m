Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB041294E2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 12:12:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f8Fq9dQFbkOd6IOq9HYpy5LOJzLRM5A8aTXoxrHY6Vo=; b=QmEXrpGbrgNMMo
	rWSMEq036YRSLPQaEACQYJl6iC6aNPTm+7icHGVVlev/Qs0V+eYWjQ9VHU2V6DZ8Oihvt9ysDeRAK
	vTInJRpL9BGgPAcwp8TbgP8dLAnLTvtlABchwrCOTbKwcQaO3ta5INlsRx0/+muxcTUNKk7JLGZOv
	8q8O8RxT9q4DlHOwyPOVQelpqkS3hsd1wFR97iYcpDxLUb3Z7P7Y/9SXlah5ViSze+rvEJJWZmz8z
	5JLMse6hKdkofeyiQw09sqh7CAndRdI4XF5psjLmHZWftncoy3wmtrixxiwk2XvjFYu9eQBvQFvKq
	GaK6XRCXaTb2vm3hi7dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijLdb-0008Hl-5A; Mon, 23 Dec 2019 11:12:35 +0000
Received: from mail-eopbgr130072.outbound.protection.outlook.com
 ([40.107.13.72] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijLcu-0007Zd-D8
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 11:12:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LgPlqxRK7i2aRwJqP7+QAMwXbhNzoRMUbLcbF3ehED1jJs15o8BL1XPNgoCT2TmsvScrSQNXFJE7ml+rSxPzSGGt+rQsUCFtSUdyjBBknnGeVqylW+oZD8/k/KjpnOU51OppI9ZCVY6jxGhiKOW4Rp78P6LhOsTx/DxSpONhpWTaqGML3uOkf12d4cfxhIgJEby52cHrieMDGwknDlUiVlEwyw4elIWDIwbdU2QZ9133AloCkxYy4uSBCh0udnyLWjE9RHRC8ISSKDCiAZw3vP4QSg7r6AmGtG0QdfkWVNo6CeiJNHRLZGEggj7MwiSvia7VaAuDmYsP3d+abcQe3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E5gvGzRiQslP6d04dIRRY2s4JxIj7QdFELNSTlTB+uM=;
 b=jLejP9unIcZwnE3w0yWfvWOZALuKJAZyFEPNI77Tvg9Zz7Xi8dovR++0kjxzVi3ev5hCLV0psNNIc1UwSnSMNzlewt1iLCRblYC6EQZoHyUMlIV0Q8aw6alWlu0+nMJtk+dBP5snoHMUfgMA8sKCwKLrGLx6sYj8vAFwVdWclewD9Z2bBbKQVKszM4gZyuKbHezMbb0u0Y/TpAVQDJc4/LZaUqT+aFmrlD4EjoGVzTCWh7khw+UcbjSZO8kKF7MmKVESDRHArqKVqJpfwm7M2YwaDhiolgAw/wHnRFv7DWCXG1ez0BqMiFIIn71Ban/rWDx24PoDPxig7i97EmqPNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E5gvGzRiQslP6d04dIRRY2s4JxIj7QdFELNSTlTB+uM=;
 b=JkBCoMXSJQBIo4xTRBxfBPRU5MNGS6ehFP6LEZKs0qBOePeGslxyPf1kbuFXH8x1N9rzIQQ6KLdV0Uh06QCRR2Z2IlPsVvZ2zxFyipUnXctFu+/1BhXTbkRwCWjBqJznyjdunPK+s9v9hwwtC4LV40mZZcWW9NiSTZSMEuiamyM=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4587.eurprd04.prod.outlook.com (52.135.137.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Mon, 23 Dec 2019 11:11:35 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::b40b:46af:9458:f2df]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::b40b:46af:9458:f2df%6]) with mapi id 15.20.2559.017; Mon, 23 Dec 2019
 11:11:35 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Lokesh Vutla <lokeshvutla@ti.com>, Marc Zyngier <maz@kernel.org>
Subject: RE: [PATCH V3 2/2] drivers/irqchip: add NXP INTMUX interrupt
 multiplexer support
Thread-Topic: [PATCH V3 2/2] drivers/irqchip: add NXP INTMUX interrupt
 multiplexer support
Thread-Index: AQHVuXluIg86C16fAkK/cf5/N0wahKfHiC9A
Date: Mon, 23 Dec 2019 11:11:35 +0000
Message-ID: <DB7PR04MB4618A3FB15E8095E2AE43B65E62E0@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <1576827431-31942-1-git-send-email-qiangqing.zhang@nxp.com>
 <1576827431-31942-3-git-send-email-qiangqing.zhang@nxp.com>
 <ad5165ba-24d7-ceeb-8794-cdbe4e564bd5@ti.com>
 <DB7PR04MB4618B9A227807CCF884910C6E62D0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <8bc6bcf113cce13816c62c166f091785@www.loen.fr>
 <DB7PR04MB4618A390C538DCD6929DE998E62D0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <d7ee5841-0b99-32d3-1d62-d2b47adf4476@ti.com>
In-Reply-To: <d7ee5841-0b99-32d3-1d62-d2b47adf4476@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 21fa6e6e-9a20-469d-9b36-08d78798df9a
x-ms-traffictypediagnostic: DB7PR04MB4587:|DB7PR04MB4587:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB45874F915F2C361A1504F1B0E62E0@DB7PR04MB4587.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:312;
x-forefront-prvs: 0260457E99
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(39860400002)(376002)(136003)(346002)(13464003)(189003)(199004)(33656002)(66446008)(8676002)(186003)(6506007)(2906002)(52536014)(66476007)(66556008)(64756008)(8936002)(26005)(53546011)(5660300002)(4001150100001)(7696005)(7416002)(81166006)(55016002)(86362001)(81156014)(4326008)(9686003)(71200400001)(54906003)(110136005)(316002)(66946007)(478600001)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4587;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: StTsYImPaLEbfizhkyqYN3B7YJy7/gVSZJSJlsRoafwnf9OAYk6eQSdItn6SfMd1OfT/Kj5zwpOR0gq0PQQPTvuzLtxsZFHPgs/58wcpICpXXmsEPIZgg+nsiG6KBSw3OhJblXHTtkt8b9EorLaeEu1Hoo2QSQrkeiDdEkOQfhJ3n+I+qAii4DsGZmDF0NzsuoT/RM4wZpptnGqEU9YV6QEWEMVes9iifRwA8FB/81LaM6tzg5usl6l6F9wy8rtInuUHH5VPimPmdZCJZC6WqmuURbg8xPuIAZGEHmqyWuVhEvXtjtl5ucvym7hjW8T4yDJLpg8/CNs3KmWl6MVwod6fADiwEkuoLcYB6lOMcHNU4ngbacmLCrI/YWucziZamT3voo+v1ZiFDaZQ/qv/EYDOltNBG5hiYa+F+HGL2fm6WIDVH6fvn4+Vz10LFtYcniIHxB8EIukUC0RLXFJp+nROhX1aufWVkob1nOgJADpiIYn/m4c6VpFTUNsPLU6Z
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21fa6e6e-9a20-469d-9b36-08d78798df9a
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2019 11:11:35.1855 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ceCQ7qLWCrgI3Ud7CgOZ9MQZXabKa7DQaglW3SgWi8v/0olQL69HxW/Qh2VMwy4F04eqAu9vUmJRgXlunnOKkA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4587
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_031157_154279_8DC28F58 
X-CRM114-Status: GOOD (  24.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Andy Duan <fugang.duan@nxp.com>, "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IExva2VzaCBWdXRsYSA8bG9r
ZXNodnV0bGFAdGkuY29tPg0KPiBTZW50OiAyMDE55bm0MTLmnIgyM+aXpSAxODoxMQ0KPiBUbzog
Sm9ha2ltIFpoYW5nIDxxaWFuZ3FpbmcuemhhbmdAbnhwLmNvbT47IE1hcmMgWnluZ2llcg0KPiA8
bWF6QGtlcm5lbC5vcmc+DQo+IENjOiB0Z2x4QGxpbnV0cm9uaXguZGU7IGphc29uQGxha2VkYWVt
b24ubmV0OyByb2JoK2R0QGtlcm5lbC5vcmc7DQo+IG1hcmsucnV0bGFuZEBhcm0uY29tOyBzaGF3
bmd1b0BrZXJuZWwub3JnOyBzLmhhdWVyQHBlbmd1dHJvbml4LmRlOw0KPiBBbmR5IER1YW4gPGZ1
Z2FuZy5kdWFuQG54cC5jb20+OyBTLmouIFdhbmcgPHNoZW5naml1LndhbmdAbnhwLmNvbT47DQo+
IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGRsLWxpbnV4LWlteCA8bGludXgtaW14QG54
cC5jb20+Ow0KPiBrZXJuZWxAcGVuZ3V0cm9uaXguZGU7IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIIFYzIDIvMl0gZHJpdmVycy9pcnFj
aGlwOiBhZGQgTlhQIElOVE1VWCBpbnRlcnJ1cHQNCj4gbXVsdGlwbGV4ZXIgc3VwcG9ydA0KPiAN
Cj4gDQo+IA0KPiBPbiAyMC8xMi8xOSA4OjU2IFBNLCBKb2FraW0gWmhhbmcgd3JvdGU6DQo+ID4N
Cj4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPj4gRnJvbTogTWFyYyBaeW5naWVy
IDxtYXpAa2VybmVsLm9yZz4NCj4gPj4gU2VudDogMjAxOeW5tDEy5pyIMjDml6UgMjI6MjANCj4g
Pj4gVG86IEpvYWtpbSBaaGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5jb20+DQo+ID4+IENjOiBM
b2tlc2ggVnV0bGEgPGxva2VzaHZ1dGxhQHRpLmNvbT47IHRnbHhAbGludXRyb25peC5kZTsNCj4g
Pj4gamFzb25AbGFrZWRhZW1vbi5uZXQ7IHJvYmgrZHRAa2VybmVsLm9yZzsgbWFyay5ydXRsYW5k
QGFybS5jb207DQo+ID4+IHNoYXduZ3VvQGtlcm5lbC5vcmc7IHMuaGF1ZXJAcGVuZ3V0cm9uaXgu
ZGU7IEFuZHkgRHVhbg0KPiA+PiA8ZnVnYW5nLmR1YW5AbnhwLmNvbT47IFMuai4gV2FuZyA8c2hl
bmdqaXUud2FuZ0BueHAuY29tPjsNCj4gPj4gbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsg
ZGwtbGludXgtaW14IDxsaW51eC1pbXhAbnhwLmNvbT47DQo+ID4+IGtlcm5lbEBwZW5ndXRyb25p
eC5kZTsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnDQo+ID4+IFN1YmplY3Q6
IFJFOiBbUEFUQ0ggVjMgMi8yXSBkcml2ZXJzL2lycWNoaXA6IGFkZCBOWFAgSU5UTVVYIGludGVy
cnVwdA0KPiA+PiBtdWx0aXBsZXhlciBzdXBwb3J0DQo+ID4+DQo+ID4+IE9uIDIwMTktMTItMjAg
MTQ6MTAsIEpvYWtpbSBaaGFuZyB3cm90ZToNCj4gPj4+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2Ut
LS0tLQ0KPiA+Pj4+IEZyb206IExva2VzaCBWdXRsYSA8bG9rZXNodnV0bGFAdGkuY29tPg0KPiA+
Pg0KPiA+PiBbLi4uXQ0KPiA+Pg0KPiA+Pj4+IERvZXMgdGhlIHVzZXIgY2FyZSB0byB3aGljaCBj
aGFubmVsIGRvZXMgdGhlIGludGVycnVwdCBzb3VyY2UgZ29lcw0KPiA+Pj4+IHRvPyBJZiBub3Qs
IGludGVycnVwdC1jZWxscyBpbiBEVCBjYW4ganVzdCBiZSBhIHNpbmdsZSBlbnRyeSBhbmQNCj4g
Pj4+PiB0aGUgY2hhbm5lbCBzZWxlY3Rpb24gY2FuIGJlIGNvbnRyb2xsZWQgYnkgdGhlIGRyaXZl
ciBubz8gSSBhbQ0KPiA+Pj4+IHRyeWluZyB0byB1bmRlcnN0YW5kIHdoeSB1c2VyIHNob3VsZCBz
cGVjaWZ5IHRoZSBjaGFubmVsIG5vLg0KPiA+Pj4gSGkgTG9rZXNoLA0KPiA+Pj4NCj4gPj4+IElm
IGEgZml4ZWQgY2hhbm5lbCBpcyBzcGVjaWZpZWQgaW4gdGhlIGRyaXZlciwgYWxsIGludGVycnVw
dCBzb3VyY2VzDQo+ID4+PiB3aWxsIGJlIGNvbm5lY3RlZCB0byB0aGlzIGNoYW5uZWwsIGFmZmVj
dGluZyB0aGUgaW50ZXJydXB0IHByaW9yaXR5DQo+ID4+PiB0byBzb21lIGV4dGVudC4NCj4gPj4+
DQo+ID4+PiBGcm9tIG15IHBvaW50IG9mIHZpZXcsIGEgZml4ZWQgY2hhbm5lbCBjb3VsZCBiZSBl
bm91Z2ggaWYgZG9uJ3QgY2FyZQ0KPiA+Pj4gaW50ZXJydXB0IHByaW9yaXR5Lg0KPiA+Pg0KPiA+
PiBIb2xkIG9uIGEgc2VjOg0KPiA+Pg0KPiA+PiBJcyB0aGUgY2hhbm5lbCB0byB3aGljaCBhbiBp
bnRlcnJ1cHQgaXMgcm91dGVkIHRvIHByb2dyYW1tYWJsZT8gV2hhdA0KPiA+PiBoYXMgdGhlIHBy
aW9yaXR5IG9mIHRoZSBpbnRlcnJ1cHQgdG8gZG8gd2l0aCB0aGlzPyBIb3cgZG9lcyB0aGlzDQo+
ID4+IGFmZmVjdCBpbnRlcnJ1cHQgZGVsaXZlcnk/DQo+ID4+DQo+ID4+IEl0IGxvb2tzIGxpa2Ug
dGhpcyBIVyBkb2VzIG1vcmUgdGhhdCB5b3UgaW5pdGlhbGx5IGV4cGxhaW5lZC4uLg0KPiA+IEhp
IE1hcmMsDQo+ID4NCj4gPiBUaGUgY2hhbm5lbCB0byB3aGljaCBhbiBpbnRlcnJ1cHQgaXMgcm91
dGVkIHRvIGlzIG5vdCBwcm9ncmFtbWFibGUuIEVhY2gNCj4gY2hhbm5lbCBoYXMgdGhlIHNhbWUg
MzIgaW50ZXJydXB0IHNvdXJjZXMuDQo+IA0KPiBCdXQgdGhlIGludGVycnVwdCBzb3VyY2UgdG8g
Y2hhbm5lbCBpcyBwcm9ncmFtbWFibGUgcmlnaHQ/IEkgZ3Vlc3MgeW91IGFyZQ0KPiB3b3JyaWVk
IGFib3V0IHRoZSBhZmZpbml0eSBmb3IgZWFjaCBpbnRlcnJ1cHQuIFlvdSBjYW4gYnJpbmcgdGhl
IGxvZ2ljIGluc2lkZSB0aGUNCj4gZHJpdmVyIHRvIGFzc2lnbiB0aGUgY2hhbm5lbCB0byBlYWNo
IGludGVycnVwdCBzb3VyY2UgYW5kIGNhbiBtYWludGFpbiB0aGUNCj4gYWZmaW5pdHkgdG8gc29t
ZSBleHRlbnQuLg0KRWFjaCBjaGFubmVsIHN1cHBvcnRzIDMyIGludGVycnVwdCBzb3VyY2VzLCB5
b3UgY2FuIHVubWFzayBpbnRlcnJ1cHQgc291cmNlcyB3aGljaCB5b3Ugd2FudCBnZW5lcmF0ZSB2
aWEgdGhpcyBjaGFubmVsLCBhbmQgb3RoZXIgaW50ZXJydXB0IHNvdXJjZXMgc3RheSBtYXNrLg0K
DQo+ID4gRWFjaCBjaGFubmVsIGhhcyBtYXNrLCB1bm1hc2sgYW5kIHN0YXR1cyByZWdpc3Rlci4N
Cj4gPiBJZiB1c2UgMSBjaGFubmVsLCAzMiBpbnRlcnJ1cHQgc291cmNlcyBpbnB1dCBhbmQgMSBp
bnRlcnJ1cHQgb3V0cHV0Lg0KPiA+IElmIHVzZSAyIGNoYW5uZWxzLCAzMiBpbnRlcnJ1cHQgc291
cmNlcyBpbnB1dCBhbmQgMiBpbnRlcnJ1cHRzIG91dHB1dC4NCj4gPiBBbmQgc28gb24uIFlvdSBj
YW4gc2VlIGFib3ZlIElOVE1VWCBibG9jayBkaWFncmFtLiBUaGlzIGlzIGhvdyBIVyB3b3Jrcy4N
Cj4gPg0KPiA+IEZvciBleGFtcGxlOg0KPiA+IDEpIHVzZSAxIGNoYW5uZWw6DQo+ID4gV2UgY2Fu
IGVuYWJsZSAwfjMxIGludGVycnVwdCBpbiBjaGFubmVsIDAuIEFuZCAxIGludGVycnVwdCBvdXRw
dXQuIElmDQo+IGdlbmVyYXRlIGludGVycnVwdCwgd2UgY2Fubm90IGZpZ3VyZSBvdXQgd2hpY2gg
aGFsZiBoYXBwZW5lZCBmaXJzdC4NCj4gDQo+IEhtbS4uLmRvZXMgdGhpcyBtZWFuIHRoYXQgZWFj
aCBjaGFubmVsIGlzIGNhcGFibGUgb2YgaGFuZGxpbmcgb25seSAxNQ0KPiBpbnRlcnJ1cHQgc291
cmNlcyBvciBkaWQgSSBtaXNzdW5kZXJzdG9vZCB0aGUgaGFyZHdhcmU/DQpZZXMsIHlvdSBqdXN0
IG5lZWQgdW5tYXNrIGludGVycnVwdCBzb3VyY2VzIHlvdSB3YW50IGZvciBlYWNoIGNoYW5uZWwu
DQoNCkZvciBpbnRtdXggSVA6DQoxKSA4IG91dHB1dCBpbnRlcnJ1cHRzIGNhbiBjb25uZWN0IHRv
IGRpZmZlcmVudCBjb3JlcyAoQSBjb3JlLCBNNCwgRFNQLCBhbmQgc28gb24pLCBzbyB0aGlzIGlz
IDMyLXRvLTEuDQoyKSA4IG91dHB1dCBpbnRlcnJ1cHRzIGNhbiBjb25uZWN0IHRvIG9uZSBjb3Jl
LCBzbyB0aGlzIGlzIDMyLXRvLTgNCg0KSW4gb3VyIGkuTVg4IFNvQ3MsIGludG11eCBpcyBpbnRl
Z3JhdGVkIGluIE00IGFuZCA4IG91dHB1dCBpbnRlcnJ1cHRzIGFsbCBjb25uZWN0ZWQgdG8gR0lD
IGluIEEgY29yZS4NClN1cHBvc2VkIHRoYXQgdGhlcmUgYXJlIDQgZGV2aWNlcyBhY3R1YWxseSBy
ZXF1ZXN0IHRvIGludG11eCwgc28gaW50bXV4IGhhcyA0IGludGVycnVwdCBzb3VyY2VzLg0KV2Ug
Y2FuIGFzc2lnbiB0aGVzZSA0IGludGVycnVwdCBzb3VyY2VzIHZpYSBpbnRlcnJ1cHQgc3BlY2lm
aWVyIHRvIGNoYW5uZWwgMC4gVGhpcyBpcyA0LXRvLTEuDQpXZSBhbHNvIGNhbiBhc3NpZ24gNCBp
bnRlcnJ1cHQgc291cmNlcyB2aWEgaW50ZXJydXB0IHNwZWNpZmllciB0byBjaGFubmVsIDAvMS8y
LzMuIFRoaXMgaXMgNC10bzQuDQoNCkkgdGhpbmsgaW50ZXJydXB0cyBoYW5kaW5nIHNlcXVlbmNl
IGNvdWxkIGJlIG1vcmUgY2xvc2VkIHRvIGludGVycnVwdHMgZ2VuZXJhdGUgc2VxdWVuY2UgaWYg
b25lIGNoYW5uZWwgdW5tYXNrIGxlc3MgaW50ZXJydXB0cyBzb3VyY2VzKGkuZS4gZW5hYmxlIGxl
c3MgaW50ZXJydXB0IHNvdXJjZXMgZm9yIHRoYXQgY2hhbm5lbCkuDQpTaW5jZSB3ZSBhbHdheXMg
Y2hlY2sgaW50ZXJydXB0IHBlbmRpbmcgc3RhdHVzIGZvciBvbmVjaGFubmVsIGZyb20gc291cmNl
cyAwIHRvIDMxLg0KDQpUaGlzIHNob3VsZCBub3QgYmUgaW50ZXJydXB0IHByaW9yaXR5LCBzb3Jy
eSBmb3IgbXkgcHJldmlvdXMgYW5zd2VyLiANCg0KQmVzdCBSZWdhcmRzLA0KSm9ha2ltIFpoYW5n
DQo+IFRoYW5rcyBhbmQgcmVnYXJkcywNCj4gTG9rZXNoDQo+IA0KPiA+IDIpdXNlIDIgY2hhbm5l
bHM6DQo+ID4gV2UgY2FuIGVuYWJsZSAwfjE1IGludGVycnVwdCBpbiBjaGFubmVsIDAsIGFuZCBl
bmFibGUgMTZ+MzEgaW4gY2hhbm5lbCAxLg0KPiBBbmQgMiBpbnRlcnJ1cHRzIG91dHB1dC4gSWYg
Z2VuZXJhdGUgaW50ZXJydXB0LCBhdCBsZWFzdCB3ZSBjYW4gZmluZCBjaGFubmVsIDAgb3INCj4g
Y2hhbm5lbCAxIGZpcnN0LiBUaGVuIGZpbmQgMH4xNSBvciAxNn4zMSBmaXJzdC4NCj4gPg0KPiA+
IFRoaXMgaXMgbXkgdW5kZXJzdGFuZGluZyBvZiB0aGUgaW50ZXJydXB0IHByaW9yaXR5IGZyb20g
dGhpcyBpbnRtdXgsIEkgZG9uJ3QNCj4ga25vdyBpZiBpdCBpcyBteSBtaXN1bmRlcnN0YW5kaW5n
Lg0KPiA+DQo+ID4gQmVzdCBSZWdhcmRzLA0KPiA+IEpvYWtpbSBaaGFuZw0KPiA+PiAgICAgICAg
ICBNLg0KPiA+PiAtLQ0KPiA+PiBKYXp6IGlzIG5vdCBkZWFkLiBJdCBqdXN0IHNtZWxscyBmdW5u
eS4uLg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
