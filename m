Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A064913B77A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 03:07:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tdLAVfFmkjFDksJkbv6R0uKJoA2VvVHYQSiCD4Mp1KQ=; b=qwOgQipBwzxpkm
	Bi0TGesimw49b4YPo4AOyWD1hS58PYecq6uAxvvmOziBAAWAH0eFk8CYmxNZCC19Qik21iHJqVg2k
	I2ZugsyweYPKS+/4ufJZtd4OBbfFti0v/I2Zxt6jool1jNJmpcwV7liRhvJp/vbahJRV/WzkYZ8ew
	z6of7z/xp911K+dRdhnDUAR+/cbNVYVO1gOcjZB551k7hJRfJs51rk05e4ATX1i0/moPTqfOSm5yb
	IB+MH7t92LBpA65DnXXmShdCTiaXW2c026nX94ux0CnENZvoD/6cM5NkXvVaYq+pSyoTtDWhJgL7C
	efs8fp2u42oR7OyJ5QhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irY5T-000558-9s; Wed, 15 Jan 2020 02:07:15 +0000
Received: from mail-eopbgr80089.outbound.protection.outlook.com ([40.107.8.89]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irY5K-000548-OZ
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 02:07:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TNsEjtKWiSApN8lwZ8zs+TIJ9Sk5yzO4bc6ZuO0vhFcD+6JPMUvWyDp/vNYiTdAOONodGM++8vsSOdBi50nhQ5c5T6ZqjHYY0F9as31f+I4lyooZL8A2JVLfPCpP0D8wtLWgpz/E/tKSqDz3jqNuSWeUQi5p8dktCHTG0Kzt8TnKGSezYjJVyvisMphFNMZ9xdieJxiUAb73ZjGdTugO9obtaYkQxNhKKwWUkqDnN0skJ2yKpPQ/8/CyuwsyEDaotlbYKaIfQO0+YmdPL9LNNBnp3gPHLVaH7lQIJILolfPTB/qbY5z6k+vjPFaLR+TEuWsBjHuVW3X5HV1hSRSEmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gGueIGqFeLzLTgbxBU3nHj5bHf5kJin+tZaGwFBwnqY=;
 b=oNscgcxBnI4QHml3ofbTuWCb2j4cVUNUzwiFo+fRKCDk6fayvUhbgzPqdn8p4OmAuOMxunbUINalGYohr0og5y3uJOvRckek84oc9Ki6NqZ4wy3Yj3oOjTOqXmP5rAnnPzCPCY9SErm/372Pw0EJbfdhRNEUQ3ZoYYbxn5XFykPfgLJwUWWH/GVJUi9ad0qtgVtlpzoXdsrULeUo8uVq1o6pW44bisCJegb9aBWZ+G0KsLg9/aZq6FV4ty815LZfAJJZ1WBKElCEt3e+uoT2PCFPyFU8e3odFOcKSRzvdg6F7rPsxVB9jn2mtUy1io0Vwz5qYZnlvh4YX9XFtyZqmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gGueIGqFeLzLTgbxBU3nHj5bHf5kJin+tZaGwFBwnqY=;
 b=NDgdZdy04lZV+1NZlbLqrosyQg7z2MNAZhIc1tpQF6a3b9iBnAVARbhFSffew9YDHvlyiezMI5Dzioze80wGLXiZ4nL4gsNB1FgayGU5heW6zGlzWxDLahngJP2Ewfelfn3p+EWWvcEZYWXSrXL30SCty9ch0u/PRVe6rcjMxPM=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4019.eurprd04.prod.outlook.com (52.134.126.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.13; Wed, 15 Jan 2020 02:07:01 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.015; Wed, 15 Jan 2020
 02:07:01 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK0PR03CA0114.apcprd03.prod.outlook.com (2603:1096:203:b0::30) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2644.19 via Frontend Transport; Wed, 15 Jan 2020 02:06:55 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Leonard Crestez <leonard.crestez@nxp.com>, Abel Vesa
 <abel.vesa@nxp.com>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: [PATCH] arm64: dts: imx8mq: fix gpu clock
Thread-Topic: [PATCH] arm64: dts: imx8mq: fix gpu clock
Thread-Index: AQHVy0h5k13fDWK56keKO0mDJyLtvQ==
Date: Wed, 15 Jan 2020 02:07:01 +0000
Message-ID: <1579053765-29891-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0114.apcprd03.prod.outlook.com
 (2603:1096:203:b0::30) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 32c2a29d-ac8a-4731-f238-08d7995f9bd7
x-ms-traffictypediagnostic: AM0PR04MB4019:|AM0PR04MB4019:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4019630700A635AE9A3BB36B88370@AM0PR04MB4019.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1169;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(396003)(366004)(376002)(346002)(189003)(199004)(71200400001)(69590400006)(52116002)(5660300002)(8676002)(6666004)(186003)(81156014)(2616005)(6512007)(956004)(6506007)(81166006)(4326008)(16526019)(54906003)(7416002)(478600001)(110136005)(2906002)(66556008)(66476007)(86362001)(66946007)(64756008)(66446008)(36756003)(6486002)(8936002)(26005)(44832011)(316002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4019;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nVHAdQy7rqH18AMbpnwQ41pzJmI1N2NFLw8owmWU5nrzG8S9YRwmYdjOBIRtc8zFTioqAjjN7ZgqrolAUiszwldoHFdQgDoiaZ5UJAgDxs7tcH7XuJ5K4acoWOgyc+twW53aMk8Eoyj3TgGi4XZ3EneRQ3p2SYZhO2oNs37O7vz2Ribbb4q9LixqBXw/TGq7/2d8I+mkWzwmpwwdEQZqjsjL8KbP0EVBvjhBw3ginam6ZIvBRsUniQYkAK1cL+DltYSBCNZjlpmttyR1zWG2Hewnh2Y/eFiYBJTHb3ScOzIGA3rkh9R/17kg4cq6PNSwrXlOqOgwLnTVcEhy5cFX5vg98mDm1pNTRKeGB4PW7OXN3HJM3g8/eYVqOu28moAH01TM5zRfaSfZ6b16SLqx4qZaLAM9OKcduv/Zdr0sBecjrgyJ7kHA4PFfOqaqM0HlCb3mhFHKSWVdMcH7Z5HbichNto9g3A+kGlzq3ahuN0vOzRXPCB2vvzDLd94iQZbBgdvIXSjrgTGHJOrA5z5VNg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32c2a29d-ac8a-4731-f238-08d7995f9bd7
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 02:07:01.5995 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WCdpolPd5YsAZX+GTyAWZBsL90HPlNSQhDVWnlZXs/WZdGVtEWHGnrTPs8w9pkbMtWXzryAN84IYwW188CV4uw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_180706_801457_56251797 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.89 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, "angus@akkea.ca" <angus@akkea.ca>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

v2 of "clk: imx: imx8mq: use imx8m_clk_hw_composite_core" dropped
the IMX8MQ_CLK_GPU_CORE_SRC and IMX8MQ_CLK_GPU_SHADER_SRC, so
the clk pointer will be NULL. clk_set_parent will direclty return
0 when set parent. So let use IMX8MQ_CLK_GPU_CORE_DIV and
IMX8MQ_CLK_GPU_SHADER_DIV which is supported by clk driver.

Reported-by: Leonard Crestez <leonard.crestez@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 6a1e83922c71..9481d5270949 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -1051,8 +1051,8 @@
 			         <&clk IMX8MQ_CLK_GPU_AHB>;
 			clock-names = "core", "shader", "bus", "reg";
 			#cooling-cells = <2>;
-			assigned-clocks = <&clk IMX8MQ_CLK_GPU_CORE_SRC>,
-			                  <&clk IMX8MQ_CLK_GPU_SHADER_SRC>,
+			assigned-clocks = <&clk IMX8MQ_CLK_GPU_CORE_DIV>,
+					  <&clk IMX8MQ_CLK_GPU_SHADER_DIV>,
 			                  <&clk IMX8MQ_CLK_GPU_AXI>,
 			                  <&clk IMX8MQ_CLK_GPU_AHB>,
 			                  <&clk IMX8MQ_GPU_PLL_BYPASS>;
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
