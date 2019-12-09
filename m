Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CA81166FD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 07:39:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=62lC5U7cSiC9v9iCp1IEc3t0DYk3qdSGKMnI0PvTH8U=; b=BiwZ5FZ0NKMoVZ
	1f/0PcepVPsFTQqbcxNhS3Q0TwpX9oSMKJcbj1WhIPF11i2Zw5Mo1Lqvy3q6gDI0O8r0gy0GLZouP
	dnXyAWicWkQzDgS+uOaGk5/K8st17oRIof4CdENm1c4Kx4R3IMQYyubQNkPougkgLjvml4kP/DbcW
	N07xZy2beSk96SDmveAWsq9uhWZxUawuUt/HZomlz6Zv/JEXz9fgkflCdEgntMDQSKeOSb1Zm6fZ6
	Dg98Z61RwCNYYCdebRCeWvCUXwdE+hLNR0R3sVDNi7s8EEboJgT1NtAzCiBCvhN815pa1khUps+0c
	hKdswtq69rx7zASaVreA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieChd-0004wB-WB; Mon, 09 Dec 2019 06:39:30 +0000
Received: from mail-eopbgr30083.outbound.protection.outlook.com ([40.107.3.83]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieChW-0004uK-8Z
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 06:39:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W8UIoWpSyKpeWKzKQzWiB47vA+YwXF4wS5uD1Yvox+k/36YOpML0yKBligJ6YgTI8ou1gx5WRrukkw4r4UJckwWtmgfsnDnLb3EGepEar4XDTdteIDVwceYBvjxdGEILoUlzX2fKwPQulsJNMcSkN2yjFWV6/9QEwduuQSme28FeK80VX3VgMnWxjY/VovrwjqXeoeW4o8TykcIbeZ3ZZrQGbYRrC2j3U/tKUDg/6Jf3d1LXAHoOqzXT4dalZkF5OSEkfDKJJMM/DBybn2YGcgz26OvfEUnCLt2RD/nFtpV3pv1qt4xG1MpZDNkZ6o3OpLg9pZwgqzc+hWgsjNy2rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G1DanhQSvjnHPegfL3GNsxBImSD150IPCA5J9G4EhuI=;
 b=KDtBbyl4vVRfySFFL2kWrYZcdPRFrp1hwo291+58GT9c4JCa0B6Y/1Y5W+rigINKydnGrFi6fVPRjkbdgNC8EYi/bC2uuCn//j9LtCDMmKaoILj5iZo+gk5/IsJliNuRaI/E+6PBCidqBQ7WQmziSvsgY2BzyNTkSmiI2jGDPmpZyRPpqGBltx7BSMur4kdviDGLFZKKwodJIHSolAIz40fr70tMdnQvFlIpJjZrTdrVVQCUJYLeMwkimFkO+cxmNYqezlsNHmS1eqGvKwJ3FjvaFH0pJRyZ+PIgoZCJtg2M+HuBy9w+RtR42hwwOGlh/B/6srFNlALjjSkr7G1xEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G1DanhQSvjnHPegfL3GNsxBImSD150IPCA5J9G4EhuI=;
 b=rTKbWeNU/KwUDs5I3n6LyptYxix+KH2DB5u6GNSHMUWdKcEt80+3gsfm3JFdezYr88/tQRHWHSP33Dg2EdDxdKo0DEGzpAQdyJaFCaANPldpPigxPgTYrRckDIyLYCnaGVWO/xPIUY/2u+eHzvmoC6zl3JQyD8jlxzd/koIUayg=
Received: from VI1PR04MB4333.eurprd04.prod.outlook.com (52.134.122.155) by
 VI1PR04MB5566.eurprd04.prod.outlook.com (20.178.123.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.14; Mon, 9 Dec 2019 06:39:17 +0000
Received: from VI1PR04MB4333.eurprd04.prod.outlook.com
 ([fe80::c9ee:eaf7:d026:d205]) by VI1PR04MB4333.eurprd04.prod.outlook.com
 ([fe80::c9ee:eaf7:d026:d205%4]) with mapi id 15.20.2516.018; Mon, 9 Dec 2019
 06:39:17 +0000
From: Andy Tang <andy.tang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Michael Walle <michael@walle.cc>
Subject: RE: [EXT] Re: [PATCH 1/4] arm64: dts: ls1028a: fix typo in TMU
 calibration data
Thread-Topic: [EXT] Re: [PATCH 1/4] arm64: dts: ls1028a: fix typo in TMU
 calibration data
Thread-Index: AQHVrllg8EILqHMQBEG1nZ5Tdx7CkaexVxbg
Date: Mon, 9 Dec 2019 06:39:16 +0000
Message-ID: <VI1PR04MB433312937702E1BF2F966D11F3580@VI1PR04MB4333.eurprd04.prod.outlook.com>
References: <20191123201317.25861-1-michael@walle.cc>
 <20191123201317.25861-2-michael@walle.cc> <20191209062436.GB3365@dragon>
In-Reply-To: <20191209062436.GB3365@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=andy.tang@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b664a2e9-9d10-4931-7cdf-08d77c728384
x-ms-traffictypediagnostic: VI1PR04MB5566:|VI1PR04MB5566:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB556646D86958AFBED890BED6F3580@VI1PR04MB5566.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 02462830BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(366004)(396003)(39860400002)(376002)(13464003)(189003)(199004)(66946007)(81166006)(81156014)(99286004)(8676002)(229853002)(5660300002)(33656002)(52536014)(66556008)(66476007)(55016002)(64756008)(44832011)(8936002)(66446008)(7696005)(102836004)(76176011)(26005)(6506007)(478600001)(74316002)(186003)(9686003)(53546011)(305945005)(86362001)(76116006)(110136005)(4326008)(54906003)(71200400001)(71190400001)(316002)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5566;
 H:VI1PR04MB4333.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6xzcd8P2x7KjbHqfO1avhDuOlLtEELFX+00AdzY979llcsaJp6mAjck1+qD/Nav7Jfr6MK7UtE01l9X/n/pA9ESaf5ul29F+IsnCp1BcbOUbqxzu7tdBOF0ocTKLNeHdLhP8OcuMZMpm6Uxbbbu+ldN4qIG36LvuYsprwxHF19LX3uGsVo+rVaym1vw/oPA0rzzlsDGq0armZEle/HRXkB29b+xHWw69uc6gK9cEleCUX11qlDHGxePyFTdM8z5509Iz6ku1Wq01iK1TmgC+xnCny3zWkm3RFmrwVj2NxUrDgk0WWSHFYmcGUS5angHv1iDDQ3jHaTtT0fhgelsLoDx2R48WKWo51Gu+wE3RwfUfX8vja8zWh+DwPMOEiiVnyzsfZoK/0xM/E9lY1wNGSuYTVoHky6J+XiIxQJB60yT52qQBu6l6A7x7eDEe4GIvd2TYYCg9f+K2UDPV8gCNfEjy3zifECUWQzKjTiQT2f3pCSY0fFqPpmmb0eJNbsxo
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b664a2e9-9d10-4931-7cdf-08d77c728384
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2019 06:39:16.9669 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DKSbi4+mxUJ6V7LcwH1wjM/pn/rAnoH55MmP171IyOPlY7GfaFgMDTe+dYv+IMkU45erTOiHR8F0M1HkUpaVVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5566
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_223922_511875_A2E96BE4 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.83 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU2hhd24sDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU2hhd24g
R3VvIDxzaGF3bmd1b0BrZXJuZWwub3JnPg0KPiBTZW50OiAyMDE5xOoxMtTCOcjVIDE0OjI1DQo+
IFRvOiBNaWNoYWVsIFdhbGxlIDxtaWNoYWVsQHdhbGxlLmNjPjsgQW5keSBUYW5nIDxhbmR5LnRh
bmdAbnhwLmNvbT4NCj4gQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsg
ZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7DQo+IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5v
cmc7IExlbyBMaSA8bGVveWFuZy5saUBueHAuY29tPjsgUm9iIEhlcnJpbmcNCj4gPHJvYmgrZHRA
a2VybmVsLm9yZz47IE1hcmsgUnV0bGFuZCA8bWFyay5ydXRsYW5kQGFybS5jb20+DQo+IFN1Ympl
Y3Q6IFtFWFRdIFJlOiBbUEFUQ0ggMS80XSBhcm02NDogZHRzOiBsczEwMjhhOiBmaXggdHlwbyBp
biBUTVUNCj4gY2FsaWJyYXRpb24gZGF0YQ0KPiANCj4gQ2F1dGlvbjogRVhUIEVtYWlsDQo+IA0K
PiArIFl1YW50aWFuIFRhbmcsIHdobyBpcyB0aGUgYXV0aG9yIG9mIGV4aXN0aW5nIGNvZGUuDQo+
IA0KPiBPbiBTYXQsIE5vdiAyMywgMjAxOSBhdCAwOToxMzoxNFBNICswMTAwLCBNaWNoYWVsIFdh
bGxlIHdyb3RlOg0KPiA+IFRoaXMgd2FzIHRlc3RlZCBvbiBhIGN1c3RvbSBib2FyZC4NCj4gDQo+
IENhbiB5b3UgYWRkIG1vcmUgaW5mbyBhYm91dCB3aHkgdGhpcyBpcyBhbiBlcnJvciBhbmQgaG93
IGl0IGlzIGJlaW5nDQo+IGlkZW50aWZpZWQ/DQoNCkkgYW0gbm90IHN1cmUgaG93IE1pY2hhZWwg
ZmlndXJlZCBvdXQgdGhpcyBlcnJvciBidXQgaGUvc2hlIGlzIGNvcnJlY3QuDQpJIG11c3QgaGF2
ZSBtYWRlIGEgbWlzdGFrZSB3aGVuIHNlbmRpbmcgdGhlc2UgZGF0YSBvdXQuDQoNClRoYW5rcyBT
aGF3biBhbmQgTWljaGFlbC4NCg0KQWNrZWQtYnk6IFRhbmcgWXVhbnRpYW4gPGFuZHkudGFuZ0Bu
eHAuY29tPg0KDQpCUiwNCkFuZHkNCj4gDQo+IFNoYXduDQo+IA0KPiA+DQo+ID4gU2lnbmVkLW9m
Zi1ieTogTWljaGFlbCBXYWxsZSA8bWljaGFlbEB3YWxsZS5jYz4NCj4gPiAtLS0NCj4gPiAgYXJj
aC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEuZHRzaSB8IDIgKy0NCj4gPiAg
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4NCj4gPiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEuZHRz
aQ0KPiA+IGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEuZHRzaQ0K
PiA+IGluZGV4IGRjNzU1MzRhNDc1NC4uZjJlNzFmZDU3YjIwIDEwMDY0NA0KPiA+IC0tLSBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLmR0c2kNCj4gPiArKysgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS5kdHNpDQo+ID4gQEAgLTU3
Myw3ICs1NzMsNyBAQA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIDB4MDAwMTAwMDQNCj4gMHgwMDAwMDAzZA0KPiA+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIDB4MDAwMTAwMDUNCj4gMHgwMDAwMDA0NQ0KPiA+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDB4MDAwMTAwMDYNCj4g
MHgwMDAwMDA0ZA0KPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIDB4MDAwMTAwMDcNCj4gMHgwMDAwMDA0NQ0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIDB4MDAwMTAwMDcNCj4gMHgwMDAwMDA1NQ0KPiA+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDB4MDAwMTAwMDgNCj4gMHgw
MDAwMDA1ZQ0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IDB4MDAwMTAwMDkNCj4gMHgwMDAwMDA2Ng0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIDB4MDAwMTAwMGENCj4gMHgwMDAwMDA2ZQ0KPiA+IC0tDQo+ID4g
Mi4yMC4xDQo+ID4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
