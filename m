Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0AF169E01
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 06:51:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fn7d1xtCfkTwvLvkBEumFFN7IiVQPsbv0FBRR8kPY+I=; b=fCFhAdSEaMdHXH
	ZssrSEchVcwP1eW6UlKEOqFij1YlRsU1LP+ttNkSgtLYQubFFB0QpXey/S4WO57Ba9sX/ceYxPyiv
	mZ0zYc3aBnED4vwtQHTFjzcUShf32ClclYeQeXoUCd9yI8UNH3Dkc1qy/tP8Lb/ihN+GWLTCbGVXj
	T+0K4dN7DhkGffDGaYZJlOCeCD1iF8MtIbZmnmj6Y23g5pVda5Q016HzVDbQgSbs+QfQpac4JrltM
	r6hIS8vRrNMTDBzsY+QZIbI1C5JMEBgcPvC5+WVto/jQnMw9rBN/t5eO9kuQUlqgqwA0Y0gl5H5Cm
	nlBem3Ga05s6DihtqgbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j66dy-0007Oy-SA; Mon, 24 Feb 2020 05:51:02 +0000
Received: from mail-eopbgr00064.outbound.protection.outlook.com ([40.107.0.64]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j66cz-0005jL-Ji
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 05:50:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ncEO1f2BsIUgvcQ55kb4j8WPxwrbFqOYwpgBngWNdPUR6pNsk0hQzm+IIstBm7m2xYtfNkcX6du6k7pOYkYtdGxppicVh3SEkCPGVD6xDS6mqbWT2R0NTwNI+vxA72wZhd6cTr1NwETRW8XUj55SRI/kplW45DUDWF3tFPVHzn5UVXk4+QEUCOk3RsSpwemibNLqLsuFU3DEuUK2XcN20aRbvUQjsH6YmNBU+wpCimiuEKkm8XHuhVCQqT2aJ5YdcExJ0q6yj50Ytc/mnatmwhWXSNSpqHR/AwGLwe8LCk1DB6YdZx9gZ5l2XQ8qCP8RZk2teOUuwYUh/tXMk/vEPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w5BVeiL6z1Y/L1+zuENYp0/WaAUz9q8YTty2Qn1Ywy0=;
 b=UKAHnk4VxRuQ3OsS39HTr+Vmlgpe6D21ruRirxN5/v/HQNjmB/LftXr92Dd+P0Q6hExbCQSlGGggedzCjPsMR6m6LAWRufsHjNNrHhlyvszN6ipInw/iYBTEyQM0FXe9Al2g9sPTbQY1TJa5C5Xo95w2CjaAgonS2TkPoZ4kYZx//McSrW2MdC1S6j+CtpNeQ0VnkWTNmrQHL52Mit7nD/DZCYW3Mc1qSM4hlhXdA+5WNXHA2jjnxm27eVGqbk1hnT+yIIqJKYPyV/D92rCXx3s/IvKUlqcbYmzTipfDZHhNLE0iIRhVYklpLQKow7v3FaBF7vfZw0yQOSpyzC2cRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w5BVeiL6z1Y/L1+zuENYp0/WaAUz9q8YTty2Qn1Ywy0=;
 b=qDFO3KE+Hg4IWQrttiHRaAshcJ4BLNyX93a0h/5ZDc/ouaaiUVmpmLe8TI+Oe4/FwxRceZkn/92B/rfAUu+a3uDPCmI0dshc0azMoSUbb2II059q6P9E7UGo0pZj6UmObZd545ZFMJjpeuzpRalZp0Hb9R14R+hAtEDyq8bebpM=
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com (20.179.250.159) by
 DB8PR04MB6539.eurprd04.prod.outlook.com (20.179.249.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.22; Mon, 24 Feb 2020 05:49:58 +0000
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::104b:e88b:b0d3:cdaa]) by DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::104b:e88b:b0d3:cdaa%4]) with mapi id 15.20.2750.021; Mon, 24 Feb 2020
 05:49:58 +0000
