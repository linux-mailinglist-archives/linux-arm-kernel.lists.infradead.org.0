Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C628F848
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 03:04:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jzRbZwGP00g35hmpAbvnka8VwveDPgk3gEAj/NDJbSo=; b=ulSzTg3KL9arUm
	TW3zP5Mi3qsEIEtxAybEIQr+QG+al5v7lPf6G8TwEBCwMEivkoOldCA1u3Qi4jcsXDoLA7JwShdbR
	n1bPm68grxod3eCvqGf9xdyS84IsTGfYQkAe5F4FmSwVk78MGvyV1vIRMJAbsQwdkApZh9bACxCvQ
	zH9y0gvpPnfS45a+tl3Q2bobY+wnvSc1BssH5h0CI4ZT3xLJMbuFlfcMF2hK+oP0DMVP/d3VuvW8C
	U81+E+nRsb533dn3CxTjGGJtuBKnsNgFq5AVdOf5jnUZOnZ5c0Ej06ieea8HZXSkKeHhgACK2kpqL
	5tUAFB+gIGuSYAP6qr7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyQey-0001cs-S2; Fri, 16 Aug 2019 01:04:04 +0000
Received: from mail-eopbgr50072.outbound.protection.outlook.com ([40.107.5.72]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyQem-0001cP-2i
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 01:03:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FoOFpuZJV2eWz9LOXlbR8g5tRoBQv03GeHegnU1dXrLQHk66/NET2dofYkO6aWOZXX+cLdAjJekuaeAb1BDRg1FTceOnQR1iu7H2Xv0gWpzq/3cOGpN9YI5QfilfZkV8vOXO/zGGUbV+Y1Jm8pgjYUv3ignopinOjP4lV8/mnZm7tRgei8ePW3teOLUoh1K5WArq9bd8J8ivvxB63x8zxlsCE8BiIagylkvhh5WR7drU8khY/1sqlVHnvQ8/i/vhKojR3PJxCO5VCuNCw7cnZy7LQJsIRkwLeRkhO6FO9smP8dIIpFckGLGuagSWg9P72sruxoxjHtvIgRp+/Tw2Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GARQSXyQChu24RT84zo5tONi7LFmHT7AJreQt9UeVMI=;
 b=gGL/+LZ7rX3pA6n7/3Trljl/nN7pQRRMsgJEhGQLTIpiXljz9kuPUhYhLcUokvsVVXsz5Sd7/lb0iK8CmIKm4opRG4FKEUaGlLJiWSvO2rqYcH90dXCpm5bsH/mAyRcjE/MhnEigNLAn5UE7OpHLlYf/2cyDwiCtTSkejt6gzQBMXARSXfivvQHLN3w2CAyHoYH8XFfI49tgbjfeZ8G82HVaFXzOt9hpuFzP+NWWuKuEhfjpffbSqr/jJJxDn2pem46WU6vmWTJlBXXzSl4q0K8R0HWme17p4hx7q8NHehTfFuYl7l9vkr3J62I10HCUWYnA+irUmbYR7PPRobwKiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GARQSXyQChu24RT84zo5tONi7LFmHT7AJreQt9UeVMI=;
 b=XjGeF/ChOXP/BIf9vA0tlOdv+kd0UGn5LqlgOrGLWOMtW98+DfGbmTwkzVlndBcAknaMndv3XZYi5HnNg6SbUp95AxsZlDQAe5jkGkQOI9FSIPLGvN+LaSGYEqeQZ1pV36SZGyJiblnlUVF7rs9+n5yaQ+wR3bF7EVf5Tm8tTd4=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3660.eurprd04.prod.outlook.com (52.134.70.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Fri, 16 Aug 2019 01:03:45 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e%4]) with mapi id 15.20.2178.016; Fri, 16 Aug 2019
 01:03:45 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will@kernel.org" <will@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>, "tglx@linutronix.de" <tglx@linutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Aisheng Dong
 <aisheng.dong@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>, Jacky Bai
 <ping.bai@nxp.com>, "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Abel
 Vesa <abel.vesa@nxp.com>, "andrew.smirnov@gmail.com"
 <andrew.smirnov@gmail.com>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "angus@akkea.ca" <angus@akkea.ca>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>
