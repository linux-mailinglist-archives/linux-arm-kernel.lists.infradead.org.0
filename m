Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE5B1FE9B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 05:58:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vfHeQrSMo80/E/W1dlxcPHrcSdPLA6GIXBOg/uJLtyk=; b=OId0DyLl/Ur7nc
	DarQD/L0UBJEqyIATsk+JD3FTwW+EVuajF9MeTlIQU64Di+EYycT1CSp4j6cdyQZ4BZBsx/6y4St8
	D9X/yf5qaFQPUruq/j2+jZ3Qgi7iTtYVM0Z3pcRKDcsVIsyIy9PVImgD9RRALs1U/XByLhHHWYN79
	XeYP7ACpANufTvLQTfz+GYc/DoNKewT+proOT4v+4GD+yziUKl7Yc5CtV1i0nZyh7yvcCOX2A3ByR
	3CA18Qppxn9iBv8zt2SYZ4F3y5Zkw/PIZ5/cmUgoVkFkBhC0a5bJ6ZLwAHBJ6qEpAbuyp7zxMNCqj
	q26zhgriti0Prjh60dYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jllhL-0003DV-VD; Thu, 18 Jun 2020 03:58:43 +0000
Received: from mail-db8eur05on2046.outbound.protection.outlook.com
 ([40.107.20.46] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jllhA-0003Ce-JG
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 03:58:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k+lp97vvovb70swF8Jn6Bgr1WSP/wBWdNL4c8cRLQBn9NvM/mjXiYXEyr7yyHO/Dh/3heiA3q2vnU351LOfzKeTOLzs3YkYPu/vob1obAee0I+ERQypiLlwU79iZHIe6ne0Zo/5RIe3I5fxvQt3VK4DbpUcQuQ+4ayzR7uqRA/7+jHCy9F7qSkYSp1QQlFvF9jrjNMneJtIe+lrBV3tYS+Wv+FegLxnTG0/Li5isRdOhn6PHSv2cAgx58q7Rk85QGb3VKjNkKCq9jRe6Ofqk+P/7tJ6RX6kQltID+VyAJ43SEBW5BnV3o9DfdbZqgQAybo0IE0UGwxqLJmrDLGARyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KAuJa+yvNtSd9B9H8CdnaFLe+5j+z2hl4qgi3W6g2Vs=;
 b=Zi62mtNGX+dW/X0thRRzW7RXGy4aoSTKPjzrznfrAMlTrXcgep0kb5KLNBTItAyaqF0vCbNNE2ct7HYEBv6AskNilN0iFZl3mwrNeaJlxfUDclBOJ2y+E2Pd1w9pdD9KsQA3px/suBLw/qPka+dT+QH7ZOK1e5RxvjwSbIhs+5VYQ/yrW3se7ab9msYeyejDMjfa7U5yVfhKIDQO2MXAG5+OpPitZNFyPH5CyzIs+UbP10je7t4r8u1CKN+H1Qpql8C0HnrESNd7tv5fsxGWTcLHJ9z2jOLCLjuibFfB8FwzV4/06Q0LSBPVmE/tvWwMSTj1O0Z6P+G6ypTmj/T1Jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KAuJa+yvNtSd9B9H8CdnaFLe+5j+z2hl4qgi3W6g2Vs=;
 b=KtObXN+h8LL1r8P8HicP5HDMcRfn++yzB+swHzN/aulpv0w1yuP0wq5GLRP5BtRa7qOTx2985XeG3T+i+6qaVplOfiDxSNnpvx34PFM0QoZB244cr0zeChec4cbDWCNZgVVhOevT7fQAeKaal41g4XYNuxUDgZ+y02+LuId0JYo=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4214.eurprd04.prod.outlook.com (2603:10a6:209:41::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Thu, 18 Jun
 2020 03:58:29 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3088.028; Thu, 18 Jun 2020
 03:58:29 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "linux@armlinux.org.uk"
 <linux@armlinux.org.uk>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "oleksandr.suvorov@toradex.com"
 <oleksandr.suvorov@toradex.com>, Stefan Agner <stefan.agner@toradex.com>,
 "arnd@arndb.de" <arnd@arndb.de>, Abel Vesa <abel.vesa@nxp.com>, Peng Fan
 <peng.fan@nxp.com>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "allison@lohutok.net" <allison@lohutok.net>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "info@metux.net" <info@metux.net>, Leonard
 Crestez <leonard.crestez@nxp.com>, Andy Duan <fugang.duan@nxp.com>, Daniel
 Baluta <daniel.baluta@nxp.com>, "yuehaibing@huawei.com"
 <yuehaibing@huawei.com>, "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>
Subject: RE: [PATCH V2 2/9] ARM: imx: Select MXC_CLK for ARCH_MXC
Thread-Topic: [PATCH V2 2/9] ARM: imx: Select MXC_CLK for ARCH_MXC
Thread-Index: AQHWPjGjLfNEVvc8HUmhxuTW0pJGcKjcqIMggAAi6gCAAPOSIIAAAt+AgAAJBZA=
Date: Thu, 18 Jun 2020 03:58:29 +0000
Message-ID: <AM6PR04MB496695B4659CEE5AD7C00C6C809B0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1591687933-19495-1-git-send-email-Anson.Huang@nxp.com>
 <1591687933-19495-3-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB4966F4A5E0276AEDB5605260809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB3PR0402MB39160682846B99E0A3762AF1F59A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <AM6PR04MB496647CBE140DFF73DCBBEED809B0@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB3PR0402MB3916B3474CF0014B490C78BBF59B0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916B3474CF0014B490C78BBF59B0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: db8d7154-b6f3-4e36-3500-08d8133bdc99
x-ms-traffictypediagnostic: AM6PR04MB4214:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB4214577608A463889C08A01E809B0@AM6PR04MB4214.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-forefront-prvs: 0438F90F17
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O6inJV0SGESRJcZtUwkWsjNnDn0nru+1VGHiUS+flKzDbzcP8RvoNnNFFPFmE1QMxlkZgd96Qh06w7l3uS2FE553Xf6O//O1Rj14118qOYCdJYabESImfrBhWN4N7zcm+3S+bUIy91nqX4jeSbbmWJ1Eq4asWefULDZS7vSf8P8FmI0jJ9w0+sVPJNG3W9DJVjxmiPaOG5VhY45fGkQqqvL1PeE0hGUT+PNPAC7EQG3InZ15PGoWKofRKP0nhzDUCY00g5egVdZHbv+J4xjdRe4CayoEZPeQFWvebbzEHQMuUMoFoTjtAN9m6Hu1uyTLqoKx9J7/UzNfMpm16KJnoT8jdFMYf7hE/0naj3vuUkjN4Stq1Fhjq2A8TRwc4V8g5Gzsr8DG+riRS5Nl3FI9CA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(136003)(396003)(346002)(39860400002)(366004)(83380400001)(7416002)(66476007)(86362001)(8936002)(33656002)(8676002)(66446008)(76116006)(52536014)(66556008)(44832011)(5660300002)(66946007)(64756008)(2906002)(7696005)(4326008)(9686003)(186003)(26005)(71200400001)(110136005)(6506007)(55016002)(316002)(478600001)(21314003)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: Ws3IPasJQ3WDVd5mm0931CN2U+ov6ZROz0LBBzNsz1ls55otoil+dJT9ph/4pwqm1rNMX3EcOimqLyLhrzYPdRwIm6o3qubqg59Nap4T0wNJ0t5KfpEG4QGN6UOgLK+IpypiI9RrGe5WwWX9sNuTN5kW2m0fIHd3M5K2zempStqwRg88JJL1Oejab9kRhWxbUvp94QCGMb1vbpgd1Ij4mGApfxcIjQoo4DW1gP4t4oYJtaim9wrpwnwTlyKsdJoFetsy1MDR09z6RR21zU8nHg04OYMURuf4fX53bbhAvmdMdThv8YkpyfxW8iK2rUiagDH45blOMbQjc/F9Ol52OU6JbL6knjf64om8fEend6A2mXMQnM7GerizmadeqBVZ0C+j2/QN3YB0kNcxlNfrCA3WbhA2909Ubv/davgiMB3mHHI5u5+PHb0IPJfKe/B2rNoHCI5szv5kBVdeCasWKZ+3xSnzhS1PFI6dLiyh0Atk4dvZeBT23H6FKxwtL4rc
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db8d7154-b6f3-4e36-3500-08d8133bdc99
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2020 03:58:29.6772 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WqTW28jyAnm5yTPTV4fdWWHF1ncO0L1dIw6MVRzF/T+3cXE9DnFcSk8lKiHttYU7SCPROC1gSBc9AhxLE7CFqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4214
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_205832_638976_517906A2 
X-CRM114-Status: GOOD (  21.07  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.46 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.46 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiBGcm9tOiBBbnNvbiBIdWFuZyA8YW5zb24uaHVhbmdAbnhwLmNvbT4NCj4gU2VudDogVGh1cnNk
YXksIEp1bmUgMTgsIDIwMjAgMTE6MTggQU0NCj4gDQo+ID4gRnJvbTogQWlzaGVuZyBEb25nIDxh
aXNoZW5nLmRvbmdAbnhwLmNvbT4NCj4gPiBTZW50OiAyMDIw5bm0NuaciDE45pelIDExOjA5DQo+
ID4NCj4gPiA+IEZyb206IEFuc29uIEh1YW5nIDxhbnNvbi5odWFuZ0BueHAuY29tPg0KPiA+ID4g
U2VudDogV2VkbmVzZGF5LCBKdW5lIDE3LCAyMDIwIDg6MzYgUE0NCj4gPiA+DQo+ID4gPiA+IFN1
YmplY3Q6IFJFOiBbUEFUQ0ggVjIgMi85XSBBUk06IGlteDogU2VsZWN0IE1YQ19DTEsgZm9yIEFS
Q0hfTVhDDQo+ID4gPiA+DQo+ID4gPiA+ID4gRnJvbTogQW5zb24gSHVhbmcgPEFuc29uLkh1YW5n
QG54cC5jb20+DQo+ID4gPiA+ID4gU2VudDogVHVlc2RheSwgSnVuZSA5LCAyMDIwIDM6MzIgUE0N
Cj4gPiA+ID4gPg0KPiA+ID4gPiA+IGkuTVggY29tbW9uIGNsb2NrIGRyaXZlcnMgbWF5IHN1cHBv
cnQgbW9kdWxlIGJ1aWxkLCBzbyBpdCBpcyBOT1QNCj4gPiA+ID4gPiBzZWxlY3RlZCBieSBkZWZh
dWx0LCBmb3IgQVJDSF9NWEMgQVJNdjcgcGxhdGZvcm1zLCBuZWVkIHRvDQo+ID4gPiA+ID4gc2Vs
ZWN0IGl0IG1hbnVhbGx5IHRvIG1ha2UgYnVpbGQgcGFzcy4NCj4gPiA+ID4gPg0KPiA+ID4gPiA+
IFNpZ25lZC1vZmYtYnk6IEFuc29uIEh1YW5nIDxBbnNvbi5IdWFuZ0BueHAuY29tPg0KPiA+ID4g
Pg0KPiA+ID4gPiBDYW4ndCB0aGUgb3JpZ2luYWwgZGVmX3h4eCB3b3JrPw0KPiA+ID4gPg0KPiA+
ID4gPiBjb25maWcgTVhDX0NMSw0KPiA+ID4gPiAgICAgICAgIHRyaXN0YXRlDQo+ID4gPiA+ICAg
ICAgICAgZGVmX3RyaXN0YXRlIEFSQ0hfTVhDDQo+ID4gPg0KPiA+ID4gU3VjaCBjaGFuZ2Ugd2ls
bCBtYWtlIE1YQ19DTEs9eSBldmVuIGFsbCBpLk1YOCBTb0NzIGNsb2NrIGRyaXZlcnMNCj4gPiA+
IGFyZSBzZWxlY3RlZCBhcyBtb2R1bGUsIHNvIGl0IGRvZXMgTk9UIG1lZXQgdGhlIHJlcXVpcmVt
ZW50IG9mDQo+ID4gPiBtb2R1bGUgc3VwcG9ydC4gQmVsb3cgaXMgZnJvbSAuY29uZmlnIHdoZW4g
YWxsDQo+ID4gPiBpLk1YOCBTb0NzIGNsb2NrIGRyaXZlcnMgYXJlIGNvbmZpZ3VyZWQgdG8gbW9k
dWxlLg0KPiA+ID4NCj4gPiA+ICBDT05GSUdfTVhDX0NMSz15DQo+ID4gPiAgQ09ORklHX01YQ19D
TEtfU0NVPW0NCj4gPiA+ICBDT05GSUdfQ0xLX0lNWDhNTT1tDQo+ID4gPiAgQ09ORklHX0NMS19J
TVg4TU49bQ0KPiA+ID4gIENPTkZJR19DTEtfSU1YOE1QPW0NCj4gPiA+ICBDT05GSUdfQ0xLX0lN
WDhNUT1tDQo+ID4gPiAgQ09ORklHX0NMS19JTVg4UVhQPW0NCj4gPiA+DQo+ID4NCj4gPiBJdCB3
b3JrcyBhdCBteSBzaWRlLg0KPiA+IEJlbG93IGlzIG15IGNoYW5nZXMgYmFzZWQgb24geW91ciBw
YXRjaHNldDoNCj4gPiAkIGdpdCBkaWZmDQo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gt
aW14L0tjb25maWcgYi9hcmNoL2FybS9tYWNoLWlteC9LY29uZmlnDQo+ID4gaW5kZXgNCj4gPiA0
N2IxMGQyMGY0MTEuLmU3ZDdiOTBlMmNmOCAxMDA2NDQNCj4gPiAtLS0gYS9hcmNoL2FybS9tYWNo
LWlteC9LY29uZmlnDQo+ID4gKysrIGIvYXJjaC9hcm0vbWFjaC1pbXgvS2NvbmZpZw0KPiA+IEBA
IC00LDcgKzQsNiBAQCBtZW51Y29uZmlnIEFSQ0hfTVhDDQo+ID4gICAgICAgICBkZXBlbmRzIG9u
IEFSQ0hfTVVMVElfVjRfVjUgfHwgQVJDSF9NVUxUSV9WNl9WNyB8fA0KPiA+IEFSTV9TSU5HTEVf
QVJNVjdNDQo+ID4gICAgICAgICBzZWxlY3QgQVJDSF9TVVBQT1JUU19CSUdfRU5ESUFODQo+ID4g
ICAgICAgICBzZWxlY3QgQ0xLU1JDX0lNWF9HUFQNCj4gPiAtICAgICAgIHNlbGVjdCBNWENfQ0xL
DQo+ID4gICAgICAgICBzZWxlY3QgR0VORVJJQ19JUlFfQ0hJUA0KPiA+ICAgICAgICAgc2VsZWN0
IEdQSU9MSUINCj4gPiAgICAgICAgIHNlbGVjdCBQSU5DVFJMDQo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvY2xrL2lteC9LY29uZmlnIGIvZHJpdmVycy9jbGsvaW14L0tjb25maWcgaW5kZXgNCj4g
PiAyNmNlZGJmZTM4NmMuLmY3YjNlM2EyY2I5ZiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2Ns
ay9pbXgvS2NvbmZpZw0KPiA+ICsrKyBiL2RyaXZlcnMvY2xrL2lteC9LY29uZmlnDQo+ID4gQEAg
LTMsNiArMyw3IEBADQo+ID4gIGNvbmZpZyBNWENfQ0xLDQo+ID4gICAgICAgICB0cmlzdGF0ZSAi
SU1YIGNsb2NrIg0KPiA+ICAgICAgICAgZGVwZW5kcyBvbiBBUkNIX01YQw0KPiA+ICsgICAgICAg
ZGVmX3RyaXN0YXRlIEFSQ0hfTVhDDQo+ID4NCj4gPiAgY29uZmlnIE1YQ19DTEtfU0NVDQo+ID4g
ICAgICAgICB0cmlzdGF0ZSAiSU1YIFNDVSBjbG9jayINCj4gPg0KPiANCj4gSSBndWVzcyB5b3Ug
dHJpZWQgaW14X3Y2X3Y3X2RlZmNvbmZpZz8gSXQgZG9lcyBOT1Qgd29yayBmb3IgQVJNNjQgZGVm
Y29uZmlnDQo+IHdoZW4gd2UgdHJ5IHRvIG1ha2UgQ09ORklHX01YQ19DTEs9bSwgQmVsb3cgYXJl
IG15IGNoYW5nZSwgeW91IGNhbiBzZWUNCj4gaW4gLmNvbmZpZywgZXZlbiBhbGwgaS5NWDggU29D
cyBjbG9jayBkcml2ZXJzIGFyZSBjb25maWd1cmVkIHRvIG1vZHVsZSwgdGhlDQo+IENPTkZJR19N
WENfQ0xLIGlzIHN0aWxsID15LCBidXQgdGhlIGV4cGVjdGVkIHJlc3VsdCBpcyA9bS4NCj4gDQoN
Ckl0IHdvcmtzIGF0IG15IHNpZGUgYmVjYXVzZSBpdCBjYW4gbWFudWFsbHkgc2VsZWN0ZWQgYXMg
bSBvciBhZGQgQ09ORklHX01YQ19DTEs9bQ0KSW4gZGVmY29uZmlnLg0KQnV0IG5vdyBJIGdvdCB5
b3VyIHBvaW50IHlvdSB3YW50IENPTkZJR19NWENfQ0xLIGRlZmF1bHQgdG8gbSBvbmNlIGRlZmlu
ZQ0KQ09ORklHX0NMS19JTVg4WD1tIGluIGRlZmNvbmZpZy4NCg0KPiBCVFcsIGFsbCBpLk1YOCBT
b0NzIHNlbGVjdCBNWENfQ0xLIGluIHRoZWlyIGtjb25maWcsIHRoaXMgcGF0Y2gganVzdCBkb2Vz
IHRoZQ0KPiBzYW1lIHRoaW5nIGZvciBpLk1YNi83IGluIGNvbW1vbiBwbGFjZS4NCj4gDQoNCkkg
anVzdCBub3RpY2VkIGZvciBNWDYmNywgYWN0dWFsbHkgQ09ORklHX01YQ19DTEsgY2FuJ3QgYmUg
bSBvdGhlcndpc2Ugd2Ugd2lsbCBtZWV0IGJ1aWxkIGJyZWFrLg0KVGhhdCBtZWFucyBDT05GSUdf
TVhDX0NMSyBjYW5ub3QgYmUgY29uZmlndXJhYmxlIGJ5IHVzZXJzIGZvciBub24tQVJNNjQgcGxh
dGZvcm1zLg0KVGh1cyBjYW4ndCB1c2UgZGVmX3RyaXN0YXRlIGFuZCB3ZSBzdGlsbCBuZWVkIHNl
bGVjdCBpdCB1bmRlciBBUkNIX01YQy4NClRoaXMgbGlnaHRseSBsb3NlIGEgYml0IG1lYW5pbmcg
dG8gbWFrZSB0aGlzIGNvcmUgbGlicmFyeSBhcyBtb2R1bGUuDQoNCklNSE8gSSdkIHN0aWxsIHBy
ZWZlciB0byBidWlsdGluIHRob3NlIGNvcmUgbGlicmFyaWVzIHJhdGhlciB0aGFuIGNvbnZlcnQg
dG8gbW9kdWxlLg0KDQpSZWdhcmRzDQpBaXNoZW5nDQoNCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJt
L21hY2gtaW14L0tjb25maWcgYi9hcmNoL2FybS9tYWNoLWlteC9LY29uZmlnIGluZGV4DQo+IDQ3
YjEwZDIuLmU3ZDdiOTAgMTAwNjQ0DQo+IC0tLSBhL2FyY2gvYXJtL21hY2gtaW14L0tjb25maWcN
Cj4gKysrIGIvYXJjaC9hcm0vbWFjaC1pbXgvS2NvbmZpZw0KPiBAQCAtNCw3ICs0LDYgQEAgbWVu
dWNvbmZpZyBBUkNIX01YQw0KPiAgICAgICAgIGRlcGVuZHMgb24gQVJDSF9NVUxUSV9WNF9WNSB8
fCBBUkNIX01VTFRJX1Y2X1Y3IHx8DQo+IEFSTV9TSU5HTEVfQVJNVjdNDQo+ICAgICAgICAgc2Vs
ZWN0IEFSQ0hfU1VQUE9SVFNfQklHX0VORElBTg0KPiAgICAgICAgIHNlbGVjdCBDTEtTUkNfSU1Y
X0dQVA0KPiAtICAgICAgIHNlbGVjdCBNWENfQ0xLDQo+ICAgICAgICAgc2VsZWN0IEdFTkVSSUNf
SVJRX0NISVANCj4gICAgICAgICBzZWxlY3QgR1BJT0xJQg0KPiAgICAgICAgIHNlbGVjdCBQSU5D
VFJMDQo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnIGIvYXJjaC9h
cm02NC9jb25maWdzL2RlZmNvbmZpZyBpbmRleA0KPiA4MjIyZTRiLi4yMWUyZGJiIDEwMDY0NA0K
PiAtLS0gYS9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnDQo+ICsrKyBiL2FyY2gvYXJtNjQv
Y29uZmlncy9kZWZjb25maWcNCj4gQEAgLTc5OSwxMSArNzk5LDExIEBAIENPTkZJR19DT01NT05f
Q0xLX1MyTVBTMTE9eQ0KPiBDT05GSUdfQ09NTU9OX0NMS19QV009eSAgQ09ORklHX0NPTU1PTl9D
TEtfVkM1PXkNCj4gQ09ORklHX0NMS19SQVNQQkVSUllQST1tIC1DT05GSUdfQ0xLX0lNWDhNTT15
DQo+IC1DT05GSUdfQ0xLX0lNWDhNTj15IC1DT05GSUdfQ0xLX0lNWDhNUD15IC1DT05GSUdfQ0xL
X0lNWDhNUT15DQo+IC1DT05GSUdfQ0xLX0lNWDhRWFA9eQ0KPiArQ09ORklHX0NMS19JTVg4TU09
bQ0KPiArQ09ORklHX0NMS19JTVg4TU49bQ0KPiArQ09ORklHX0NMS19JTVg4TVA9bQ0KPiArQ09O
RklHX0NMS19JTVg4TVE9bQ0KPiArQ09ORklHX0NMS19JTVg4UVhQPW0NCj4gIENPTkZJR19USV9T
Q0lfQ0xLPXkNCj4gIENPTkZJR19DT01NT05fQ0xLX1FDT009eQ0KPiAgQ09ORklHX1FDT01fQTUz
UExMPXkNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL2lteC9LY29uZmlnIGIvZHJpdmVycy9j
bGsvaW14L0tjb25maWcgaW5kZXgNCj4gMjZjZWRiZi4uZjdiM2UzYSAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9jbGsvaW14L0tjb25maWcNCj4gKysrIGIvZHJpdmVycy9jbGsvaW14L0tjb25maWcN
Cj4gQEAgLTMsNiArMyw3IEBADQo+ICBjb25maWcgTVhDX0NMSw0KPiAgICAgICAgIHRyaXN0YXRl
ICJJTVggY2xvY2siDQo+ICAgICAgICAgZGVwZW5kcyBvbiBBUkNIX01YQw0KPiArICAgICAgIGRl
Zl90cmlzdGF0ZSBBUkNIX01YQw0KPiANCj4gIGNvbmZpZyBNWENfQ0xLX1NDVQ0KPiAgICAgICAg
IHRyaXN0YXRlICJJTVggU0NVIGNsb2NrIg0KPiANCj4gLmNvbmZpZzoNCj4gIENPTkZJR19NWENf
Q0xLPXkNCj4gIENPTkZJR19NWENfQ0xLX1NDVT1tDQo+ICBDT05GSUdfQ0xLX0lNWDhNTT1tDQo+
ICBDT05GSUdfQ0xLX0lNWDhNTj1tDQo+ICBDT05GSUdfQ0xLX0lNWDhNUD1tDQo+ICBDT05GSUdf
Q0xLX0lNWDhNUT1tDQo+ICBDT05GSUdfQ0xLX0lNWDhRWFA9bQ0KPiANCj4gQW5zb24NCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