From: "Z.q. Hou" <zhiqiang.hou@nxp.com>
To: Andrew Murray <amurray@thegoodpenguin.co.uk>
Subject: RE: [PATCHv10 07/13] PCI: mobiveil: Allow mobiveil_host_init() to be
 used to re-init host
Thread-Topic: [PATCHv10 07/13] PCI: mobiveil: Allow mobiveil_host_init() to be
 used to re-init host
Thread-Index: AQHV4iL9ZGPpKQva6kS33HGmLoZNsKgkYhiAgAWGDzA=
Date: Mon, 24 Feb 2020 05:49:58 +0000
Message-ID: <DB8PR04MB67479FC7642454ED2744BCF084EC0@DB8PR04MB6747.eurprd04.prod.outlook.com>
References: <20200213040644.45858-1-Zhiqiang.Hou@nxp.com>
 <20200213040644.45858-8-Zhiqiang.Hou@nxp.com>
 <20200220172837.GH19388@big-machine>
In-Reply-To: <20200220172837.GH19388@big-machine>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8bddf389-0582-44bf-fc91-08d7b8ed61c5
x-ms-traffictypediagnostic: DB8PR04MB6539:|DB8PR04MB6539:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB65392E4D5832EC210015950784EC0@DB8PR04MB6539.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 032334F434
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(136003)(346002)(366004)(396003)(199004)(189003)(6916009)(55016002)(9686003)(33656002)(2906002)(186003)(26005)(478600001)(8676002)(8936002)(53546011)(7416002)(4326008)(86362001)(66946007)(7696005)(81156014)(81166006)(76116006)(71200400001)(66556008)(66446008)(5660300002)(316002)(52536014)(54906003)(66476007)(64756008)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB6539;
 H:DB8PR04MB6747.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Q2vUZkn8uiqDDnm3egPtofQLtwm+rRraAC10t/i9eYNrGCnK7L7Q6m2u2/icRLxCPS21yT4mWnycwLMQoFkZvliSiIl62ju+PvPQMuVEkSoLG/2ecdejOx+uqpIDAlv+w6vc76p0PHJpKIf2Qzz6D98tAdNA7xM04yQir0+IK3kfwpJuWdSPYYgETLUydJaQyeRprPOOAZ/w7/JbDduYTH3neX4GLbG+qOmcWpmrIEgMj82Wuc3xVTOAysp5NCBInykYoSr9barKCyNGw413hGGWk3qZYiCZVZpLjBtV7cMiGtMrvASp6Uk60d4i+A4rpB5d50VL08rLpy1HY4L67XEoy5964m6ug4/6mbOVTiI2WHtHlSQcu5JhWFVeJAZoALpqRsmb5upLBaC0SthrIdYlsAn9RuMcAac7gifIFbF9UJ1Iy3afK3tEEmkrC8Wx