Subject: RE: [PATCH V5 5/5] arm64: dts: imx8mm: Enable cpu-idle driver
Thread-Topic: [PATCH V5 5/5] arm64: dts: imx8mm: Enable cpu-idle driver
Thread-Index: AQHVNupfPchyCELhWUGTZyEOvBMD5ab8mrwAgACSYaA=
Date: Fri, 16 Aug 2019 01:03:45 +0000
Message-ID: <DB3PR0402MB39160C450FC99A359B2366BDF5AF0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190710063056.35689-1-Anson.Huang@nxp.com>
 <20190710063056.35689-5-Anson.Huang@nxp.com>
 <34c03d76-ae61-63b4-153f-3f9911cc962e@linaro.org>
In-Reply-To: <34c03d76-ae61-63b4-153f-3f9911cc962e@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d5a0b319-5a50-480b-f7c4-08d721e59676
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3660; 
x-ms-traffictypediagnostic: DB3PR0402MB3660:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3660114E3AD7B707265686D1F5AF0@DB3PR0402MB3660.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0131D22242
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(136003)(346002)(39860400002)(376002)(189003)(199004)(7736002)(478600001)(66066001)(53936002)(74316002)(305945005)(102836004)(81166006)(8936002)(486006)(81156014)(8676002)(7416002)(26005)(14454004)(316002)(186003)(25786009)(76176011)(7696005)(6506007)(53546011)(52536014)(6246003)(5660300002)(44832011)(6116002)(2906002)(110136005)(2501003)(256004)(76116006)(6436002)(3846002)(66556008)(55016002)(66476007)(9686003)(86362001)(71200400001)(2201001)(66446008)(64756008)(14444005)(229853002)(33656002)(66946007)(99286004)(446003)(476003)(71190400001)(11346002)(921003)(32563001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3660;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ExPN7JdVLUfaHoFzdrRwNdHZOKk0CJSw4ErHeJ9Jru1eP7liQINFmoDy1XvDP8Pwdco469xcsmCZQec+AzBzxwV84BkfVaKcFCAjCQT15NsygILmMhQIvm3fJ+PxMswm9GZrln1PGuA8x4y7zNEiMSpAr/Yy/UZRDoAxYX8mqcvQbJUAtx1i1sjNY3i55283fEEq2mqmoKNi8qW/qD8Zy/t8lKi/J2IsOeh3ECdZTjlom+UFVQ+JHPuP+dbeIjkTRX9nsNrLQO8K1g7oYOfKBT234EMcqCWucgT1WzHnITbGsHDk0IyiFH1GjPtSgRbJj2DUcqgIZBvG+7GFQugjYofNZqIJDMEdF1AST+8MZRAhrOzYZFmN0H3+7ORjXkWQZyNdgy99A1c9TJTLm5pAEkPIhPCU1IMyMnmQ0Wq64nU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5a0b319-5a50-480b-f7c4-08d721e59676
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2019 01:03:45.0571 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5AIWr60vIPfjAW+5asl9JtGF1DlNblInOjcHEUdy9jgsarxPmJH5ye93KfDYxJMwDGr7o4//b5YewGUCwJZNlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3660
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_180352_220006_B7A0F4B0 
X-CRM114-Status: GOOD (  19.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.72 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIERhbmllbA0KDQo+IEhpIEFuc29uLA0KPiANCj4gc29ycnkgZm9yIHRoZSBsYXRlIHJldmll
dywgSSd2ZSBiZWVuIHByZXR0eSBidXN5Lg0KDQpUaGF0IGlzIE9LIGZvciBzdXJlLg0KDQo+IA0K
PiBJZiBTaGF3biBpcyBvaywgSSBjYW4gcGljayB0aGUgcGF0Y2hlcyAxLTQgaW4gbXkgdHJlZSBh
bmQgdGhlbiB0aGlzIG9uZSBhZnRlcg0KPiB5b3UgZml4IHRoZSBjb21tZW50cyBiZWxvdy4NCg0K
U2hhd24gc2hvdWxkIGJlIE9LIGZvciBpdCwgYW5kIGhlIGFscmVhZHkgdG9vayBwYXRjaCBbUEFU
Q0ggVjUgMi81XSBhcm02NDogRW5hYmxlIFRJTUVSX0lNWF9TWVNfQ1RSIGZvciBBUkNIX01YQyBw
bGF0Zm9ybXMNCnNpbmNlIEkgZXZlciBzZW50IGl0IGJlZm9yZSBpbiBvdGhlciBzZXJpZXMgd2hl
biBzeXN0ZW0gY291bnRlciBkcml2ZXIgaXMgTk9UIGxhbmRpbmcgb24gbWFpbiBsaW5lLCBub3cg
aXQgbGFuZGVkLCBTaGF3biBqdXN0IGFwcGx5DQp0aGF0IG9sZCBwYXRjaCwgc28gaW4gVjYgcGF0
Y2ggSSBqdXN0IHNlbnQsIEkgZGlkIE5PVCBpbmNsdWRlIHRoaXMgcGF0Y2gsIHlvdSBjYW4ganVz
dCBhcHBseSB0aGUgNCBwYXRjaGVzIGluIFY2Lg0KDQpIaSwgU2hhd24NCglEYW5pZWwgd2lsbCBw
aWNrIHRoaXMgd2hvbGUgcGF0Y2ggc2VyaWVzLCBwbGVhc2UgcmFpc2UgaWYgeW91IGhhdmUgYW55
IGNvbmNlcm4sIHRoYW5rcy4NCg0KPiANCj4gT24gMTAvMDcvMjAxOSAwODozMCwgQW5zb24uSHVh
bmdAbnhwLmNvbSB3cm90ZToNCj4gDQo+IFsgLi4uIF0NCj4gDQo+ID4gKwkJaWRsZS1zdGF0ZXMg
ew0KPiA+ICsJCQllbnRyeS1tZXRob2QgPSAicHNjaSI7DQo+ID4gKw0KPiA+ICsJCQljcHVfc2xl
ZXBfd2FpdDogY3B1LXNsZWVwLXdhaXQgew0KPiANCj4gSXMgdGhhdCBhIHJldGVudGlvbiBzdGF0
ZSBvciBhIHBvd2VyZG93bj8gSXQgaXMgcHJlZmVyYWJsZSB0byBjaGFuZ2UgdGhlIG5hbWUNCj4g
dG8gdGhlIGlkbGUgc3RhdGUgbmFtaW5nIGNvbnZlbnRpb24gZ2l2ZW4gaW4gdGhlIFBTQ0kgZG9j
dW1lbnRhdGlvbiBbMV0gcGFnZQ0KPiAxNi0xNw0KDQpUaGFua3MgZm9yIHlvdXIgZGV0YWlsIHJl
ZmVyZW5jZSwgaXQgaXMgYSBwb3dlciBkb3duIHN0YXRlIHdpdGggU29DIGVudGVyaW5nIFdBSVQg
bW9kZSwNCnNvIGluIFY2LCBJIGNoYW5nZSB0aGUgbmFtZSB0byAiY3B1X3BkX3dhaXQ6Y3B1LXBk
LXdhaXQiLg0KDQo+IA0KPiANCj4gPiArCQkJCWNvbXBhdGlibGUgPSAiYXJtLGlkbGUtc3RhdGUi
Ow0KPiA+ICsJCQkJYXJtLHBzY2ktc3VzcGVuZC1wYXJhbSA9IDwweDAwMTAwMzM+Ow0KPiA+ICsJ
CQkJbG9jYWwtdGltZXItc3RvcDsNCj4gPiArCQkJCWVudHJ5LWxhdGVuY3ktdXMgPSA8MTAwMD47
DQo+ID4gKwkJCQlleGl0LWxhdGVuY3ktdXMgPSA8NzAwPjsNCj4gPiArCQkJCW1pbi1yZXNpZGVu
Y3ktdXMgPSA8MjcwMD47DQo+ID4gKwkJCQl3YWtldXAtbGF0ZW5jeS11cyA9IDwxNTAwPjsNCj4g
DQo+IEl0IGlzIHBvaW50bGVzcyB0byBzcGVjaWZ5IHRoZSBlbnRyeSArIGV4aXQgKmFuZCogdGhl
IHdha2V1cC1sYXRlbmN5IFsyXS4NCg0KQWgsIHllcywgdGhpcyBpcyBuZXcgdG8gbWUsIEkgd2ls
bCBqdXN0IHJlbW92ZSB0aGUg4oCcd2FrZXVwLWxhdGVuY3ktdXPigJ0gcHJvcGVydHkuDQoNClRo
YW5rcywNCkFuc29uLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
