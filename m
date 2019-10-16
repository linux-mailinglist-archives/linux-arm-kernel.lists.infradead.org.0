Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E103D902C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 13:58:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pUlkvK1HnyWfFSsxtDGbCOgT3gCsgyVOzAjb6AAgQkY=; b=s0atdt3MzGBTiD
	q+B8A3gqnKE4I2w6dUCvCAMNUsp+RDuLa5bnjubiQKHsK/VOcCGIfu7OwmWN3M5vSNxjitoqT9qrQ
	I/REAm3sgcle7j3R85zMk8+aO8NFDGHLHrb3bqBiyi2Kf6v8GuKQPybF/aKWmFnVZIOv1pxE/u0Xp
	+r0PTZSQ0HFp19JFpFfIqayjynZTCuC1ccpVMArMR97dEg0BaaEvyHB0ZxvoZGQDtN+RVBeviENiC
	O0oOmNm199JSq8o1TGVhY78UdJPWERNMMOuaqvbc4a8e4jjWXmHoOcZDwf9v2tkGFK6znbbPn54/t
	E3jueWAy+OLRd1wT0ELA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKhx1-0001xO-B4; Wed, 16 Oct 2019 11:58:47 +0000
Received: from mail-eopbgr60052.outbound.protection.outlook.com ([40.107.6.52]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKhw5-0001FO-JL
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 11:57:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oc8BdZHeTjMEeFK8vC7J6pORYk840cR9UOSi22jCLGJeuu42Mue4q9R2LbreL9I/duHO68cIcYAKWNKSGknM7qPPLnmvVE9u+vXn0r15dyxVgnpxAeOymIXtH5f6oR1aGm4P/VnAchRJ6ojfq0JIQ+bOCnp3yW6SkIJnEjbCnDodPXxt78x2V3n2DZv3Ict2NjqR3oeH6lJS1y8Pptooi3soZl5w4Kqj8taHAqT/5CLuHHmiOudh19eyrShADkISZGKcFeRd0HPSDNeeKMPl0dwEEzmPUUkvbsFrEzqxL/0eBmMZVCczqqxTQskB6BqomSwGRUqxXqH1nJlNlGxSnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4C0R3WtOZUHiFz3Bh7My67/MBdlwP8wbad84gjQdTTk=;
 b=Eyq0G0yTV+1/7+OioWoPa0bt2RCYllSJGJm6vFDAe+xfPFsHQ8odpUe17h/hPLBUIjXNjkrtfhx3zX10VpF3XzACP+Q4S+xF16ujXrP/mJYdFHdXTy29O21G63Ub8UzdoZOFKIEgnzmgXXKs0/UnK/59vZXI7tFvED+QuHlx+lQVzG9PzU8+X6RxxAazfFGnGuYiK5Y0kJO8DNLm4WzsxODd9HZeBfKHneN1cWg22pNbtQuENwkas4Su2C0P0BKSW7Y1hcV44x3BtbjyhIPddAPHvzJ0ry0DFpqxZJgxuqvb/gVdWGYQAOoqL5Bqt2xbXHQ9EsGdCHx3cQK02IM5zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4C0R3WtOZUHiFz3Bh7My67/MBdlwP8wbad84gjQdTTk=;
 b=o6Yr5clqZt0b3t14ipPQS2cpjzRn4PX27eDBfsqFbrqej4iZBjYL6fzZFnRPHn+NIbXSo2EpngQ/BI9rf51Aaw1luCzJJkTSaFa1dUvVgEsD7ZP/MHbafuii2ttQZdKvEDJh+M3l+AFFnQdn7x5nXBOTOnFUzOkMvaFPVFi7LT4=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB7136.eurprd04.prod.outlook.com (10.186.156.83) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.23; Wed, 16 Oct 2019 11:57:41 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58d9:b0f7:b31:c05a]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58d9:b0f7:b31:c05a%7]) with mapi id 15.20.2347.023; Wed, 16 Oct 2019
 11:57:40 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH v3 3/3] clk: imx8mn: Define gates for pll1/2 fixed dividers
