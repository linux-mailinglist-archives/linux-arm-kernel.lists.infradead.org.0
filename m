Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA12F127F68
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 16:35:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d7HVCLKAHtoBAKV4vZplwkxzd1nrTmv3Rwbg0z6sK5A=; b=dwjozFusHsWdzT
	4Yjn6AtGrmo1kv8iSBSMbyirNlSLov/qqRGqDUXnrs9XDynNKS1odnDv/ElSR5CiRiCTQm2pDvyIi
	90sj0dHSKOO9cuVsS5Yfg6sYdaFDFlBVEGQydi9OoApOq43TJxWRQiep9DYncgEG4+0oV3cB1N2HR
	WrpKc82e48vCCZmO5EEOiDLiS9oOw+XprBG5nAqV9paO7MtradZ1pX68SAnd7aJlF4DSuKK9Y5Z1c
	SYfrtyDVxeOScrj9jh9yfAX2hDuByVv0UyHBWJeVsFUIVwnXhgWdiRFIhwkOb38BO4TyOI0KC2SWk
	Y1IvrA1nrZ+z09mDKbLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiKJM-0000fF-6t; Fri, 20 Dec 2019 15:35:28 +0000
Received: from mail-eopbgr60051.outbound.protection.outlook.com ([40.107.6.51]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiKJB-0000ep-9t
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 15:35:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Si4byBMvxKpdaOsG23aONf6YTY/1QG6afEfkAKotd/lavTSrnyRyKnzLpZWfwdkcR7BsHRubuqer3+WD9ord/c0C7n+EjHIrbPTJJnJPVEC+GQkSO/S0wZd7GM8ySr6Vlo+KeJoNLW1FJlZUcbBiJ/YKXNrxY3RIe5z3yDy1rw78F6aIgk2UzdtNjzow3psd1yeQzDQOO1XoPkB/XZh67onoi7HKRaAZIR6WZN3Rn5rJh1OtxM98gGsy5hZZX1deYIg5Njg+ypWL69F2CsqPzP6MdgYsLUsI3yekZEm1GUmZ2oCkI7dnFwpvLAqNGAxOx1gE9VMDbiRG4gLpIZRtAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PApH7BUQX9YuflRaU+wSQh6Zv676ECVU2n9NaeUm004=;
 b=ersGM/tbUZCXGSXh8VoSdIxGkzETvhFOy+I7K4cfZQxUV693LVRWoQsHoC6PKcrhZYeRxKPmtyEolZj8c/yEaup1z229WcxR5PV7LkinXr0OxEf6fk0mCheTzpS911JznxlfOqQjL7ZEWCQfkVChC76A33+Wkj6b+2PiPa/rTCOvrqTP4QcMAjIQof9MzN7UyjZvrONdy6VrC20U14J7TIDb9dXvxRO/9PZyKJr/Tc9np0efIz6ArZ96wmmHX2PZMplBFcKuSapJfD1n8Z39wzOmHeCwA4UueMa+F12dLjIMUsJYCtjt2ubwCG88JB+/JQFM0AZkJWCi0ndbwSL5Ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PApH7BUQX9YuflRaU+wSQh6Zv676ECVU2n9NaeUm004=;
 b=JTq+wzXQVauAQ+QzTm4QBVBj/CUFqdlk49RZCIwzDSIMXoWHh1QbRD0IspoH+H30ZkniDZvaKNq796HISm946FnQ9bKy5d4jqxkJnLVtjG3y1ypVhx3Twtdw7AHbkOeAGNc3B7Oo6rzMFZtGMmBCvdYZsV9WvOt9lhpn6m7ro1k=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4092.eurprd04.prod.outlook.com (52.135.131.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.18; Fri, 20 Dec 2019 15:35:13 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::b40b:46af:9458:f2df]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::b40b:46af:9458:f2df%6]) with mapi id 15.20.2559.016; Fri, 20 Dec 2019
 15:35:13 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Marc Zyngier <maz@kernel.org>
Subject: RE: [PATCH V3 2/2] drivers/irqchip: add NXP INTMUX interrupt
 multiplexer support
Thread-Topic: [PATCH V3 2/2] drivers/irqchip: add NXP INTMUX interrupt
 multiplexer support
Thread-Index: AQHVt0CZN4VDSg4vrkOd54zakVbswKfDIpPAgAADdJA=
Date: Fri, 20 Dec 2019 15:35:13 +0000
Message-ID: <DB7PR04MB4618AA66F59D5D99D81CC245E62D0@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <1576827431-31942-1-git-send-email-qiangqing.zhang@nxp.com>
 <1576827431-31942-3-git-send-email-qiangqing.zhang@nxp.com>
 <ad5165ba-24d7-ceeb-8794-cdbe4e564bd5@ti.com>
 <DB7PR04MB4618B9A227807CCF884910C6E62D0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <8bc6bcf113cce13816c62c166f091785@www.loen.fr>
 <DB7PR04MB4618A390C538DCD6929DE998E62D0@DB7PR04MB4618.eurprd04.prod.outlook.com>
