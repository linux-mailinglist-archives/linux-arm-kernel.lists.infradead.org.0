Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6014F1B6B97
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 04:51:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EFx1bAVPT6ZzpmcEll27NcGd53oAg72UHBh4t+OCqtc=; b=q5CvEX4SlGXIp5
	0bJ6a4gBOkJ4XWc6IrUIc/MRr6y7r9XpI838Mnz4LiKvv/Ckfxw58RnRoc8ZrO8lo3M0aFv62uoZz
	X4QjCVEOkqqwhxjuU6BIMJwuuCrc7nJxdVU9Qxv1pwGyl0hyiPP0SH/iS0brldTR7HuJstqtmEvYT
	vq56fv1Rp7p59pBDTHmJ75VW5kisO/ivSeOHdnpt39m0t7EyN4D8K07PJMClR8R6+1l6qubo6AUvF
	SM9b9UJt1VOt3iUeoRYokOUYJgzPGTGl/QyS7mKmjk84A2dtaFdIcz6RjdAI44IC0TbDxN1rT63HN
	s+uOqwDRAOjCOOxBw7Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRoR4-0007AT-Aw; Fri, 24 Apr 2020 02:51:26 +0000
Received: from mail-am6eur05on2076.outbound.protection.outlook.com
 ([40.107.22.76] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRoQq-00079Q-Vv
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 02:51:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E42gJBYKKvS1ISt3eUoDJ7gLeIUoAxGigUBbF6SkKZgyTndw7RrS+IpVuIHRMue1cFjtkt1c0KvWXgRXVnCooL2eyOJM8rn0084YWfh+3upWIUn5RZGsY1X6cMC8URjVP3GoQcH2FdGmlmHFZLM+3JXm0oQcGNzf6v09YceGiJir76r9Fvemoy7ksXMubTSfKWmW6K5R3lz0fkawbO7tDaET+g5h4H0HLP4fRhVXKuiFv8pIUk2bhRgZpFgewoleR+Kov41XKxJBjeK0Pn1+3/dj+Jgbcf1Gjggc0WahvBv3h8IoLzUJjkjdwpW2kx0RycYwOHmhxY7t7I2FpJnPiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EdUOFsIvbIzg7dEsuC2xbbUIZdTDahSrD5+a1349ujQ=;
 b=Nx9OHoeYJ1jU9x7dSMZXW1qxJrOnM/jkEWEVTZxb78LU9vXUUEe8x0PIlyql0nXnCjScgNMOfHyERljHgTKRny3mh9pIs+HND+l+0OcTsjoXaTFyyVXk5zF6aRuTpexZ7VKLEWrmqO5cDJ/5reFvTCwvOkeEB8S1wLOZwip6QNNL2AhLrslm4uAxMpTqWM/1taB0E54PAOT8Ch/h1LT6wjATmmVYBRswq6hYtH+AhfthZ3XVVzJMmVuDuKmlYLiYNfhxTx6m3/2zdt0g81Tl+M/1yw+L+oZa2cKqdBY+uFuykoSXRE0qbSLQuvAn2aqyk1n9B7Qvtnv0qjCN2u5hmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EdUOFsIvbIzg7dEsuC2xbbUIZdTDahSrD5+a1349ujQ=;
 b=fDZpw7gCRzGTV8Vfk/ngOrfUe8cagCm4sySSJbPYfUbtLzN8HYI3LfwcUIcnn3j7LId2AuvcwPW59/eJYOuPcNwsMqDk/ADjEoHpkOjoWk8v924rd+cG+9nxufZ3M/SZ3gfT2pkPg3NxfkShJMzg7K4oK54NyOCELT+p72twyXs=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4135.eurprd04.prod.outlook.com (2603:10a6:209:43::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.28; Fri, 24 Apr
 2020 02:51:09 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2921.032; Fri, 24 Apr 2020
 02:51:09 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "ben.dooks@codethink.co.uk"
 <ben.dooks@codethink.co.uk>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 2/2] firmware: imx: MU IRQ group number should be 7
Thread-Topic: [PATCH 2/2] firmware: imx: MU IRQ group number should be 7
Thread-Index: AQHWGcUy/MHx513YSkqpWUZybaROrqiHjXLggAABSQCAAAEoAA==
Date: Fri, 24 Apr 2020 02:51:09 +0000
Message-ID: <AM6PR04MB49668CCFFB4439B051E99A3B80D00@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1587683231-18468-1-git-send-email-Anson.Huang@nxp.com>
 <1587683231-18468-2-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB496669637FE86E928B9E0EBE80D00@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB3PR0402MB391699FFA107CD570B943705F5D00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB391699FFA107CD570B943705F5D00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 902b6d3a-561f-43d7-45fd-08d7e7fa579d
x-ms-traffictypediagnostic: AM6PR04MB4135:|AM6PR04MB4135:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB4135321DF06741F50F98C15180D00@AM6PR04MB4135.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 03838E948C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(396003)(39860400002)(366004)(376002)(346002)(136003)(186003)(76116006)(53546011)(316002)(66946007)(44832011)(110136005)(5660300002)(6506007)(4326008)(33656002)(64756008)(9686003)(8676002)(81156014)(26005)(8936002)(7696005)(71200400001)(2906002)(86362001)(66556008)(52536014)(66446008)(55016002)(478600001)(66476007);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 32FLy8MEtzLRvR3jrFMrTaj9lOPmzW7H5uZR5K1nwBxy6G98KmZNNxxktzYV9WMgJwAqk6yFc0FBTQGm6wCHXJf7w4bFoLmSW1BYzuKVZ8nFmKgDLu3g1SZ7fpsD1hxt0Sk8V/VKuSkX5wPDMIf5sOI318boswwzz6/u0bTRIYpb7SRUWSjirkZHq9wAcYI3c3bak84jEwBp03m0omn1JvsJm3iNAQD+qMdlvXdtbKABpbqTx+hw20HYts/AaLZYjqQMd2dDEsvdaVOp8V86U8ArcuflgO1LzucYRhP++8ZPMUBkYc39Tx46xvlZ4nM0Gj98BRyGFeVwA5mxKtspIsnv2VRAhRSeIK1fBr6rZf+W7ejJ0ldRQE5so7Y8oVUdH1RDfW8xRZh7SZzf6giTNuzii1aDXPUdM3TbnKqExdT+5S5oc5oYZaw3AtMhPFwL
x-ms-exchange-antispam-messagedata: M8vXK5YCtCW0L5ZRMrdqJPGnu6KtNgP/SLU9edWvbmvAjgxxhyF9ns00RYDy/h4o0uAvDRA8Hw/HanrYme7ncatNgHIWynf5JD6LD9EWcc0vWLH41CEhUgrZchofGm2sGXfS3nyEPgYJk6hbbf7J6Q==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 902b6d3a-561f-43d7-45fd-08d7e7fa579d
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2020 02:51:09.2687 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +UHbeweHcNKoRl+b27ZXSO/KkDefjx2XMiz7MBmQ4CTr7q+WpO4vu7YM7ht4hh2JO+MP6XhwIA5j9O63J9fJew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_195113_022536_605C1D64 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.76 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiBGcm9tOiBBbnNvbiBIdWFuZyA8YW5zb24uaHVhbmdAbnhwLmNvbT4NCj4gU2VudDogRnJpZGF5
LCBBcHJpbCAyNCwgMjAyMCAxMDozNiBBTQ0KPiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2Ut
LS0tLQ0KPiA+IEZyb206IEFpc2hlbmcgRG9uZyA8YWlzaGVuZy5kb25nQG54cC5jb20+DQo+ID4g
U2VudDogMjAyMOW5tDTmnIgyNOaXpSAxMDozMw0KPiA+IFRvOiBBbnNvbiBIdWFuZyA8YW5zb24u
aHVhbmdAbnhwLmNvbT47IHNoYXduZ3VvQGtlcm5lbC5vcmc7DQo+ID4gcy5oYXVlckBwZW5ndXRy
b25peC5kZTsga2VybmVsQHBlbmd1dHJvbml4LmRlOyBmZXN0ZXZhbUBnbWFpbC5jb207DQo+ID4g
YmVuLmRvb2tzQGNvZGV0aGluay5jby51azsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnOw0KPiA+IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcNCj4gPiBDYzogZGwtbGlu
dXgtaW14IDxsaW51eC1pbXhAbnhwLmNvbT4NCj4gPiBTdWJqZWN0OiBSRTogW1BBVENIIDIvMl0g
ZmlybXdhcmU6IGlteDogTVUgSVJRIGdyb3VwIG51bWJlciBzaG91bGQgYmUNCj4gPiA3DQo+ID4N
Cj4gPiA+IEZyb206IEFuc29uIEh1YW5nIDxBbnNvbi5IdWFuZ0BueHAuY29tPg0KPiA+ID4gU2Vu
dDogRnJpZGF5LCBBcHJpbCAyNCwgMjAyMCA3OjA3IEFNDQo+ID4gPg0KPiA+ID4gVGhlIE1VIElS
USBncm91cCBudW1iZXIgc2hvdWxkIGJlIDcgaW5zdGVhZCBvZiA0Lg0KPiA+ID4NCj4gPiA+IFNp
Z25lZC1vZmYtYnk6IEFuc29uIEh1YW5nIDxBbnNvbi5IdWFuZ0BueHAuY29tPg0KPiA+DQo+ID4g
QXJlIHdlIHVzaW5nIG90aGVycyBJUlEgZ3JvdXA/DQo+ID4gSWYgbm90LCB0aGlzIGNoYW5nZSBt
YXkgc2xvdyBkb3duIHRoZSBpcnEgaGFuZGxpbmcgc3BlZWQuDQo+IA0KPiBUaGUgaXJxIGhhbmRs
aW5nIGlzIHVzaW5nIHdvcmsgcXVldWUsIE5PVCBpbiBJU1IsIHNvIHRoZSBzcGVlZCBpcyBOT1Qg
dGhhdA0KPiBzZW5zaXRpdmUuDQoNClNDVSBJUEMgaXMgc2hhcmVkIGJ5IHRoZSB3aG9sZSBzeXN0
ZW0sIGVhY2ggU0NVIHRyYW5zZmVyIHRha2VzIGFib3V0IDEwfjIwIHVzLg0KSGVyZSB5b3UgbWF5
IHdhc3RlIDMwfjYwdXMgaWYgbm90IHJlYWxseSB1c2VkLg0KDQo+IFRoZSBzY3UgZ3JvdXAgaXJx
IGRyaXZlciBzaG91bGQgcHJvdmlkZSBmdWxsIGZ1bmN0aW9ucywgYXMgb3RoZXIgZHJpdmVycyB1
c2luZyBpdA0KPiBtYXkgZW5hYmxlIHRoZSBncm91cCB0aGV5IHdhbnQuDQoNCkJlbG93IGFyZSBl
eHRyYSBHUk9VUHMgeW91J3JlIGdvaW5nIHRvIGFkZDoNCiNkZWZpbmUgU0NfSVJRX0dST1VQX1NZ
U0NUUiAgICAgNFUgICAvKiE8IFN5c3RlbSBjb3VudGVyIGludGVycnVwdHMgKi8NCiNkZWZpbmUg
U0NfSVJRX0dST1VQX1JFQk9PVEVEICAgNVUgICAvKiE8IFBhcnRpdGlvbiByZWJvb3QgY29tcGxl
dGUgKi8NCiNkZWZpbmUgU0NfSVJRX0dST1VQX1JFQk9PVCAgICAgNlUgICAvKiE8IFBhcnRpdGlv
biByZWJvb3Qgc3RhcnRpbmcgKi8NCkFyZSB3ZSByZWFsbHkgZ29pbmcgdG8gdXNlIGl0PyBJdCBz
ZWVtcyBJIGFsc28gZGlkbid0IHNlZSBhbnkgdXNlcnMgaW4gZG93bnN0cmVhbSB0cmVlLg0KDQpT
b21lIGZ1bmN0aW9ucyBwcm92aWRlZCBieSBTQ0ZXIG1heSBub3QgcmVhbGx5IHVzZWQgYnkgTGlu
dXguDQpJIHRoaW5rIEkncyBiZXR0ZXIgdG8gYWRkIHRoZW0gd2hlbiB3ZSByZWFsbHkgbmVlZCB0
aGVtLCBvdGhlcndpc2Ugd2UgYmVuZWZpdCBub3RoaW5nDQpCdXQgd2FzdGluZyBDUFUgbWlwcy4N
Cg0KUmVnYXJkcw0KQWlzaGVuZw0KDQo+IA0KPiBBbnNvbg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
