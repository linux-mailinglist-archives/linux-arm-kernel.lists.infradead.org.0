Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C9BD4BB5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 03:12:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1F1noErJww5V4i4ScIvfqE9Ovzdzr1rkVVBfKIsabpk=; b=rgjmRvN48cKMzH
	6RCNa97KoSKq9WFznFt9pPL1zv4JMQZhGRaAXJ0n2PycSTbDDMoOFkrA94YeJsBU9yOH7FjJiFRLr
	1RZTo6EZkX9REWuqTqE0RYr6/kjZ6APgkZI2l0TgKtLymK7TpHSKGtog/ilSh2tPZSHI0mvAuwIXQ
	XJt6uNssb0PinahiDk5cFX6prshBFf6gD3HkC7krjVQJFySkDlImPT10dl+U/XfMFoAtbGFZZVHVA
	qKYjyyfmFY+f7pi2N0qFk0nJ0RXJhtV5GZ0i5km/WqsUHwwzMN5RhAvKK+l7XSrtNma6iSjZJu3lk
	Tg6hL0NdL3PLL4qVSEOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ5xT-0002jh-6R; Sat, 12 Oct 2019 01:12:35 +0000
Received: from mail-eopbgr40081.outbound.protection.outlook.com ([40.107.4.81]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ5xJ-0002j4-OF
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 01:12:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NM3KGEDGEtE/EKF6wIa1/HTrZt8T0eTixWqTGr1TyZ01EAVk5Qk9qj1pVPesyidVWs1FOUI15F1Yrex6iiPrfA/5kFKUEH1VKLxcXPH2GsGSONXZ4akHi/XFzqbsJVO80Uw4iqWYUO5+cd/ZIvkVYvEHbiR4ePH+ZxhYhHHObWTKq6xnhLvcPZJ2SjOssl7m2y6BiKA8O35DLMXEnx0wz7v3o74nNlhk7OlsW9Cmke/KcSD9OSohf7wOGCvLv1xedtpk6PSxsTAOe31da0T9z95J6TV0mwHF13SRIMUqG7ARrULiGzpUBsudPyf30wK/0q1cVFvYaLeCHA8vReYMxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qGqhF32OCjdevQWdpph4Q+yFa4fttmG7/i+fU6kFhvk=;
 b=OY1O1ylkodPltmM3VSld4M+54JB4WFDU+FiSPBsKZE+xKFvUqTA+oCtHnhb1Z+G+DG8ZPSOevZUbh+AjGnD/QtVF7MlUjDnCXEXlXsOYwnDxAFIWwFkihYHqhObJhyYKI0GcuUaElozzfaxSaIn4/Uon7+0D/L0xtSwfeSXtd/IfTWNuPvlHw74B1wm2RKU1R6nrE0Nr/rhBOjcggsP2qfNMiyq1qbcrPVeYDEdl7ofYhzjIR8fUCfq6wrauL9ONkxyqxabBKCeyAREZFsMaDdRARbCbNH+86kOR5fo7QMKIuZfhLB8nlz+iPUaejEPtARDG9bFqyLLrh1rc0ppovw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qGqhF32OCjdevQWdpph4Q+yFa4fttmG7/i+fU6kFhvk=;
 b=LtjmAO8lWDLi/DeYAz9Vs+zUwyoX3lNHekCTVvQ9meqS1/3HZG3agLFz5LVQlYaJSGFCrUjNlUJqJikYt7++v7jx2Jb/RE5UxtYTXQKTBf7DBQ5K4OSw6Z9XKSOW2OEe7Ml/qj1dks1KCbdLy/utvNQnIqkd9wKMg0VV7XichME=
Received: from AM0PR0402MB3570.eurprd04.prod.outlook.com (52.133.46.11) by
 AM0PR0402MB3923.eurprd04.prod.outlook.com (52.133.39.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Sat, 12 Oct 2019 01:12:18 +0000
Received: from AM0PR0402MB3570.eurprd04.prod.outlook.com
 ([fe80::a894:264d:5dfc:20f4]) by AM0PR0402MB3570.eurprd04.prod.outlook.com
 ([fe80::a894:264d:5dfc:20f4%6]) with mapi id 15.20.2347.021; Sat, 12 Oct 2019
 01:12:18 +0000
From: Richard Zhu <hongxing.zhu@nxp.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Subject: RE: [EXT] Re: [RESEND PATCH v5 4/4] mailbox: imx: add support for imx
 v1 mu
Thread-Topic: [EXT] Re: [RESEND PATCH v5 4/4] mailbox: imx: add support for
 imx v1 mu
Thread-Index: AQHVS0zBXMw0VywGrk2QggOrf1Hb06bs70WAgGPNT4CAATOa0IAErPTw
Date: Sat, 12 Oct 2019 01:12:18 +0000
Message-ID: <AM0PR0402MB357085BEB3A0B7FD7D5649AA8C960@AM0PR0402MB3570.eurprd04.prod.outlook.com>
References: <1564980742-19124-1-git-send-email-hongxing.zhu@nxp.com>
 <1564980742-19124-5-git-send-email-hongxing.zhu@nxp.com>
 <CAEnQRZBoLw5pfZ10STGMRfmR7=6hFjYNFOmXiMAnbM+-8Q4uLg@mail.gmail.com>
 <CAEnQRZCkoA-q=C6nU0L_i33W8iTPY2RC4Cvb-aWuExA8VEqM4g@mail.gmail.com>
 <AM0PR0402MB35709FCA367D132B3E1634118C950@AM0PR0402MB3570.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR0402MB35709FCA367D132B3E1634118C950@AM0PR0402MB3570.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hongxing.zhu@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 618b2e80-43b1-4b24-7481-08d74eb13a22
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: AM0PR0402MB3923:|AM0PR0402MB3923:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR0402MB39232453DA56D12F3FC80F9A8C960@AM0PR0402MB3923.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0188D66E61
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(346002)(136003)(396003)(376002)(13464003)(189003)(199004)(305945005)(6436002)(7736002)(55016002)(11346002)(15650500001)(71200400001)(446003)(26005)(6916009)(186003)(33656002)(9686003)(71190400001)(53546011)(6506007)(102836004)(6246003)(6306002)(966005)(8936002)(2906002)(14454004)(86362001)(25786009)(66946007)(76116006)(66446008)(64756008)(66556008)(66476007)(478600001)(66066001)(74316002)(7696005)(4326008)(476003)(229853002)(3846002)(76176011)(486006)(6116002)(99286004)(256004)(14444005)(52536014)(81156014)(81166006)(8676002)(316002)(5660300002)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR0402MB3923;
 H:AM0PR0402MB3570.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: v0SaFAQv7SkmpLc/ezu2fQ59M4V0ukDuU/W+aalvPswacWVLRORi5IP3volS8Sqd065Eku8KSocLdgDdsvEy54IoJUlIBTvSbbzK/u3JZqPGXdRLGq1Ssx7+asu5mKA9s8WNQLi3B3mWlVP7sL0nKJJWvgWQjepULczI6Q8Em6XXJFiyNKcOZKwGjzp6Vz7PDijeIprzya0xVpxDvmGkONtfFmqy6q0sgiUQ3IeJ2qZlvvagfehkxoeudx8CjpobE1gG8/0PsNdw0X0bxnHEEbgIaWoEKUjJhoaJVCwLMk1HiqsyM/LkBgn3QZLW0PsEKPXIZ4pUYXgbjpjXpq+KyKUmcvDV/WXMH7/c9TlgC7ZJA51PPqheKxPst8wl9Uh+QsQDMwS4g7lPkCuVG9JB87B/PK7h2/eTwRhs/640vAZ1q821jB6tvoqbnwoY/WiIaBTTtokVm7cmlPpit8HmwQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 618b2e80-43b1-4b24-7481-08d74eb13a22
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2019 01:12:18.5920 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zTYXMFSvZ0b5ijvcIyhCz99oxCk7aiKh1FvNiP7SvvbTMVOOvMbZB0IeD3Y4On+5FoIEHN+3pezR/t3Cnlu9Kw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3923
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_181225_921578_CCEBB599 
X-CRM114-Status: GOOD (  22.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.81 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Oleksij Rempel <o.rempel@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRGFuaWVsOg0KTmV3IHZlcnNpb24gcGF0Y2gtc2V0IGhhZCBiZWVuIHNlbnQgb3V0IG9uIE9j
dDkuDQpodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzExMTgwNjgzLw0KDQoNCkJl
c3QgUmVnYXJkcw0KUmljaGFyZCBaaHUNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0K
PiBGcm9tOiBSaWNoYXJkIFpodQ0KPiBTZW50OiAyMDE55bm0MTDmnIg55pelIDk6NDgNCj4gVG86
IERhbmllbCBCYWx1dGEgPGRhbmllbC5iYWx1dGFAZ21haWwuY29tPg0KPiBDYzogamFzc2lzaW5n
aGJyYXJAZ21haWwuY29tOyBPbGVrc2lqIFJlbXBlbCA8by5yZW1wZWxAcGVuZ3V0cm9uaXguZGU+
Ow0KPiBEYW5pZWwgQmFsdXRhIDxkYW5pZWwuYmFsdXRhQG54cC5jb20+OyBBaXNoZW5nIERvbmcN
Cj4gPGFpc2hlbmcuZG9uZ0BueHAuY29tPjsgZGwtbGludXgtaW14IDxsaW51eC1pbXhAbnhwLmNv
bT47IExpbnV4IEtlcm5lbA0KPiBNYWlsaW5nIExpc3QgPGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5l
bC5vcmc+OyBsaW51eC1hcm0ta2VybmVsDQo+IDxsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmc+DQo+IFN1YmplY3Q6IFJFOiBbRVhUXSBSZTogW1JFU0VORCBQQVRDSCB2NSA0LzRd
IG1haWxib3g6IGlteDogYWRkIHN1cHBvcnQgZm9yDQo+IGlteCB2MSBtdQ0KPiANCj4gSGkgRGFu
aWVsOg0KPiANCj4gDQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBE
YW5pZWwgQmFsdXRhIDxkYW5pZWwuYmFsdXRhQGdtYWlsLmNvbT4NCj4gPiBTZW50OiAyMDE55bm0
MTDmnIg45pelIDE1OjI2DQo+ID4gVG86IFJpY2hhcmQgWmh1IDxob25neGluZy56aHVAbnhwLmNv
bT4NCj4gPiBDYzogamFzc2lzaW5naGJyYXJAZ21haWwuY29tOyBPbGVrc2lqIFJlbXBlbA0KPiA+
IDxvLnJlbXBlbEBwZW5ndXRyb25peC5kZT47IERhbmllbCBCYWx1dGEgPGRhbmllbC5iYWx1dGFA
bnhwLmNvbT47DQo+ID4gQWlzaGVuZyBEb25nIDxhaXNoZW5nLmRvbmdAbnhwLmNvbT47IGRsLWxp
bnV4LWlteA0KPiA8bGludXgtaW14QG54cC5jb20+Ow0KPiA+IExpbnV4IEtlcm5lbCBNYWlsaW5n
IExpc3QgPGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc+Ow0KPiA+IGxpbnV4LWFybS1rZXJu
ZWwgPGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZz4NCj4gPiBTdWJqZWN0OiBb
RVhUXSBSZTogW1JFU0VORCBQQVRDSCB2NSA0LzRdIG1haWxib3g6IGlteDogYWRkIHN1cHBvcnQg
Zm9yDQo+ID4gaW14IHYxIG11DQo+ID4NCj4gPg0KPiA+IEhpIFJpY2hhcmQsDQo+ID4NCj4gPiBD
YW4geW91IHBsZWFzZSByZWJhc2UgYW5kIHJlc2VuZCB0aGlzIHBhdGNoIHNlcmllcz8NCj4gPg0K
PiBbUmljaGFyZCBaaHVdIE5vIHByb2JsZW0sIEkgd291bGQgcmVzZW5kIHRoaXMgcGF0Y2gtc2V0
IGxhdGVyLg0KPiANCj4gDQo+IEJlc3QgUmVnYXJkcw0KPiBSaWNoYXJkIFpodQ0KPiANCj4gPiBP
biBNb24sIEF1ZyA1LCAyMDE5IGF0IDEwOjIxIFBNIERhbmllbCBCYWx1dGENCj4gPiA8ZGFuaWVs
LmJhbHV0YUBnbWFpbC5jb20+DQo+ID4gd3JvdGU6DQo+ID4gPg0KPiA+ID4gT24gTW9uLCBBdWcg
NSwgMjAxOSBhdCA4OjE2IEFNIFJpY2hhcmQgWmh1IDxob25neGluZy56aHVAbnhwLmNvbT4NCj4g
PiB3cm90ZToNCj4gPiA+ID4NCj4gPiA+ID4gVGhlcmUgaXMgYSB2ZXJzaW9uIDEuMCBNVSBvbiBp
Lk1YN1VMUCBwbGF0Zm9ybS4NCj4gPiA+ID4gT25lIG5ldyB2ZXJzaW9uIElEIHJlZ2lzdGVyIGlz
IGFkZGVkLCBhbmQgaXQncyBvZmZzZXQgaXMgMC4NCj4gPiA+ID4gVFJuIHJlZ2lzdGVycyBhcmUg
ZGVmaW5lZCBhdCB0aGUgb2Zmc2V0IDB4MjAgfiAweDJDLg0KPiA+ID4gPiBSUm4gcmVnaXN0ZXJz
IGFyZSBkZWZpbmVkIGF0IHRoZSBvZmZzZXQgMHg0MCB+IDB4NEMuDQo+ID4gPiA+IFNSL0NSIHJl
Z2lzdGVycyBhcmUgZGVmaW5lZCBhdCAweDYwLzB4NjQuDQo+ID4gPiA+IEV4dGVuZCB0aGlzIGRy
aXZlciB0byBzdXBwb3J0IGl0Lg0KPiA+ID4gPg0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBSaWNo
YXJkIFpodSA8aG9uZ3hpbmcuemh1QG54cC5jb20+DQo+ID4gPiA+IFN1Z2dlc3RlZC1ieTogT2xl
a3NpaiBSZW1wZWwgPG8ucmVtcGVsQHBlbmd1dHJvbml4LmRlPg0KPiA+ID4gPiBSZXZpZXdlZC1i
eTogRG9uZyBBaXNoZW5nIDxhaXNoZW5nLmRvbmdAbnhwLmNvbT4NCj4gPiA+ID4gUmV2aWV3ZWQt
Ynk6IE9sZWtzaWogUmVtcGVsIDxvLnJlbXBlbEBwZW5ndXRyb25peC5kZT4NCj4gPiA+DQo+ID4g
PiBWZXJ5IGNsZWFuIHNvbHV0aW9uLiBUaGFua3MgUmljaGFyZCENCj4gPiA+DQo+ID4gPiBSZXZp
ZXdlZC1ieTogRGFuaWVsIEJhbHV0YSA8ZGFuaWVsLmJhbHV0YUBueHAuY29tPg0KPiA+ID4NCj4g
PiA+ID4gLS0tDQo+ID4gPiA+ICBkcml2ZXJzL21haWxib3gvaW14LW1haWxib3guYyB8IDU1DQo+
ID4gPiA+ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0NCj4gPiA+
ID4gIDEgZmlsZSBjaGFuZ2VkLCAzOCBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkNCj4g
PiA+ID4NCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWFpbGJveC9pbXgtbWFpbGJveC5j
DQo+ID4gPiA+IGIvZHJpdmVycy9tYWlsYm94L2lteC1tYWlsYm94LmMgaW5kZXggYWZlNjI1ZS4u
MmNkY2RjNSAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9tYWlsYm94L2lteC1tYWlsYm94
LmMNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9tYWlsYm94L2lteC1tYWlsYm94LmMNCj4gPiA+ID4g
QEAgLTEyLDE5ICsxMiwxMSBAQA0KPiA+ID4gPiAgI2luY2x1ZGUgPGxpbnV4L29mX2RldmljZS5o
Pg0KPiA+ID4gPiAgI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4NCj4gPiA+ID4NCj4gPiA+ID4gLS8q
IFRyYW5zbWl0IFJlZ2lzdGVyICovDQo+ID4gPiA+IC0jZGVmaW5lIElNWF9NVV94VFJuKHgpICAg
ICAgICAgKDB4MDAgKyA0ICogKHgpKQ0KPiA+ID4gPiAtLyogUmVjZWl2ZSBSZWdpc3RlciAqLw0K
PiA+ID4gPiAtI2RlZmluZSBJTVhfTVVfeFJSbih4KSAgICAgICAgICgweDEwICsgNCAqICh4KSkN
Cj4gPiA+ID4gLS8qIFN0YXR1cyBSZWdpc3RlciAqLw0KPiA+ID4gPiAtI2RlZmluZSBJTVhfTVVf
eFNSICAgICAgICAgICAgIDB4MjANCj4gPiA+ID4gICNkZWZpbmUgSU1YX01VX3hTUl9HSVBuKHgp
ICAgICBCSVQoMjggKyAoMyAtICh4KSkpDQo+ID4gPiA+ICAjZGVmaW5lIElNWF9NVV94U1JfUkZu
KHgpICAgICAgQklUKDI0ICsgKDMgLSAoeCkpKQ0KPiA+ID4gPiAgI2RlZmluZSBJTVhfTVVfeFNS
X1RFbih4KSAgICAgIEJJVCgyMCArICgzIC0gKHgpKSkNCj4gPiA+ID4gICNkZWZpbmUgSU1YX01V
X3hTUl9CUkRJUCAgICAgICBCSVQoOSkNCj4gPiA+ID4NCj4gPiA+ID4gLS8qIENvbnRyb2wgUmVn
aXN0ZXIgKi8NCj4gPiA+ID4gLSNkZWZpbmUgSU1YX01VX3hDUiAgICAgICAgICAgICAweDI0DQo+
ID4gPiA+ICAvKiBHZW5lcmFsIFB1cnBvc2UgSW50ZXJydXB0IEVuYWJsZSAqLw0KPiA+ID4gPiAg
I2RlZmluZSBJTVhfTVVfeENSX0dJRW4oeCkgICAgIEJJVCgyOCArICgzIC0gKHgpKSkNCj4gPiA+
ID4gIC8qIFJlY2VpdmUgSW50ZXJydXB0IEVuYWJsZSAqLw0KPiA+ID4gPiBAQCAtNDQsNiArMzYs
MTMgQEAgZW51bSBpbXhfbXVfY2hhbl90eXBlIHsNCj4gPiA+ID4gICAgICAgICBJTVhfTVVfVFlQ
RV9SWERCLCAgICAgICAvKiBSeCBkb29yYmVsbCAqLw0KPiA+ID4gPiAgfTsNCj4gPiA+ID4NCj4g
PiA+ID4gK3N0cnVjdCBpbXhfbXVfZGNmZyB7DQo+ID4gPiA+ICsgICAgICAgdTMyICAgICB4VFJb
NF07ICAgICAgICAgLyogVHJhbnNtaXQgUmVnaXN0ZXJzICovDQo+ID4gPiA+ICsgICAgICAgdTMy
ICAgICB4UlJbNF07ICAgICAgICAgLyogUmVjZWl2ZSBSZWdpc3RlcnMgKi8NCj4gPiA+ID4gKyAg
ICAgICB1MzIgICAgIHhTUjsgICAgICAgICAgICAvKiBTdGF0dXMgUmVnaXN0ZXIgKi8NCj4gPiA+
ID4gKyAgICAgICB1MzIgICAgIHhDUjsgICAgICAgICAgICAvKiBDb250cm9sIFJlZ2lzdGVyICov
DQo+ID4gPiA+ICt9Ow0KPiA+ID4gPiArDQo+ID4gPiA+ICBzdHJ1Y3QgaW14X211X2Nvbl9wcml2
IHsNCj4gPiA+ID4gICAgICAgICB1bnNpZ25lZCBpbnQgICAgICAgICAgICBpZHg7DQo+ID4gPiA+
ICAgICAgICAgY2hhcg0KPiA+IGlycV9kZXNjW0lNWF9NVV9DSEFOX05BTUVfU0laRV07DQo+ID4g
PiA+IEBAIC02MSwxMiArNjAsMjcgQEAgc3RydWN0IGlteF9tdV9wcml2IHsNCj4gPiA+ID4gICAg
ICAgICBzdHJ1Y3QgbWJveF9jaGFuICAgICAgICBtYm94X2NoYW5zW0lNWF9NVV9DSEFOU107DQo+
ID4gPiA+DQo+ID4gPiA+ICAgICAgICAgc3RydWN0IGlteF9tdV9jb25fcHJpdiAgY29uX3ByaXZb
SU1YX01VX0NIQU5TXTsNCj4gPiA+ID4gKyAgICAgICBjb25zdCBzdHJ1Y3QgaW14X211X2RjZmcg
ICAgICAgICpkY2ZnOw0KPiA+ID4gPiAgICAgICAgIHN0cnVjdCBjbGsgICAgICAgICAgICAgICpj
bGs7DQo+ID4gPiA+ICAgICAgICAgaW50ICAgICAgICAgICAgICAgICAgICAgaXJxOw0KPiA+ID4g
Pg0KPiA+ID4gPiAgICAgICAgIGJvb2wgICAgICAgICAgICAgICAgICAgIHNpZGVfYjsNCj4gPiA+
ID4gIH07DQo+ID4gPiA+DQo+ID4gPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGlteF9tdV9kY2Zn
IGlteF9tdV9jZmdfaW14NnN4ID0gew0KPiA+ID4gPiArICAgICAgIC54VFIgICAgPSB7MHgwLCAw
eDQsIDB4OCwgMHhjfSwNCj4gPiA+ID4gKyAgICAgICAueFJSICAgID0gezB4MTAsIDB4MTQsIDB4
MTgsIDB4MWN9LA0KPiA+ID4gPiArICAgICAgIC54U1IgICAgPSAweDIwLA0KPiA+ID4gPiArICAg
ICAgIC54Q1IgICAgPSAweDI0LA0KPiA+ID4gPiArfTsNCj4gPiA+ID4gKw0KPiA+ID4gPiArc3Rh
dGljIGNvbnN0IHN0cnVjdCBpbXhfbXVfZGNmZyBpbXhfbXVfY2ZnX2lteDd1bHAgPSB7DQo+ID4g
PiA+ICsgICAgICAgLnhUUiAgICA9IHsweDIwLCAweDI0LCAweDI4LCAweDJjfSwNCj4gPiA+ID4g
KyAgICAgICAueFJSICAgID0gezB4NDAsIDB4NDQsIDB4NDgsIDB4NGN9LA0KPiA+ID4gPiArICAg
ICAgIC54U1IgICAgPSAweDYwLA0KPiA+ID4gPiArICAgICAgIC54Q1IgICAgPSAweDY0LA0KPiA+
ID4gPiArfTsNCj4gPiA+ID4gKw0KPiA+ID4gPiAgc3RhdGljIHN0cnVjdCBpbXhfbXVfcHJpdiAq
dG9faW14X211X3ByaXYoc3RydWN0IG1ib3hfY29udHJvbGxlcg0KPiA+ID4gPiAqbWJveCkgIHsN
Cj4gPiA+ID4gICAgICAgICByZXR1cm4gY29udGFpbmVyX29mKG1ib3gsIHN0cnVjdCBpbXhfbXVf
cHJpdiwgbWJveCk7IEBADQo+ID4gPiA+IC04OCwxMCArMTAyLDEwIEBAIHN0YXRpYyB1MzIgaW14
X211X3hjcl9ybXcoc3RydWN0IGlteF9tdV9wcml2DQo+ID4gPiA+ICpwcml2LA0KPiA+IHUzMiBz
ZXQsIHUzMiBjbHIpDQo+ID4gPiA+ICAgICAgICAgdTMyIHZhbDsNCj4gPiA+ID4NCj4gPiA+ID4g
ICAgICAgICBzcGluX2xvY2tfaXJxc2F2ZSgmcHJpdi0+eGNyX2xvY2ssIGZsYWdzKTsNCj4gPiA+
ID4gLSAgICAgICB2YWwgPSBpbXhfbXVfcmVhZChwcml2LCBJTVhfTVVfeENSKTsNCj4gPiA+ID4g
KyAgICAgICB2YWwgPSBpbXhfbXVfcmVhZChwcml2LCBwcml2LT5kY2ZnLT54Q1IpOw0KPiA+ID4g
PiAgICAgICAgIHZhbCAmPSB+Y2xyOw0KPiA+ID4gPiAgICAgICAgIHZhbCB8PSBzZXQ7DQo+ID4g
PiA+IC0gICAgICAgaW14X211X3dyaXRlKHByaXYsIHZhbCwgSU1YX01VX3hDUik7DQo+ID4gPiA+
ICsgICAgICAgaW14X211X3dyaXRlKHByaXYsIHZhbCwgcHJpdi0+ZGNmZy0+eENSKTsNCj4gPiA+
ID4gICAgICAgICBzcGluX3VubG9ja19pcnFyZXN0b3JlKCZwcml2LT54Y3JfbG9jaywgZmxhZ3Mp
Ow0KPiA+ID4gPg0KPiA+ID4gPiAgICAgICAgIHJldHVybiB2YWw7DQo+ID4gPiA+IEBAIC0xMTEs
OCArMTI1LDggQEAgc3RhdGljIGlycXJldHVybl90IGlteF9tdV9pc3IoaW50IGlycSwgdm9pZCAq
cCkNCj4gPiA+ID4gICAgICAgICBzdHJ1Y3QgaW14X211X2Nvbl9wcml2ICpjcCA9IGNoYW4tPmNv
bl9wcml2Ow0KPiA+ID4gPiAgICAgICAgIHUzMiB2YWwsIGN0cmwsIGRhdDsNCj4gPiA+ID4NCj4g
PiA+ID4gLSAgICAgICBjdHJsID0gaW14X211X3JlYWQocHJpdiwgSU1YX01VX3hDUik7DQo+ID4g
PiA+IC0gICAgICAgdmFsID0gaW14X211X3JlYWQocHJpdiwgSU1YX01VX3hTUik7DQo+ID4gPiA+
ICsgICAgICAgY3RybCA9IGlteF9tdV9yZWFkKHByaXYsIHByaXYtPmRjZmctPnhDUik7DQo+ID4g
PiA+ICsgICAgICAgdmFsID0gaW14X211X3JlYWQocHJpdiwgcHJpdi0+ZGNmZy0+eFNSKTsNCj4g
PiA+ID4NCj4gPiA+ID4gICAgICAgICBzd2l0Y2ggKGNwLT50eXBlKSB7DQo+ID4gPiA+ICAgICAg
ICAgY2FzZSBJTVhfTVVfVFlQRV9UWDoNCj4gPiA+ID4gQEAgLTEzOCwxMCArMTUyLDEwIEBAIHN0
YXRpYyBpcnFyZXR1cm5fdCBpbXhfbXVfaXNyKGludCBpcnEsIHZvaWQgKnApDQo+ID4gPiA+ICAg
ICAgICAgICAgICAgICBpbXhfbXVfeGNyX3Jtdyhwcml2LCAwLA0KPiBJTVhfTVVfeENSX1RJRW4o
Y3AtPmlkeCkpOw0KPiA+ID4gPiAgICAgICAgICAgICAgICAgbWJveF9jaGFuX3R4ZG9uZShjaGFu
LCAwKTsNCj4gPiA+ID4gICAgICAgICB9IGVsc2UgaWYgKHZhbCA9PSBJTVhfTVVfeFNSX1JGbihj
cC0+aWR4KSkgew0KPiA+ID4gPiAtICAgICAgICAgICAgICAgZGF0ID0gaW14X211X3JlYWQocHJp
diwgSU1YX01VX3hSUm4oY3AtPmlkeCkpOw0KPiA+ID4gPiArICAgICAgICAgICAgICAgZGF0ID0g
aW14X211X3JlYWQocHJpdiwgcHJpdi0+ZGNmZy0+eFJSW2NwLT5pZHhdKTsNCj4gPiA+ID4gICAg
ICAgICAgICAgICAgIG1ib3hfY2hhbl9yZWNlaXZlZF9kYXRhKGNoYW4sICh2b2lkICopJmRhdCk7
DQo+ID4gPiA+ICAgICAgICAgfSBlbHNlIGlmICh2YWwgPT0gSU1YX01VX3hTUl9HSVBuKGNwLT5p
ZHgpKSB7DQo+ID4gPiA+IC0gICAgICAgICAgICAgICBpbXhfbXVfd3JpdGUocHJpdiwgSU1YX01V
X3hTUl9HSVBuKGNwLT5pZHgpLA0KPiA+IElNWF9NVV94U1IpOw0KPiA+ID4gPiArICAgICAgICAg
ICAgICAgaW14X211X3dyaXRlKHByaXYsIElNWF9NVV94U1JfR0lQbihjcC0+aWR4KSwNCj4gPiA+
ID4gKyBwcml2LT5kY2ZnLT54U1IpOw0KPiA+ID4gPiAgICAgICAgICAgICAgICAgbWJveF9jaGFu
X3JlY2VpdmVkX2RhdGEoY2hhbiwgTlVMTCk7DQo+ID4gPiA+ICAgICAgICAgfSBlbHNlIHsNCj4g
PiA+ID4gICAgICAgICAgICAgICAgIGRldl93YXJuX3JhdGVsaW1pdGVkKHByaXYtPmRldiwgIk5v
dCBoYW5kbGVkDQo+ID4gPiA+IGludGVycnVwdFxuIik7IEBAIC0xNTksNyArMTczLDcgQEAgc3Rh
dGljIGludA0KPiA+ID4gPiBpbXhfbXVfc2VuZF9kYXRhKHN0cnVjdCBtYm94X2NoYW4gKmNoYW4s
IHZvaWQgKmRhdGEpDQo+ID4gPiA+DQo+ID4gPiA+ICAgICAgICAgc3dpdGNoIChjcC0+dHlwZSkg
ew0KPiA+ID4gPiAgICAgICAgIGNhc2UgSU1YX01VX1RZUEVfVFg6DQo+ID4gPiA+IC0gICAgICAg
ICAgICAgICBpbXhfbXVfd3JpdGUocHJpdiwgKmFyZywgSU1YX01VX3hUUm4oY3AtPmlkeCkpOw0K
PiA+ID4gPiArICAgICAgICAgICAgICAgaW14X211X3dyaXRlKHByaXYsICphcmcsDQo+ID4gPiA+
ICsgcHJpdi0+ZGNmZy0+eFRSW2NwLT5pZHhdKTsNCj4gPiA+ID4gICAgICAgICAgICAgICAgIGlt
eF9tdV94Y3Jfcm13KHByaXYsDQo+IElNWF9NVV94Q1JfVElFbihjcC0+aWR4KSwgMCk7DQo+ID4g
PiA+ICAgICAgICAgICAgICAgICBicmVhazsNCj4gPiA+ID4gICAgICAgICBjYXNlIElNWF9NVV9U
WVBFX1RYREI6DQo+ID4gPiA+IEBAIC0yNzAsNyArMjg0LDcgQEAgc3RhdGljIHZvaWQgaW14X211
X2luaXRfZ2VuZXJpYyhzdHJ1Y3QNCj4gPiA+ID4gaW14X211X3ByaXYNCj4gPiAqcHJpdikNCj4g
PiA+ID4gICAgICAgICAgICAgICAgIHJldHVybjsNCj4gPiA+ID4NCj4gPiA+ID4gICAgICAgICAv
KiBTZXQgZGVmYXVsdCBNVSBjb25maWd1cmF0aW9uICovDQo+ID4gPiA+IC0gICAgICAgaW14X211
X3dyaXRlKHByaXYsIDAsIElNWF9NVV94Q1IpOw0KPiA+ID4gPiArICAgICAgIGlteF9tdV93cml0
ZShwcml2LCAwLCBwcml2LT5kY2ZnLT54Q1IpOw0KPiA+ID4gPiAgfQ0KPiA+ID4gPg0KPiA+ID4g
PiAgc3RhdGljIGludCBpbXhfbXVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikg
QEAgLTI3OCw2DQo+ID4gPiA+ICsyOTIsNyBAQCBzdGF0aWMgaW50IGlteF9tdV9wcm9iZShzdHJ1
Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQ0KPiA+ID4gPiAgICAgICAgIHN0cnVjdCBkZXZpY2Ug
KmRldiA9ICZwZGV2LT5kZXY7DQo+ID4gPiA+ICAgICAgICAgc3RydWN0IGRldmljZV9ub2RlICpu
cCA9IGRldi0+b2Zfbm9kZTsNCj4gPiA+ID4gICAgICAgICBzdHJ1Y3QgaW14X211X3ByaXYgKnBy
aXY7DQo+ID4gPiA+ICsgICAgICAgY29uc3Qgc3RydWN0IGlteF9tdV9kY2ZnICpkY2ZnOw0KPiA+
ID4gPiAgICAgICAgIHVuc2lnbmVkIGludCBpOw0KPiA+ID4gPiAgICAgICAgIGludCByZXQ7DQo+
ID4gPiA+DQo+ID4gPiA+IEBAIC0yOTUsNiArMzEwLDExIEBAIHN0YXRpYyBpbnQgaW14X211X3By
b2JlKHN0cnVjdA0KPiA+ID4gPiBwbGF0Zm9ybV9kZXZpY2UNCj4gPiAqcGRldikNCj4gPiA+ID4g
ICAgICAgICBpZiAocHJpdi0+aXJxIDwgMCkNCj4gPiA+ID4gICAgICAgICAgICAgICAgIHJldHVy
biBwcml2LT5pcnE7DQo+ID4gPiA+DQo+ID4gPiA+ICsgICAgICAgZGNmZyA9IG9mX2RldmljZV9n
ZXRfbWF0Y2hfZGF0YShkZXYpOw0KPiA+ID4gPiArICAgICAgIGlmICghZGNmZykNCj4gPiA+ID4g
KyAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPiA+ID4gPiArICAgICAgIHByaXYtPmRj
ZmcgPSBkY2ZnOw0KPiA+ID4gPiArDQo+ID4gPiA+ICAgICAgICAgcHJpdi0+Y2xrID0gZGV2bV9j
bGtfZ2V0KGRldiwgTlVMTCk7DQo+ID4gPiA+ICAgICAgICAgaWYgKElTX0VSUihwcml2LT5jbGsp
KSB7DQo+ID4gPiA+ICAgICAgICAgICAgICAgICBpZiAoUFRSX0VSUihwcml2LT5jbGspICE9IC1F
Tk9FTlQpIEBAIC0zNDgsNw0KPiA+ID4gPiArMzY4LDggQEAgc3RhdGljIGludCBpbXhfbXVfcmVt
b3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpDQo+ID4gPiA+IH0NCj4gPiA+ID4NCj4g
PiA+ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGlteF9tdV9kdF9pZHNbXSA9
IHsNCj4gPiA+ID4gLSAgICAgICB7IC5jb21wYXRpYmxlID0gImZzbCxpbXg2c3gtbXUiIH0sDQo+
ID4gPiA+ICsgICAgICAgeyAuY29tcGF0aWJsZSA9ICJmc2wsaW14N3VscC1tdSIsIC5kYXRhID0N
Cj4gJmlteF9tdV9jZmdfaW14N3VscCB9LA0KPiA+ID4gPiArICAgICAgIHsgLmNvbXBhdGlibGUg
PSAiZnNsLGlteDZzeC1tdSIsIC5kYXRhID0NCj4gPiA+ID4gKyAmaW14X211X2NmZ19pbXg2c3gg
fSwNCj4gPiA+ID4gICAgICAgICB7IH0sDQo+ID4gPiA+ICB9Ow0KPiA+ID4gPiAgTU9EVUxFX0RF
VklDRV9UQUJMRShvZiwgaW14X211X2R0X2lkcyk7DQo+ID4gPiA+IC0tDQo+ID4gPiA+IDIuNy40
DQo+ID4gPiA+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
