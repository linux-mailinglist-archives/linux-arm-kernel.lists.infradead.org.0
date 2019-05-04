Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB46E1386E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 11:29:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y3FpZKQkVmzXgGWVN4Cjc08tH8KpwH6QmUE59KDJ4Ls=; b=DhDbQ15iwyd7zY
	at0kk4enWwH6Aumbv3GYFItd4RTUkR7rxeoi/yIqcOmNsk02bYRnO3P1oFcq/mL28M+ZHpnDMUltM
	Du6SQ0ZI6xN717cagslCCHPXTOdwOVamhfSf6QLRsxjr4XxOHwPNoZScfVMxW1rIm21FLiRsalxf+
	f6l0jT6zgXRJxtVTwVn1EvnencZhDAkwHzwYrKqqEfpdxqbe8RPcZRd4llrPEEi9sfTgU/KafbHTD
	5X5xrEFNxc3xfB6Ze+3RYh7BLzzC9H6K2vaJD+c4JGOGIeKQDPj4ShJnmI5T9kkKwnmkldAMzd7Yo
	pNiXXukR0r3WsuLtZh1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMqye-0007bx-Js; Sat, 04 May 2019 09:29:04 +0000
Received: from mail-eopbgr80059.outbound.protection.outlook.com ([40.107.8.59]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMqyW-0007bN-Lh
 for linux-arm-kernel@lists.infradead.org; Sat, 04 May 2019 09:28:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4ukYqcWcvtzdLZxTlJaZOiQt6jmS73XZseCB9PDEiPY=;
 b=As30QvSjGPpS6y5kwJ5qzAMM4aTJvCISazJPqEGJWQbPJyqfEow98PxGRldSZBtaFj1qv62Tzb1bZrkj3TIRNeWw4Eq7GFEPd8skrH9fY0ItWZAZwPIYdphIRZ9oFjGksA3uvPLBCNjk/qVPVcXZAa9BJ9kIv4uHEkX/KnSKeao=
Received: from AM6PR04MB4357.eurprd04.prod.outlook.com (52.135.167.33) by
 AM6PR04MB5384.eurprd04.prod.outlook.com (20.178.86.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Sat, 4 May 2019 09:28:49 +0000
Received: from AM6PR04MB4357.eurprd04.prod.outlook.com
 ([fe80::f062:7002:6318:780b]) by AM6PR04MB4357.eurprd04.prod.outlook.com
 ([fe80::f062:7002:6318:780b%2]) with mapi id 15.20.1856.012; Sat, 4 May 2019
 09:28:49 +0000
From: Chuanhua Han <chuanhua.han@nxp.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: RE: [EXT] Re: [PATCH 1/2] i2c: imx: I2C Driver doesn't consider
 I2C_IPGCLK_SEL RCW bit when using ls1046a SoC
Thread-Topic: [EXT] Re: [PATCH 1/2] i2c: imx: I2C Driver doesn't consider
 I2C_IPGCLK_SEL RCW bit when using ls1046a SoC
Thread-Index: AQHU/w+WtXmB7zSh+EKM7NDEvi24aqZUqIWAgAYQEbA=
Date: Sat, 4 May 2019 09:28:48 +0000
Message-ID: <AM6PR04MB43571B8D52C1FE9ED20DBA1D97360@AM6PR04MB4357.eurprd04.prod.outlook.com>
References: <20190430044719.30720-1-chuanhua.han@nxp.com>
 <20190430125043.weqwzim4gpsvtkfe@pengutronix.de>
In-Reply-To: <20190430125043.weqwzim4gpsvtkfe@pengutronix.de>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=chuanhua.han@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4a6dbd49-41b5-45cc-2809-08d6d072ea0e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB5384; 
x-ms-traffictypediagnostic: AM6PR04MB5384:
x-ms-exchange-purlcount: 1
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <AM6PR04MB53848FED5D42FC005B70853E97360@AM6PR04MB5384.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0027ED21E7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(136003)(39860400002)(346002)(376002)(189003)(199004)(13464003)(14454004)(76176011)(7696005)(966005)(6116002)(81166006)(54906003)(476003)(11346002)(44832011)(8676002)(3846002)(81156014)(446003)(316002)(53936002)(6506007)(9686003)(486006)(74316002)(256004)(71190400001)(8936002)(7416002)(71200400001)(7736002)(478600001)(305945005)(26005)(6916009)(53546011)(102836004)(86362001)(76116006)(6306002)(99286004)(45080400002)(6436002)(6246003)(186003)(229853002)(4326008)(55016002)(2906002)(66066001)(73956011)(66556008)(25786009)(66446008)(68736007)(64756008)(66946007)(33656002)(66476007)(52536014)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5384;
 H:AM6PR04MB4357.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /rH1DZ7erhzOtJA5Q18eW2HFptjxqyyMHvhyobUybdB0e8p2xwyF5O4PALd0GJcQjvz5jjOkFsCyLZJry4fs7eDv5WALCArIaCHoxXtPTJNk1B1N1VuO4tlMcy2hXLvhh1qsetfJ3yARUkp3RqI4kcQVpEMRXenXMRXdPB3shs+w8NaeXYjFtrErXVwRmF8RCpQGRyvnaB6GfCAtcMfk6cPGuewAWTJj5wNwWe22TC9lRzOdOQisShbtT4SpnUQOau6U5Z4VSxLDVDQ/w6c0X/GVkHRLabc2y7PGewavlap1hfXWGxWWz/hz6VMfslg5VxDNj2AWUEWC+tx/6HIzTrc2nSVG/DNyZa8/8v72BHTmTpysXR6kg3HMsGeHrNk0aSdFLWRuHrceJ3i2mhT8dZWkd0i7Y9u0ZU8xEd3yTcw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a6dbd49-41b5-45cc-2809-08d6d072ea0e
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2019 09:28:48.9728 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5384
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_022856_792488_3EA230A6 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.59 listed in list.dnswl.org]
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
LmhhdWVyQHBlbmd1dHJvbml4LmRlPg0KPiBTZW50OiAyMDE5xOo01MIzMMjVIDIwOjUxDQo+IFRv
OiBDaHVhbmh1YSBIYW4gPGNodWFuaHVhLmhhbkBueHAuY29tPg0KPiBDYzogc2hhd25ndW9Aa2Vy
bmVsLm9yZzsgTGVvIExpIDxsZW95YW5nLmxpQG54cC5jb20+OyByb2JoK2R0QGtlcm5lbC5vcmc7
DQo+IG1hcmsucnV0bGFuZEBhcm0uY29tOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOw0K
PiBsaW51eC1pMmNAdmdlci5rZXJuZWwub3JnOyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmc7DQo+IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBmZXN0ZXZhbUBnbWFpbC5j
b207IGRsLWxpbnV4LWlteA0KPiA8bGludXgtaW14QG54cC5jb20+OyB3c2ErcmVuZXNhc0BzYW5n
LWVuZ2luZWVyaW5nLmNvbTsNCj4gdS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlOyBlaGFA
ZGVpZi5jb207IGxpbnV4QHJlbXBlbC1wcml2YXQuZGU7DQo+IGwuc3RhY2hAcGVuZ3V0cm9uaXgu
ZGU7IHBlZGFAYXhlbnRpYS5zZTsgU3VtaXQgQmF0cmENCj4gPHN1bWl0LmJhdHJhQG54cC5jb20+
DQo+IFN1YmplY3Q6IFtFWFRdIFJlOiBbUEFUQ0ggMS8yXSBpMmM6IGlteDogSTJDIERyaXZlciBk
b2Vzbid0IGNvbnNpZGVyDQo+IEkyQ19JUEdDTEtfU0VMIFJDVyBiaXQgd2hlbiB1c2luZyBsczEw
NDZhIFNvQw0KPiANCj4gQ2F1dGlvbjogRVhUIEVtYWlsDQo+IA0KPiBPbiBUdWUsIEFwciAzMCwg
MjAxOSBhdCAxMjo0NzoxOFBNICswODAwLCBDaHVhbmh1YSBIYW4gd3JvdGU6DQo+ID4gVGhlIGN1
cnJlbnQga2VybmVsIGRyaXZlciBkb2VzIG5vdCBjb25zaWRlciBJMkNfSVBHQ0xLX1NFTCAoNDI0
IGJpdCBvZg0KPiA+IFJDVykgaW4gZGVjaWRpbmcgIGkyY19jbGtfcmF0ZSBpbiBmdW5jdGlvbiBp
MmNfaW14X3NldF9jbGsoKSB7IDANCj4gPiBQbGF0Zm9ybSBjbG9jay80LCAxIFBsYXRmb3JtIGNs
b2NrLzJ9Lg0KPiA+DQo+ID4gV2hlbiB1c2luZyBsczEwNDZhIFNvQywgdGhpcyBwb3B1bGF0ZXMg
aW5jb3JyZWN0IHZhbHVlIGluIElCRkQNCj4gPiByZWdpc3RlciBpZiBJMkNfSVBHQ0xLX1NFTCA9
IDAsIHdoaWNoIGdlbmVyYXRlcyBoYWxmIG9mIHRoZSBkZXNpcmVkIENsb2NrLg0KPiA+DQo+ID4g
VGhlcmVmb3JlLCBpZiBsczEwNDZhIFNvQyBpcyB1c2VkLCB3ZSBuZWVkIHRvIHNldCB0aGUgaTJj
IGNsb2NrDQo+ID4gYWNjb3JkaW5nIHRvIHRoZSBjb3JyZXNwb25kaW5nIFJDVy4NCj4gDQo+IFNv
IHRoZSBjbG9jayBkcml2ZXIgcmVwb3J0cyB0aGUgd3JvbmcgY2xvY2suIFBsZWFzZSBmaXggdGhl
IGNsb2NrIGRyaXZlciB0aGVuLg0KTm8sIHRoaXMgaXMgYSBwcm9ibGVtIHdpdGggdGhlIGkyYyBk
cml2ZXIuIEl0IGlzIG5vdCBhIHByb2JsZW0gd2l0aCB0aGUgY2xvY2sgZHJpdmVyLCBzbyB0aGUg
aTJjIGRyaXZlciBuZWVkcyB0byBiZSBtb2RpZmllZC4NCj4gDQo+IFNhc2NoYQ0KPiANCj4gLS0N
Cj4gUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwNCj4gfA0KPiBJ
bmR1c3RyaWFsIExpbnV4IFNvbHV0aW9ucyAgICAgICAgICAgICAgICAgfA0KPiBodHRwczovL2V1
cjAxLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cCUzQSUyRiUyRnd3
dy5wZQ0KPiBuZ3V0cm9uaXguZGUlMkYmYW1wO2RhdGE9MDIlN0MwMSU3Q2NodWFuaHVhLmhhbiU0
MG54cC5jb20lN0MyYmINCj4gYTg5YzkwOGZiNGJkMzdiNjcwOGQ2Y2Q2YTdmZjclN0M2ODZlYTFk
M2JjMmI0YzZmYTkyY2Q5OWM1YzMwMTYzNQ0KPiAlN0MwJTdDMCU3QzYzNjkyMjI1NDYyNTQ3MjAz
NyZhbXA7c2RhdGE9ZUM0YkdETkFPaEV1MjR4dDlGMGgNCj4ga3hFJTJCMWZmb29DWjRDVXI0bzBn
UUdENCUzRCZhbXA7cmVzZXJ2ZWQ9MCAgfA0KPiBQZWluZXIgU3RyLiA2LTgsIDMxMTM3IEhpbGRl
c2hlaW0sIEdlcm1hbnkgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTANCj4gfA0KPiBBbXRzZ2Vy
aWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6DQo+ICs0OS01MTIxLTIw
NjkxNy01NTU1IHwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
