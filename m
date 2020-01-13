Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA46D138E68
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 11:00:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tuW+2j2tC/Pcivo416/zYt0XkeNZ2RwvC8mMnp0xTWw=; b=Y8XFsDplFYji9A
	Lj0l245STIYJeiZM3QFRi+J93A32BhHveIduSN9OJr2oVERz40XnIzy4tZ3fHVehonAqThFmsiS4+
	E+RQ9a84EIjmYyK/D+Ubjsma/Tltln8cwLUFZPebojAAAKOyA4ProEEkyya+H76yi4uQ5r0n6BcQV
	lwjh6uBH7M9PyiQV2zpTpsmlXudzz2sxE+rCUKRv7PeGZdPZZII7zfVxIdtd6sPDCv7YjFM2qGJoD
	bBIbVCHEZcS8IDM5t1ReIuI4Q5RnGYIFPewcBgRI8Ed0d5+3ZmIN8Vzj3bJNA6oxIzEb2eJKqtTXq
	IVD/bpaFzSDdkmDMvoqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqwVn-0000CO-HZ; Mon, 13 Jan 2020 09:59:55 +0000
Received: from mail-eopbgr70045.outbound.protection.outlook.com ([40.107.7.45]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqwVN-0008QF-PU
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 09:59:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TNoTCfKc7cbb59ae24DZIarIabCh8Le/XKElyy4/k2UN09QHnRpLxKKiw/dn+KJlxazPw9ZdZyvNgHWgY9X7aizdJHwmXR/GfYBpKuQ/ZsLIWuSWYqu6nSD92HJHhhl7oRW7GJyAjyv3lbUsC56SxEQ3ydTNANKOyNMAPM2xO5Gs632UXsfzcnYxqiLnSjVaaUxLuslmvYg6em9W6PddywRWBBM+OnLVih3siB2mbzvu/GdLVbdHqFKNr5kyOUc2DnkjF1V93/2HwIN0cw+lCOjzRTntZjwVFIakSj3mYay0it6iOOpDHojLytaPuY8pd914CJyARwf4cN7vnaOKoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dbEatXMBrj0x0ICDnGWcEZrOY7xPagEsurxWski5hNA=;
 b=eQ/OWFcuHaNcvpLsqm/3qtos/H275+fcDYqjKxv/OB9cmZzprnuWY+1j2qiQbP2B4FrqKMk+nctNM0SgsyAfChSD/TMx7QQKezCC4QhR/ZHx36oH8ocGzGTiN1LQxuPR1oA3Oe0EcHdqRLTjofmmbT14VsaYAdkuExyFpT9U7qWm++L0iG5grUQ8uF0wRyXN9pkWG9eDvcLNJl+PywCwWmcRYDieSgS0pEqfRo0d+UZc0ES5h3bLIbGXfaItvrXlYxVf7H0/KHVZ3psZHYV3DfayAOeZlIqmhH+c+s1V3h8wxSBRspjo546dvOBdkdEkAPe9dgZ0GXRd7EnXupdsqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dbEatXMBrj0x0ICDnGWcEZrOY7xPagEsurxWski5hNA=;
 b=BaSn1iIc9MqNlBGz74SbZFqD063QyKAN8I1Ge1oKA5L+N1hkh/s7sqS4ox535l8uxvHKqTs2HKbwn452c5OcJeDR2QhDnywmitT9gJAw6n/JQDt5EkCwDo83Oea6SvrVCeiSsT99N/gMPNHQqyqVaL87KWlr7nQByXIiH347Av4=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4554.eurprd04.prod.outlook.com (52.135.138.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.13; Mon, 13 Jan 2020 09:59:25 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::5cb4:81c8:1618:5ca]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::5cb4:81c8:1618:5ca%7]) with mapi id 15.20.2623.015; Mon, 13 Jan 2020
 09:59:25 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Marc Zyngier <maz@kernel.org>
