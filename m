Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B78CCF0BC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 08:56:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KLK4wYyy02UUQxE7bISvd8AkWnZDtoa9nb/1yqhXyC8=; b=OKhFMMeFY8/jKd
	GewYhQSJEdxRXXyySdozzQ7/Q12FPN+R1JlpItY+5pZqx/85RvX+dAeUGWm3VbsmDMoATgbHzbxTI
	apQOonjhkjxDQwgXgs7KRk0Mr5Ca7X5ZcMQpUSVCfEpl/jPYEGWbeI3f02kg7zagXqdXBXViG28u3
	rRXekXD7PoEP+p2/AzVWRqZgjba5CHM0r6HmvS/qFm5Ofe8fEmE+91FWAHqHdnMS7ZonDlraqeD7O
	QT89IDjaFNsE1hOQphdMHOBJPHqCbvC6be9XAuVWu1Em4zM9Yf3B2yS0bXW1Ne5z3Q4vsts8iSRdm
	ikgxxGSntanGrklJ5qCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLMgZ-0001EX-7W; Tue, 30 Apr 2019 06:56:15 +0000
Received: from mail-eopbgr30064.outbound.protection.outlook.com ([40.107.3.64]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLMgQ-0001E7-Tb
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 06:56:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JJYZ5z+badhZvR7G8WL+zRX+KygjX/j1RYcj6wXfxjc=;
 b=KHXNXuHRt/kYdO9WUYaynpkYFwZ2EN1KNnu0IF39q22IOYXyw8rfG9AAduR/x9iR9Owlk8H/QSPlOqbCuNColKB9FSDECu1DifHboZhOGQR6XRbc8Jsu5k8h8mzrx8kOzCXpXR19MKXC5y1bH0saIZYLNG9rqIJgmwSDbm2P7AE=
Received: from AM6PR04MB4357.eurprd04.prod.outlook.com (52.135.167.33) by
 AM6PR04MB5669.eurprd04.prod.outlook.com (20.179.0.211) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Tue, 30 Apr 2019 06:56:03 +0000
Received: from AM6PR04MB4357.eurprd04.prod.outlook.com
 ([fe80::f062:7002:6318:780b]) by AM6PR04MB4357.eurprd04.prod.outlook.com
 ([fe80::f062:7002:6318:780b%2]) with mapi id 15.20.1856.008; Tue, 30 Apr 2019
 06:56:03 +0000
From: Chuanhua Han <chuanhua.han@nxp.com>
To: =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>
Subject: RE: [EXT] Re: [PATCH 1/3] dt-bindings: i2c: add optional mul-value
 property to binding
Thread-Topic: [EXT] Re: [PATCH 1/3] dt-bindings: i2c: add optional mul-value
 property to binding
Thread-Index: AQHU/w2TnpxPP+I5F0qza5MEhbqLjaZUQIEAgAAApwA=
Date: Tue, 30 Apr 2019 06:56:03 +0000
Message-ID: <AM6PR04MB4357714B5306B136A2765B2C973A0@AM6PR04MB4357.eurprd04.prod.outlook.com>
References: <20190430043242.29687-1-chuanhua.han@nxp.com>
 <20190430063822.dk5nerqa2m36ua6x@pengutronix.de>
In-Reply-To: <20190430063822.dk5nerqa2m36ua6x@pengutronix.de>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=chuanhua.han@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 08930acc-88f2-4ea8-0fd8-08d6cd38e947
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB5669; 
x-ms-traffictypediagnostic: AM6PR04MB5669:
x-ms-exchange-purlcount: 1
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <AM6PR04MB56697CC8CFE5C8ADC94B5F1D973A0@AM6PR04MB5669.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(346002)(376002)(366004)(136003)(13464003)(189003)(199004)(476003)(45080400002)(486006)(966005)(11346002)(71190400001)(446003)(478600001)(71200400001)(25786009)(99286004)(102836004)(6436002)(316002)(6916009)(54906003)(55016002)(6506007)(229853002)(53546011)(6306002)(9686003)(14454004)(4326008)(66556008)(26005)(53936002)(186003)(6246003)(76116006)(44832011)(256004)(66476007)(73956011)(66946007)(66446008)(66574012)(66066001)(305945005)(7416002)(7736002)(74316002)(8676002)(33656002)(76176011)(5660300002)(8936002)(6116002)(3846002)(7696005)(2906002)(68736007)(64756008)(81166006)(81156014)(52536014)(86362001)(97736004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5669;
 H:AM6PR04MB4357.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: L9QPRGLiaY2ZKFgwHj0twFyJU/4LLhN5Fq+Kk9wDKOvrOgBzWFO5Lb3Sccrso37YFe29iHELnxoQu09bijsbSppx+5MnjLaTHPFTIk74aC9qp+t7Sz7dkqI+r9XxIE0nfwOwNsZ+QerIK7AVbFhMPFCFMY6eMQhfUHlazBDpzQ6qUb0uhBq3/JuofX4W7mTFzNqrLJ74I0O3Ft8M6RR99mRYiWbGGLLfLX/QjGtNmsfgPWjyWeORc1nHegVqrZ7HzZjQPTxafvFPd0YqB3UroM/DGupFHC/z+5jAZaHd47KBIz/pHjbOILlYsgybnQax0afWeRNTkYw+fTh5JQTzODC04PoSH+btwA0rmZgdrZbRHe6gmqeStAKTcbfHd1D2yk7BHRhZIhahGYRizRi+Yz157MX05oXuBS3SaaYJs/A=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08930acc-88f2-4ea8-0fd8-08d6cd38e947
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 06:56:03.4204 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5669
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_235606_983124_60BC3EC8 
X-CRM114-Status: GOOD (  21.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.64 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Sumit Batra <sumit.batra@nxp.com>, "eha@deif.com" <eha@deif.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>,
 "wsa+renesas@sang-engineering.com" <wsa+renesas@sang-engineering.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "linux@rempel-privat.de" <linux@rempel-privat.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "peda@axentia.se" <peda@axentia.se>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVXdlIEtsZWluZS1Lw7Zu
aWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4NCj4gU2VudDogMjAxOeW5tDTmnIgz
MOaXpSAxNDozOA0KPiBUbzogQ2h1YW5odWEgSGFuIDxjaHVhbmh1YS5oYW5AbnhwLmNvbT4NCj4g
Q2M6IHJvYmgrZHRAa2VybmVsLm9yZzsgbWFyay5ydXRsYW5kQGFybS5jb207IHNoYXduZ3VvQGtl
cm5lbC5vcmc7DQo+IHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU7IExlbyBMaSA8bGVveWFuZy5saUBu
eHAuY29tPjsNCj4gbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgZGV2aWNldHJlZUB2Z2Vy
Lmtlcm5lbC5vcmc7DQo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgbGlu
dXgtaTJjQHZnZXIua2VybmVsLm9yZzsNCj4ga2VybmVsQHBlbmd1dHJvbml4LmRlOyBkbC1saW51
eC1pbXggPGxpbnV4LWlteEBueHAuY29tPjsNCj4gZmVzdGV2YW1AZ21haWwuY29tOyB3c2ErcmVu
ZXNhc0BzYW5nLWVuZ2luZWVyaW5nLmNvbTsgZWhhQGRlaWYuY29tOw0KPiBsaW51eEByZW1wZWwt
cHJpdmF0LmRlOyBTdW1pdCBCYXRyYSA8c3VtaXQuYmF0cmFAbnhwLmNvbT47DQo+IGwuc3RhY2hA
cGVuZ3V0cm9uaXguZGU7IHBlZGFAYXhlbnRpYS5zZQ0KPiBTdWJqZWN0OiBbRVhUXSBSZTogW1BB
VENIIDEvM10gZHQtYmluZGluZ3M6IGkyYzogYWRkIG9wdGlvbmFsIG11bC12YWx1ZQ0KPiBwcm9w
ZXJ0eSB0byBiaW5kaW5nDQo+IA0KPiBDYXV0aW9uOiBFWFQgRW1haWwNCj4gDQo+IE9uIFR1ZSwg
QXByIDMwLCAyMDE5IGF0IDEyOjMyOjQwUE0gKzA4MDAsIENodWFuaHVhIEhhbiB3cm90ZToNCj4g
PiBOWFAgTGF5ZXJzY2FwZSBTb0MgaGF2ZSB1cCB0byB0aHJlZSBNVUwgb3B0aW9ucyBhdmFpbGFi
bGUgZm9yIGFsbA0KPiA+IGRpdmlkZXIgdmFsdWVzLCB3ZSBjaG9pY2Ugb2YgTVVMIGRldGVybWlu
ZXMgdGhlIGludGVybmFsIG1vbml0b3IgcmF0ZQ0KPiA+IG9mIHRoZSBJMkMgYnVzIChTQ0wgYW5k
IFNEQSBzaWduYWxzKToNCj4gPiBBIGxvd2VyIE1VTCB2YWx1ZSByZXN1bHRzIGluIGEgaGlnaGVy
IHNhbXBsaW5nIHJhdGUgb2YgdGhlIEkyQyBzaWduYWxzLg0KPiA+IEEgaGlnaGVyIE1VTCB2YWx1
ZSByZXN1bHRzIGluIGEgbG93ZXIgc2FtcGxpbmcgcmF0ZSBvZiB0aGUgSTJDIHNpZ25hbHMuDQo+
ID4NCj4gPiBTbyBpbiBPcHRpb25hbCBwcm9wZXJ0aWVzIHdlIGFkZGVkIG91ciBjdXN0b20gbXVs
LXZhbHVlIHByb3BlcnR5IGluDQo+ID4gdGhlIGJpbmRpbmcgdG8gc2VsZWN0IHdoaWNoIG11bCBv
cHRpb24gZm9yIHRoZSBkZXZpY2UgdHJlZSBpMmMNCj4gPiBjb250cm9sbGVyIG5vZGUuDQo+ID4N
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHVhbmh1YSBIYW4gPGNodWFuaHVhLmhhbkBueHAuY29tPg0K
PiA+IC0tLQ0KPiA+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaTJjL2kyYy1p
bXgudHh0IHwgMyArKysNCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQ0KPiA+
DQo+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pMmMv
aTJjLWlteC50eHQNCj4gPiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pMmMv
aTJjLWlteC50eHQNCj4gPiBpbmRleCBiOTY3NTQ0NTkwZTguLmJhOGU3YjdiM2ZhOCAxMDA2NDQN
Cj4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaTJjL2kyYy1pbXgu
dHh0DQo+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2kyYy9pMmMt
aW14LnR4dA0KPiA+IEBAIC0xOCw2ICsxOCw5IEBAIE9wdGlvbmFsIHByb3BlcnRpZXM6DQo+ID4g
IC0gc2RhLWdwaW9zOiBzcGVjaWZ5IHRoZSBncGlvIHJlbGF0ZWQgdG8gU0RBIHBpbg0KPiA+ICAt
IHBpbmN0cmw6IGFkZCBleHRyYSBwaW5jdHJsIHRvIGNvbmZpZ3VyZSBpMmMgcGlucyB0byBncGlv
IGZ1bmN0aW9uIGZvciBpMmMNCj4gPiAgICBidXMgcmVjb3ZlcnksIGNhbGwgaXQgImdwaW8iIHN0
YXRlDQo+ID4gKy0gbXVsLXZhbHVlOiBOWFAgTGF5ZXJzY2FwZSBTb0MgaGF2ZSB1cCB0byB0aHJl
ZSBNVUwgb3B0aW9ucw0KPiA+ICthdmFpbGFibGUgZm9yIGFsbCBJMkMgZGl2aWRlciB2YWx1ZXMs
IGl0IGRlc2NyaWJlcyB3aGljaCBNVUwgd2UNCj4gPiArY2hvb3NlIHRvIHVzZSBmb3IgdGhlIGRy
aXZlciwgdGhlIHZhbHVlcyBzaG91bGQgYmUgMSwyLDQuDQo+IA0KPiBJbmRlbnRpb24gaXMgYnJv
a2VuLg0KWWVzLCBJIGFsc28gZm91bmQgdGhpcyBwcm9ibGVtLCBuZXh0IHZlcnNpb24gSSB3aWxs
IGZpeCB0aGUgaW5kZW50IHByb2JsZW0NCj4gDQo+IEkgd29uZGVyIHdoeSB0aGlzIG5lZWRzIHRv
IGJlIGNvbmZpZ3VyYWJsZSBvbiBhIHBlci1tYWNoaW5lL2RldmljZSBsZXZlbC4NCj4gV2hhdCBp
cyB0aGUgdHJhZGUtb2ZmPw0KQWNjb3JkaW5nIHRvIE5YUCBMYXllcnNjYXBlIFNvQyBSZWZlcmVu
Y2UgTWFudWFsLCB0aGVyZSBhcmUgdGhyZWUgTVVMIA0Kb3B0aW9ucyBmb3IgaTJjIGNvbnRyb2xs
ZXIgdG8gY29uZmlndXJlIGkyYyBCdXMgRnJlcXVlbmN5IERpdmlkZXIgUmVnaXN0ZXIgKElCRkQp
DQp0byBkZXRlcm1pbmUgdGhlIGNsb2NrIEZyZXF1ZW5jeSBvZiBpMmMuIA0KU29tZSBzb2NzIChz
dWNoIGFzIGxzMTA0NmEpIGhhdmUgdGhlIGJlc3QgcGVyZm9ybWFuY2Ugd2hlbiBNVUw9NCwgDQph
bmQgdGhlIGRlZmF1bHQgaXMgTVVMPTEuIA0KVGhpcyBvcHRpb24gaXMgb3B0aW9uYWwgYW5kIGNh
biBiZSBjb25maWd1cmVkIGJ5IGRldmljZSB0cmVlDQo+IA0KPiBCZXN0IHJlZ2FyZHMNCj4gVXdl
DQo+IA0KPiAtLQ0KPiBQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAg
fCBVd2UgS2xlaW5lLUvDtm5pZw0KPiB8DQo+IEluZHVzdHJpYWwgTGludXggU29sdXRpb25zICAg
ICAgICAgICAgICAgICB8DQo+IGh0dHBzOi8vZXVyMDEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0
bG9vay5jb20vP3VybD1odHRwJTNBJTJGJTJGd3d3LnBlDQo+IG5ndXRyb25peC5kZSUyRiZhbXA7
ZGF0YT0wMiU3QzAxJTdDY2h1YW5odWEuaGFuJTQwbnhwLmNvbSU3QzE1OA0KPiAyMWM5Y2Y0YzQ0
OWYyZDVlYTA4ZDZjZDM2N2FhYSU3QzY4NmVhMWQzYmMyYjRjNmZhOTJjZDk5YzVjMzAxNjM1DQo+
ICU3QzAlN0MwJTdDNjM2OTIyMDMxMjAxOTU3NzM2JmFtcDtzZGF0YT04aktQTiUyRlNKZ2hnT0Y4
OTBOVHINCj4gJTJGQyUyQjlQc0ZwRXI2NCUyQiUyRlhITFNYNUNpcG8lM0QmYW1wO3Jlc2VydmVk
PTAgIHwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
