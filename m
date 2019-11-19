Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B83EC101F4D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 10:05:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BEuT4EzbAtj34y1bB+PDNzyLZNfrGHj6M4HJaY2JPFQ=; b=Fi5f43pHbO29RI
	gMZLcOuhehK0I7T6WJQk1RBtzfec/BtrYw2JikT18f1xHBIIc7MfKWIV+g7K8n7pxS/UE2a2orhc/
	WmaCyBFQou+qrNwfZzihuMaOSj8UWK6YZ/dlQVVa7siQhUOGjUEL5xGTygvszSnN7bE86MzPIk8XS
	c/0J+3j+tmCmoTwPka3Gakyh4NL8gU+Lfo5RsRT9mj/69BeUbyjTbjKcKfoFteUJNKBd24hHnAt97
	E/NFekocWbYPJOlmsJCpZonEnB/Uug2mTfG5nO1Cn4Uvozo4WJ3Fy/jqIhctj8jUPWPtCtL7SoOxZ
	ZnKGx0yHqGC/jpL0b7iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWzS3-0008M6-3k; Tue, 19 Nov 2019 09:05:35 +0000
Received: from mail-eopbgr00048.outbound.protection.outlook.com ([40.107.0.48]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWzRO-0006vX-Sn
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 09:04:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=agv80Ej+H/+4r8bZSHODp+AuH8WrnRPLo2ZBA0X9GzBYYu8B8fqE/hU4lChYCR5XGba7HMSyz2CqCoQ4sal1IFR9v+AQ2rYEqeD6rBmc+xnZxbZw8FCz5uRSZ3t+SZ50P5yvmC1mvr9kGJ+9Mhrkvf6f4E35toEk+v1lV6Zx+7D/u4ACx26+si1YwYUssZi7EkxuZGj7pGcw85OBUt5r9e9xwpAFs3TvgyTIEV61saqrW2uLWSoqR2krKwp2QvVO+74fUruy3nQHNVHkL6H4JJnc6uMPiDz7fu0Wo2hHbwzxXaXQWZKNszZsebu1HSUqx39QBUwMwkbjQsCl90GTDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=127ZqZr3yibLEGADIDwdS92koh1Pj0RZ3R7B7s2PvMA=;
 b=mVeU+z1cSDIdM0GFBWZ5ELtOMwEI6YBk/KX/TdtVw+KbxyWK/27Xm3t3J+MnA7nmVFCv0fj0Rh+my6jvdYCh9lG9OLgRMnsyUMvQeKwXe7PtB1RS9ahlxS7KX3GymwLdNq4JBT1ffzygoMqM74ZCBX4YKx7ha2sFPZG/H06s+YkXd+P9a1XY9yzWoKg1mP5zcfjpWxPNcWK4xnllWk6HSxIqUS55yNmFNX3qXU/B/8xJAWGho5esHyVwawUFERjVhGcDEPQ/8Y01Plg5xt9wgngQ650UPuEncR5/uP1+8dwKlvRfivmLIoC2qqAdzeUDHjkCjvHNvxspoJ5ch0REQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=127ZqZr3yibLEGADIDwdS92koh1Pj0RZ3R7B7s2PvMA=;
 b=kpIjcnxjS0MEADFiteZ3l4wxQwQW9od8NSWliCn9SzQFgcyQKiWGiyWrXYwb8BnolKqqMLW/HdIQCx5MSZo7+/m/reSCJczn+sEZucM6RgRuOt4maH7ccSWzVUVnyGAZ73LzLmLwrQmg86ZVo5Vb6d/rNbNmvUR7WRNaJxDQfBA=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4259.eurprd04.prod.outlook.com (52.134.126.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.27; Tue, 19 Nov 2019 09:04:51 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2451.031; Tue, 19 Nov 2019
 09:04:51 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH V3 1/4] clk: imx: Remove __init for imx_obtain_fixed_clk_hw()
 API
Thread-Topic: [PATCH V3 1/4] clk: imx: Remove __init for
 imx_obtain_fixed_clk_hw() API
Thread-Index: AQHVnrhmTIfoGE/++UWTDwoewNvIZQ==
Date: Tue, 19 Nov 2019 09:04:51 +0000
Message-ID: <1574154146-8818-2-git-send-email-peng.fan@nxp.com>
References: <1574154146-8818-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1574154146-8818-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0052.apcprd03.prod.outlook.com
 (2603:1096:203:52::16) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: df7bc0d3-d02a-4a9c-4feb-08d76ccf890f
x-ms-traffictypediagnostic: AM0PR04MB4259:|AM0PR04MB4259:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4259F52A9D69F6FCCEC08AF6884C0@AM0PR04MB4259.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:597;
x-forefront-prvs: 022649CC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(39860400002)(346002)(376002)(136003)(189003)(199004)(486006)(76176011)(54906003)(36756003)(6512007)(6486002)(52116002)(6506007)(2201001)(64756008)(66556008)(66476007)(476003)(66446008)(386003)(25786009)(50226002)(2501003)(110136005)(4326008)(2906002)(316002)(6116002)(3846002)(44832011)(8936002)(6436002)(66066001)(71190400001)(71200400001)(11346002)(446003)(99286004)(256004)(186003)(14454004)(305945005)(86362001)(7736002)(2616005)(478600001)(5660300002)(8676002)(81166006)(81156014)(6636002)(4744005)(102836004)(66946007)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4259;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6U7q/8+dRDkVBQZfH4sxTCk3km6GyrwgEv6tIoNeJeLHZbj3RHcV4phabtt4anNDu3o67kMvN/6O3jP0IF5ocRoome7oAADM+Q4trH4s5abSo0LrZGTr+Rj8i8YiXwUd0y60Pw/QU8Fww2+GujghPA3rNQjoy1VNPTM4/0zeiUkwnXUp3inESZ6qBOYcOABsnk8icKPW6F1YO7fBNFMrwxEHxsEL77NCkCDnyQgtjt0AvuaNTGlKTbpeL1e1Hm3izEnM3XR0V5zHJVWP1XK5vftaH0xuQ8daxtnrmFyhlJmq44Cv+If2Isr+Mc9ZsLDmiAMxcqOqSIOeN3ECcNPaoKRi6nHmqLeEE/D3Uu4bxhTg9CgP0y1zOr6U6jeIDjr5ADLFZUy9IanDDmkYSERdOP7B2IgJpsAQ2T7aLKfDLawc/btGS/3Jdxgslv49UMpI
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df7bc0d3-d02a-4a9c-4feb-08d76ccf890f
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2019 09:04:51.3224 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p+FojUHoQptSQ6vwBHin/QB9sEKmunbSpRAZtX4SemyO/4LELwr8awIx14MQzMNqkQIwflPhUzilyGaRgb2uug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4259
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_010454_926636_F45B29CF 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peng Fan <peng.fan@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Alice Guo <alice.guo@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Some of i.MX SoCs' clock driver will use platform driver model,
and they need to call imx_obtain_fixed_clk_hw() API, so
imx_obtain_fixed_clk_hw() API should NOT be in .init section.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk.c b/drivers/clk/imx/clk.c
index d0ce29f2c417..87ab8db3d282 100644
--- a/drivers/clk/imx/clk.c
+++ b/drivers/clk/imx/clk.c
@@ -102,8 +102,8 @@ struct clk_hw * __init imx_obtain_fixed_clock_hw(
 	return __clk_get_hw(clk);
 }
 
-struct clk_hw * __init imx_obtain_fixed_clk_hw(struct device_node *np,
-					       const char *name)
+struct clk_hw * imx_obtain_fixed_clk_hw(struct device_node *np,
+					const char *name)
 {
 	struct clk *clk;
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
