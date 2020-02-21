Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1874168A8F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 00:53:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s1Kr4DTDnYcoqUV6ZnKEg7diln8T8ZCkmzJ7yUiCMaI=; b=r54XZkX6FbTlCJ
	Kh39n/Gx4MU/wbkbwLiqjVa8l0O69QsFVnMaVSQa9Nxymgr/IaszVkCP1RNGesAW0BmwCj8KgvMAZ
	dypa+BOFH6Obt78r+4moWHu6r+xpEyskq7iQmYveH63dB6hTtvB4rRERSs06LP8xVxe2MAv75dW6Q
	TeTeomk2mGJSkniKbqAv+7NkI5j0rhNj/U4rzgy8CWQGnvcyJtPZdI3yFYv4pbKJPuD9cko7eDrQm
	Te67aYxN6A4DFkPlKXjdyYz5X4xegj3J9/CKxh1FoI/R/xv4CwLXQy+ODXwPYWXDf9M4bCUrlT7i1
	dy8bASLnpXZvVZ7hq9HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5I70-0005B2-2k; Fri, 21 Feb 2020 23:53:38 +0000
Received: from mail-eopbgr80052.outbound.protection.outlook.com ([40.107.8.52]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5I6p-0005Aa-Es
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 23:53:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N2aNyrYwnNgofjzPqxplC51T5aK7UwHb3Dp3XnrGiVxlgTYTdjGBki/vRFLMJsm01a8bEifEtHpg6vYfMmzYKTA7Kouu3oQ6L++nNQzIZe3X3HBcStaFG0xFIXY6oqjl8bJd4CwORbR4KoUZMz1+t+jKu50A8GOPe+h4Na7D7ePkvDaYbyCuiG+naQpugL07alWYCatt5i9yvubLf/xQT2AFiuMmsVJeYW/Sajs/8HHSIc8RZPPz5Rc75iOx8dg/NRL/oUD1OyWEPi8j+41axdNH4vcYWitAHFo2MxlQ4fAoqW2iA/ULoyKeiZLpQrauNTIwOR3EINcDtdq1yt1XfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h6cQsBBJljDolCCRLbx41PwFwNJAtfHfFuDFkgQ+vxs=;
 b=CWneKa7Xc0xaM8c6U4+vNJDii/eYgu5mUgnaHx1s7F+PXpqV22gMUskwDBSNIa1A6rm4xzTpUwdOGDtvbIBsFMAfUEjamhIv0fCfOuntxotCC9VD9+RbTbWLz/yJ0BjWEOLuyjWmblMc7GPY4WYbBJyZdIbEmOdO6mujQa0efgYGfztHjI8DZJCtTZWWAzsnO6nE7dNLNLWOtfgVdnkh/8oVcKB4zJ/BlI6cHQIKHPOTB+Zwh088KgXb7nRZ6kOGi7HOXRnbyRLftb8VzrZ2N+l75aVoJmGCqbmOsty9H6SbrwamMOzgZ14bKnTRCn/HHYFJjXlJlE92FxjyWsLTIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h6cQsBBJljDolCCRLbx41PwFwNJAtfHfFuDFkgQ+vxs=;
 b=pL+an/dUhXxxwG1eJvuHFHh9/R8hvXaGenG0CX93F7EG2pDABLINzAFCfOsQEi4Cm9hlL8O8YFMxbqktbZmrJ6pELunRmojzjZvQ/8p4muj9JwxQ8hkHQ/vntuTwMecDpsDtnZZOcdTrK+y/2NKqFtAq0G3/Ex6MJPP3oCNNxOU=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3641.eurprd04.prod.outlook.com (52.134.69.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.17; Fri, 21 Feb 2020 23:53:23 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2729.033; Fri, 21 Feb 2020
 23:53:23 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: RE: [PATCH V15 RESEND 5/5] arm64: dts: imx: add i.MX8QXP thermal
 support
Thread-Topic: [PATCH V15 RESEND 5/5] arm64: dts: imx: add i.MX8QXP thermal
 support
Thread-Index: AQHV54t0EBaEeunlYUezwg4Plo/Olqgln+YAgACz3LA=
Date: Fri, 21 Feb 2020 23:53:23 +0000
Message-ID: <DB3PR0402MB39163B3EC2B6077C51D821DEF5120@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1582161028-2844-1-git-send-email-Anson.Huang@nxp.com>
 <1582161028-2844-5-git-send-email-Anson.Huang@nxp.com>
 <20200221130448.GC10516@linaro.org>
In-Reply-To: <20200221130448.GC10516@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [220.161.57.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ae729a50-d692-4997-0bd7-08d7b7293ce9
x-ms-traffictypediagnostic: DB3PR0402MB3641:|DB3PR0402MB3641:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3641FF7D5FF56A5D35401157F5120@DB3PR0402MB3641.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-forefront-prvs: 0320B28BE1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10001)(10009020)(4636009)(346002)(396003)(136003)(39860400002)(376002)(366004)(199004)(189003)(7416002)(6506007)(71200400001)(81156014)(86362001)(26005)(2906002)(186003)(316002)(7696005)(5660300002)(33656002)(54906003)(52536014)(76116006)(478600001)(6916009)(66476007)(66446008)(66556008)(64756008)(66946007)(8936002)(9686003)(8676002)(81166006)(4326008)(44832011)(55016002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3641;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6JZaZGiFEHqO9xJtYo8D5HqJ8Jen58AfvDl8BOLPWa1JGD0grwExQy4gIN+0xkvs4+n78lX1KWYhXwmPdeOiVt51ZC9GvpLAdoHMWZ74pyVtOerx+BBO573JTLAvCG1jwsICRIQIAdzhZQJLLNSHcYoMUBS4rZv6/QHuPDI/kdrjg7oNNW6a53PSmNDLJvheEmrXKW3YXJYqkwhOLLBiA+dPVL/18ha9ISk9gpVxymZXjZ4nGFJZHU3YCVBQkWuFVUUXZhcQxJPRKfMVxsf2+nH8czAvvY4v9rS9N2GXP2uq34uLUxqO9rkqFXS3lFioyF9CHfzFrFVFlN1XMIWEZqX7WMTe81SkzjNSUOUtZ7xkwJzOnivUGDG7wfagXhhMF9nEOqj0S5NeqEEMOccDZLBO7EAbTsPyML8xiWFKZQlv06MHejxthSa/eVHGlfwJ4hHyno1Qz9Tl22GpWxieUg/UjIVEK0bgjGg/cCRI5u+c5VdQpQ8X0ND5tskak9k8e1AcCdFmC2I4yMvi7O1Qp9qcM1xrpcA4+7cV1QR53ijYzUpTqRx4tpbuTL6J9fXWUcQJXt4rqb+PlGlCQXSAW4JMbHFIXymVAQi6K5lnU2Dn6U+gbDtONLSN+0DmBRjR
x-ms-exchange-antispam-messagedata: xSFWvxSU4QyiDrEhrVVIhrgO3w+BH2+aUKzmHZpcHx7HKkEXazQKzzryt/K9h0blQ+l+KfIJPHvW5U76N30gwHv1JIDG6EckcoWxF2T4uh4bQexvPO2jYH89OpI/HQfKyMXzl4rcPNo11VlCsMx4iw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae729a50-d692-4997-0bd7-08d7b7293ce9
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2020 23:53:23.7004 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nh32aJQU5QN1gmCHXIUdxf7KychL41Yt276LLAbSMegHs1x8qpBWFKMPNFxOcONhw8+x2hyUnzMYA7l/ANsYhw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3641
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_155327_501771_8EA5034A 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Peng Fan <peng.fan@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "amit.kucheria@verdurent.com" <amit.kucheria@verdurent.com>,
 "festevam@gmail.com" <festevam@gmail.com>, "krzk@kernel.org" <krzk@kernel.org>,
 "marcin.juszkiewicz@linaro.org" <marcin.juszkiewicz@linaro.org>,
 dl-linux-imx <linux-imx@nxp.com>, "rui.zhang@intel.com" <rui.zhang@intel.com>,
 "linux@roeck-us.net" <linux@roeck-us.net>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIERhbmllbA0KDQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggVjE1IFJFU0VORCA1LzVdIGFybTY0
OiBkdHM6IGlteDogYWRkIGkuTVg4UVhQIHRoZXJtYWwNCj4gc3VwcG9ydA0KPiANCj4gT24gVGh1
LCBGZWIgMjAsIDIwMjAgYXQgMDk6MTA6MjhBTSArMDgwMCwgQW5zb24gSHVhbmcgd3JvdGU6DQo+
ID4gQWRkIGkuTVg4UVhQIENQVSB0aGVybWFsIHpvbmUgc3VwcG9ydC4NCj4gPg0KPiA+IFNpZ25l
ZC1vZmYtYnk6IEFuc29uIEh1YW5nIDxBbnNvbi5IdWFuZ0BueHAuY29tPg0KPiA+IC0tLQ0KPiA+
IE5vIGNoYW5nZS4NCj4gPiAtLS0NCj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUv
aW14OHF4cC5kdHNpIHwgMzYNCj4gPiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4g
PiAgMSBmaWxlIGNoYW5nZWQsIDM2IGluc2VydGlvbnMoKykNCj4gPg0KPiA+IGRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4cXhwLmR0c2kNCj4gPiBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhxeHAuZHRzaQ0KPiA+IGluZGV4IGZiNWY3NTIu
LjBhMTRmZTQgMTAwNjQ0DQo+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUv
aW14OHF4cC5kdHNpDQo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14
OHF4cC5kdHNpDQo+ID4gQEAgLTExLDYgKzExLDcgQEANCj4gPiAgI2luY2x1ZGUgPGR0LWJpbmRp
bmdzL2lucHV0L2lucHV0Lmg+DQo+ID4gICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQt
Y29udHJvbGxlci9hcm0tZ2ljLmg+DQo+ID4gICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9waW5jdHJs
L3BhZHMtaW14OHF4cC5oPg0KPiA+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvdGhlcm1hbC90aGVy
bWFsLmg+DQo+ID4NCj4gPiAgLyB7DQo+ID4gIAlpbnRlcnJ1cHQtcGFyZW50ID0gPCZnaWM+Ow0K
PiA+IEBAIC0xODksNiArMTkwLDExIEBADQo+ID4gIAkJCWNvbXBhdGlibGUgPSAiZnNsLGlteDhx
eHAtc2Mtd2R0IiwgImZzbCxpbXgtc2Mtd2R0IjsNCj4gPiAgCQkJdGltZW91dC1zZWMgPSA8NjA+
Ow0KPiA+ICAJCX07DQo+ID4gKw0KPiA+ICsJCXRzZW5zOiB0aGVybWFsLXNlbnNvciB7DQo+ID4g
KwkJCWNvbXBhdGlibGUgPSAiZnNsLGlteDhxeHAtc2MtdGhlcm1hbCIsICJmc2wsaW14LXNjLQ0K
PiB0aGVybWFsIjsNCj4gPiArCQkJI3RoZXJtYWwtc2Vuc29yLWNlbGxzID0gPDE+Ow0KPiA+ICsJ
CX07DQo+ID4gIAl9Ow0KPiA+DQo+ID4gIAl0aW1lciB7DQo+ID4gQEAgLTU4Niw0ICs1OTIsMzQg
QEANCj4gPiAgCQkJI2Nsb2NrLWNlbGxzID0gPDE+Ow0KPiA+ICAJCX07DQo+ID4gIAl9Ow0KPiA+
ICsNCj4gPiArCXRoZXJtYWxfem9uZXM6IHRoZXJtYWwtem9uZXMgew0KPiA+ICsJCWNwdS10aGVy
bWFsMCB7DQo+ID4gKwkJCXBvbGxpbmctZGVsYXktcGFzc2l2ZSA9IDwyNTA+Ow0KPiA+ICsJCQlw
b2xsaW5nLWRlbGF5ID0gPDIwMDA+Ow0KPiA+ICsJCQl0aGVybWFsLXNlbnNvcnMgPSA8JnRzZW5z
IElNWF9TQ19SX1NZU1RFTT47DQo+ID4gKwkJCXRyaXBzIHsNCj4gPiArCQkJCWNwdV9hbGVydDA6
IHRyaXAwIHsNCj4gPiArCQkJCQl0ZW1wZXJhdHVyZSA9IDwxMDcwMDA+Ow0KPiA+ICsJCQkJCWh5
c3RlcmVzaXMgPSA8MjAwMD47DQo+ID4gKwkJCQkJdHlwZSA9ICJwYXNzaXZlIjsNCj4gPiArCQkJ
CX07DQo+IA0KPiBNYXkgYmUgeW91IGNhbiBhZGQgYSAnaG90JyB0cmlwIHBvaW50IGJlZm9yZSAn
Y3JpdGljYWwnIGZvciBmdXR1cmUgdXNlIGJlZm9yZQ0KPiByZWFjaGluZyB0aGUgZW1lcmdlbmN5
IHNodXRkb3duLg0KDQpUaGUgJ3Bhc3NpdmUnIHRyaXAgaXMgYWN0dWFsbHkgdGhlICdob3QnIHRy
aXAgcG9pbnQgeW91IG1lbnRpb25lZCwgYW5kIEkgaGF2ZSBjb21iaW5lZCBpdCB0bw0KYmVsb3cg
Y29vbGluZyBtYXAgd2hpY2ggd2lsbCB0aHJvdHRsZSBjcHUtZnJlcSB3aGVuIHBhc3NpdmUgKGhv
dCkgcG9pbnQgaXMgcmVhY2hlZC4NCldlIGFsbCB1c2UgJ3Bhc3NpdmUnIGFzICdob3QnIGFsYXJt
IGFuZCB0cmlnZ2VyIGNwdS1mcmVxIHRocm90dGxlIG9uIGkuTVggcGxhdGZvcm1zLiANCg0KVGhh
bmtzLA0KQW5zb24NCg0KPiANCj4gPiArCQkJCWNwdV9jcml0MDogdHJpcDEgew0KPiA+ICsJCQkJ
CXRlbXBlcmF0dXJlID0gPDEyNzAwMD47DQo+ID4gKwkJCQkJaHlzdGVyZXNpcyA9IDwyMDAwPjsN
Cj4gPiArCQkJCQl0eXBlID0gImNyaXRpY2FsIjsNCj4gPiArCQkJCX07DQo+ID4gKwkJCX07DQo+
ID4gKwkJCWNvb2xpbmctbWFwcyB7DQo+ID4gKwkJCQltYXAwIHsNCj4gPiArCQkJCQl0cmlwID0g
PCZjcHVfYWxlcnQwPjsNCj4gPiArCQkJCQljb29saW5nLWRldmljZSA9DQo+ID4gKwkJCQkJCTwm
QTM1XzANCj4gVEhFUk1BTF9OT19MSU1JVCBUSEVSTUFMX05PX0xJTUlUPiwNCj4gPiArCQkJCQkJ
PCZBMzVfMQ0KPiBUSEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9fTElNSVQ+LA0KPiA+ICsJCQkJ
CQk8JkEzNV8yDQo+IFRIRVJNQUxfTk9fTElNSVQgVEhFUk1BTF9OT19MSU1JVD4sDQo+ID4gKwkJ
CQkJCTwmQTM1XzMNCj4gVEhFUk1BTF9OT19MSU1JVCBUSEVSTUFMX05PX0xJTUlUPjsNCj4gPiAr
CQkJCX07DQo+ID4gKwkJCX07DQo+ID4gKwkJfTsNCj4gPiArCX07DQo+ID4gIH07DQo+ID4gLS0N
Cj4gPiAyLjcuNA0KPiA+DQo+IA0KPiAtLQ0KPiANCj4gDQo+IDxodHRwczovL2V1cjAxLnNhZmVs
aW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cCUzQSUyRiUyRnd3dy4NCj4gbGlu
YXJvLm9yZyUyRiZhbXA7ZGF0YT0wMiU3QzAxJTdDQW5zb24uSHVhbmclNDBueHAuY29tJTdDZDZj
MGQNCj4gMGNlNTdhMTQ5ODVhMzkwMDhkN2I2Y2VhNGZmJTdDNjg2ZWExZDNiYzJiNGM2ZmE5MmNk
OTljNWMzMDE2MzUlNw0KPiBDMCU3QzAlN0M2MzcxNzg4NzA5NTE5Nzc3NTEmYW1wO3NkYXRhPWE3
Qlhlb0dLUHNZbFhteTBzQ21BNklNDQo+IFNiZXhkaVh3WkVYQWU4byUyQkkzajAlM0QmYW1wO3Jl
c2VydmVkPTA+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlDQo+IHNvZnR3YXJlIGZvciBBUk0g
U29Dcw0KPiANCj4gRm9sbG93IExpbmFybzoNCj4gPGh0dHBzOi8vZXVyMDEuc2FmZWxpbmtzLnBy
b3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwJTNBJTJGJTJGd3d3Lg0KPiBmYWNlYm9vay5j
b20lMkZwYWdlcyUyRkxpbmFybyZhbXA7ZGF0YT0wMiU3QzAxJTdDQW5zb24uSHVhbmclNA0KPiAw
bnhwLmNvbSU3Q2Q2YzBkMGNlNTdhMTQ5ODVhMzkwMDhkN2I2Y2VhNGZmJTdDNjg2ZWExZDNiYzJi
NGM2ZmE5DQo+IDJjZDk5YzVjMzAxNjM1JTdDMCU3QzAlN0M2MzcxNzg4NzA5NTE5Nzc3NTEmYW1w
O3NkYXRhPU1WcGlFRCUNCj4gMkJscDRoJTJGVjRFUXNNUyUyRldUNFF2TEpZak9aJTJGSXB1Z2VP
NDAxVmMlM0QmYW1wO3Jlc2VydmVkPQ0KPiAwPiBGYWNlYm9vayB8DQo+IDxodHRwczovL2V1cjAx
LnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cCUzQSUyRiUyRnR3aXR0
ZQ0KPiByLmNvbSUyRiUyMyElMkZsaW5hcm9vcmcmYW1wO2RhdGE9MDIlN0MwMSU3Q0Fuc29uLkh1
YW5nJTQwbnhwLmMNCj4gb20lN0NkNmMwZDBjZTU3YTE0OTg1YTM5MDA4ZDdiNmNlYTRmZiU3QzY4
NmVhMWQzYmMyYjRjNmZhOTJjZDk5DQo+IGM1YzMwMTYzNSU3QzAlN0MwJTdDNjM3MTc4ODcwOTUx
OTc3NzUxJmFtcDtzZGF0YT04c0xlU0xwb085VHRJc2YNCj4gakc4aGNvNWElMkZKdjVoJTJCYkRq
TTRZQjQzdXklMkZGMCUzRCZhbXA7cmVzZXJ2ZWQ9MD4gVHdpdHRlciB8DQo+IDxodHRwczovL2V1
cjAxLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cCUzQSUyRiUyRnd3
dy4NCj4gbGluYXJvLm9yZyUyRmxpbmFyby0NCj4gYmxvZyUyRiZhbXA7ZGF0YT0wMiU3QzAxJTdD
QW5zb24uSHVhbmclNDBueHAuY29tJTdDZDZjMGQwY2U1Nw0KPiBhMTQ5ODVhMzkwMDhkN2I2Y2Vh
NGZmJTdDNjg2ZWExZDNiYzJiNGM2ZmE5MmNkOTljNWMzMDE2MzUlN0MwJTdDDQo+IDAlN0M2Mzcx
Nzg4NzA5NTE5Nzc3NTEmYW1wO3NkYXRhPVhMNThmcEtMQ0ZxT2xRV3BpN21pZG9JdEpKc0JhbWlq
DQo+IFhGeUEycVQlMkJ3ak0lM0QmYW1wO3Jlc2VydmVkPTA+IEJsb2cNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