Thread-Topic: [PATCH v3 3/3] clk: imx8mn: Define gates for pll1/2 fixed
 dividers
Thread-Index: AQHVhBjp8zFdMQwlRUmF0eMseGBh/A==
Date: Wed, 16 Oct 2019 11:57:40 +0000
Message-ID: <5e5bff7c60977d9be092c9aa3ec11a903cfc0f64.1571226979.git.leonard.crestez@nxp.com>
References: <cover.1571226979.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1571226979.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: LNXP265CA0007.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5e::19) To VI1PR04MB7023.eurprd04.prod.outlook.com
 (2603:10a6:800:12f::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 01dede26-4723-4d95-14cc-08d752300b92
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VI1PR04MB7136:|VI1PR04MB7136:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB71367A0F67CF515A60971C3CEE920@VI1PR04MB7136.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 0192E812EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(39860400002)(136003)(396003)(376002)(199004)(189003)(66946007)(66476007)(6436002)(4326008)(81166006)(81156014)(118296001)(2906002)(66556008)(64756008)(66446008)(6512007)(256004)(6486002)(14454004)(71190400001)(71200400001)(186003)(3846002)(11346002)(8936002)(25786009)(2616005)(305945005)(50226002)(476003)(446003)(110136005)(66066001)(26005)(478600001)(52116002)(7736002)(76176011)(36756003)(102836004)(8676002)(486006)(54906003)(386003)(6506007)(6116002)(5660300002)(86362001)(316002)(99286004)(44832011)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB7136;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FnPdc2tCYQL+//djHnBT7lOKmAZqtuuiV30qXYGrqVV8r9iPvr5EI+AdeH4U4NQb84ChX2EBKmll71MWs6TR5Ot4D8B9f1fJHJEHg/ayHT3bXxhkAVRjsVtrTWt0WKP/KzW3wopX5u+cbSyF1xdxRuv9W+N59TJvRE6bGOTBnsUtI5l1rK8HRec1vnrJiQCEHy3+at5BQu68auHRMPxMyXD/fkhw2Lc1BWfGIOx4DGMV+tEyJA8uOY5EMqptlxPVkjoX4UNJQFoXt1XPKDQJZSCr8NGNQcy7x2BhfxKj63cJhdGRKJO73qb56YKs4fp5y347Rp8Rs1WP3X1y77UrZcqTlPkzVJolrOvDj6EN4W9+F7BHxdYpsGI+eeT2XdEuKR68E5sAdK9nhkiQL62LGJJeoUkbIGKNjCjAvLkVFLo=
Content-ID: <1787010991ECE14D8F6377DDC8CAABE9@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01dede26-4723-4d95-14cc-08d752300b92
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2019 11:57:40.3927 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h+2NdiBt+IsnKuJTbCflHuBcMiFyd/79IW9If/WNkIaqNjSNDMxot9H8I2iAmPDjgnJofSwyjAcUEQ041dA3Xg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_045749_671817_39DF255B 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.52 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Michael Turquette <mturquette@baylibre.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On imx8mn there are 9 fixed-factor dividers for SYS_PLL1 and SYS_PLL2
each with their own gate. Only one of these gates (the one "dividing" by
one) is currently defined and it's incorrectly set as the parent of all
the fixed-factor dividers.

Add the other 8 gates to the clock tree between sys_pll1/2_bypass and
the fixed dividers.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/clk/imx/clk-imx8mn.c             | 57 ++++++++++++++++--------
 include/dt-bindings/clock/imx8mn-clock.h | 19 +++++++-
 2 files changed, 56 insertions(+), 20 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
index 7a5590b967d5..edc9c35669e6 100644
--- a/drivers/clk/imx/clk-imx8mn.c
+++ b/drivers/clk/imx/clk-imx8mn.c
@@ -369,33 +369,52 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MN_VIDEO_PLL1_OUT] = imx_clk_gate("video_pll1_out", "video_pll1_bypass", base + 0x28, 13);
 	clks[IMX8MN_DRAM_PLL_OUT] = imx_clk_gate("dram_pll_out", "dram_pll_bypass", base + 0x50, 13);
 	clks[IMX8MN_GPU_PLL_OUT] = imx_clk_gate("gpu_pll_out", "gpu_pll_bypass", base + 0x64, 11);
 	clks[IMX8MN_VPU_PLL_OUT] = imx_clk_gate("vpu_pll_out", "vpu_pll_bypass", base + 0x74, 11);
 	clks[IMX8MN_ARM_PLL_OUT] = imx_clk_gate("arm_pll_out", "arm_pll_bypass", base + 0x84, 11);
