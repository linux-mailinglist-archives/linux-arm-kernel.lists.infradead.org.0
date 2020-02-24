Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73CA4169DF7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 06:50:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5SsKpa7Xg+p3BGPjrAR7gMpq+1SApkhcQI/vXw399Nc=; b=tRGEZZTrUTFc2H
	zRu/4bXaDE8Q/HUd6tFFFdSmRwMRuBS799YvcpyZuLlrsa+jDNm4R8vB6pmT7YV7X1NSfXCAiMtg8
	o5duRMolaW1836vD8g1SrfrQh7OGyXlvf4oW7akqCVWvytaLnpr8wQLiLZXiKYmWPyK/uPK8SgWzq
	wFuPOgiwj1L47tRdCzBt8uZIP7TKyfDrbkykQaos1rPu9dcLTp92r3sZDej2egywryR7gepSHfr2S
	ZYsZ8NUO0irkcPw0iuXWuFXhaaVkJHZGdQbfFjt3jf2ZnlTD9LtXdVrINau7hMW/Ofm2KefJdlqyI
	RhsTY8t5kJc8QUwmWvGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j66dG-0005dC-G0; Mon, 24 Feb 2020 05:50:18 +0000
Received: from mail-eopbgr00079.outbound.protection.outlook.com ([40.107.0.79]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j66cd-0005St-0S
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 05:49:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EF6VMoB6isH9FjjxtMyGPFMHgJRqhH3pQxWEV/juLQatOR1lGD0QI1v216eSeDzKDisTF6A5KDcsNJa/H+1klmNu0WF4INWabu8YdR6QdwBdO9nr86FUiGpR+JtgetECo7pv1S/dsj1y0X3WUCXiwW/x2fFmV3Unz6M0eEtcn8dEbC3gxVWQDJ61XnmtoTX1W/qwNV07XqVIl49AicYs++L1x+2BOTEHiuDGmQZI9Td5wh6AN7/1L8+iVaXVvJf6KWocper73YCvTIROqJ9mLx1qrJTK9p+9PeKXmDyKLUUpXdpL/0+7BBH2oM+wKY7AX8lNR/ghdaZlChIY3sjUFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1EfSEDRDAvynwnz16k9uuWmWmV/yIhgnJxxOA2GDMqc=;
 b=ImiAuzslvH3Vt/5bX+aCTNRvoTWheO/J42kaPOwpymCEUrMkVKRv1YmOfVH7GWDy7KjenF+KnuNE+UTra0jkr/mqbnUKMUuzMtHmi9Sue7r9o9JkoinCEOCscrFhNEISltMs+zg9XaHPzcQ3Kh5QBLRT11fo0RWWolC8qlQZg+xap/606zAEw0gIfBKtlmFOIBpx4RlC/vKh/f8bHWbl9EX/UfvyoWDIZOWEjgVsIX+aX/jbdXYcOc9lKARGyKHF4oJ28zzg8JIkgh+pEslKhyGo8shxHJUspKF2oo4Pa0X4T/pB36gZxYiMpxt28W8MiBMGwqdnd4XpgOAP0BZtdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1EfSEDRDAvynwnz16k9uuWmWmV/yIhgnJxxOA2GDMqc=;
 b=FTgehKMkhYBVoeqSNZ1FREVaWTmcJest7QJ/FAZW3wYAfZg7t/ytKil+is32lJ1OZWv24aSfI3OQB35pdQ0cJ2WUHUOrDB53abjp0KXxotqEfkWEXgaqmToEV9xCOlzKwPxXgDtFpr0LLQS1g/iWSuAZYBX11s+HqvyjYpe+ZCA=
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com (20.179.250.159) by
 DB8PR04MB6539.eurprd04.prod.outlook.com (20.179.249.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.22; Mon, 24 Feb 2020 05:49:36 +0000
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::104b:e88b:b0d3:cdaa]) by DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::104b:e88b:b0d3:cdaa%4]) with mapi id 15.20.2750.021; Mon, 24 Feb 2020
 05:49:36 +0000
From: "Z.q. Hou" <zhiqiang.hou@nxp.com>
To: Andrew Murray <amurray@thegoodpenguin.co.uk>
Subject: RE: [PATCHv10 05/13] PCI: mobiveil: Add callback function for
 interrupt initialization
Thread-Topic: [PATCHv10 05/13] PCI: mobiveil: Add callback function for
 interrupt initialization
