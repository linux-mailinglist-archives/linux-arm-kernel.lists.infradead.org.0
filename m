Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AC372CEA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 13:10:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6HxsUa0SYGIdxcmVuOuUQV1syb+gKVQSIYiPsCak0lk=; b=Q2gsGIIQzldHN0
	2Wh+Inn/4gNRS1O6Ju+qZqRHXFC05+7iQxVrITZkcRKGnCAw4IsAhaKgyKa4Q4VzUqL+vp9eLH40z
	Kk3PAyQ+asOP2zZIrbD7f6HTmM9Pp3ISGdCdhPUTdC5AEzIbm6aZdsHgGCsWjpvB5dX1UawB1FLFm
	AddXcWF33YMfOHKLxgM2DhcumfWKEiS2gpEJ32cy7/RPMy7V5Ws70S7TWwxrLnaJwr22h9sb1AyAv
	1XfrJFYqQb7GjjLGn9G4oYu5vYBQBawLcxYcZUWYw7QBo2wyomPItmlr16qVWp8K/P5vcl/HBGF+v
	urny36pOPa7A7EJmUnYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqFA0-0007ez-Mt; Wed, 24 Jul 2019 11:10:16 +0000
Received: from mail-eopbgr00083.outbound.protection.outlook.com ([40.107.0.83]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqF9b-0007ZA-PI
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 11:09:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Io3hPBwjFtQUoXk8cWntN48JYeszE6YG7cfxiHrwqVtzxLBoHM1VWPgx8YGLBra3heMpfx1xA+DSyMUxn0jezyST7vM6kLjNlYM0fQCQW5a88ap6csPJ4/bEo23q35O4YqJApX77bdufFZcet8yjFVsu3OdipIsifK+XlmGv8fL53oSPB1vNrVZSkdGCqktCeW9uPpKItY3ON7jYKcR6T/sn6GgihENgvy78HzsRRiT8e7GONmpFI5gUb8c0dffau0kJv2nNSfaJQAlh2SUUECVqe9P1/kuBDzm6gMAlR4vWka3fe+FAW081vqhwXfW0cbPBMixbNM3YqLBukomMWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fe4VSA36KjWBpSSQi2hGjzLcmNYLfi3ZsvwlP1segrs=;
 b=n4mOPSvaOBjNPE8W4ycScehYcbdA/uTTmfclMJ7I49U688TUKSiOPXBVVJamjvr51AS3eIlxUf9li9JVVIPIwcOi04qNzXwh/PcmyoW7tJHgEBOVUM5VnhD4Cn/yg2Ox6gJU+kUkU6W1g1b/e2oEdu18/A6xCJxqDhe8mL+XL3Ran9RKrOJILiWtgvNgLrjSciRFnW+/9YfuEKRs4ckFlzDXbcz32rrc1Pn1wpclUMoI+oViQ/ddhRlmgGOImRdM45p9QHIpTEnx06GzrLEQFAE83hv4RI5Aqi7LYEVa2bEtgS+S5FmZK0CnckZ0czPF7S1Daw7w3KfnbISliOuGnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fe4VSA36KjWBpSSQi2hGjzLcmNYLfi3ZsvwlP1segrs=;
 b=Th1o3fB2t5h53qSvUtW2W2Jky1sqbidkHDltBwgW+KWDa6JwuYhD583Uaexr/Vzo8+Igs2/V4R3yja01tIf12aiqRSKcsUeadFyLyYquCTUGJP+uS6ONxfeOzE7M3latBfsmPkiGGBZx0ur5nh6mKypV89p6i7zLyamZtYQfwpI=
Received: from DB8PR04MB6523.eurprd04.prod.outlook.com (20.179.251.154) by
 DB8PR04MB6777.eurprd04.prod.outlook.com (52.133.243.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Wed, 24 Jul 2019 11:09:46 +0000
Received: from DB8PR04MB6523.eurprd04.prod.outlook.com
 ([fe80::306a:ab72:69cb:4491]) by DB8PR04MB6523.eurprd04.prod.outlook.com
 ([fe80::306a:ab72:69cb:4491%3]) with mapi id 15.20.2094.013; Wed, 24 Jul 2019
 11:09:46 +0000
From: Jun Li <jun.li@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH 3/5] clk: imx8mm: correct the usb1_ctrl parent to be
 usb_bus
Thread-Topic: [PATCH 3/5] clk: imx8mm: correct the usb1_ctrl parent to be
 usb_bus
Thread-Index: AQHVMXGCJ4zxIYFU1UunW5a5NZs68abWGc4AgAOiMTA=
Date: Wed, 24 Jul 2019 11:09:45 +0000
Message-ID: <DB8PR04MB6523F8278C875D79DE5DC61689C60@DB8PR04MB6523.eurprd04.prod.outlook.com>
References: <20190703072327.38165-1-jun.li@nxp.com>
 <20190722033418.GX3738@dragon>
In-Reply-To: <20190722033418.GX3738@dragon>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is ) smtp.mailfrom=jun.li@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 12ee887e-679f-4b2c-1d6d-08d710276fb7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR04MB6777; 
x-ms-traffictypediagnostic: DB8PR04MB6777:
x-microsoft-antispam-prvs: <DB8PR04MB6777D96E70CDCCE4E16177BE89C60@DB8PR04MB6777.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0108A997B2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(376002)(39860400002)(136003)(346002)(189003)(199004)(13464003)(71200400001)(71190400001)(6436002)(53936002)(55016002)(99286004)(54906003)(316002)(478600001)(9686003)(186003)(26005)(25786009)(8936002)(4326008)(68736007)(14444005)(256004)(8676002)(229853002)(81156014)(81166006)(6246003)(6916009)(14454004)(74316002)(5660300002)(7736002)(2906002)(11346002)(44832011)(476003)(66446008)(66946007)(76116006)(446003)(66476007)(66556008)(64756008)(486006)(52536014)(305945005)(53546011)(6506007)(76176011)(6116002)(3846002)(86362001)(7696005)(102836004)(66066001)(7416002)(33656002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB6777;
 H:DB8PR04MB6523.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: S3/KUDNDRe4RiRQqO6922Kxs2Gcto0InBcFACbR04mmx4mC4zTLvJj9LVeVhXvXSqj8Mq1xbHPZx1XKTdPraW00wY6aaDuZ7DZDg8LwDmh7VZR791TXOILeKJGr/yTn+BktxlfjR1rgIhrwoJh7CH0HHKXcRBujMODhQFfW6Rq7N4FuzjKxqZtBeOvw0VrOzK0GEMpFCXJdKFObDlzb+TSkgiczzAcSMpr+ZtlGtZTGeDOvlT4V2wj34ZDMbQH2xE9LRaj7Cviom/iP3JSd75g5o/PDFWFNHu7N23+Mj4jvuiiMhOHx/6MQNnilwoNWq3iHCuZLI9QHH7lAc74bQYuHWGCbgmscMXf06hulDYqiw6C8rYl7J80ifjZw1+wBX5NrGH7aZU0ITG4WOpWcX9bJ+ejFUYw35Do7Rf6v/5W0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12ee887e-679f-4b2c-1d6d-08d710276fb7
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2019 11:09:45.9315 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jun.li@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6777
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_040951_918538_D7A85336 
X-CRM114-Status: GOOD (  16.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.83 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Peter Chen <peter.chen@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>, Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Aisheng Dong <aisheng.dong@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU2hhd24gR3VvIDxzaGF3
bmd1b0BrZXJuZWwub3JnPg0KPiBTZW50OiAyMDE5xOo31MIyMsjVIDExOjM0DQo+IFRvOiBKdW4g
TGkgPGp1bi5saUBueHAuY29tPg0KPiBDYzogc2JveWRAa2VybmVsLm9yZzsgcm9iaCtkdEBrZXJu
ZWwub3JnOyBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsNCj4gcy5oYXVlckBwZW5ndXRyb25peC5kZTsg
a2VybmVsQHBlbmd1dHJvbml4LmRlOyBmZXN0ZXZhbUBnbWFpbC5jb207IGRsLWxpbnV4LWlteA0K
PiA8bGludXgtaW14QG54cC5jb20+OyBtdHVycXVldHRlQGJheWxpYnJlLmNvbTsgUGV0ZXIgQ2hl
biA8cGV0ZXIuY2hlbkBueHAuY29tPjsNCj4gSmFja3kgQmFpIDxwaW5nLmJhaUBueHAuY29tPjsg
TGVvbmFyZCBDcmVzdGV6IDxsZW9uYXJkLmNyZXN0ZXpAbnhwLmNvbT47IERhbmllbA0KPiBCYWx1
dGEgPGRhbmllbC5iYWx1dGFAbnhwLmNvbT47IEFuc29uIEh1YW5nIDxhbnNvbi5odWFuZ0BueHAu
Y29tPjsgQWlzaGVuZw0KPiBEb25nIDxhaXNoZW5nLmRvbmdAbnhwLmNvbT47IFBlbmcgRmFuIDxw
ZW5nLmZhbkBueHAuY29tPjsNCj4gZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsNCj4gbGludXgtY2xrQHZnZXIua2VybmVsLm9y
Zw0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDMvNV0gY2xrOiBpbXg4bW06IGNvcnJlY3QgdGhlIHVz
YjFfY3RybCBwYXJlbnQgdG8gYmUgdXNiX2J1cw0KPiANCj4gT24gV2VkLCBKdWwgMDMsIDIwMTkg
YXQgMDM6MjM6MjVQTSArMDgwMCwganVuLmxpQG54cC5jb20gd3JvdGU6DQo+ID4gRnJvbTogTGkg
SnVuIDxqdW4ubGlAbnhwLmNvbT4NCj4gPg0KPiA+IFBlciBsYXRlc3QgaW14OG1tIGRhdGFzaGVl
dCBvZiBDQ00sIHRoZSBwYXJlbnQgb2YgdXNiMV9jdHJsX3Jvb3RfY2xrDQo+ID4gc2hvdWxkIGJl
IHVzYl9idXMuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBMaSBKdW4gPGp1bi5saUBueHAuY29t
Pg0KPiANCj4gSSBvbmx5IHJlY2VpdmVkIDMgcGF0Y2hlcyBhcyBhIHNlcmllcy4gIEluIHRoYXQg
Y2FzZSwgdGhlIHBhdGNoZXMgc2hvdWxkIGhhdmUgc3ViamVjdCBwcmVmaXgNCj4gbGlrZSAnW1BB
VENIIDEvM10nIC4uLg0KDQpBbm90aGVyIDIgcGF0Y2hlcyBhcmUgZm9yIGRyaXZlciwgc28gSSBk
aWRuJ3Qgc2VuZCB0aGVtIHRvIHlvdSwgeWVzLCBJIHNob3VsZCB1c2UNCnRoZSBzdWJqZWN0IHBy
ZWZpeCBsaWtlICdbUEFUQ0ggMS8zXScgdG8gYXZvaWQgY29uZnVzaW5nLCB3aWxsIHBheSBhdHRl
bnRpb24gdGhpcy4NCg0KVGhhbmtzDQpMaSBKdW4NCj4gDQo+IFRoZSBwYXRjaGVzIGxvb2sgZ29v
ZCB0byBtZS4gIEFwcGxpZWQgYWxsIDMsIHRoYW5rcy4NCj4gDQo+IFNoYXduDQo+IA0KPiA+IC0t
LQ0KPiA+ICBkcml2ZXJzL2Nsay9pbXgvY2xrLWlteDhtbS5jIHwgMiArLQ0KPiA+ICAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gPg0KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2Nsay9pbXgvY2xrLWlteDhtbS5jDQo+ID4gYi9kcml2ZXJzL2Nsay9pbXgv
Y2xrLWlteDhtbS5jIGluZGV4IDZiOGU3NWQuLjczNWNmOWQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJp
dmVycy9jbGsvaW14L2Nsay1pbXg4bW0uYw0KPiA+ICsrKyBiL2RyaXZlcnMvY2xrL2lteC9jbGst
aW14OG1tLmMNCj4gPiBAQCAtNjMxLDcgKzYzMSw3IEBAIHN0YXRpYyBpbnQgX19pbml0IGlteDht
bV9jbG9ja3NfaW5pdChzdHJ1Y3QgZGV2aWNlX25vZGUNCj4gKmNjbV9ub2RlKQ0KPiA+ICAJY2xr
c1tJTVg4TU1fQ0xLX1VBUlQyX1JPT1RdID0gaW14X2Nsa19nYXRlNCgidWFydDJfcm9vdF9jbGsi
LCAidWFydDIiLA0KPiBiYXNlICsgMHg0NGEwLCAwKTsNCj4gPiAgCWNsa3NbSU1YOE1NX0NMS19V
QVJUM19ST09UXSA9IGlteF9jbGtfZ2F0ZTQoInVhcnQzX3Jvb3RfY2xrIiwgInVhcnQzIiwNCj4g
YmFzZSArIDB4NDRiMCwgMCk7DQo+ID4gIAljbGtzW0lNWDhNTV9DTEtfVUFSVDRfUk9PVF0gPSBp
bXhfY2xrX2dhdGU0KCJ1YXJ0NF9yb290X2NsayIsICJ1YXJ0NCIsDQo+IGJhc2UgKyAweDQ0YzAs
IDApOw0KPiA+IC0JY2xrc1tJTVg4TU1fQ0xLX1VTQjFfQ1RSTF9ST09UXSA9IGlteF9jbGtfZ2F0
ZTQoInVzYjFfY3RybF9yb290X2NsayIsDQo+ICJ1c2JfY29yZV9yZWYiLCBiYXNlICsgMHg0NGQw
LCAwKTsNCj4gPiArCWNsa3NbSU1YOE1NX0NMS19VU0IxX0NUUkxfUk9PVF0gPQ0KPiA+ICtpbXhf
Y2xrX2dhdGU0KCJ1c2IxX2N0cmxfcm9vdF9jbGsiLCAidXNiX2J1cyIsIGJhc2UgKyAweDQ0ZDAs
IDApOw0KPiA+ICAJY2xrc1tJTVg4TU1fQ0xLX0dQVTNEX1JPT1RdID0gaW14X2Nsa19nYXRlNCgi
Z3B1M2Rfcm9vdF9jbGsiLA0KPiAiZ3B1M2RfZGl2IiwgYmFzZSArIDB4NDRmMCwgMCk7DQo+ID4g
IAljbGtzW0lNWDhNTV9DTEtfVVNESEMxX1JPT1RdID0gaW14X2Nsa19nYXRlNCgidXNkaGMxX3Jv
b3RfY2xrIiwNCj4gInVzZGhjMSIsIGJhc2UgKyAweDQ1MTAsIDApOw0KPiA+ICAJY2xrc1tJTVg4
TU1fQ0xLX1VTREhDMl9ST09UXSA9IGlteF9jbGtfZ2F0ZTQoInVzZGhjMl9yb290X2NsayIsDQo+
ID4gInVzZGhjMiIsIGJhc2UgKyAweDQ1MjAsIDApOw0KPiA+IC0tDQo+ID4gMi43LjQNCj4gPg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