Subject: RE: [PATCH V4 RESEND 1/2] dt-bindings/irq: add binding for NXP INTMUX
 interrupt multiplexer
Thread-Topic: [PATCH V4 RESEND 1/2] dt-bindings/irq: add binding for NXP
 INTMUX interrupt multiplexer
Thread-Index: AQHVyeDroUXufH5Iq0+ZDldne7GnO6foUHcAgAAL3oA=
Date: Mon, 13 Jan 2020 09:59:25 +0000
Message-ID: <DB7PR04MB46185D8F8B19ADFCDBF857FBE6350@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <1578899321-1365-1-git-send-email-qiangqing.zhang@nxp.com>
 <1578899321-1365-2-git-send-email-qiangqing.zhang@nxp.com>
 <e5aa95d7fd1c2d9c0586b7d8689cbfa0@kernel.org>
In-Reply-To: <e5aa95d7fd1c2d9c0586b7d8689cbfa0@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1e8008f4-3e29-48f0-4225-08d7980f457d
x-ms-traffictypediagnostic: DB7PR04MB4554:|DB7PR04MB4554:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB45542D197095D40F884A338BE6350@DB7PR04MB4554.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:538;
x-forefront-prvs: 028166BF91
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10001)(10009020)(4636009)(39860400002)(396003)(376002)(366004)(136003)(346002)(199004)(189003)(86362001)(54906003)(316002)(8676002)(186003)(966005)(45080400002)(71200400001)(478600001)(8936002)(55016002)(4326008)(2906002)(9686003)(52536014)(7416002)(66946007)(66446008)(66476007)(64756008)(66556008)(33656002)(6916009)(26005)(5660300002)(81166006)(7696005)(81156014)(6506007)(76116006)(53546011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4554;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: x4hQ5PCdUDpOwhFAYYUCJ9OkAcEAdf3cPonZM3v3bQT8+/yRvMLZLbLHPLcEUtcKR/g2LEEXI14ZWDct1uk9xcNZDGjFuzw1UUcsQrDZzKsJ4nKirKr90pfkQehsS3opvwpYeeF24DhPIKWnxqMnSiXo75eWAQfd1JB+AGnisDNUzZaSl3JEENQ2IHBjBBYHC4sWhNn8EptB6/vuXC7b+iaDsIzyMNJ6U7p1ITTNgrc3ZnSHHjnYfpoXer1BZp6ghc55Ink5CXBbghBmJjF/s2NpEgIVX3VSDQwpgRywfFVvV26gQW4q8SncRDkt36Vy9NqgUGSpNsz02LQ35NvQCezBZ77a/IcBxcUcEtzZrOmwjJpKuIuHXTr0dgmmolzHP0R7ls7BLQhO/XyfeAd75XB7guP3RSjNkkHUdMGg8q2ZhfUv0lxYrek02t/9xD/yFD5mgnJucEghxz2ENvNU6lwQnlcbTuHP5XXAECOSh8YtYDEcNAjI/QRyoLvRXGrnTMiOMsyywRhtXIKTCguoTtIAL4VFhOEME62wt3WxS2A9D/r+H1RQgnt/S3PgJkdOlqdUJpYmKeLQcKWuy3lfgvt3rfMjmH/z+yf9jgGHCZevzgeA1XDqDKiVyiHgoL6o
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e8008f4-3e29-48f0-4225-08d7980f457d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2020 09:59:25.0974 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G5TIRnY+H/8LDL2ntzxDhHF0WABkdnPZHVIVhGnJ0l6UZTS+vIV4c2Sfldw3+7gYyoS0JAAEVT/zwEgJxQzARQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4554
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_015929_844713_356344CF 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Andy Duan <fugang.duan@nxp.com>, "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IE1hcmMgWnluZ2llciA8bWF6
QGtlcm5lbC5vcmc+DQo+IFNlbnQ6IDIwMjDE6jHUwjEzyNUgMTc6MTYNCj4gVG86IEpvYWtpbSBa
aGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5jb20+DQo+IENjOiBqYXNvbkBsYWtlZGFlbW9uLm5l
dDsgdGdseEBsaW51dHJvbml4LmRlOyByb2JoK2R0QGtlcm5lbC5vcmc7DQo+IG1hcmsucnV0bGFu
ZEBhcm0uY29tOyBzaGF3bmd1b0BrZXJuZWwub3JnOyBzLmhhdWVyQHBlbmd1dHJvbml4LmRlOw0K
PiBrZXJuZWxAcGVuZ3V0cm9uaXguZGU7IGZlc3RldmFtQGdtYWlsLmNvbTsgbGludXgta2VybmVs
QHZnZXIua2VybmVsLm9yZzsNCj4gZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgZGwtbGludXgtaW14DQo+IDxsaW51eC1pbXhA
bnhwLmNvbT47IEFuZHkgRHVhbiA8ZnVnYW5nLmR1YW5AbnhwLmNvbT4NCj4gU3ViamVjdDogUmU6
IFtQQVRDSCBWNCBSRVNFTkQgMS8yXSBkdC1iaW5kaW5ncy9pcnE6IGFkZCBiaW5kaW5nIGZvciBO
WFANCj4gSU5UTVVYIGludGVycnVwdCBtdWx0aXBsZXhlcg0KPiANCj4gT24gMjAyMC0wMS0xMyAw
NzowOCwgSm9ha2ltIFpoYW5nIHdyb3RlOg0KPiA+IFRoaXMgcGF0Y2ggYWRkcyB0aGUgRFQgYmlu
ZGluZ3MgZm9yIHRoZSBOWFAgSU5UTVVYIGludGVycnVwdA0KPiA+IG11bHRpcGxleGVyIGZvciBp
Lk1YOCBmYW1pbHkgU29Dcy4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvYWtpbSBaaGFuZyA8
cWlhbmdxaW5nLnpoYW5nQG54cC5jb20+DQo+ID4gLS0tDQo+ID4gIC4uLi9pbnRlcnJ1cHQtY29u
dHJvbGxlci9mc2wsaW50bXV4LnlhbWwgICAgICB8IDc3ICsrKysrKysrKysrKysrKysrKysNCj4g
PiAgMSBmaWxlIGNoYW5nZWQsIDc3IGluc2VydGlvbnMoKykNCj4gPiAgY3JlYXRlIG1vZGUgMTAw
NjQ0DQo+ID4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2ludGVycnVwdC1jb250
cm9sbGVyL2ZzbCxpbnRtdXgueWFtbA0KPiA+DQo+ID4gZGlmZiAtLWdpdA0KPiA+IGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2ZzbCxpbnRt
dXgueWENCj4gPiBtbA0KPiA+IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2lu
dGVycnVwdC1jb250cm9sbGVyL2ZzbCxpbnRtdXgueWENCj4gPiBtbA0KPiA+IG5ldyBmaWxlIG1v
ZGUgMTAwNjQ0DQo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi40ZGJhNTMyZmUwYmQNCj4gPiAtLS0g
L2Rldi9udWxsDQo+ID4gKysrDQo+ID4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvZnNsLGludG11eC55YQ0KPiA+IG1sDQo+ID4gQEAgLTAs
MCArMSw3NyBAQA0KPiA+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCBPUiBC
U0QtMi1DbGF1c2UpICVZQU1MIDEuMg0KPiA+ICstLS0NCj4gPiArJGlkOg0KPiA+IGh0dHBzOi8v
ZXVyMDEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwJTNBJTJGJTJG
ZGV2aWMNCj4gPg0KPiBldHJlZS5vcmclMkZzY2hlbWFzJTJGaW50ZXJydXB0LWNvbnRyb2xsZXIl
MkZmc2wlMkNpbnRtdXgueWFtbCUyMyZhbQ0KPiBwOw0KPiA+DQo+IGRhdGE9MDIlN0MwMSU3Q3Fp
YW5ncWluZy56aGFuZyU0MG54cC5jb20lN0MzZjc0ZWE1ZDRlZTg0ZGZjZDQ5OTA4DQo+IGQ3OTgw
DQo+ID4NCj4gOTQxZjIlN0M2ODZlYTFkM2JjMmI0YzZmYTkyY2Q5OWM1YzMwMTYzNSU3QzAlN0Mw
JTdDNjM3MTQ1MDM3ODUxDQo+IDU0NTkyNCYNCj4gPg0KPiBhbXA7c2RhdGE9NHdZRkZuZHpYOWVj
ZXhhQWtHRUUzaFFMMnd1SEwxN0xVcldwODR3SHlZNCUzRCZhbXA7DQo+IHJlc2VydmVkPQ0KPiA+
IDANCj4gPiArJHNjaGVtYToNCj4gPiAraHR0cHM6Ly9ldXIwMS5zYWZlbGlua3MucHJvdGVjdGlv
bi5vdXRsb29rLmNvbS8/dXJsPWh0dHAlM0ElMkYlMkZkZXZpDQo+ID4NCj4gK2NldHJlZS5vcmcl
MkZtZXRhLXNjaGVtYXMlMkZjb3JlLnlhbWwlMjMmYW1wO2RhdGE9MDIlN0MwMSU3Q3FpYQ0KPiBu
Z3FpbmcNCj4gPg0KPiArLnpoYW5nJTQwbnhwLmNvbSU3QzNmNzRlYTVkNGVlODRkZmNkNDk5MDhk
Nzk4MDk0MWYyJTdDNjg2ZWExZDNiDQo+IGMyYjRjNg0KPiA+DQo+ICtmYTkyY2Q5OWM1YzMwMTYz
NSU3QzAlN0MwJTdDNjM3MTQ1MDM3ODUxNTQ1OTI0JmFtcDtzZGF0YT0yTmJyQw0KPiBBZ2pEQnJw
DQo+ID4gK2x6WVB1bFZzWSUyRm1IZ1Z1cHNvbnd3SzFnbiUyQnNkQjdvJTNEJmFtcDtyZXNlcnZl
ZD0wDQo+ID4gKw0KPiA+ICt0aXRsZTogRnJlZXNjYWxlIElOVE1VWCBpbnRlcnJ1cHQgbXVsdGlw
bGV4ZXINCj4gPiArDQo+ID4gK21haW50YWluZXJzOg0KPiA+ICsgIC0gTWFyYyBaeW5naWVyIDxt
YXpAa2VybmVsLm9yZz4NCj4gDQo+IEVyci4uLiBOby4gSSBoYXZlIGFic29sdXRlbHkgbm8gZGVz
aXJlIHRvIG1haW50YWluIHRoaXMgYmluZGluZyBvbiBpdHMgb3duLg0KPiBGZWVsIGZyZWUgdG8g
YWRkIHlvdXJzZWxmIGFzIHRoZSBtYWludGFpbmVyIGZvciB0aGlzIGZpbGUsIGFzIEknbSBtZXJl
bHkgdGhlDQo+IGNvbmR1aXQgZm9yIHVwZGF0ZXMgdG8gaXJxY2hpcCBEVCBiaW5kaW5ncy4NCg0K
R290IGl0ISBUaGFua3M6LSkNCg0KQmVzdCBSZWdhcmRzLA0KSm9ha2ltIFpoYW5nDQo+IFRoYW5r
cywNCj4gDQo+ICAgICAgICAgIE0uDQo+IC0tDQo+IEphenogaXMgbm90IGRlYWQuIEl0IGp1c3Qg
c21lbGxzIGZ1bm55Li4uDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