Thread-Index: AQHV4iN8jrf41+Q46k+M3xZUBh3AXagkYTKAgAWG4sA=
Date: Mon, 24 Feb 2020 05:49:36 +0000
Message-ID: <DB8PR04MB6747EACDD6837E3002A9013084EC0@DB8PR04MB6747.eurprd04.prod.outlook.com>
References: <20200213040644.45858-1-Zhiqiang.Hou@nxp.com>
 <20200213040644.45858-6-Zhiqiang.Hou@nxp.com>
 <20200220172525.GG19388@big-machine>
In-Reply-To: <20200220172525.GG19388@big-machine>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 67c299ab-9d0a-4293-f98e-08d7b8ed54e7
x-ms-traffictypediagnostic: DB8PR04MB6539:|DB8PR04MB6539:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB6539C89D2E702BE9523C271B84EC0@DB8PR04MB6539.eurprd04.prod.outlook.com>
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
x-microsoft-antispam-message-info: dCdRiBb73qwfbcnuLaIGVeDHOPYOKSILGHc0cHpMp3sjftaIIdQob9MieuSUa2uEM7kZUM7BxkdW6GXvxX5K/qbLZ2a7xgVJLAo1oISfFpP585Sqg0VYgPFTICEFG1hbJCvXsUkRGmsXRJcasfv0Y+2gT/4D8PWaiQutO5/rcTyPyCa7MY40JFuzvIgHJ+5R4oJQZxGWHI8o2KpG0H2L04vOw15dLhlLEIKpH4Q1/0DA4BHhao+0Nt5XHvMaSFn/5ElBbnkruSi3ea/U1It295/WQazpqeeTKH3B6LzQyKgQHH+05oEONBnIxq0JlZ1otin6KbXyOlEx3Wmiu31L4anU0RE2+cs1dSjyWNG/Q1phvCoXDop2MNPtnWR1L0DcU2E6wOIh4qTTEjzA3XKwjq4gjzjUuIq9etedxHUM1/6nuPtXedXW+PK2Wndee2yg
x-ms-exchange-antispam-messagedata: pRD5FFxJ+Q6OThfONSXGrLmWJ7TssrEiFPLoVmhQt93aXLEfbxOOZ5g+fU8aNK0BFMQAle3QWWZK5cTHHlDsdKruuxTcYUNmH28aRNcRTfOmhLBFj62kUzjdIYWVZyqKqYpVQg5YVivjZbx1rgXKVw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67c299ab-9d0a-4293-f98e-08d7b8ed54e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2020 05:49:36.6134 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gjt5hGRwwdmon9xPiu+Em2A8PrO88FRo8J+edXsCxYZsnSMj35CtnJpI6dyM1n+VoArKs/V9ACdpA4ZFETsoWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6539
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_214939_110160_A32DC0DD 
X-CRM114-Status: GOOD (  20.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.79 listed in list.dnswl.org]
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
yNUgMToyNQ0KPiBUbzogWi5xLiBIb3UgPHpoaXFpYW5nLmhvdUBueHAuY29tPg0KPiBDYzogbGlu
dXgtcGNpQHZnZXIua2VybmVsLm9yZzsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnOw0KPiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2Vy
bmVsLm9yZzsNCj4gYmhlbGdhYXNAZ29vZ2xlLmNvbTsgcm9iaCtkdEBrZXJuZWwub3JnOyBhbmRy
ZXcubXVycmF5QGFybS5jb207DQo+IGFybmRAYXJuZGIuZGU7IG1hcmsucnV0bGFuZEBhcm0uY29t
OyBsLnN1YnJhaG1hbnlhQG1vYml2ZWlsLmNvLmluOw0KPiBzaGF3bmd1b0BrZXJuZWwub3JnOyBt
LmthcnRoaWtleWFuQG1vYml2ZWlsLmNvLmluOyBMZW8gTGkNCj4gPGxlb3lhbmcubGlAbnhwLmNv
bT47IGxvcmVuem8ucGllcmFsaXNpQGFybS5jb207DQo+IGNhdGFsaW4ubWFyaW5hc0Bhcm0uY29t
OyB3aWxsLmRlYWNvbkBhcm0uY29tOyBNaW5na2FpIEh1DQo+IDxtaW5na2FpLmh1QG54cC5jb20+
OyBNLmguIExpYW4gPG1pbmdodWFuLmxpYW5AbnhwLmNvbT47IFhpYW93ZWkgQmFvDQo+IDx4aWFv
d2VpLmJhb0BueHAuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIdjEwIDA1LzEzXSBQQ0k6IG1v
Yml2ZWlsOiBBZGQgY2FsbGJhY2sgZnVuY3Rpb24gZm9yDQo+IGludGVycnVwdCBpbml0aWFsaXph
dGlvbg0KPiANCj4gT24gVGh1LCBGZWIgMTMsIDIwMjAgYXQgMTI6MDY6MzZQTSArMDgwMCwgWmhp
cWlhbmcgSG91IHdyb3RlOg0KPiA+IEZyb206IEhvdSBaaGlxaWFuZyA8WmhpcWlhbmcuSG91QG54
cC5jb20+DQo+ID4NCj4gPiBUaGUgTW9iaXZlaWwgR1BFWCBpbnRlcm5hbCBNU0kvSU5UeCBjb250
cm9sbGVyIG1heSBub3QgYmUgdXNlZCBieQ0KPiA+IG90aGVyIHBsYXRmb3JtcyBpbiB3aGljaCB0
aGUgTW9iaXZlaWwgR1BFWCBpcyBpbnRlZ3JhdGVkLg0KPiA+IFRoaXMgcGF0Y2ggaXMgdG8gYWxs
b3cgdGhlc2UgcGxhdGZvcm1zIHRvIGltcGxlbWVudCB0aGVpciBzcGVjaWZpYw0KPiA+IGludGVy
cnVwdCBpbml0aWFsaXphdGlvbi4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEhvdSBaaGlxaWFu
ZyA8WmhpcWlhbmcuSG91QG54cC5jb20+DQo+IA0KPiBSZXZpZXdlZC1ieTogQW5kcmV3IE11cnJh
eSA8YW11cnJheUB0aGVnb29kcGVuZ3Vpbi5jby51az4NCj4gDQo+ID4gLS0tDQo+ID4gVjEwOg0K
PiA+ICAtIEludHJvZHVjZWQgYSBoZWxwZXIgZnVuY3Rpb24gbW9iaXZlaWxfcGNpZV9pbnRlZ3Jh
dGVkX2ludGVycnVwdF9pbml0KCkuDQo+ID4NCj4gPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9t
b2JpdmVpbC9wY2llLW1vYml2ZWlsLWhvc3QuYyB8IDEyICsrKysrKysrKysrLQ0KPiA+ICBkcml2
ZXJzL3BjaS9jb250cm9sbGVyL21vYml2ZWlsL3BjaWUtbW9iaXZlaWwuaCAgICAgIHwgIDcgKysr
KysrKw0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL21vYml2ZWls
L3BjaWUtbW9iaXZlaWwtaG9zdC5jDQo+ID4gYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL21vYml2
ZWlsL3BjaWUtbW9iaXZlaWwtaG9zdC5jDQo+ID4gaW5kZXggZWE5MGQyZjg2OTJlLi41M2FiODQx
MmExZGUgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9tb2JpdmVpbC9w
Y2llLW1vYml2ZWlsLWhvc3QuYw0KPiA+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvbW9i
aXZlaWwvcGNpZS1tb2JpdmVpbC1ob3N0LmMNCj4gPiBAQCAtNDk5LDcgKzQ5OSw3IEBAIHN0YXRp
YyBpbnQgbW9iaXZlaWxfcGNpZV9pbml0X2lycV9kb21haW4oc3RydWN0DQo+IG1vYml2ZWlsX3Bj
aWUgKnBjaWUpDQo+ID4gIAlyZXR1cm4gMDsNCj4gPiAgfQ0KPiA+DQo+ID4gLXN0YXRpYyBpbnQg
bW9iaXZlaWxfcGNpZV9pbnRlcnJ1cHRfaW5pdChzdHJ1Y3QgbW9iaXZlaWxfcGNpZSAqcGNpZSkN
Cj4gPiArc3RhdGljIGludCBtb2JpdmVpbF9wY2llX2ludGVncmF0ZWRfaW50ZXJydXB0X2luaXQo
c3RydWN0DQo+ID4gK21vYml2ZWlsX3BjaWUgKnBjaWUpDQo+ID4gIHsNCj4gPiAgCXN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYgPSBwY2llLT5wZGV2Ow0KPiA+ICAJc3RydWN0IGRldmljZSAq
ZGV2ID0gJnBkZXYtPmRldjsNCj4gPiBAQCAtNTM5LDYgKzUzOSwxNiBAQCBzdGF0aWMgaW50IG1v
Yml2ZWlsX3BjaWVfaW50ZXJydXB0X2luaXQoc3RydWN0DQo+IG1vYml2ZWlsX3BjaWUgKnBjaWUp
DQo+ID4gIAlyZXR1cm4gMDsNCj4gPiAgfQ0KPiA+DQo+ID4gK3N0YXRpYyBpbnQgbW9iaXZlaWxf
cGNpZV9pbnRlcnJ1cHRfaW5pdChzdHJ1Y3QgbW9iaXZlaWxfcGNpZSAqcGNpZSkgew0KPiA+ICsJ
c3RydWN0IG1vYml2ZWlsX3Jvb3RfcG9ydCAqcnAgPSAmcGNpZS0+cnA7DQo+ID4gKw0KPiA+ICsJ
aWYgKHJwLT5vcHMtPmludGVycnVwdF9pbml0KQ0KPiA+ICsJCXJldHVybiBycC0+b3BzLT5pbnRl
cnJ1cHRfaW5pdChwY2llKTsNCj4gPiArDQo+ID4gKwlyZXR1cm4gbW9iaXZlaWxfcGNpZV9pbnRl
Z3JhdGVkX2ludGVycnVwdF9pbml0KHBjaWUpOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICBpbnQgbW9i
aXZlaWxfcGNpZV9ob3N0X3Byb2JlKHN0cnVjdCBtb2JpdmVpbF9wY2llICpwY2llKSAgew0KPiA+
ICAJc3RydWN0IG1vYml2ZWlsX3Jvb3RfcG9ydCAqcnAgPSAmcGNpZS0+cnA7IGRpZmYgLS1naXQN
Cj4gPiBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvbW9iaXZlaWwvcGNpZS1tb2JpdmVpbC5oDQo+
ID4gYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL21vYml2ZWlsL3BjaWUtbW9iaXZlaWwuaA0KPiA+
IGluZGV4IDgxZmZiYmQ0OGMwOC4uMGU2YjU0NjhjMDI2IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvbW9iaXZlaWwvcGNpZS1tb2JpdmVpbC5oDQo+ID4gKysrIGIvZHJp
dmVycy9wY2kvY29udHJvbGxlci9tb2JpdmVpbC9wY2llLW1vYml2ZWlsLmgNCj4gPiBAQCAtMTMw
LDEwICsxMzAsMTcgQEAgc3RydWN0IG1vYml2ZWlsX21zaSB7CQkJLyogTVNJDQo+IGluZm9ybWF0
aW9uICovDQo+ID4gIAlERUNMQVJFX0JJVE1BUChtc2lfaXJxX2luX3VzZSwgUENJX05VTV9NU0kp
OyAgfTsNCj4gPg0KPiA+ICtzdHJ1Y3QgbW9iaXZlaWxfcGNpZTsNCj4gPiArDQo+ID4gK3N0cnVj
dCBtb2JpdmVpbF9ycF9vcHMgew0KPiA+ICsJaW50ICgqaW50ZXJydXB0X2luaXQpKHN0cnVjdCBt
b2JpdmVpbF9wY2llICpwY2llKTsgfTsNCj4gPiArDQo+ID4gIHN0cnVjdCBtb2JpdmVpbF9yb290
X3BvcnQgew0KPiA+ICAJY2hhciByb290X2J1c19ucjsNCj4gPiAgCXZvaWQgX19pb21lbSAqY29u
ZmlnX2F4aV9zbGF2ZV9iYXNlOwkvKiBlbmRwb2ludCBjb25maWcgYmFzZSAqLw0KPiA+ICAJc3Ry
dWN0IHJlc291cmNlICpvYl9pb19yZXM7DQo+ID4gKwlzdHJ1Y3QgbW9iaXZlaWxfcnBfb3BzICpv
cHM7DQo+ID4gIAlpbnQgaXJxOw0KPiA+ICAJcmF3X3NwaW5sb2NrX3QgaW50eF9tYXNrX2xvY2s7
DQo+ID4gIAlzdHJ1Y3QgaXJxX2RvbWFpbiAqaW50eF9kb21haW47DQo+ID4gLS0NCj4gPiAyLjE3
LjENCj4gPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
