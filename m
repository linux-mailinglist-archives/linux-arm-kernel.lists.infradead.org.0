Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90DF914595
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 09:53:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sdVxMEECGbWyKJVMsP/oE9nbwJ39qnGwc83QTS8pe5Y=; b=Cx59pPAOEN117y
	kfPnVX35ZEPMNxpvHu0vLL+i+v5lGwhWzbQ52NTXblOXrEXhG4QQjI56mkSQvPzMKGcbHNszpDMEY
	0lNCqQBR+7xhT5ZMxFfi54HwVypQq9E7pUMevWxRFxkzyhnwU5GyaTOAU4edz23x/NQ8lsNW84dAb
	bvvqoSKjKkKNoVp1d4Nj02093H7lIU8coSNC66bcIU6P9S8MVglpRUOMOr+qhdeg0AXnUVfV/pIeJ
	y3u8ujRtsJSUERIut8TO58sz7MYA66sM4Z/wivezFB5RMN8e4PnOznOVgRq2xRBFFJ+UpOsng4J6B
	yIby0p9PVSaB0SffhH9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNYRY-0001EV-OX; Mon, 06 May 2019 07:53:48 +0000
Received: from mail-eopbgr80058.outbound.protection.outlook.com ([40.107.8.58]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNYRQ-0001E6-Js
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 07:53:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IiFkih/PKiDm8NrEAnxO5O7j8liu8r0N4XICLcVaPSQ=;
 b=nV8+HwKTDA5FBbPqFO0dRhSyXcZ0NLkZgDeLG7IjxvxVzL86ztZt7NYcHnOjvz9EtblVIMgK+n2rufa7Gqg6IOo+Rz9fJ4NU9Z+1/pOhGxdYgR5t8t9hz/Rz+rjWUbc6OVulqhXVAX/HpbyFlTCRcJLZe/yyt1rRc6v3/hzy5HU=
Received: from AM6PR04MB4357.eurprd04.prod.outlook.com (52.135.167.33) by
 AM6PR04MB5717.eurprd04.prod.outlook.com (20.179.1.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Mon, 6 May 2019 07:53:36 +0000
Received: from AM6PR04MB4357.eurprd04.prod.outlook.com
 ([fe80::f062:7002:6318:780b]) by AM6PR04MB4357.eurprd04.prod.outlook.com
 ([fe80::f062:7002:6318:780b%2]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 07:53:36 +0000
From: Chuanhua Han <chuanhua.han@nxp.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: RE: [EXT] Re: [PATCH 1/2] i2c: imx: I2C Driver doesn't consider
 I2C_IPGCLK_SEL RCW bit when using ls1046a SoC
Thread-Topic: [EXT] Re: [PATCH 1/2] i2c: imx: I2C Driver doesn't consider
 I2C_IPGCLK_SEL RCW bit when using ls1046a SoC
Thread-Index: AQHU/w+WtXmB7zSh+EKM7NDEvi24aqZdwekAgAAA0NA=
Date: Mon, 6 May 2019 07:53:35 +0000
Message-ID: <AM6PR04MB43577E161DA72252741503D297300@AM6PR04MB4357.eurprd04.prod.outlook.com>
References: <20190430044719.30720-1-chuanhua.han@nxp.com>
 <20190506074756.mdegqdhirclipg7q@pengutronix.de>
In-Reply-To: <20190506074756.mdegqdhirclipg7q@pengutronix.de>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=chuanhua.han@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aa2f5c4d-fefa-4644-8032-08d6d1f7f19d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB5717; 
x-ms-traffictypediagnostic: AM6PR04MB5717:
x-ms-exchange-purlcount: 1
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <AM6PR04MB5717A323353C4CBBDE0D66A297300@AM6PR04MB5717.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(376002)(346002)(366004)(136003)(189003)(199004)(13464003)(6506007)(256004)(478600001)(6116002)(14454004)(53546011)(5660300002)(76116006)(66946007)(73956011)(7696005)(66476007)(66556008)(64756008)(66446008)(54906003)(86362001)(8676002)(11346002)(476003)(7416002)(44832011)(446003)(486006)(81166006)(316002)(81156014)(33656002)(52536014)(99286004)(8936002)(66066001)(7736002)(74316002)(3846002)(76176011)(68736007)(26005)(2906002)(102836004)(186003)(6436002)(71200400001)(71190400001)(9686003)(229853002)(6306002)(6916009)(55016002)(4326008)(305945005)(53936002)(25786009)(6246003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5717;
 H:AM6PR04MB4357.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: hCC954mmIvmMQ2PV9T/FZlu6ltErYqBXqcEALzXyyfLldAQV2TU4Tso0nWnLOXj1S14JNrrq5q9PJXv6f6Bx9PZPM2ltl4RC6wwXU5TUKjy6b2sUHqqqydKmrwAQLZk3SSqUbFOuLMwhFEFnE/LFB97IcL3vFn1JkT08bIWzt+m3l8OGDzeqaOJ0XeMznoYO6VuHF5yExrnMC3pwaEQ1AhHHHIkw4A6OxPgzF1Z6r9jBwghYaHvEvIX6Cu+efYwCb4z2oDNrOmTDF8x1ouZ2DfA56SRbheHmgx58P5N/5HK2qXsdEuuFaT5dSgcUTQFxf/VBRfXYfQk4JHUyHAl/p7VbpK+jbeEo8Wqd0JHWiGHOnVFVZNl+DJ5y6JlLaJMP/b6OtaXYy8okJu+HgeimPErlIcFK003wMRkmC96NYLI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa2f5c4d-fefa-4644-8032-08d6d1f7f19d
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 07:53:35.9241 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5717
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_005340_810989_F5AE2CB8 
X-CRM114-Status: GOOD (  32.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.58 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Sumit Batra <sumit.batra@nxp.com>, "eha@deif.com" <eha@deif.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>,
 "wsa+renesas@sang-engineering.com" <wsa+renesas@sang-engineering.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "linux@rempel-privat.de" <linux@rempel-privat.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "peda@axentia.se" <peda@axentia.se>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU2FzY2hhIEhhdWVyIDxz
LmhhdWVyQHBlbmd1dHJvbml4LmRlPg0KPiBTZW50OiAyMDE5xOo11MI2yNUgMTU6NDgNCj4gVG86
IENodWFuaHVhIEhhbiA8Y2h1YW5odWEuaGFuQG54cC5jb20+DQo+IENjOiBzaGF3bmd1b0BrZXJu
ZWwub3JnOyBMZW8gTGkgPGxlb3lhbmcubGlAbnhwLmNvbT47IHJvYmgrZHRAa2VybmVsLm9yZzsN
Cj4gbWFyay5ydXRsYW5kQGFybS5jb207IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7DQo+
IGxpbnV4LWkyY0B2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZzsNCj4gZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGZlc3RldmFtQGdtYWlsLmNv
bTsgZGwtbGludXgtaW14DQo+IDxsaW51eC1pbXhAbnhwLmNvbT47IHdzYStyZW5lc2FzQHNhbmct
ZW5naW5lZXJpbmcuY29tOw0KPiB1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU7IGVoYUBk
ZWlmLmNvbTsgbGludXhAcmVtcGVsLXByaXZhdC5kZTsNCj4gbC5zdGFjaEBwZW5ndXRyb25peC5k
ZTsgcGVkYUBheGVudGlhLnNlOyBTdW1pdCBCYXRyYQ0KPiA8c3VtaXQuYmF0cmFAbnhwLmNvbT4N
Cj4gU3ViamVjdDogW0VYVF0gUmU6IFtQQVRDSCAxLzJdIGkyYzogaW14OiBJMkMgRHJpdmVyIGRv
ZXNuJ3QgY29uc2lkZXINCj4gSTJDX0lQR0NMS19TRUwgUkNXIGJpdCB3aGVuIHVzaW5nIGxzMTA0
NmEgU29DDQo+IA0KPiBDYXV0aW9uOiBFWFQgRW1haWwNCj4gDQo+IEhpLA0KPiANCj4gSW4gY2Fz
ZSB3ZSBlbmQgdXAgd2l0aCB0aGUgaGFuZGxpbmcgb2YgdGhpcyBpc3N1ZSBpbiB0aGUgaTJjIGRy
aXZlciwgaGVyZSBhcmUgdGhlDQo+IHRoaW5ncyB0byBjb25zaWRlciBmb3IgdjIuDQpPayx0aGFu
ayB5b3UgZm9yIHlvdXIgYWR2aWNlIQ0KPiANCj4gT24gVHVlLCBBcHIgMzAsIDIwMTkgYXQgMTI6
NDc6MThQTSArMDgwMCwgQ2h1YW5odWEgSGFuIHdyb3RlOg0KPiA+IFRoZSBjdXJyZW50IGtlcm5l
bCBkcml2ZXIgZG9lcyBub3QgY29uc2lkZXIgSTJDX0lQR0NMS19TRUwgKDQyNCBiaXQgb2YNCj4g
PiBSQ1cpIGluIGRlY2lkaW5nICBpMmNfY2xrX3JhdGUgaW4gZnVuY3Rpb24gaTJjX2lteF9zZXRf
Y2xrKCkgeyAwDQo+ID4gUGxhdGZvcm0gY2xvY2svNCwgMSBQbGF0Zm9ybSBjbG9jay8yfS4NCj4g
Pg0KPiA+IFdoZW4gdXNpbmcgbHMxMDQ2YSBTb0MsIHRoaXMgcG9wdWxhdGVzIGluY29ycmVjdCB2
YWx1ZSBpbiBJQkZEDQo+ID4gcmVnaXN0ZXIgaWYgSTJDX0lQR0NMS19TRUwgPSAwLCB3aGljaCBn
ZW5lcmF0ZXMgaGFsZiBvZiB0aGUgZGVzaXJlZCBDbG9jay4NCj4gPg0KPiA+IFRoZXJlZm9yZSwg
aWYgbHMxMDQ2YSBTb0MgaXMgdXNlZCwgd2UgbmVlZCB0byBzZXQgdGhlIGkyYyBjbG9jaw0KPiA+
IGFjY29yZGluZyB0byB0aGUgY29ycmVzcG9uZGluZyBSQ1cuDQo+ID4NCj4gPiBTaWduZWQtb2Zm
LWJ5OiBTdW1pdCBCYXRyYSA8c3VtaXQuYmF0cmFAbnhwLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5
OiBDaHVhbmh1YSBIYW4gPGNodWFuaHVhLmhhbkBueHAuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2
ZXJzL2kyYy9idXNzZXMvaTJjLWlteC5jIHwgNjQNCj4gPiArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysNCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDY0IGluc2VydGlvbnMoKykNCj4g
Pg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLWlteC5jDQo+ID4gYi9k
cml2ZXJzL2kyYy9idXNzZXMvaTJjLWlteC5jIGluZGV4IDQyMmYxYTQ0NWI1NS4uNzE4NmNmM2M3
ZDI0IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtaW14LmMNCj4gPiAr
KysgYi9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLWlteC5jDQo+ID4gQEAgLTQ1LDYgKzQ1LDggQEAN
Cj4gPiAgI2luY2x1ZGUgPGxpbnV4L3BtX3J1bnRpbWUuaD4NCj4gPiAgI2luY2x1ZGUgPGxpbnV4
L3NjaGVkLmg+DQo+ID4gICNpbmNsdWRlIDxsaW51eC9zbGFiLmg+DQo+ID4gKyNpbmNsdWRlIDxs
aW51eC9mc2wvZ3V0cy5oPg0KPiA+ICsjaW5jbHVkZSA8bGludXgvc3lzX3NvYy5oPg0KPiA+DQo+
ID4gIC8qIFRoaXMgd2lsbCBiZSB0aGUgZHJpdmVyIG5hbWUgdGhlIGtlcm5lbCByZXBvcnRzICov
ICAjZGVmaW5lDQo+ID4gRFJJVkVSX05BTUUgImlteC1pMmMiDQo+ID4gQEAgLTEwOSw2ICsxMTEs
MjEgQEANCj4gPg0KPiA+ICAjZGVmaW5lIEkyQ19QTV9USU1FT1VUICAgICAgICAgICAgICAgMTAg
LyogbXMgKi8NCj4gPg0KPiA+ICsvKiAxNC0xIFNpbmNlIGFycmF5IGluZGV4IHN0YXJ0cyBmcm9t
IDAgKi8gI2RlZmluZQ0KPiA+ICtSQ1dfSTJDX0lQR0NMS19XT1JEICgxNCAtIDEpDQo+ID4gKy8q
DQo+ID4gKyAqIFNldCBtYXNrIGZvciBSQ1cgNDI0dGggYml0LCByZWFkaW5nIGZyb20gRENGR19D
Q1NSIFJDVyBTdGF0dXMNCj4gPiArUmVnaXN0ZXJzDQo+ID4gKyAqIFNpbmNlIHRoaXMgcmVnaXN0
ZXIgaW4gUk0gZGVwaWN0ZWQgYXMgYmlnIGVuZGlhbiwNCj4gPiArICogc28gY29uc2lkZXIgMzFz
dCBiaXQgYXMgTFNCIGZvciBjcmVhdGluZyB0aGUgbWFzay4NCj4gPiArICovDQo+ID4gKyNkZWZp
bmUgUkNXX0kyQ19JUEdDTEtfTUFTSyAgICAweDgwMDAwMA0KPiA+ICtpbnQgaTJjX2lwZ2Nsa19z
ZWwgPSAxOw0KPiANCj4gc2hvdWxkIGJlIHN0YXRpYy4NCj4gDQo+ID4gKw0KPiA+ICtzdGF0aWMg
Y29uc3Qgc3RydWN0IHNvY19kZXZpY2VfYXR0cmlidXRlIGxzMTA0NmFfc29jW10gPSB7DQo+ID4g
KyAgICAgICAgICAgIHsuZmFtaWx5ID0gIlFvcklRIExTMTA0NkEifSwNCj4gPiArICAgICAgICAg
ICAgeyAvKiBzZW50aW5lbCAqLyB9DQo+ID4gK307DQo+ID4gKw0KPiA+ICAvKg0KPiA+ICAgKiBz
b3J0ZWQgbGlzdCBvZiBjbG9jayBkaXZpZGVyLCByZWdpc3RlciB2YWx1ZSBwYWlycw0KPiA+ICAg
KiB0YWtlbiBmcm9tIHRhYmxlIDI2LTUsIHAuMjYtOSwgRnJlZXNjYWxlIGkuTVggQEAgLTMwNCw2
ICszMjEsMTEgQEANCj4gPiBzdGF0aWMgY29uc3Qgc3RydWN0IHBsYXRmb3JtX2RldmljZV9pZCBp
bXhfaTJjX2RldnR5cGVbXSA9IHsgIH07DQo+ID4gTU9EVUxFX0RFVklDRV9UQUJMRShwbGF0Zm9y
bSwgaW14X2kyY19kZXZ0eXBlKTsNCj4gPg0KPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2Rl
dmljZV9pZCBndXRzX2RldmljZV9pZHNbXSA9IHsNCj4gPiArICAgICB7IC5jb21wYXRpYmxlID0g
ImZzbCxxb3JpcS1kZXZpY2UtY29uZmlnIiwgfSwNCj4gPiArICAgICB7fQ0KPiA+ICt9Ow0KPiA+
ICsNCj4gPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgaTJjX2lteF9kdF9pZHNb
XSA9IHsNCj4gPiAgICAgICB7IC5jb21wYXRpYmxlID0gImZzbCxpbXgxLWkyYyIsIC5kYXRhID0g
JmlteDFfaTJjX2h3ZGF0YSwgfSwNCj4gPiAgICAgICB7IC5jb21wYXRpYmxlID0gImZzbCxpbXgy
MS1pMmMiLCAuZGF0YSA9ICZpbXgyMV9pMmNfaHdkYXRhLCB9LA0KPiA+IEBAIC01MzMsNiArNTU1
LDkgQEAgc3RhdGljIHZvaWQgaTJjX2lteF9zZXRfY2xrKHN0cnVjdCBpbXhfaTJjX3N0cnVjdA0K
PiAqaTJjX2lteCwNCj4gPiAgICAgICB1bnNpZ25lZCBpbnQgZGl2Ow0KPiA+ICAgICAgIGludCBp
Ow0KPiA+DQo+ID4gKyAgICAgaWYgKCFpMmNfaXBnY2xrX3NlbCkNCj4gPiArICAgICAgICAgICAg
IGkyY19jbGtfcmF0ZSA9IGkyY19jbGtfcmF0ZSAvIDI7DQo+IA0KPiBJdCB3b3VsZCBiZSBuaWNl
IHRvIGhhdmUgdGhlIHZhcmlhYmxlIGludmVydGVkLiBZb3Ugd291bGRuJ3QgaGF2ZSB0byBpbml0
aWFsaXplIGENCj4gZ2xvYmFsIHZhcmlhYmxlIHdpdGggc29tZXRoaW5nIGVsc2UgYnV0IDAgdGhl
bi4NCj4gDQo+ID4gKw0KPiA+ICAgICAgIC8qIERpdmlkZXIgdmFsdWUgY2FsY3VsYXRpb24gKi8N
Cj4gPiAgICAgICBpZiAoaTJjX2lteC0+Y3VyX2NsayA9PSBpMmNfY2xrX3JhdGUpDQo+ID4gICAg
ICAgICAgICAgICByZXR1cm47DQo+ID4gQEAgLTU1MSw2ICs1NzYsMTAgQEAgc3RhdGljIHZvaWQg
aTJjX2lteF9zZXRfY2xrKHN0cnVjdCBpbXhfaTJjX3N0cnVjdA0KPiAqaTJjX2lteCwNCj4gPiAg
ICAgICAvKiBTdG9yZSBkaXZpZGVyIHZhbHVlICovDQo+ID4gICAgICAgaTJjX2lteC0+aWZkciA9
IGkyY19jbGtfZGl2W2ldLnZhbDsNCj4gPg0KPiA+ICsgICAgIHByX2FsZXJ0KCJbJXNdIENMSyBS
YXRlPSV1IEJpdHJhdGUgPSV1IERpdiA9JXUgVmFsdWUgPSVkXG4iLA0KPiA+ICsgICAgICAgICAg
ICAgIF9fZnVuY19fLCBpMmNfY2xrX3JhdGUsIGkyY19pbXgtPmJpdHJhdGUsDQo+ID4gKyAgICAg
ICAgICAgICAgZGl2LCBpMmNfY2xrX2RpdltpXS52YWwpOw0KPiANCj4gUGxlYXNlIGRyb3AgeW91
ciBkZWJ1Z2dpbmcgYWlkcywgZm9yIHN1cmUgdGhleSBzaG91bGRuJ3QgYmUgcHJfYWxlcnQuDQo+
IA0KPiA+ICsNCj4gPiAgICAgICAvKg0KPiA+ICAgICAgICAqIFRoZXJlIGR1bW15IGRlbGF5IGlz
IGNhbGN1bGF0ZWQuDQo+ID4gICAgICAgICogSXQgc2hvdWxkIGJlIGFib3V0IG9uZSBJMkMgY2xv
Y2sgcGVyaW9kIGxvbmcuDQo+ID4gQEAgLTExMTYsNiArMTE0NSw5IEBAIHN0YXRpYyBpbnQgaTJj
X2lteF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlDQo+ICpwZGV2KQ0KPiA+ICAgICAgIGlu
dCBpcnEsIHJldDsNCj4gPiAgICAgICBkbWFfYWRkcl90IHBoeV9hZGRyOw0KPiA+ICAgICAgIHUz
MiBtdWxfdmFsdWU7DQo+ID4gKyAgICAgc3RydWN0IGRldmljZV9ub2RlICpndXRzX25vZGU7DQo+
ID4gKyAgICAgc3RhdGljIHN0cnVjdCBjY3NyX2d1dHMgX19pb21lbSAqZ3V0c19yZWdzOw0KPiA+
ICsgICAgIHUzMiByY3dfcmVnOw0KPiA+DQo+ID4gICAgICAgZGV2X2RiZygmcGRldi0+ZGV2LCAi
PCVzPlxuIiwgX19mdW5jX18pOw0KPiA+DQo+ID4gQEAgLTExMzUsNiArMTE2NywzOCBAQCBzdGF0
aWMgaW50IGkyY19pbXhfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZQ0KPiAqcGRldikNCj4g
PiAgICAgICBpZiAoIWkyY19pbXgpDQo+ID4gICAgICAgICAgICAgICByZXR1cm4gLUVOT01FTTsN
Cj4gPg0KPiA+ICsgICAgIGlmIChzb2NfZGV2aWNlX21hdGNoKGxzMTA0NmFfc29jKSkgew0KPiA+
ICsgICAgICAgICAgICAgLyoNCj4gPiArICAgICAgICAgICAgICAqIE1ha2UgZGV2aWNlIG5vZGUg
Zm9yIEdVVFMvRENGRyAoZ2xvYmFsIHV0aWxpdGllcyBibG9jaykNCj4gPiArICAgICAgICAgICAg
ICAqIHRvIHJlYWQgUkNXLg0KPiA+ICsgICAgICAgICAgICAgICovDQo+ID4gKyAgICAgICAgICAg
ICBndXRzX25vZGUgPSBvZl9maW5kX21hdGNoaW5nX25vZGUoTlVMTCwNCj4gZ3V0c19kZXZpY2Vf
aWRzKTsNCj4gPiArICAgICAgICAgICAgIGlmICghZ3V0c19ub2RlKSB7DQo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgIGRldl9lcnIoJnBkZXYtPmRldiwgIkNvdWxkIG5vdCBmaW5kIEdVVFMNCj4g
bm9kZVxuIik7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHJldHVybiAtRU5PREVWOw0KPiA+
ICsgICAgICAgICAgICAgfQ0KPiA+ICsgICAgICAgICAgICAgLyoNCj4gPiArICAgICAgICAgICAg
ICAqIE1lbW9yeSAoSU8pICBNQVAgdGhlIERDRkcgcmVnaXN0ZXJzKGZvciBSQ1cpIHRvDQo+ID4g
KyAgICAgICAgICAgICAgKiBiZSB1c2VkIGluIGtlcm5lbCB2aXJ0dWFsIGFkZHJlc3Mgc3BhY2Uu
DQo+ID4gKyAgICAgICAgICAgICAgKi8NCj4gPiArICAgICAgICAgICAgIGd1dHNfcmVncyA9IG9m
X2lvbWFwKGd1dHNfbm9kZSwgMCk7DQo+ID4gKyAgICAgICAgICAgICBvZl9ub2RlX3B1dChndXRz
X25vZGUpOw0KPiA+ICsgICAgICAgICAgICAgaWYgKCFndXRzX3JlZ3MpIHsNCj4gPiArICAgICAg
ICAgICAgICAgICAgICAgZGV2X2VycigmcGRldi0+ZGV2LCAiSU9SRU1BUCBvZiBHVVRTIG5vZGUN
Cj4gZmFpbGVkXG4iKTsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07
DQo+ID4gKyAgICAgICAgICAgICB9DQo+ID4gKyAgICAgICAgICAgICAvKiBSZWFkIHJjdyBiaXQg
NDI0IChzdGFydGluZyBmcm9tIDApICovDQo+ID4gKyAgICAgICAgICAgICByY3dfcmVnID0NCj4g
aW9yZWFkMzJiZSgmZ3V0c19yZWdzLT5yY3dzcltSQ1dfSTJDX0lQR0NMS19XT1JEXSk7DQo+ID4g
KyAgICAgICAgICAgICBwcl9hbGVydCgiUkNXIFJFR1slZF09MHgleFxuIiwgUkNXX0kyQ19JUEdD
TEtfV09SRCwNCj4gcmN3X3JlZyk7DQo+ID4gKyAgICAgICAgICAgICBpZiAocmN3X3JlZyAmIFJD
V19JMkNfSVBHQ0xLX01BU0spIHsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgcHJfYWxlcnQo
IkRpdiBieSAyIENhc2UgRGV0ZWN0ZWQgaW4gUkNXXG4iKTsNCj4gPiArICAgICAgICAgICAgICAg
ICAgICAgaTJjX2lwZ2Nsa19zZWwgPSAxOw0KPiA+ICsgICAgICAgICAgICAgfSBlbHNlIHsNCj4g
PiArICAgICAgICAgICAgICAgICAgICAgcHJfYWxlcnQoIkRpdiBieSA0IENhc2UgRGV0ZWN0ZWQg
aW4gUkNXXG4iKTsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgaTJjX2lwZ2Nsa19zZWwgPSAw
Ow0KPiA+ICsgICAgICAgICAgICAgfQ0KPiA+ICsgICAgIH0NCj4gDQo+IFRoaXMgaXMgZG9uZSBv
bmNlIHBlciBpMmMgY29udHJvbGxlciwgYnV0IGl0IHNldHMgYSB2YXJpYWJsZSB2YWxpZCBmb3Ig
YWxsIGNvbnRyb2xsZXJzLg0KPiBFaXRoZXIgZXhlY3V0ZSB0aGlzIGNvZGUgb25jZSBvdXRzaWRl
IG9mIGRldmljZSBzcGVjaWZpYyBjb250ZXh0IG9yIHVzZSBhDQo+IHZhcmlhYmxlIGluIGRyaXZl
ciBkYXRhIGFuZCBub3QgYSBnbG9iYWwgb25lLg0KPiANCj4gU2FzY2hhDQo+IA0KPiAtLQ0KPiBQ
ZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfA0KPiB8DQo+IEluZHVz
dHJpYWwgTGludXggU29sdXRpb25zICAgICAgICAgICAgICAgICB8DQo+IGh0dHBzOi8vZXVyMDEu
c2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwJTNBJTJGJTJGd3d3LnBl
DQo+IG5ndXRyb25peC5kZSUyRiZhbXA7ZGF0YT0wMiU3QzAxJTdDY2h1YW5odWEuaGFuJTQwbnhw
LmNvbSU3QzdjMA0KPiBkNjIxYWQ0YmI0NjIxN2NmMTA4ZDZkMWY3MzNlMSU3QzY4NmVhMWQzYmMy
YjRjNmZhOTJjZDk5YzVjMzAxNjMNCj4gNSU3QzAlN0MwJTdDNjM2OTI3MjU2OTg3OTkyMzE1JmFt
cDtzZGF0YT1Pd0RGS0N2OEpWeXZsWHJiVmhSSjANCj4gJTJGTmJyNXVJN1d0UXc5MmpyWHlSTXNn
JTNEJmFtcDtyZXNlcnZlZD0wICB8DQo+IFBlaW5lciBTdHIuIDYtOCwgMzExMzcgSGlsZGVzaGVp
bSwgR2VybWFueSB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMA0KPiB8DQo+IEFtdHNnZXJpY2h0
IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDoNCj4gKzQ5LTUxMjEtMjA2OTE3
LTU1NTUgfA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