-	clks[IMX8MN_SYS_PLL1_OUT] = imx_clk_gate("sys_pll1_out", "sys_pll1_bypass", base + 0x94, 11);
-	clks[IMX8MN_SYS_PLL2_OUT] = imx_clk_gate("sys_pll2_out", "sys_pll2_bypass", base + 0x104, 11);
 	clks[IMX8MN_SYS_PLL3_OUT] = imx_clk_gate("sys_pll3_out", "sys_pll3_bypass", base + 0x114, 11);
 
-	/* SYS PLL fixed output */
-	clks[IMX8MN_SYS_PLL1_40M] = imx_clk_fixed_factor("sys_pll1_40m", "sys_pll1_out", 1, 20);
-	clks[IMX8MN_SYS_PLL1_80M] = imx_clk_fixed_factor("sys_pll1_80m", "sys_pll1_out", 1, 10);
-	clks[IMX8MN_SYS_PLL1_100M] = imx_clk_fixed_factor("sys_pll1_100m", "sys_pll1_out", 1, 8);
-	clks[IMX8MN_SYS_PLL1_133M] = imx_clk_fixed_factor("sys_pll1_133m", "sys_pll1_out", 1, 6);
-	clks[IMX8MN_SYS_PLL1_160M] = imx_clk_fixed_factor("sys_pll1_160m", "sys_pll1_out", 1, 5);
-	clks[IMX8MN_SYS_PLL1_200M] = imx_clk_fixed_factor("sys_pll1_200m", "sys_pll1_out", 1, 4);
-	clks[IMX8MN_SYS_PLL1_266M] = imx_clk_fixed_factor("sys_pll1_266m", "sys_pll1_out", 1, 3);
-	clks[IMX8MN_SYS_PLL1_400M] = imx_clk_fixed_factor("sys_pll1_400m", "sys_pll1_out", 1, 2);
+	/* SYS PLL1 fixed output */
+	clks[IMX8MN_SYS_PLL1_40M_CG] = imx_clk_gate("sys_pll1_40m_cg", "sys_pll1_bypass", base + 0x94, 27);
+	clks[IMX8MN_SYS_PLL1_80M_CG] = imx_clk_gate("sys_pll1_80m_cg", "sys_pll1_bypass", base + 0x94, 25);
+	clks[IMX8MN_SYS_PLL1_100M_CG] = imx_clk_gate("sys_pll1_100m_cg", "sys_pll1_bypass", base + 0x94, 23);
+	clks[IMX8MN_SYS_PLL1_133M_CG] = imx_clk_gate("sys_pll1_133m_cg", "sys_pll1_bypass", base + 0x94, 21);
+	clks[IMX8MN_SYS_PLL1_160M_CG] = imx_clk_gate("sys_pll1_160m_cg", "sys_pll1_bypass", base + 0x94, 19);
+	clks[IMX8MN_SYS_PLL1_200M_CG] = imx_clk_gate("sys_pll1_200m_cg", "sys_pll1_bypass", base + 0x94, 17);
+	clks[IMX8MN_SYS_PLL1_266M_CG] = imx_clk_gate("sys_pll1_266m_cg", "sys_pll1_bypass", base + 0x94, 15);
+	clks[IMX8MN_SYS_PLL1_400M_CG] = imx_clk_gate("sys_pll1_400m_cg", "sys_pll1_bypass", base + 0x94, 13);
+	clks[IMX8MN_SYS_PLL1_OUT] = imx_clk_gate("sys_pll1_out", "sys_pll1_bypass", base + 0x94, 11);
+
+	clks[IMX8MN_SYS_PLL1_40M] = imx_clk_fixed_factor("sys_pll1_40m", "sys_pll1_40m_cg", 1, 20);
+	clks[IMX8MN_SYS_PLL1_80M] = imx_clk_fixed_factor("sys_pll1_80m", "sys_pll1_80m_cg", 1, 10);
+	clks[IMX8MN_SYS_PLL1_100M] = imx_clk_fixed_factor("sys_pll1_100m", "sys_pll1_100m_cg", 1, 8);
+	clks[IMX8MN_SYS_PLL1_133M] = imx_clk_fixed_factor("sys_pll1_133m", "sys_pll1_133m_cg", 1, 6);
+	clks[IMX8MN_SYS_PLL1_160M] = imx_clk_fixed_factor("sys_pll1_160m", "sys_pll1_160m_cg", 1, 5);
+	clks[IMX8MN_SYS_PLL1_200M] = imx_clk_fixed_factor("sys_pll1_200m", "sys_pll1_200m_cg", 1, 4);
+	clks[IMX8MN_SYS_PLL1_266M] = imx_clk_fixed_factor("sys_pll1_266m", "sys_pll1_266m_cg", 1, 3);
+	clks[IMX8MN_SYS_PLL1_400M] = imx_clk_fixed_factor("sys_pll1_400m", "sys_pll1_400m_cg", 1, 2);
 	clks[IMX8MN_SYS_PLL1_800M] = imx_clk_fixed_factor("sys_pll1_800m", "sys_pll1_out", 1, 1);
 
