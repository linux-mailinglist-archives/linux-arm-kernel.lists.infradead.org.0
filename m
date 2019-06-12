Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC8041AEF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 06:15:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7E5wWq0DBfqL6ktv2ZEVAbfy4SgnS3F4z17o4Sm0s+c=; b=iA3LiwC5xze+e7
	KeH7mxT6NTULXNKd8xOjykdvUgPYGAZhasgQghoXTXBrIFim8JEdw6jZVp6rOwLn39clJx4NQ9Cff
	osEwIesuT9z5Q/Hw+WntDqXCSSu54tTMo7WtulMeT5JLrMne62doW1Zi10eGzC87EauAWoAGCyadx
	X+YXmwQkoS9jCAsyAjJJCkHK9r9gyYa21h+JQ5vmIji19/+N3NCN4KU3Ei2edcSDBdOn3wVMPNHOR
	7vYMPujPEOiObIUKBEysDpod/mJQG4oEbhHnfEzcWO8loiOFBVhbAIHHiiFIvx7hzafXIa3O14pib
	wc71IfVcSLtbGn/Ivilw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haufM-0007Si-4V; Wed, 12 Jun 2019 04:15:16 +0000
Received: from mail-vi1eur04on061b.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::61b]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haufA-0006dh-2W
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 04:15:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dSRtpL9/KnuzaCPU9Z9xLj8k97sWd8vPldD3lIyouEY=;
 b=Q90vM2pehXtPRKWBP4nMo/IQwuPyi+Blk+berG8JvRy+JIrPZx1quP1Jwd9ghWIXRr3+A0eOSSxTvx1lnUVla/ZSQtMagHPQTyo/n4wuHdsvDvlEa7iyKyx7drbj/NtD2Np0UOhtDzVKrLb4yTE048IwvFDPqYZi8vMTN3Xt8HU=
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com (10.169.132.138) by
 VI1PR0401MB2446.eurprd04.prod.outlook.com (10.168.61.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Wed, 12 Jun 2019 04:14:58 +0000
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::3408:f7f9:7f82:c67c]) by VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::3408:f7f9:7f82:c67c%7]) with mapi id 15.20.1987.010; Wed, 12 Jun 2019
 04:14:58 +0000
From: "Y.b. Lu" <yangbo.lu@nxp.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: RE: [PATCH 1/6] ptp: add QorIQ PTP support for DPAA2
Thread-Topic: [PATCH 1/6] ptp: add QorIQ PTP support for DPAA2
Thread-Index: AQHVHztS7fz1CkTI/EyG9roH6EAQXaaU3AqAgAKPkpA=
Date: Wed, 12 Jun 2019 04:14:58 +0000
Message-ID: <VI1PR0401MB2237247525AB5DB5B5F275A8F8EC0@VI1PR0401MB2237.eurprd04.prod.outlook.com>
References: <20190610032108.5791-1-yangbo.lu@nxp.com>
 <20190610032108.5791-2-yangbo.lu@nxp.com> <20190610130601.GD8247@lunn.ch>