In-Reply-To: <DB7PR04MB4618A390C538DCD6929DE998E62D0@DB7PR04MB4618.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [117.81.222.152]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f72822e6-b633-4f9f-716e-08d785623490
x-ms-traffictypediagnostic: DB7PR04MB4092:|DB7PR04MB4092:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB409245B79B7A9BBBAA5A1964E62D0@DB7PR04MB4092.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:229;
x-forefront-prvs: 025796F161
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(136003)(346002)(39860400002)(376002)(13464003)(189003)(199004)(5660300002)(7696005)(6916009)(316002)(54906003)(186003)(66476007)(66446008)(66946007)(7416002)(4326008)(2906002)(86362001)(26005)(8676002)(52536014)(8936002)(81156014)(81166006)(66556008)(64756008)(55016002)(478600001)(71200400001)(76116006)(9686003)(53546011)(6506007)(4001150100001)(33656002)(2940100002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4092;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5+1A22t6R9jKmrEespszsNryN5fPyCPvlgito1dyCh/Jr3E3GjM1L1T/+GHDfGvsZKA/IAPK47ALF9t5H3goMSYcnpIuZqbbBFVzO6VmoUNYoYBjdk9tEkHu+TY0CzzC9fpVyc2Gt32SNeyz0m+VtQvCKiuvyIaHSGBgJMgYJDsvuN24tVA/fk3iHPjwS2AQggKtXBSlZnJQaGpBCdeFuIAXAl/Zu1LWlrtgvU6KvVw0Vl/8BF89JvSvfKIryEQ3860YM1RVfBNRIabu3CQb8bvx1q6ofj33zrZg009k4YvRvvAc+b/3nUT0W4CgOHkQrEXbwGXbRf6LFogk8rpa6ynNm+oNSfG9wWWVRs2BmpIPsVwu9fjhL8tS+mUZ2LG/3QkYclqOLsPjGxAaQpi+3la4vftAIFoxDX6V676+cl24DEn9L5/4k+YplaGDNX54R31/xqO5gTG0e1iWcvBXUGeIVfnDBF8p1+QPSrEao4CUwpw8entpHd6g2NtneHdE
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f72822e6-b633-4f9f-716e-08d785623490
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2019 15:35:13.0785 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HNnxWnnVVgquJsC2fHL5qiorgzrWer9pv7lMdX1qyfUwyh4W2wil7ziJ+ZyqXUrhG3m38F6J+x9mw8UrVCkq0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_073517_404566_0C236716 
X-CRM114-Status: GOOD (  20.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Lokesh Vutla <lokeshvutla@ti.com>,
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

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEpvYWtpbSBaaGFuZw0KPiBT
ZW50OiAyMDE55bm0MTLmnIgyMOaXpSAyMzoyNg0KPiBUbzogJ01hcmMgWnluZ2llcicgPG1hekBr
ZXJuZWwub3JnPg0KPiBDYzogTG9rZXNoIFZ1dGxhIDxsb2tlc2h2dXRsYUB0aS5jb20+OyB0Z2x4
QGxpbnV0cm9uaXguZGU7DQo+IGphc29uQGxha2VkYWVtb24ubmV0OyByb2JoK2R0QGtlcm5lbC5v
cmc7IG1hcmsucnV0bGFuZEBhcm0uY29tOw0KPiBzaGF3bmd1b0BrZXJuZWwub3JnOyBzLmhhdWVy
QHBlbmd1dHJvbml4LmRlOyBBbmR5IER1YW4NCj4gPGZ1Z2FuZy5kdWFuQG54cC5jb20+OyBTLmou
IFdhbmcgPHNoZW5naml1LndhbmdAbnhwLmNvbT47DQo+IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5l
bC5vcmc7IGRsLWxpbnV4LWlteCA8bGludXgtaW14QG54cC5jb20+Ow0KPiBrZXJuZWxAcGVuZ3V0
cm9uaXguZGU7IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0
OiBSRTogW1BBVENIIFYzIDIvMl0gZHJpdmVycy9pcnFjaGlwOiBhZGQgTlhQIElOVE1VWCBpbnRl
cnJ1cHQNCj4gbXVsdGlwbGV4ZXIgc3VwcG9ydA0KPiANCj4gDQo+ID4gLS0tLS1PcmlnaW5hbCBN
ZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBNYXJjIFp5bmdpZXIgPG1hekBrZXJuZWwub3JnPg0KPiA+
IFNlbnQ6IDIwMTnlubQxMuaciDIw5pelIDIyOjIwDQo+ID4gVG86IEpvYWtpbSBaaGFuZyA8cWlh
bmdxaW5nLnpoYW5nQG54cC5jb20+DQo+ID4gQ2M6IExva2VzaCBWdXRsYSA8bG9rZXNodnV0bGFA
dGkuY29tPjsgdGdseEBsaW51dHJvbml4LmRlOw0KPiA+IGphc29uQGxha2VkYWVtb24ubmV0OyBy
b2JoK2R0QGtlcm5lbC5vcmc7IG1hcmsucnV0bGFuZEBhcm0uY29tOw0KPiA+IHNoYXduZ3VvQGtl
cm5lbC5vcmc7IHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU7IEFuZHkgRHVhbg0KPiA+IDxmdWdhbmcu
ZHVhbkBueHAuY29tPjsgUy5qLiBXYW5nIDxzaGVuZ2ppdS53YW5nQG54cC5jb20+Ow0KPiA+IGxp
bnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGRsLWxpbnV4LWlteCA8bGludXgtaW14QG54cC5j
b20+Ow0KPiA+IGtlcm5lbEBwZW5ndXRyb25peC5kZTsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnDQo+ID4gU3ViamVjdDogUkU6IFtQQVRDSCBWMyAyLzJdIGRyaXZlcnMvaXJx
Y2hpcDogYWRkIE5YUCBJTlRNVVggaW50ZXJydXB0DQo+ID4gbXVsdGlwbGV4ZXIgc3VwcG9ydA0K
PiA+DQo+ID4gT24gMjAxOS0xMi0yMCAxNDoxMCwgSm9ha2ltIFpoYW5nIHdyb3RlOg0KPiA+ID4+
IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPj4gRnJvbTogTG9rZXNoIFZ1dGxhIDxs
b2tlc2h2dXRsYUB0aS5jb20+DQo+ID4NCj4gPiBbLi4uXQ0KPiA+DQo+ID4gPj4gRG9lcyB0aGUg
dXNlciBjYXJlIHRvIHdoaWNoIGNoYW5uZWwgZG9lcyB0aGUgaW50ZXJydXB0IHNvdXJjZSBnb2Vz
DQo+ID4gPj4gdG8/IElmIG5vdCwgaW50ZXJydXB0LWNlbGxzIGluIERUIGNhbiBqdXN0IGJlIGEg
c2luZ2xlIGVudHJ5IGFuZA0KPiA+ID4+IHRoZSBjaGFubmVsIHNlbGVjdGlvbiBjYW4gYmUgY29u
dHJvbGxlZCBieSB0aGUgZHJpdmVyIG5vPyBJIGFtDQo+ID4gPj4gdHJ5aW5nIHRvIHVuZGVyc3Rh
bmQgd2h5IHVzZXIgc2hvdWxkIHNwZWNpZnkgdGhlIGNoYW5uZWwgbm8uDQo+ID4gPiBIaSBMb2tl
c2gsDQo+ID4gPg0KPiA+ID4gSWYgYSBmaXhlZCBjaGFubmVsIGlzIHNwZWNpZmllZCBpbiB0aGUg
ZHJpdmVyLCBhbGwgaW50ZXJydXB0IHNvdXJjZXMNCj4gPiA+IHdpbGwgYmUgY29ubmVjdGVkIHRv
IHRoaXMgY2hhbm5lbCwgYWZmZWN0aW5nIHRoZSBpbnRlcnJ1cHQgcHJpb3JpdHkNCj4gPiA+IHRv
IHNvbWUgZXh0ZW50Lg0KPiA+ID4NCj4gPiA+IEZyb20gbXkgcG9pbnQgb2YgdmlldywgYSBmaXhl
ZCBjaGFubmVsIGNvdWxkIGJlIGVub3VnaCBpZiBkb24ndCBjYXJlDQo+ID4gPiBpbnRlcnJ1cHQg
cHJpb3JpdHkuDQo+ID4NCj4gPiBIb2xkIG9uIGEgc2VjOg0KPiA+DQo+ID4gSXMgdGhlIGNoYW5u
ZWwgdG8gd2hpY2ggYW4gaW50ZXJydXB0IGlzIHJvdXRlZCB0byBwcm9ncmFtbWFibGU/IFdoYXQN
Cj4gPiBoYXMgdGhlIHByaW9yaXR5IG9mIHRoZSBpbnRlcnJ1cHQgdG8gZG8gd2l0aCB0aGlzPyBI
b3cgZG9lcyB0aGlzDQo+ID4gYWZmZWN0IGludGVycnVwdCBkZWxpdmVyeT8NCj4gPg0KPiA+IEl0
IGxvb2tzIGxpa2UgdGhpcyBIVyBkb2VzIG1vcmUgdGhhdCB5b3UgaW5pdGlhbGx5IGV4cGxhaW5l
ZC4uLg0KPiBIaSBNYXJjLA0KPiANCj4gVGhlIGNoYW5uZWwgdG8gd2hpY2ggYW4gaW50ZXJydXB0
IGlzIHJvdXRlZCB0byBpcyBub3QgcHJvZ3JhbW1hYmxlLiBFYWNoDQo+IGNoYW5uZWwgaGFzIHRo
ZSBzYW1lIDMyIGludGVycnVwdCBzb3VyY2VzLg0KPiBFYWNoIGNoYW5uZWwgaGFzIG1hc2ssIHVu
bWFzayBhbmQgc3RhdHVzIHJlZ2lzdGVyLg0KPiBJZiB1c2UgMSBjaGFubmVsLCAzMiBpbnRlcnJ1
cHQgc291cmNlcyBpbnB1dCBhbmQgMSBpbnRlcnJ1cHQgb3V0cHV0Lg0KPiBJZiB1c2UgMiBjaGFu
bmVscywgMzIgaW50ZXJydXB0IHNvdXJjZXMgaW5wdXQgYW5kIDIgaW50ZXJydXB0cyBvdXRwdXQu
DQo+IEFuZCBzbyBvbi4gWW91IGNhbiBzZWUgYWJvdmUgSU5UTVVYIGJsb2NrIGRpYWdyYW0uIFRo
aXMgaXMgaG93IEhXIHdvcmtzLg0KPiANCj4gRm9yIGV4YW1wbGU6DQo+IDEpIHVzZSAxIGNoYW5u
ZWw6DQo+IFdlIGNhbiBlbmFibGUgMH4zMSBpbnRlcnJ1cHQgaW4gY2hhbm5lbCAwLiBBbmQgMSBp
bnRlcnJ1cHQgb3V0cHV0LiBJZiBnZW5lcmF0ZQ0KPiBpbnRlcnJ1cHQsIHdlIGNhbm5vdCBmaWd1
cmUgb3V0IHdoaWNoIGhhbGYgaGFwcGVuZWQgZmlyc3QuDQo+IDIpdXNlIDIgY2hhbm5lbHM6DQo+
IFdlIGNhbiBlbmFibGUgMH4xNSBpbnRlcnJ1cHQgaW4gY2hhbm5lbCAwLCBhbmQgZW5hYmxlIDE2
fjMxIGluIGNoYW5uZWwgMS4NCj4gQW5kIDIgaW50ZXJydXB0cyBvdXRwdXQuIElmIGdlbmVyYXRl
IGludGVycnVwdCwgYXQgbGVhc3Qgd2UgY2FuIGZpbmQgY2hhbm5lbCAwIG9yDQo+IGNoYW5uZWwg
MSBmaXJzdC4gVGhlbiBmaW5kIDB+MTUgb3IgMTZ+MzEgZmlyc3QuDQo+IA0KPiBUaGlzIGlzIG15
IHVuZGVyc3RhbmRpbmcgb2YgdGhlIGludGVycnVwdCBwcmlvcml0eSBmcm9tIHRoaXMgaW50bXV4
LCBJIGRvbid0DQo+IGtub3cgaWYgaXQgaXMgbXkgbWlzdW5kZXJzdGFuZGluZy4NCg0KU28gYXNz
aWduIGludGVycnVwdCBzb3VyY2VzIHRvIG11bHRpLWNoYW5uZWxzIHdpbGwgZ2VuZXJhdGUgbXVs
dGktaW50ZXJydXB0IG91dHB1dC4gQW5kIHRoZXNlIG91dHB1dCBpbnRlcnJ1cHRzIGFyZSBzZXF1
ZW50aWFsLiBDb3VsZCB0aGlzIGJlIGludGVycHJldGVkIGFzIGludGVycnVwdCBwcmlvcml0eT8N
Cg0KQmVzdCBSZWdhcmRzLA0KSm9ha2ltIFpoYW5nDQo+IEJlc3QgUmVnYXJkcywNCj4gSm9ha2lt
IFpoYW5nDQo+ID4gICAgICAgICAgTS4NCj4gPiAtLQ0KPiA+IEphenogaXMgbm90IGRlYWQuIEl0
IGp1c3Qgc21lbGxzIGZ1bm55Li4uDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