-	clks[IMX8MN_SYS_PLL2_50M] = imx_clk_fixed_factor("sys_pll2_50m", "sys_pll2_out", 1, 20);
-	clks[IMX8MN_SYS_PLL2_100M] = imx_clk_fixed_factor("sys_pll2_100m", "sys_pll2_out", 1, 10);
-	clks[IMX8MN_SYS_PLL2_125M] = imx_clk_fixed_factor("sys_pll2_125m", "sys_pll2_out", 1, 8);
-	clks[IMX8MN_SYS_PLL2_166M] = imx_clk_fixed_factor("sys_pll2_166m", "sys_pll2_out", 1, 6);
-	clks[IMX8MN_SYS_PLL2_200M] = imx_clk_fixed_factor("sys_pll2_200m", "sys_pll2_out", 1, 5);
-	clks[IMX8MN_SYS_PLL2_250M] = imx_clk_fixed_factor("sys_pll2_250m", "sys_pll2_out", 1, 4);
-	clks[IMX8MN_SYS_PLL2_333M] = imx_clk_fixed_factor("sys_pll2_333m", "sys_pll2_out", 1, 3);
-	clks[IMX8MN_SYS_PLL2_500M] = imx_clk_fixed_factor("sys_pll2_500m", "sys_pll2_out", 1, 2);
+	/* SYS PLL2 fixed output */
+	clks[IMX8MN_SYS_PLL2_50M_CG] = imx_clk_gate("sys_pll2_50m_cg", "sys_pll2_bypass", base + 0x104, 27);
+	clks[IMX8MN_SYS_PLL2_100M_CG] = imx_clk_gate("sys_pll2_100m_cg", "sys_pll2_bypass", base + 0x104, 25);
+	clks[IMX8MN_SYS_PLL2_125M_CG] = imx_clk_gate("sys_pll2_125m_cg", "sys_pll2_bypass", base + 0x104, 23);
+	clks[IMX8MN_SYS_PLL2_166M_CG] = imx_clk_gate("sys_pll2_166m_cg", "sys_pll2_bypass", base + 0x104, 21);
+	clks[IMX8MN_SYS_PLL2_200M_CG] = imx_clk_gate("sys_pll2_200m_cg", "sys_pll2_bypass", base + 0x104, 19);
+	clks[IMX8MN_SYS_PLL2_250M_CG] = imx_clk_gate("sys_pll2_250m_cg", "sys_pll2_bypass", base + 0x104, 17);
+	clks[IMX8MN_SYS_PLL2_333M_CG] = imx_clk_gate("sys_pll2_333m_cg", "sys_pll2_bypass", base + 0x104, 15);
+	clks[IMX8MN_SYS_PLL2_500M_CG] = imx_clk_gate("sys_pll2_500m_cg", "sys_pll2_bypass", base + 0x104, 13);
+	clks[IMX8MN_SYS_PLL2_OUT] = imx_clk_gate("sys_pll2_out", "sys_pll2_bypass", base + 0x104, 11);
+
+	clks[IMX8MN_SYS_PLL2_50M] = imx_clk_fixed_factor("sys_pll2_50m", "sys_pll2_50m_cg", 1, 20);
+	clks[IMX8MN_SYS_PLL2_100M] = imx_clk_fixed_factor("sys_pll2_100m", "sys_pll2_100m_cg", 1, 10);
+	clks[IMX8MN_SYS_PLL2_125M] = imx_clk_fixed_factor("sys_pll2_125m", "sys_pll2_125m_cg", 1, 8);
+	clks[IMX8MN_SYS_PLL2_166M] = imx_clk_fixed_factor("sys_pll2_166m", "sys_pll2_166m_cg", 1, 6);
+	clks[IMX8MN_SYS_PLL2_200M] = imx_clk_fixed_factor("sys_pll2_200m", "sys_pll2_200m_cg", 1, 5);
+	clks[IMX8MN_SYS_PLL2_250M] = imx_clk_fixed_factor("sys_pll2_250m", "sys_pll2_250m_cg", 1, 4);
+	clks[IMX8MN_SYS_PLL2_333M] = imx_clk_fixed_factor("sys_pll2_333m", "sys_pll2_333m_cg", 1, 3);
+	clks[IMX8MN_SYS_PLL2_500M] = imx_clk_fixed_factor("sys_pll2_500m", "sys_pll2_500m_cg", 1, 2);
 	clks[IMX8MN_SYS_PLL2_1000M] = imx_clk_fixed_factor("sys_pll2_1000m", "sys_pll2_out", 1, 1);
 
 	np = dev->of_node;
 	base = devm_platform_ioremap_resource(pdev, 0);
 	if (WARN_ON(IS_ERR(base))) {
diff --git a/include/dt-bindings/clock/imx8mn-clock.h b/include/dt-bindings/clock/imx8mn-clock.h
index d7b201652f4c..0f2b8423ce1d 100644
--- a/include/dt-bindings/clock/imx8mn-clock.h
+++ b/include/dt-bindings/clock/imx8mn-clock.h
@@ -209,8 +209,25 @@
 #define IMX8MN_CLK_ARM				191
 #define IMX8MN_CLK_NAND_USDHC_BUS_RAWNAND_CLK	192
 #define IMX8MN_CLK_GPU_CORE_ROOT		193
 #define IMX8MN_CLK_GIC				194
 
-#define IMX8MN_CLK_END				195
+#define IMX8MN_SYS_PLL1_40M_CG			195
+#define IMX8MN_SYS_PLL1_80M_CG			196
+#define IMX8MN_SYS_PLL1_100M_CG			197
+#define IMX8MN_SYS_PLL1_133M_CG			198
+#define IMX8MN_SYS_PLL1_160M_CG			199
+#define IMX8MN_SYS_PLL1_200M_CG			200
+#define IMX8MN_SYS_PLL1_266M_CG			201
+#define IMX8MN_SYS_PLL1_400M_CG			202
+#define IMX8MN_SYS_PLL2_50M_CG			203
+#define IMX8MN_SYS_PLL2_100M_CG			204
+#define IMX8MN_SYS_PLL2_125M_CG			205
+#define IMX8MN_SYS_PLL2_166M_CG			206
+#define IMX8MN_SYS_PLL2_200M_CG			207
+#define IMX8MN_SYS_PLL2_250M_CG			208
+#define IMX8MN_SYS_PLL2_333M_CG			209
+#define IMX8MN_SYS_PLL2_500M_CG			210
+
+#define IMX8MN_CLK_END				211
 
 #endif
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