In-Reply-To: <20190610130601.GD8247@lunn.ch>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yangbo.lu@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3258ed1c-8161-4b13-8407-08d6eeec8853
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0401MB2446; 
x-ms-traffictypediagnostic: VI1PR0401MB2446:
x-microsoft-antispam-prvs: <VI1PR0401MB24465E28A14FA6373D662C33F8EC0@VI1PR0401MB2446.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39860400002)(396003)(136003)(376002)(366004)(13464003)(189003)(199004)(3846002)(316002)(11346002)(476003)(6116002)(6916009)(4326008)(186003)(74316002)(102836004)(25786009)(26005)(71200400001)(446003)(86362001)(99286004)(7696005)(486006)(53546011)(71190400001)(256004)(76176011)(14444005)(6506007)(7736002)(66066001)(229853002)(66446008)(66556008)(64756008)(14454004)(66946007)(73956011)(76116006)(52536014)(33656002)(54906003)(6436002)(478600001)(305945005)(68736007)(2906002)(53936002)(55016002)(81166006)(6246003)(66476007)(9686003)(8936002)(8676002)(81156014)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2446;
 H:VI1PR0401MB2237.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gyyV1P+nzY+iHa+d1ujKEY3luoeIZ+ytHFHVjGknXq1BL97xyI7FwXNN3yN0GyQQMi9Qdx8ywR3+Ud6TJrxKDgia4o5LypDCJvOb/qhPniBRzo9zadocu57vQpmSz2CWmTHhqzRUstQauvOWHM+mV7SxviFPIoxKfOB6cvVNvpEbrFa7UX4wg68zScUlgRw32mc7KSCZ4PQYO4kV4BKd3aALra2F78062PFuDg1AxGICMX9MWIimWMphcROwYotp5wnMAlvi5ruyCnES87JVVCZCo5rrxZC/7NRIvfFChXAKaK8nL4NIUILhJlfe4S6Mu6cFA3NbzgloYaw0wGqhwpAUc/dFwlkp5fHf+a7V2fqXcE5easLx/Xb3awo7juRZisXf8jH6rhDRigt6Djtnl46oYWh+Eudaofg1OPBxtFQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3258ed1c-8161-4b13-8407-08d6eeec8853
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 04:14:58.5240 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yangbo.lu@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2446
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_211504_143250_813820A2 
X-CRM114-Status: GOOD (  17.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:61b listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmV3LA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEFuZHJl
dyBMdW5uIDxhbmRyZXdAbHVubi5jaD4NCj4gU2VudDogMjAxOcTqNtTCMTDI1SAyMTowNg0KPiBU
bzogWS5iLiBMdSA8eWFuZ2JvLmx1QG54cC5jb20+DQo+IENjOiBuZXRkZXZAdmdlci5rZXJuZWwu
b3JnOyBEYXZpZCBTIC4gTWlsbGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0PjsNCj4gUmljaGFyZCBD
b2NocmFuIDxyaWNoYXJkY29jaHJhbkBnbWFpbC5jb20+OyBSb2IgSGVycmluZw0KPiA8cm9iaCtk
dEBrZXJuZWwub3JnPjsgU2hhd24gR3VvIDxzaGF3bmd1b0BrZXJuZWwub3JnPjsNCj4gZGV2aWNl
dHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7DQo+IGxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENI
IDEvNl0gcHRwOiBhZGQgUW9ySVEgUFRQIHN1cHBvcnQgZm9yIERQQUEyDQo+IA0KPiBPbiBNb24s
IEp1biAxMCwgMjAxOSBhdCAxMToyMTowM0FNICswODAwLCBZYW5nYm8gTHUgd3JvdGU6DQo+ID4g
VGhpcyBwYXRjaCBpcyB0byBhZGQgUW9ySVEgUFRQIHN1cHBvcnQgZm9yIERQQUEyLg0KPiA+IEFs
dGhvdWdoIGRwYWEyLXB0cC5jIGRyaXZlciBpcyBhIGZzbF9tY19kcml2ZXIgd2hpY2ggaXMgdXNp
bmcgTUMgQVBJcw0KPiA+IGZvciByZWdpc3RlciBhY2Nlc3NpbmcsIGl0J3Mgc2FtZSBJUCBibG9j
ayB3aXRoIGVUU0VDL0RQQUEvRU5FVEMgMTU4OA0KPiA+IHRpbWVyLiBXZSB3aWxsIGNvbnZlcnQg
dG8gcmV1c2UgcHRwX3FvcmlxIGRyaXZlciBieSB1c2luZyByZWdpc3Rlcg0KPiA+IGlvcmVtYXAg
YW5kIGRyb3BwaW5nIHJlbGF0ZWQgTUMgQVBJcy4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFlh
bmdibyBMdSA8eWFuZ2JvLmx1QG54cC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvcHRwL0tj
b25maWcgfCAyICstDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxl
dGlvbigtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHRwL0tjb25maWcgYi9kcml2
ZXJzL3B0cC9LY29uZmlnIGluZGV4DQo+ID4gOWI4ZmVlNS4uYjFiNDU0ZiAxMDA2NDQNCj4gPiAt
LS0gYS9kcml2ZXJzL3B0cC9LY29uZmlnDQo+ID4gKysrIGIvZHJpdmVycy9wdHAvS2NvbmZpZw0K
PiA+IEBAIC00NCw3ICs0NCw3IEBAIGNvbmZpZyBQVFBfMTU4OF9DTE9DS19EVEUNCj4gPg0KPiA+
ICBjb25maWcgUFRQXzE1ODhfQ0xPQ0tfUU9SSVENCj4gPiAgCXRyaXN0YXRlICJGcmVlc2NhbGUg
UW9ySVEgMTU4OCB0aW1lciBhcyBQVFAgY2xvY2siDQo+ID4gLQlkZXBlbmRzIG9uIEdJQU5GQVIg
fHwgRlNMX0RQQUFfRVRIIHx8IEZTTF9FTkVUQyB8fCBGU0xfRU5FVENfVkYNCj4gPiArCWRlcGVu
ZHMgb24gR0lBTkZBUiB8fCBGU0xfRFBBQV9FVEggfHwgRlNMX0RQQUEyX0VUSCB8fA0KPiBGU0xf
RU5FVEMgfHwNCj4gPiArRlNMX0VORVRDX1ZGDQo+ID4gIAlkZXBlbmRzIG9uIFBUUF8xNTg4X0NM
T0NLDQo+IA0KPiBIaSBZYW5nYm8NCj4gDQo+IENvdWxkIENPTVBJTEVfVEVTVCBhbHNvIGJlIGFk
ZGVkPw0KDQpbWS5iLiBMdV0gQ09NUElMRV9URVNUIGlzIHVzdWFsbHkgZm9yIG90aGVyIEFSQ0hz
IGJ1aWxkIGNvdmVyYWdlLg0KRG8geW91IHdhbnQgbWUgdG8gYXBwZW5kIGl0IGFmdGVyIHRoZXNl
IEV0aGVybmV0IGRyaXZlciBkZXBlbmRlbmNpZXM/DQoNClRoYW5rcy4NCg0KPiANCj4gVGhhbmtz
DQo+IAlBbmRyZXcNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