x-ms-exchange-antispam-messagedata: njQ8las+cvgqk0E42TUt6VM+iDjat5SZwaXtTwwGTNVHOSkLBGY7rW9qjz+a6/cyPb3SchbBk6KhtoZoqGsGboszuvA+fX6nqtTLftYrGLknICKbLcnOkR7j4NbbHcctzLRqw1mLIrSOssBBGq9lng==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bddf389-0582-44bf-fc91-08d7b8ed61c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2020 05:49:58.2370 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZPa6xMVJbz5i5hH81lNrCt9wkjmempVonqWBUSc9EFb7Zc6lVuo53FQlei72nK7f8kLEPwxn5pbg72N6BFqROQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6539
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_215001_755392_19B46030 
X-CRM114-Status: GOOD (  19.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "m.karthikeyan@mobiveil.co.in" <m.karthikeyan@mobiveil.co.in>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "andrew.murray@arm.com" <andrew.murray@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmV3LA0KDQpUaGFua3MgYSBsb3QgZm9yIHlvdXIgcmV2aWV3IQ0KDQpUaGFua3MsDQpa
aGlxaWFuZw0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEFuZHJldyBN
dXJyYXkgPGFtdXJyYXlAdGhlZ29vZHBlbmd1aW4uY28udWs+DQo+IFNlbnQ6IDIwMjDE6jLUwjIx
yNUgMToyOQ0KPiBUbzogWi5xLiBIb3UgPHpoaXFpYW5nLmhvdUBueHAuY29tPg0KPiBDYzogbGlu
dXgtcGNpQHZnZXIua2VybmVsLm9yZzsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnOw0KPiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2Vy
bmVsLm9yZzsNCj4gYmhlbGdhYXNAZ29vZ2xlLmNvbTsgcm9iaCtkdEBrZXJuZWwub3JnOyBhbmRy
ZXcubXVycmF5QGFybS5jb207DQo+IGFybmRAYXJuZGIuZGU7IG1hcmsucnV0bGFuZEBhcm0uY29t
OyBsLnN1YnJhaG1hbnlhQG1vYml2ZWlsLmNvLmluOw0KPiBzaGF3bmd1b0BrZXJuZWwub3JnOyBt
LmthcnRoaWtleWFuQG1vYml2ZWlsLmNvLmluOyBMZW8gTGkNCj4gPGxlb3lhbmcubGlAbnhwLmNv
bT47IGxvcmVuem8ucGllcmFsaXNpQGFybS5jb207DQo+IGNhdGFsaW4ubWFyaW5hc0Bhcm0uY29t
OyB3aWxsLmRlYWNvbkBhcm0uY29tOyBNaW5na2FpIEh1DQo+IDxtaW5na2FpLmh1QG54cC5jb20+
OyBNLmguIExpYW4gPG1pbmdodWFuLmxpYW5AbnhwLmNvbT47IFhpYW93ZWkgQmFvDQo+IDx4aWFv
d2VpLmJhb0BueHAuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIdjEwIDA3LzEzXSBQQ0k6IG1v
Yml2ZWlsOiBBbGxvdyBtb2JpdmVpbF9ob3N0X2luaXQoKSB0bw0KPiBiZSB1c2VkIHRvIHJlLWlu
aXQgaG9zdA0KPiANCj4gT24gVGh1LCBGZWIgMTMsIDIwMjAgYXQgMTI6MDY6MzhQTSArMDgwMCwg
WmhpcWlhbmcgSG91IHdyb3RlOg0KPiA+IEZyb206IEhvdSBaaGlxaWFuZyA8WmhpcWlhbmcuSG91
QG54cC5jb20+DQo+ID4NCj4gPiBBbGxvdyB0aGUgbW9iaXZlaWxfaG9zdF9pbml0KCkgZnVuY3Rp
b24gdG8gYmUgdXNlZCB0byByZS1pbml0IGhvc3QNCj4gPiBjb250cm9sbGVyJ3MgUEFCIGFuZCBH
UEVYIENTUiByZWdpc3RlciBibG9jaywgYXMgTlhQIGludGVncmF0ZWQNCj4gPiBNb2JpdmVpbCBJ
UCBoYXMgdG8gcmVzZXQgYW5kIHRoZW4gcmUtaW5pdCB0aGUgUEFCIGFuZCBHUEVYIENTUg0KPiA+
IHJlZ2lzdGVycyB1cG9uIGhvdC1yZXNldC4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEhvdSBa
aGlxaWFuZyA8WmhpcWlhbmcuSG91QG54cC5jb20+DQo+ID4gUmV2aWV3ZWQtYnk6IFN1YnJhaG1h
bnlhIExpbmdhcHBhIDxsLnN1YnJhaG1hbnlhQG1vYml2ZWlsLmNvLmluPg0KPiANCj4gUmV2aWV3
ZWQtYnk6IEFuZHJldyBNdXJyYXkgPGFtdXJyYXlAdGhlZ29vZHBlbmd1aW4uY28udWs+DQo+IA0K
PiA+IC0tLQ0KPiA+IFYxMDoNCj4gPiAgLSBSZWZpbmVkIHRoZSBzdWJqZWN0IGFuZCBjaGFuZ2Ug
bG9nLg0KPiA+DQo+ID4gIC4uLi9jb250cm9sbGVyL21vYml2ZWlsL3BjaWUtbW9iaXZlaWwtaG9z
dC5jICB8IDE5ICsrKysrKysrKysrKy0tLS0tLS0NCj4gPiAgLi4uL3BjaS9jb250cm9sbGVyL21v
Yml2ZWlsL3BjaWUtbW9iaXZlaWwuaCAgIHwgIDEgKw0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDEz
IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9wY2kvY29udHJvbGxlci9tb2JpdmVpbC9wY2llLW1vYml2ZWlsLWhvc3QuYw0KPiA+IGIv
ZHJpdmVycy9wY2kvY29udHJvbGxlci9tb2JpdmVpbC9wY2llLW1vYml2ZWlsLWhvc3QuYw0KPiA+
IGluZGV4IDUzYWI4NDEyYTFkZS4uNDRkZDY0MWZlZGUzIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvbW9iaXZlaWwvcGNpZS1tb2JpdmVpbC1ob3N0LmMNCj4gPiArKysg
Yi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL21vYml2ZWlsL3BjaWUtbW9iaXZlaWwtaG9zdC5jDQo+
ID4gQEAgLTIyMSwxOCArMjIxLDIzIEBAIHN0YXRpYyB2b2lkIG1vYml2ZWlsX3BjaWVfZW5hYmxl
X21zaShzdHJ1Y3QNCj4gbW9iaXZlaWxfcGNpZSAqcGNpZSkNCj4gPiAgCXdyaXRlbF9yZWxheGVk
KDEsIHBjaWUtPmFwYl9jc3JfYmFzZSArIE1TSV9FTkFCTEVfT0ZGU0VUKTsgIH0NCj4gPg0KPiA+
IC1zdGF0aWMgaW50IG1vYml2ZWlsX2hvc3RfaW5pdChzdHJ1Y3QgbW9iaXZlaWxfcGNpZSAqcGNp
ZSkNCj4gPiAraW50IG1vYml2ZWlsX2hvc3RfaW5pdChzdHJ1Y3QgbW9iaXZlaWxfcGNpZSAqcGNp
ZSwgYm9vbCByZWluaXQpDQo+ID4gIHsNCj4gPiAgCXN0cnVjdCBtb2JpdmVpbF9yb290X3BvcnQg
KnJwID0gJnBjaWUtPnJwOw0KPiA+ICAJc3RydWN0IHBjaV9ob3N0X2JyaWRnZSAqYnJpZGdlID0g
cnAtPmJyaWRnZTsNCj4gPiAgCXUzMiB2YWx1ZSwgcGFiX2N0cmwsIHR5cGU7DQo+ID4gIAlzdHJ1
Y3QgcmVzb3VyY2VfZW50cnkgKndpbjsNCj4gPg0KPiA+IC0JLyogc2V0dXAgYnVzIG51bWJlcnMg
Ki8NCj4gPiAtCXZhbHVlID0gbW9iaXZlaWxfY3NyX3JlYWRsKHBjaWUsIFBDSV9QUklNQVJZX0JV
Uyk7DQo+ID4gLQl2YWx1ZSAmPSAweGZmMDAwMDAwOw0KPiA+IC0JdmFsdWUgfD0gMHgwMGZmMDEw
MDsNCj4gPiAtCW1vYml2ZWlsX2Nzcl93cml0ZWwocGNpZSwgdmFsdWUsIFBDSV9QUklNQVJZX0JV
Uyk7DQo+ID4gKwlwY2llLT5pYl93aW5zX2NvbmZpZ3VyZWQgPSAwOw0KPiA+ICsJcGNpZS0+b2Jf
d2luc19jb25maWd1cmVkID0gMDsNCj4gPiArDQo+ID4gKwlpZiAoIXJlaW5pdCkgew0KPiA+ICsJ
CS8qIHNldHVwIGJ1cyBudW1iZXJzICovDQo+ID4gKwkJdmFsdWUgPSBtb2JpdmVpbF9jc3JfcmVh
ZGwocGNpZSwgUENJX1BSSU1BUllfQlVTKTsNCj4gPiArCQl2YWx1ZSAmPSAweGZmMDAwMDAwOw0K
PiA+ICsJCXZhbHVlIHw9IDB4MDBmZjAxMDA7DQo+ID4gKwkJbW9iaXZlaWxfY3NyX3dyaXRlbChw
Y2llLCB2YWx1ZSwgUENJX1BSSU1BUllfQlVTKTsNCj4gPiArCX0NCj4gPg0KPiA+ICAJLyoNCj4g
PiAgCSAqIHByb2dyYW0gQnVzIE1hc3RlciBFbmFibGUgQml0IGluIENvbW1hbmQgUmVnaXN0ZXIg
aW4gUEFCIENvbmZpZw0KPiA+IEBAIC01NzYsNyArNTgxLDcgQEAgaW50IG1vYml2ZWlsX3BjaWVf
aG9zdF9wcm9iZShzdHJ1Y3QgbW9iaXZlaWxfcGNpZQ0KPiAqcGNpZSkNCj4gPiAgCSAqIGNvbmZp
Z3VyZSBhbGwgaW5ib3VuZCBhbmQgb3V0Ym91bmQgd2luZG93cyBhbmQgcHJlcGFyZSB0aGUgUkMg
Zm9yDQo+ID4gIAkgKiBjb25maWcgYWNjZXNzDQo+ID4gIAkgKi8NCj4gPiAtCXJldCA9IG1vYml2
ZWlsX2hvc3RfaW5pdChwY2llKTsNCj4gPiArCXJldCA9IG1vYml2ZWlsX2hvc3RfaW5pdChwY2ll
LCBmYWxzZSk7DQo+ID4gIAlpZiAocmV0KSB7DQo+ID4gIAkJZGV2X2VycihkZXYsICJGYWlsZWQg
dG8gaW5pdGlhbGl6ZSBob3N0XG4iKTsNCj4gPiAgCQlyZXR1cm4gcmV0Ow0KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL21vYml2ZWlsL3BjaWUtbW9iaXZlaWwuaA0KPiA+
IGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9tb2JpdmVpbC9wY2llLW1vYml2ZWlsLmgNCj4gPiBp
bmRleCAzNDZiZjc5YTU4MWIuLjYyM2M1ZjBjNDQ0MSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJz
L3BjaS9jb250cm9sbGVyL21vYml2ZWlsL3BjaWUtbW9iaXZlaWwuaA0KPiA+ICsrKyBiL2RyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvbW9iaXZlaWwvcGNpZS1tb2JpdmVpbC5oDQo+ID4gQEAgLTE2Niw2
ICsxNjYsNyBAQCBzdHJ1Y3QgbW9iaXZlaWxfcGNpZSB7ICB9Ow0KPiA+DQo+ID4gIGludCBtb2Jp
dmVpbF9wY2llX2hvc3RfcHJvYmUoc3RydWN0IG1vYml2ZWlsX3BjaWUgKnBjaWUpOw0KPiA+ICtp
bnQgbW9iaXZlaWxfaG9zdF9pbml0KHN0cnVjdCBtb2JpdmVpbF9wY2llICpwY2llLCBib29sIHJl
aW5pdCk7DQo+ID4gIGJvb2wgbW9iaXZlaWxfcGNpZV9saW5rX3VwKHN0cnVjdCBtb2JpdmVpbF9w
Y2llICpwY2llKTsgIGludA0KPiA+IG1vYml2ZWlsX2JyaW5ndXBfbGluayhzdHJ1Y3QgbW9iaXZl
aWxfcGNpZSAqcGNpZSk7ICB2b2lkDQo+ID4gcHJvZ3JhbV9vYl93aW5kb3dzKHN0cnVjdCBtb2Jp
dmVpbF9wY2llICpwY2llLCBpbnQgd2luX251bSwgdTY0DQo+ID4gY3B1X2FkZHIsDQo+ID4gLS0N
Cj4gPiAyLjE3LjENCj4gPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
