Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0332B02A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 10:27:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7mlvErMzQWK4x250Rhm957QZUaQOYRRIDceMkK6IiIo=; b=KUx3cwt+nN0wcS
	NXQNxMHcrE624NgWzkuU1SSSTpUDhu2TwACtgi1ul1LRN88AOSb4k5K+aFCogxRw8RBa9FmZVeeol
	Ok6RLDE3dSq6usxuMGAduF/glzRYcDDZZZzDwBZ3hFbwglTMgabZIaNwcsWBxg20Adsk4/MFhRwEi
	TcKmmwcDFJYVV4BIm31WyS29YpJTuRgR/n1KZ0Zv/64Oijkj7FMQmqV7tEpb33WJfZ7RlVNXWXD/W
	uFnVnA0HjBeHzpYyG+VzULJucTWSxHQ31s0KjG20ogdkTcPqc7x+b79vtH+INyqj6L8lwSOdI0VnF
	JqnIUUk6E680QcDX+rqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVAyo-0004l1-9P; Mon, 27 May 2019 08:27:38 +0000
Received: from mail-he1eur04on0617.outbound.protection.outlook.com
 ([2a01:111:f400:fe0d::617]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVAyh-0004kB-TP
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 08:27:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zFNKVrfhO5x9hzNK0VbeADDNtMTZ/ZXVhzdsfLYLZZA=;
 b=ZQfLiU9Q0JWIBHNwZJ3brGyK978MmJvhUJ1+8V0oGg4SYAskjcy/1Pm/QKH/w++kIgvs/Pk6j3OvYnjkRtDHlhIrg9sC+rz0uhGB7UGZJTK2AvLGSfZvP1+29iPaNqvpm90lmSj6mQ7X5q/dRrqAMBJm6Krt2EsvD2PuVvG967o=
Received: from VI1PR04MB4333.eurprd04.prod.outlook.com (52.134.122.155) by
 VI1PR04MB4031.eurprd04.prod.outlook.com (10.171.182.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Mon, 27 May 2019 08:27:26 +0000
Received: from VI1PR04MB4333.eurprd04.prod.outlook.com
 ([fe80::497a:768:c7b1:34e0]) by VI1PR04MB4333.eurprd04.prod.outlook.com
 ([fe80::497a:768:c7b1:34e0%6]) with mapi id 15.20.1922.021; Mon, 27 May 2019
 08:27:26 +0000
From: Andy Tang <andy.tang@nxp.com>
To: Leo Li <leoyang.li@nxp.com>
Subject: RE: [EXT] Re: [PATCH] arm64: dts: ls1028a: Add temperature sensor node
Thread-Topic: [EXT] Re: [PATCH] arm64: dts: ls1028a: Add temperature sensor
 node
Thread-Index: AQHVEdA5Oph4GV2XbECsbmKrZdLVl6Z63V2AgAPKYSA=
Date: Mon, 27 May 2019 08:27:26 +0000
Message-ID: <VI1PR04MB4333A3E635CFDBD860D3061DF31D0@VI1PR04MB4333.eurprd04.prod.outlook.com>
References: <20190524012151.31840-1-andy.tang@nxp.com>
 <CADRPPNRYwq0NABXobC1jQrT3QMxxm+e6zvoNwoZ-fu6NU9qDMA@mail.gmail.com>
In-Reply-To: <CADRPPNRYwq0NABXobC1jQrT3QMxxm+e6zvoNwoZ-fu6NU9qDMA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=andy.tang@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 93c023bf-5c12-47c9-b227-08d6e27d2697
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR04MB4031; 
x-ms-traffictypediagnostic: VI1PR04MB4031:
x-microsoft-antispam-prvs: <VI1PR04MB4031E9167AD0E7E7598AB0DAF31D0@VI1PR04MB4031.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0050CEFE70
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(346002)(136003)(366004)(376002)(199004)(189003)(13464003)(4326008)(52536014)(102836004)(2906002)(53546011)(55016002)(5660300002)(6862004)(9686003)(8676002)(81166006)(99286004)(229853002)(3846002)(6116002)(14444005)(256004)(81156014)(316002)(6506007)(74316002)(53936002)(6246003)(7696005)(54906003)(6636002)(25786009)(6436002)(76176011)(33656002)(68736007)(14454004)(66066001)(86362001)(44832011)(71200400001)(7736002)(305945005)(71190400001)(486006)(11346002)(446003)(478600001)(476003)(66946007)(73956011)(66556008)(66476007)(66446008)(64756008)(76116006)(26005)(8936002)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4031;
 H:VI1PR04MB4333.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0mOXCrVTSsfkf6zUhJeXkNJUj+2tcJL47Q7Vs6hXLrXoSGj7E6vzwSsiO55mP1KIGMMu8CHCsWWX7L9mABm1SNDxOs8Syf5NtxaPc44jcHkZfujs2VZPB0RCn9S+2yAVvhA4HI54UVA5Ic/xb7eiXU30ujcYam7hXgTdkFn4nfpEYQrfAgjc6J+ZA8tqN2ohEnvqtvBbuEwJmy+qoqj/us5NeRAXl9muj3cbegDiBWkT6w+TJlKuvUBU8z/OE5tkksi1aEiJi478C475Hpu0Tq4f6g0z/OhVhTllt9tKITu0SRx8FctEI5pYzh/m1o4c+7mhAbH/ccY1kCla5ceuT6qUdDUHxL/ZiHSs8FYeorDvUckEbZJBSTxdsC/N+Kt6yEf71mLE0E5ReI0r6D/Mno76kZJ5BOuodFmeT++YNxc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93c023bf-5c12-47c9-b227-08d6e27d2697
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2019 08:27:26.4439 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: andy.tang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_012731_953293_F59843E9 
X-CRM114-Status: GOOD (  20.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0d:0:0:0:617 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, "open list:OPEN
 FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 lkml <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTGVvLA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IExpIFlhbmcg
PGxlb3lhbmcubGlAbnhwLmNvbT4NCj4gU2VudDogMjAxOeW5tDXmnIgyNeaXpSA2OjMyDQo+IFRv
OiBBbmR5IFRhbmcgPGFuZHkudGFuZ0BueHAuY29tPg0KPiBDYzogU2hhd24gR3VvIDxzaGF3bmd1
b0BrZXJuZWwub3JnPjsgUm9iIEhlcnJpbmcgPHJvYmgrZHRAa2VybmVsLm9yZz47DQo+IE1hcmsg
UnV0bGFuZCA8bWFyay5ydXRsYW5kQGFybS5jb20+OyBtb2RlcmF0ZWQgbGlzdDpBUk0vRlJFRVND
QUxFDQo+IElNWCAvIE1YQyBBUk0gQVJDSElURUNUVVJFIDxsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmc+Ow0KPiBvcGVuIGxpc3Q6T1BFTiBGSVJNV0FSRSBBTkQgRkxBVFRFTkVE
IERFVklDRSBUUkVFIEJJTkRJTkdTDQo+IDxkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZz47IGxr
bWwgPGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc+DQo+IFN1YmplY3Q6IFtFWFRdIFJlOiBb
UEFUQ0hdIGFybTY0OiBkdHM6IGxzMTAyOGE6IEFkZCB0ZW1wZXJhdHVyZSBzZW5zb3INCj4gbm9k
ZQ0KPiANCj4gQ2F1dGlvbjogRVhUIEVtYWlsDQo+IA0KPiBPbiBUaHUsIE1heSAyMywgMjAxOSBh
dCA4OjMwIFBNIFl1YW50aWFuIFRhbmcgPGFuZHkudGFuZ0BueHAuY29tPg0KPiB3cm90ZToNCj4g
Pg0KPiA+IEFkZCBueHAgc2E1NjAwNCBjaGlwIG5vZGUgZm9yIHRlbXBlcmF0dXJlIG1vbml0b3Iu
DQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBZdWFudGlhbiBUYW5nIDxhbmR5LnRhbmdAbnhwLmNv
bT4NCj4gPiAtLS0NCj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAy
OGEtcWRzLmR0cyB8IDUgKysrKysNCj4gPiBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9m
c2wtbHMxMDI4YS1yZGIuZHRzIHwgNSArKysrKw0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDEwIGlu
c2VydGlvbnMoKykNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2Zy
ZWVzY2FsZS9mc2wtbHMxMDI4YS1xZHMuZHRzDQo+ID4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2Zy
ZWVzY2FsZS9mc2wtbHMxMDI4YS1xZHMuZHRzDQo+ID4gaW5kZXggYjM1OTA2OGQ5NjA1Li4zMWZk
NjI2ZGQzNDQgMTAwNjQ0DQo+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUv
ZnNsLWxzMTAyOGEtcWRzLmR0cw0KPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNj
YWxlL2ZzbC1sczEwMjhhLXFkcy5kdHMNCj4gPiBAQCAtMTMxLDYgKzEzMSwxMSBAQA0KPiA+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJhdG1lbCwyNGM1MTIi
Ow0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDB4NTc+Ow0KPiA+
ICAgICAgICAgICAgICAgICAgICAgICAgIH07DQo+ID4gKw0KPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgIHRlbXBANGMgew0KPiANCj4gVGhlIHJlY29tbWVuZGVkIG5hbWUgZm9yIHRlbXBlcmF0
dXJlIHNlbm9yIGluIGR0cyBzcGVjIGlzDQo+IHRlbXBlcmF0dXJlLXNlbnNvci4NCkkgZGlkbid0
IGZpbmQgdGhlIHNwZWMgZm9yIHRoaXMgcmVjb21tZW5kYXRpb24uIENvdWxkIHlvdSBwbGVhc2Ug
cHJvdmlkZSB0aGUgbGluaz8NCkkgbGlrZSB0byB1cGRhdGUgaXQgdG8gdGVtcC1zZW5zb3IgdGhv
dWdoLg0KDQo+IA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJs
ZSA9ICJueHAsc2E1NjAwNCI7DQo+IA0KPiBUaGUgYmluZGluZyBzYXlzIHRoZSBmb2xsb3dpbmcg
cHJvcGVydHkgaXMgcmVxdWlyZWQuICBJZiBpdCBpcyBub3QgdGhlIGNhc2UsDQo+IHByb2JhYmx5
IHdlIHNob3VsZCB1cGRhdGUgdGhlIGJpbmRpbmcuDQo+IC0gdmNjLXN1cHBseTogdmNjIHJlZ3Vs
YXRvciBmb3IgdGhlIHN1cHBseSB2b2x0YWdlLg0KSSB3aWxsIGFkZCB0aGUgdmNjLXN1cHBseSB0
byBjb21wbHkgdGhpcyByZXF1aXJlbWVudC4NCg0KVGhhbmtzLA0KQW5keQ0KPiANCj4gPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDRjPjsNCj4gPiArICAgICAgICAg
ICAgICAgICAgICAgICB9Ow0KPiA+ICAgICAgICAgICAgICAgICB9Ow0KPiA+DQo+ID4gICAgICAg
ICAgICAgICAgIGkyY0A1IHsNCj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9m
cmVlc2NhbGUvZnNsLWxzMTAyOGEtcmRiLmR0cw0KPiA+IGIvYXJjaC9hcm02NC9ib290L2R0cy9m
cmVlc2NhbGUvZnNsLWxzMTAyOGEtcmRiLmR0cw0KPiA+IGluZGV4IGY5YzI3MmZiMDczOC4uMDEy
YjNmODY5NmI3IDEwMDY0NA0KPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxl
L2ZzbC1sczEwMjhhLXJkYi5kdHMNCj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVz
Y2FsZS9mc2wtbHMxMDI4YS1yZGIuZHRzDQo+ID4gQEAgLTExOSw2ICsxMTksMTEgQEANCj4gPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAibnhwLHBjZjIxMjki
Ow0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDB4NTE+Ow0KPiA+
ICAgICAgICAgICAgICAgICAgICAgICAgIH07DQo+ID4gKw0KPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgIHRlbXBANGMgew0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29t
cGF0aWJsZSA9ICJueHAsc2E1NjAwNCI7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICByZWcgPSA8MHg0Yz47DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgfTsNCj4gPiAg
ICAgICAgICAgICAgICAgfTsNCj4gPiAgICAgICAgIH07DQo+ID4gIH07DQo+ID4gLS0NCj4gPiAy
LjE3LjENCj4gPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
