Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7BEED7E2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 03:53:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O3Dv4HhBVzXT1V8MYtLho1zvz5LbljiVjhCQ98qgrt8=; b=l4HxL7vNvhzjWz
	6W+bb0+FMsa7wYQ9eB1nqrL8f/WZ0IJwAD4PQaeEucNNvejkkUDD3WNrldA7/GF6unyxf9ihGabqe
	CiKPVaEACEMKfeCAIQQ3MtwOQyOTjit8jvVBfTXQikUxYZj8+k2hS2kT57Quf0HF63mQstDhAxg6U
	oQz0uKwDHkRfGglyMkjTwQC5pCwZsMLh+Xw+6Ya0+CCIr5XNEK8j0jgGOkwgjffU5WVXNfV0Rfro3
	2E2vuF8L8uIfnPMZmQI0e+PP8GmyOJGRPCeuekr3lSWQZdvZwofecyRDThtiacua6sX4FncqTwBc4
	5ixoUIH11lNcc0dz/X/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRSUs-0005hO-6r; Mon, 04 Nov 2019 02:53:38 +0000
Received: from mail-eopbgr80089.outbound.protection.outlook.com ([40.107.8.89]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRSU9-00059K-Te
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 02:52:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PGHhVu7qN9iuQTzy+4EF9Gcuf/6Qx3anx/5AnSNDojX3Mk7KU3QwLDtR/1510zPNCqYOo1JtXHi38Ui8wBd33+oSBrLr9pi6k94gWO3lo7kKszhcCFTZ79N4Yi0MsoiOKGks1qMp30ZsbZ9wJIszo3uHwtSjwC3EvE0C8Z3IrCndH2hT9YN3BlaVybkAgLstbJAS5Mqd1QeY+iUJLn2/5zLAB4Hh4NqM8iFO3qoChGAY9yGsV0UFMSD5BHkuHKnP0piufy0GNOHBs8Yya+TRso1WsDHZo7HLg6SY0xv1axQLDiSUhkgTg7YHCvfx0+fXm8AXyvJpPk5bxhbRsrt9nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r8DlhxUnxlhwuYJi+RoKZChBX9305sQZt3xjkcRw9Ys=;
 b=ZiDtWHxXajqDJEM8VLg0hGfKl9ezRe5PU8c8lakGcj6EM6QvBA7zowT6z74PV/yQ7/vaBMmKNGKkNgBsat+9f3wtnPWWVmcp5UmWaPw0NI+zhwyC68J0QQGyrnZodMoYyaJEEzf4gKvloA4ggqx+b2CRiZ1fMbf6yLDyWJnvFdybIEiowA39YLXtrrDRgjV1Ha1QTnbQ7fuoudzzDd9oKPLMpWOH2f6oT2ccX0EqcmPLS9Tbe3nHKBPY7lvgFWEsi+E0p2F6dqTqboQV9jBF9bUA57pPhxQ0Sf9+jeqsJSiqz5PGTamqWbFkUnB8olIVh/RJgg4aFR9TbXEAy9VhXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r8DlhxUnxlhwuYJi+RoKZChBX9305sQZt3xjkcRw9Ys=;
 b=Rpz3DpqkQH8yV7f+ScsLIyvNFH++6NyGgRFijjZAxBCkHHDWsKfAgV0Yxorqqq29HYVPu1t38Y+aq+h00sFDxACpCqtoFF1iJwiqFYIMlkX8bTOEjGJt6nxlFkfio0Hbo6PaUUvRhhEDcpw+HM/Xw57CU3U0DvmejN35w4Kz3+0=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB3964.eurprd04.prod.outlook.com (52.134.107.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Mon, 4 Nov 2019 02:52:49 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::115f:1e4f:9ceb:2a2c]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::115f:1e4f:9ceb:2a2c%7]) with mapi id 15.20.2408.024; Mon, 4 Nov 2019
 02:52:49 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH 2/3] clk: imx: imx8mm: Switch to clk_hw based API
Thread-Topic: [PATCH 2/3] clk: imx: imx8mm: Switch to clk_hw based API
Thread-Index: AQHVkrrx9RGhg2ub1k+TKW8EgPbLqA==
Date: Mon, 4 Nov 2019 02:52:49 +0000
Message-ID: <1572835730-1625-3-git-send-email-peng.fan@nxp.com>
References: <1572835730-1625-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1572835730-1625-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0011.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:18::23) To DB7PR04MB4490.eurprd04.prod.outlook.com
 (2603:10a6:5:36::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a537d05d-fb90-4bbe-1dca-08d760d2141c
x-ms-traffictypediagnostic: DB7PR04MB3964:|DB7PR04MB3964:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB39644F007AF109A92C5DD9FD887F0@DB7PR04MB3964.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:901;
x-forefront-prvs: 0211965D06
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(396003)(136003)(376002)(39860400002)(189003)(199004)(76176011)(476003)(52116002)(2616005)(99286004)(6506007)(102836004)(386003)(26005)(6636002)(6116002)(3846002)(81156014)(8676002)(50226002)(8936002)(6486002)(66476007)(66556008)(256004)(446003)(186003)(11346002)(486006)(44832011)(6512007)(4326008)(2501003)(71190400001)(71200400001)(7736002)(36756003)(5660300002)(64756008)(66446008)(66946007)(14454004)(30864003)(6436002)(54906003)(110136005)(81166006)(316002)(86362001)(2201001)(66066001)(478600001)(25786009)(305945005)(2906002)(32563001)(579004)(569006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB3964;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CXv8e6ms0yXLqiTqQk7J+VXo4qmGsSQLbD1WFqAPYkfmrNcjEdgUQDqOEuTxriHm6bqb8Z68op/xXyo6NLo4jW8JMLqj3P8OUWTGVJSrF1hZ+ni9W9Z1WpK8AFFaqPreLHvMuUCnEBwtT3ifGBB+3iSEZOpwen8AE2dgeyPsogPwRJ4Llbsx6xImMK4i+2K5f+LK+cLkgCkhY+NwpdULQ6sdkqT7M2D2E7LPg47YZQAzqJnckE7810PRmDzic70PvF3krJs7XLgJ2qCmEuwTqKWmgIYUAQ3IgguaIPyiv3iXzrIwrP5jBGrScjk2Za5+10g5V2VgzsEc1sIt3DNPAzgBf22e8RhMc0JYdV9rJj4nUjBmY2RN5oJYtjYkLa/ZWNHR/sCj4mFb/W2IMgFWTTCs77EPNHfcipS2PPbMJWAOjsmIj9CXv2zqeMvmmFAF
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a537d05d-fb90-4bbe-1dca-08d760d2141c
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2019 02:52:49.7947 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oGsgIAv7uy4MnUy5INSObU+/3SBUcdaa5EowdkAmQKIR/bWZL1kD7VFlfhUfd6XVIpohFxbcnEj1ANMccz/Z7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB3964
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_185254_043890_9388E13A 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.89 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Switch the entire clk-imx8mm driver to clk_hw based API.
This allows us to move closer to a clear split between
consumer and provider clk APIs.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mm.c | 550 ++++++++++++++++++++++---------------------
 1 file changed, 282 insertions(+), 268 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index ef307145e5d3..8e21eb9c2a17 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -12,6 +12,7 @@
 #include <linux/of.h>
 #include <linux/of_address.h>
 #include <linux/platform_device.h>
+#include <linux/slab.h>
 #include <linux/types.h>
 
 #include "clk.h"
@@ -285,118 +286,127 @@ static const char *imx8mm_dram_core_sels[] = {"dram_pll_out", "dram_alt_root", }
 static const char *imx8mm_clko1_sels[] = {"osc_24m", "sys_pll1_800m", "osc_27m", "sys_pll1_200m", "audio_pll2_out",
 					 "vpu_pll", "sys_pll1_80m", };
 
-static struct clk *clks[IMX8MM_CLK_END];
-static struct clk_onecell_data clk_data;
+static struct clk_hw_onecell_data *clk_hw_data;
+static struct clk_hw **clks;
 
-static struct clk ** const uart_clks[] = {
-	&clks[IMX8MM_CLK_UART1_ROOT],
-	&clks[IMX8MM_CLK_UART2_ROOT],
-	&clks[IMX8MM_CLK_UART3_ROOT],
-	&clks[IMX8MM_CLK_UART4_ROOT],
-	NULL
+static const int uart_clk_ids[] = {
+	IMX8MM_CLK_UART1_ROOT,
+	IMX8MM_CLK_UART2_ROOT,
+	IMX8MM_CLK_UART3_ROOT,
+	IMX8MM_CLK_UART4_ROOT,
 };
 
+static struct clk **uart_clks[ARRAY_SIZE(uart_clk_ids) + 1];
+
 static int imx8mm_clocks_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
 	void __iomem *base;
-	int ret;
+	int ret, i;
+
+	clk_hw_data = kzalloc(struct_size(clk_hw_data, hws,
+					  IMX8MM_CLK_END), GFP_KERNEL);
+	if (WARN_ON(!clk_hw_data))
+		return -ENOMEM;
+
+	clk_hw_data->num = IMX8MM_CLK_END;
+	clks = clk_hw_data->hws;
 
-	clks[IMX8MM_CLK_DUMMY] = imx_clk_fixed("dummy", 0);
-	clks[IMX8MM_CLK_24M] = of_clk_get_by_name(np, "osc_24m");
-	clks[IMX8MM_CLK_32K] = of_clk_get_by_name(np, "osc_32k");
-	clks[IMX8MM_CLK_EXT1] = of_clk_get_by_name(np, "clk_ext1");
-	clks[IMX8MM_CLK_EXT2] = of_clk_get_by_name(np, "clk_ext2");
-	clks[IMX8MM_CLK_EXT3] = of_clk_get_by_name(np, "clk_ext3");
-	clks[IMX8MM_CLK_EXT4] = of_clk_get_by_name(np, "clk_ext4");
+	clks[IMX8MM_CLK_DUMMY] = imx_clk_hw_fixed("dummy", 0);
+	clks[IMX8MM_CLK_24M] = imx_obtain_fixed_clk_hw(np, "osc_24m");
+	clks[IMX8MM_CLK_32K] = imx_obtain_fixed_clk_hw(np, "osc_32k");
+	clks[IMX8MM_CLK_EXT1] = imx_obtain_fixed_clk_hw(np, "clk_ext1");
+	clks[IMX8MM_CLK_EXT2] = imx_obtain_fixed_clk_hw(np, "clk_ext2");
+	clks[IMX8MM_CLK_EXT3] = imx_obtain_fixed_clk_hw(np, "clk_ext3");
+	clks[IMX8MM_CLK_EXT4] = imx_obtain_fixed_clk_hw(np, "clk_ext4");
 
 	np = of_find_compatible_node(NULL, NULL, "fsl,imx8mm-anatop");
 	base = of_iomap(np, 0);
 	if (WARN_ON(!base))
 		return -ENOMEM;
 
-	clks[IMX8MM_AUDIO_PLL1_REF_SEL] = imx_clk_mux("audio_pll1_ref_sel", base + 0x0, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
-	clks[IMX8MM_AUDIO_PLL2_REF_SEL] = imx_clk_mux("audio_pll2_ref_sel", base + 0x14, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
-	clks[IMX8MM_VIDEO_PLL1_REF_SEL] = imx_clk_mux("video_pll1_ref_sel", base + 0x28, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
-	clks[IMX8MM_DRAM_PLL_REF_SEL] = imx_clk_mux("dram_pll_ref_sel", base + 0x50, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
-	clks[IMX8MM_GPU_PLL_REF_SEL] = imx_clk_mux("gpu_pll_ref_sel", base + 0x64, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
-	clks[IMX8MM_VPU_PLL_REF_SEL] = imx_clk_mux("vpu_pll_ref_sel", base + 0x74, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
-	clks[IMX8MM_ARM_PLL_REF_SEL] = imx_clk_mux("arm_pll_ref_sel", base + 0x84, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
-	clks[IMX8MM_SYS_PLL3_REF_SEL] = imx_clk_mux("sys_pll3_ref_sel", base + 0x114, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
-
-	clks[IMX8MM_AUDIO_PLL1] = imx_clk_pll14xx("audio_pll1", "audio_pll1_ref_sel", base, &imx_1443x_pll);
-	clks[IMX8MM_AUDIO_PLL2] = imx_clk_pll14xx("audio_pll2", "audio_pll2_ref_sel", base + 0x14, &imx_1443x_pll);
-	clks[IMX8MM_VIDEO_PLL1] = imx_clk_pll14xx("video_pll1", "video_pll1_ref_sel", base + 0x28, &imx_1443x_pll);
-	clks[IMX8MM_DRAM_PLL] = imx_clk_pll14xx("dram_pll", "dram_pll_ref_sel", base + 0x50, &imx_1443x_pll);
-	clks[IMX8MM_GPU_PLL] = imx_clk_pll14xx("gpu_pll", "gpu_pll_ref_sel", base + 0x64, &imx_1416x_pll);
-	clks[IMX8MM_VPU_PLL] = imx_clk_pll14xx("vpu_pll", "vpu_pll_ref_sel", base + 0x74, &imx_1416x_pll);
-	clks[IMX8MM_ARM_PLL] = imx_clk_pll14xx("arm_pll", "arm_pll_ref_sel", base + 0x84, &imx_1416x_pll);
-	clks[IMX8MM_SYS_PLL1] = imx_clk_fixed("sys_pll1", 800000000);
-	clks[IMX8MM_SYS_PLL2] = imx_clk_fixed("sys_pll2", 1000000000);
-	clks[IMX8MM_SYS_PLL3] = imx_clk_pll14xx("sys_pll3", "sys_pll3_ref_sel", base + 0x114, &imx_1416x_pll);
+	clks[IMX8MM_AUDIO_PLL1_REF_SEL] = imx_clk_hw_mux("audio_pll1_ref_sel", base + 0x0, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
+	clks[IMX8MM_AUDIO_PLL2_REF_SEL] = imx_clk_hw_mux("audio_pll2_ref_sel", base + 0x14, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
+	clks[IMX8MM_VIDEO_PLL1_REF_SEL] = imx_clk_hw_mux("video_pll1_ref_sel", base + 0x28, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
+	clks[IMX8MM_DRAM_PLL_REF_SEL] = imx_clk_hw_mux("dram_pll_ref_sel", base + 0x50, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
+	clks[IMX8MM_GPU_PLL_REF_SEL] = imx_clk_hw_mux("gpu_pll_ref_sel", base + 0x64, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
+	clks[IMX8MM_VPU_PLL_REF_SEL] = imx_clk_hw_mux("vpu_pll_ref_sel", base + 0x74, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
+	clks[IMX8MM_ARM_PLL_REF_SEL] = imx_clk_hw_mux("arm_pll_ref_sel", base + 0x84, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
+	clks[IMX8MM_SYS_PLL3_REF_SEL] = imx_clk_hw_mux("sys_pll3_ref_sel", base + 0x114, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
+
+	clks[IMX8MM_AUDIO_PLL1] = imx_clk_hw_pll14xx("audio_pll1", "audio_pll1_ref_sel", base, &imx_1443x_pll);
+	clks[IMX8MM_AUDIO_PLL2] = imx_clk_hw_pll14xx("audio_pll2", "audio_pll2_ref_sel", base + 0x14, &imx_1443x_pll);
+	clks[IMX8MM_VIDEO_PLL1] = imx_clk_hw_pll14xx("video_pll1", "video_pll1_ref_sel", base + 0x28, &imx_1443x_pll);
+	clks[IMX8MM_DRAM_PLL] = imx_clk_hw_pll14xx("dram_pll", "dram_pll_ref_sel", base + 0x50, &imx_1443x_pll);
+	clks[IMX8MM_GPU_PLL] = imx_clk_hw_pll14xx("gpu_pll", "gpu_pll_ref_sel", base + 0x64, &imx_1416x_pll);
+	clks[IMX8MM_VPU_PLL] = imx_clk_hw_pll14xx("vpu_pll", "vpu_pll_ref_sel", base + 0x74, &imx_1416x_pll);
+	clks[IMX8MM_ARM_PLL] = imx_clk_hw_pll14xx("arm_pll", "arm_pll_ref_sel", base + 0x84, &imx_1416x_pll);
+	clks[IMX8MM_SYS_PLL1] = imx_clk_hw_fixed("sys_pll1", 800000000);
+	clks[IMX8MM_SYS_PLL2] = imx_clk_hw_fixed("sys_pll2", 1000000000);
+	clks[IMX8MM_SYS_PLL3] = imx_clk_hw_pll14xx("sys_pll3", "sys_pll3_ref_sel", base + 0x114, &imx_1416x_pll);
 
 	/* PLL bypass out */
-	clks[IMX8MM_AUDIO_PLL1_BYPASS] = imx_clk_mux_flags("audio_pll1_bypass", base, 16, 1, audio_pll1_bypass_sels, ARRAY_SIZE(audio_pll1_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MM_AUDIO_PLL2_BYPASS] = imx_clk_mux_flags("audio_pll2_bypass", base + 0x14, 16, 1, audio_pll2_bypass_sels, ARRAY_SIZE(audio_pll2_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MM_VIDEO_PLL1_BYPASS] = imx_clk_mux_flags("video_pll1_bypass", base + 0x28, 16, 1, video_pll1_bypass_sels, ARRAY_SIZE(video_pll1_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MM_DRAM_PLL_BYPASS] = imx_clk_mux_flags("dram_pll_bypass", base + 0x50, 16, 1, dram_pll_bypass_sels, ARRAY_SIZE(dram_pll_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MM_GPU_PLL_BYPASS] = imx_clk_mux_flags("gpu_pll_bypass", base + 0x64, 28, 1, gpu_pll_bypass_sels, ARRAY_SIZE(gpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MM_VPU_PLL_BYPASS] = imx_clk_mux_flags("vpu_pll_bypass", base + 0x74, 28, 1, vpu_pll_bypass_sels, ARRAY_SIZE(vpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MM_ARM_PLL_BYPASS] = imx_clk_mux_flags("arm_pll_bypass", base + 0x84, 28, 1, arm_pll_bypass_sels, ARRAY_SIZE(arm_pll_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MM_SYS_PLL3_BYPASS] = imx_clk_mux_flags("sys_pll3_bypass", base + 0x114, 28, 1, sys_pll3_bypass_sels, ARRAY_SIZE(sys_pll3_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MM_AUDIO_PLL1_BYPASS] = imx_clk_hw_mux_flags("audio_pll1_bypass", base, 16, 1, audio_pll1_bypass_sels, ARRAY_SIZE(audio_pll1_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MM_AUDIO_PLL2_BYPASS] = imx_clk_hw_mux_flags("audio_pll2_bypass", base + 0x14, 16, 1, audio_pll2_bypass_sels, ARRAY_SIZE(audio_pll2_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MM_VIDEO_PLL1_BYPASS] = imx_clk_hw_mux_flags("video_pll1_bypass", base + 0x28, 16, 1, video_pll1_bypass_sels, ARRAY_SIZE(video_pll1_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MM_DRAM_PLL_BYPASS] = imx_clk_hw_mux_flags("dram_pll_bypass", base + 0x50, 16, 1, dram_pll_bypass_sels, ARRAY_SIZE(dram_pll_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MM_GPU_PLL_BYPASS] = imx_clk_hw_mux_flags("gpu_pll_bypass", base + 0x64, 28, 1, gpu_pll_bypass_sels, ARRAY_SIZE(gpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MM_VPU_PLL_BYPASS] = imx_clk_hw_mux_flags("vpu_pll_bypass", base + 0x74, 28, 1, vpu_pll_bypass_sels, ARRAY_SIZE(vpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MM_ARM_PLL_BYPASS] = imx_clk_hw_mux_flags("arm_pll_bypass", base + 0x84, 28, 1, arm_pll_bypass_sels, ARRAY_SIZE(arm_pll_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MM_SYS_PLL3_BYPASS] = imx_clk_hw_mux_flags("sys_pll3_bypass", base + 0x114, 28, 1, sys_pll3_bypass_sels, ARRAY_SIZE(sys_pll3_bypass_sels), CLK_SET_RATE_PARENT);
 
 	/* PLL out gate */
-	clks[IMX8MM_AUDIO_PLL1_OUT] = imx_clk_gate("audio_pll1_out", "audio_pll1_bypass", base, 13);
-	clks[IMX8MM_AUDIO_PLL2_OUT] = imx_clk_gate("audio_pll2_out", "audio_pll2_bypass", base + 0x14, 13);
-	clks[IMX8MM_VIDEO_PLL1_OUT] = imx_clk_gate("video_pll1_out", "video_pll1_bypass", base + 0x28, 13);
-	clks[IMX8MM_DRAM_PLL_OUT] = imx_clk_gate("dram_pll_out", "dram_pll_bypass", base + 0x50, 13);
-	clks[IMX8MM_GPU_PLL_OUT] = imx_clk_gate("gpu_pll_out", "gpu_pll_bypass", base + 0x64, 11);
-	clks[IMX8MM_VPU_PLL_OUT] = imx_clk_gate("vpu_pll_out", "vpu_pll_bypass", base + 0x74, 11);
-	clks[IMX8MM_ARM_PLL_OUT] = imx_clk_gate("arm_pll_out", "arm_pll_bypass", base + 0x84, 11);
-	clks[IMX8MM_SYS_PLL3_OUT] = imx_clk_gate("sys_pll3_out", "sys_pll3_bypass", base + 0x114, 11);
+	clks[IMX8MM_AUDIO_PLL1_OUT] = imx_clk_hw_gate("audio_pll1_out", "audio_pll1_bypass", base, 13);
+	clks[IMX8MM_AUDIO_PLL2_OUT] = imx_clk_hw_gate("audio_pll2_out", "audio_pll2_bypass", base + 0x14, 13);
+	clks[IMX8MM_VIDEO_PLL1_OUT] = imx_clk_hw_gate("video_pll1_out", "video_pll1_bypass", base + 0x28, 13);
+	clks[IMX8MM_DRAM_PLL_OUT] = imx_clk_hw_gate("dram_pll_out", "dram_pll_bypass", base + 0x50, 13);
+	clks[IMX8MM_GPU_PLL_OUT] = imx_clk_hw_gate("gpu_pll_out", "gpu_pll_bypass", base + 0x64, 11);
+	clks[IMX8MM_VPU_PLL_OUT] = imx_clk_hw_gate("vpu_pll_out", "vpu_pll_bypass", base + 0x74, 11);
+	clks[IMX8MM_ARM_PLL_OUT] = imx_clk_hw_gate("arm_pll_out", "arm_pll_bypass", base + 0x84, 11);
+	clks[IMX8MM_SYS_PLL3_OUT] = imx_clk_hw_gate("sys_pll3_out", "sys_pll3_bypass", base + 0x114, 11);
 
 	/* SYS PLL1 fixed output */
-	clks[IMX8MM_SYS_PLL1_40M_CG] = imx_clk_gate("sys_pll1_40m_cg", "sys_pll1", base + 0x94, 27);
-	clks[IMX8MM_SYS_PLL1_80M_CG] = imx_clk_gate("sys_pll1_80m_cg", "sys_pll1", base + 0x94, 25);
-	clks[IMX8MM_SYS_PLL1_100M_CG] = imx_clk_gate("sys_pll1_100m_cg", "sys_pll1", base + 0x94, 23);
-	clks[IMX8MM_SYS_PLL1_133M_CG] = imx_clk_gate("sys_pll1_133m_cg", "sys_pll1", base + 0x94, 21);
-	clks[IMX8MM_SYS_PLL1_160M_CG] = imx_clk_gate("sys_pll1_160m_cg", "sys_pll1", base + 0x94, 19);
-	clks[IMX8MM_SYS_PLL1_200M_CG] = imx_clk_gate("sys_pll1_200m_cg", "sys_pll1", base + 0x94, 17);
-	clks[IMX8MM_SYS_PLL1_266M_CG] = imx_clk_gate("sys_pll1_266m_cg", "sys_pll1", base + 0x94, 15);
-	clks[IMX8MM_SYS_PLL1_400M_CG] = imx_clk_gate("sys_pll1_400m_cg", "sys_pll1", base + 0x94, 13);
-	clks[IMX8MM_SYS_PLL1_OUT] = imx_clk_gate("sys_pll1_out", "sys_pll1", base + 0x94, 11);
-
-	clks[IMX8MM_SYS_PLL1_40M] = imx_clk_fixed_factor("sys_pll1_40m", "sys_pll1_40m_cg", 1, 20);
-	clks[IMX8MM_SYS_PLL1_80M] = imx_clk_fixed_factor("sys_pll1_80m", "sys_pll1_80m_cg", 1, 10);
-	clks[IMX8MM_SYS_PLL1_100M] = imx_clk_fixed_factor("sys_pll1_100m", "sys_pll1_100m_cg", 1, 8);
-	clks[IMX8MM_SYS_PLL1_133M] = imx_clk_fixed_factor("sys_pll1_133m", "sys_pll1_133m_cg", 1, 6);
-	clks[IMX8MM_SYS_PLL1_160M] = imx_clk_fixed_factor("sys_pll1_160m", "sys_pll1_160m_cg", 1, 5);
-	clks[IMX8MM_SYS_PLL1_200M] = imx_clk_fixed_factor("sys_pll1_200m", "sys_pll1_200m_cg", 1, 4);
-	clks[IMX8MM_SYS_PLL1_266M] = imx_clk_fixed_factor("sys_pll1_266m", "sys_pll1_266m_cg", 1, 3);
-	clks[IMX8MM_SYS_PLL1_400M] = imx_clk_fixed_factor("sys_pll1_400m", "sys_pll1_400m_cg", 1, 2);
-	clks[IMX8MM_SYS_PLL1_800M] = imx_clk_fixed_factor("sys_pll1_800m", "sys_pll1_out", 1, 1);
+	clks[IMX8MM_SYS_PLL1_40M_CG] = imx_clk_hw_gate("sys_pll1_40m_cg", "sys_pll1", base + 0x94, 27);
+	clks[IMX8MM_SYS_PLL1_80M_CG] = imx_clk_hw_gate("sys_pll1_80m_cg", "sys_pll1", base + 0x94, 25);
+	clks[IMX8MM_SYS_PLL1_100M_CG] = imx_clk_hw_gate("sys_pll1_100m_cg", "sys_pll1", base + 0x94, 23);
+	clks[IMX8MM_SYS_PLL1_133M_CG] = imx_clk_hw_gate("sys_pll1_133m_cg", "sys_pll1", base + 0x94, 21);
+	clks[IMX8MM_SYS_PLL1_160M_CG] = imx_clk_hw_gate("sys_pll1_160m_cg", "sys_pll1", base + 0x94, 19);
+	clks[IMX8MM_SYS_PLL1_200M_CG] = imx_clk_hw_gate("sys_pll1_200m_cg", "sys_pll1", base + 0x94, 17);
+	clks[IMX8MM_SYS_PLL1_266M_CG] = imx_clk_hw_gate("sys_pll1_266m_cg", "sys_pll1", base + 0x94, 15);
+	clks[IMX8MM_SYS_PLL1_400M_CG] = imx_clk_hw_gate("sys_pll1_400m_cg", "sys_pll1", base + 0x94, 13);
+	clks[IMX8MM_SYS_PLL1_OUT] = imx_clk_hw_gate("sys_pll1_out", "sys_pll1", base + 0x94, 11);
+
+	clks[IMX8MM_SYS_PLL1_40M] = imx_clk_hw_fixed_factor("sys_pll1_40m", "sys_pll1_40m_cg", 1, 20);
+	clks[IMX8MM_SYS_PLL1_80M] = imx_clk_hw_fixed_factor("sys_pll1_80m", "sys_pll1_80m_cg", 1, 10);
+	clks[IMX8MM_SYS_PLL1_100M] = imx_clk_hw_fixed_factor("sys_pll1_100m", "sys_pll1_100m_cg", 1, 8);
+	clks[IMX8MM_SYS_PLL1_133M] = imx_clk_hw_fixed_factor("sys_pll1_133m", "sys_pll1_133m_cg", 1, 6);
+	clks[IMX8MM_SYS_PLL1_160M] = imx_clk_hw_fixed_factor("sys_pll1_160m", "sys_pll1_160m_cg", 1, 5);
+	clks[IMX8MM_SYS_PLL1_200M] = imx_clk_hw_fixed_factor("sys_pll1_200m", "sys_pll1_200m_cg", 1, 4);
+	clks[IMX8MM_SYS_PLL1_266M] = imx_clk_hw_fixed_factor("sys_pll1_266m", "sys_pll1_266m_cg", 1, 3);
+	clks[IMX8MM_SYS_PLL1_400M] = imx_clk_hw_fixed_factor("sys_pll1_400m", "sys_pll1_400m_cg", 1, 2);
+	clks[IMX8MM_SYS_PLL1_800M] = imx_clk_hw_fixed_factor("sys_pll1_800m", "sys_pll1_out", 1, 1);
 
 	/* SYS PLL2 fixed output */
-	clks[IMX8MM_SYS_PLL2_50M_CG] = imx_clk_gate("sys_pll2_50m_cg", "sys_pll2", base + 0x104, 27);
-	clks[IMX8MM_SYS_PLL2_100M_CG] = imx_clk_gate("sys_pll2_100m_cg", "sys_pll2", base + 0x104, 25);
-	clks[IMX8MM_SYS_PLL2_125M_CG] = imx_clk_gate("sys_pll2_125m_cg", "sys_pll2", base + 0x104, 23);
-	clks[IMX8MM_SYS_PLL2_166M_CG] = imx_clk_gate("sys_pll2_166m_cg", "sys_pll2", base + 0x104, 21);
-	clks[IMX8MM_SYS_PLL2_200M_CG] = imx_clk_gate("sys_pll2_200m_cg", "sys_pll2", base + 0x104, 19);
-	clks[IMX8MM_SYS_PLL2_250M_CG] = imx_clk_gate("sys_pll2_250m_cg", "sys_pll2", base + 0x104, 17);
-	clks[IMX8MM_SYS_PLL2_333M_CG] = imx_clk_gate("sys_pll2_333m_cg", "sys_pll2", base + 0x104, 15);
-	clks[IMX8MM_SYS_PLL2_500M_CG] = imx_clk_gate("sys_pll2_500m_cg", "sys_pll2", base + 0x104, 13);
-	clks[IMX8MM_SYS_PLL2_OUT] = imx_clk_gate("sys_pll2_out", "sys_pll2", base + 0x104, 11);
-
-	clks[IMX8MM_SYS_PLL2_50M] = imx_clk_fixed_factor("sys_pll2_50m", "sys_pll2_50m_cg", 1, 20);
-	clks[IMX8MM_SYS_PLL2_100M] = imx_clk_fixed_factor("sys_pll2_100m", "sys_pll2_100m_cg", 1, 10);
-	clks[IMX8MM_SYS_PLL2_125M] = imx_clk_fixed_factor("sys_pll2_125m", "sys_pll2_125m_cg", 1, 8);
-	clks[IMX8MM_SYS_PLL2_166M] = imx_clk_fixed_factor("sys_pll2_166m", "sys_pll2_166m_cg", 1, 6);
-	clks[IMX8MM_SYS_PLL2_200M] = imx_clk_fixed_factor("sys_pll2_200m", "sys_pll2_200m_cg", 1, 5);
-	clks[IMX8MM_SYS_PLL2_250M] = imx_clk_fixed_factor("sys_pll2_250m", "sys_pll2_250m_cg", 1, 4);
-	clks[IMX8MM_SYS_PLL2_333M] = imx_clk_fixed_factor("sys_pll2_333m", "sys_pll2_333m_cg", 1, 3);
-	clks[IMX8MM_SYS_PLL2_500M] = imx_clk_fixed_factor("sys_pll2_500m", "sys_pll2_500m_cg", 1, 2);
-	clks[IMX8MM_SYS_PLL2_1000M] = imx_clk_fixed_factor("sys_pll2_1000m", "sys_pll2_out", 1, 1);
+	clks[IMX8MM_SYS_PLL2_50M_CG] = imx_clk_hw_gate("sys_pll2_50m_cg", "sys_pll2", base + 0x104, 27);
+	clks[IMX8MM_SYS_PLL2_100M_CG] = imx_clk_hw_gate("sys_pll2_100m_cg", "sys_pll2", base + 0x104, 25);
+	clks[IMX8MM_SYS_PLL2_125M_CG] = imx_clk_hw_gate("sys_pll2_125m_cg", "sys_pll2", base + 0x104, 23);
+	clks[IMX8MM_SYS_PLL2_166M_CG] = imx_clk_hw_gate("sys_pll2_166m_cg", "sys_pll2", base + 0x104, 21);
+	clks[IMX8MM_SYS_PLL2_200M_CG] = imx_clk_hw_gate("sys_pll2_200m_cg", "sys_pll2", base + 0x104, 19);
+	clks[IMX8MM_SYS_PLL2_250M_CG] = imx_clk_hw_gate("sys_pll2_250m_cg", "sys_pll2", base + 0x104, 17);
+	clks[IMX8MM_SYS_PLL2_333M_CG] = imx_clk_hw_gate("sys_pll2_333m_cg", "sys_pll2", base + 0x104, 15);
+	clks[IMX8MM_SYS_PLL2_500M_CG] = imx_clk_hw_gate("sys_pll2_500m_cg", "sys_pll2", base + 0x104, 13);
+	clks[IMX8MM_SYS_PLL2_OUT] = imx_clk_hw_gate("sys_pll2_out", "sys_pll2", base + 0x104, 11);
+
+	clks[IMX8MM_SYS_PLL2_50M] = imx_clk_hw_fixed_factor("sys_pll2_50m", "sys_pll2_50m_cg", 1, 20);
+	clks[IMX8MM_SYS_PLL2_100M] = imx_clk_hw_fixed_factor("sys_pll2_100m", "sys_pll2_100m_cg", 1, 10);
+	clks[IMX8MM_SYS_PLL2_125M] = imx_clk_hw_fixed_factor("sys_pll2_125m", "sys_pll2_125m_cg", 1, 8);
+	clks[IMX8MM_SYS_PLL2_166M] = imx_clk_hw_fixed_factor("sys_pll2_166m", "sys_pll2_166m_cg", 1, 6);
+	clks[IMX8MM_SYS_PLL2_200M] = imx_clk_hw_fixed_factor("sys_pll2_200m", "sys_pll2_200m_cg", 1, 5);
+	clks[IMX8MM_SYS_PLL2_250M] = imx_clk_hw_fixed_factor("sys_pll2_250m", "sys_pll2_250m_cg", 1, 4);
+	clks[IMX8MM_SYS_PLL2_333M] = imx_clk_hw_fixed_factor("sys_pll2_333m", "sys_pll2_333m_cg", 1, 3);
+	clks[IMX8MM_SYS_PLL2_500M] = imx_clk_hw_fixed_factor("sys_pll2_500m", "sys_pll2_500m_cg", 1, 2);
+	clks[IMX8MM_SYS_PLL2_1000M] = imx_clk_hw_fixed_factor("sys_pll2_1000m", "sys_pll2_out", 1, 1);
 
 	np = dev->of_node;
 	base = devm_platform_ioremap_resource(pdev, 0);
@@ -404,204 +414,208 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 		return PTR_ERR(base);
 
 	/* Core Slice */
-	clks[IMX8MM_CLK_A53_SRC] = imx_clk_mux2("arm_a53_src", base + 0x8000, 24, 3, imx8mm_a53_sels, ARRAY_SIZE(imx8mm_a53_sels));
-	clks[IMX8MM_CLK_M4_SRC] = imx_clk_mux2("arm_m4_src", base + 0x8080, 24, 3, imx8mm_m4_sels, ARRAY_SIZE(imx8mm_m4_sels));
-	clks[IMX8MM_CLK_VPU_SRC] = imx_clk_mux2("vpu_src", base + 0x8100, 24, 3, imx8mm_vpu_sels, ARRAY_SIZE(imx8mm_vpu_sels));
-	clks[IMX8MM_CLK_GPU3D_SRC] = imx_clk_mux2("gpu3d_src", base + 0x8180, 24, 3,  imx8mm_gpu3d_sels, ARRAY_SIZE(imx8mm_gpu3d_sels));
-	clks[IMX8MM_CLK_GPU2D_SRC] = imx_clk_mux2("gpu2d_src", base + 0x8200, 24, 3, imx8mm_gpu2d_sels,  ARRAY_SIZE(imx8mm_gpu2d_sels));
-	clks[IMX8MM_CLK_A53_CG] = imx_clk_gate3("arm_a53_cg", "arm_a53_src", base + 0x8000, 28);
-	clks[IMX8MM_CLK_M4_CG] = imx_clk_gate3("arm_m4_cg", "arm_m4_src", base + 0x8080, 28);
-	clks[IMX8MM_CLK_VPU_CG] = imx_clk_gate3("vpu_cg", "vpu_src", base + 0x8100, 28);
-	clks[IMX8MM_CLK_GPU3D_CG] = imx_clk_gate3("gpu3d_cg", "gpu3d_src", base + 0x8180, 28);
-	clks[IMX8MM_CLK_GPU2D_CG] = imx_clk_gate3("gpu2d_cg", "gpu2d_src", base + 0x8200, 28);
-	clks[IMX8MM_CLK_A53_DIV] = imx_clk_divider2("arm_a53_div", "arm_a53_cg", base + 0x8000, 0, 3);
-	clks[IMX8MM_CLK_M4_DIV] = imx_clk_divider2("arm_m4_div", "arm_m4_cg", base + 0x8080, 0, 3);
-	clks[IMX8MM_CLK_VPU_DIV] = imx_clk_divider2("vpu_div", "vpu_cg", base + 0x8100, 0, 3);
-	clks[IMX8MM_CLK_GPU3D_DIV] = imx_clk_divider2("gpu3d_div", "gpu3d_cg", base + 0x8180, 0, 3);
-	clks[IMX8MM_CLK_GPU2D_DIV] = imx_clk_divider2("gpu2d_div", "gpu2d_cg", base + 0x8200, 0, 3);
+	clks[IMX8MM_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src", base + 0x8000, 24, 3, imx8mm_a53_sels, ARRAY_SIZE(imx8mm_a53_sels));
+	clks[IMX8MM_CLK_M4_SRC] = imx_clk_hw_mux2("arm_m4_src", base + 0x8080, 24, 3, imx8mm_m4_sels, ARRAY_SIZE(imx8mm_m4_sels));
+	clks[IMX8MM_CLK_VPU_SRC] = imx_clk_hw_mux2("vpu_src", base + 0x8100, 24, 3, imx8mm_vpu_sels, ARRAY_SIZE(imx8mm_vpu_sels));
+	clks[IMX8MM_CLK_GPU3D_SRC] = imx_clk_hw_mux2("gpu3d_src", base + 0x8180, 24, 3,  imx8mm_gpu3d_sels, ARRAY_SIZE(imx8mm_gpu3d_sels));
+	clks[IMX8MM_CLK_GPU2D_SRC] = imx_clk_hw_mux2("gpu2d_src", base + 0x8200, 24, 3, imx8mm_gpu2d_sels,  ARRAY_SIZE(imx8mm_gpu2d_sels));
+	clks[IMX8MM_CLK_A53_CG] = imx_clk_hw_gate3("arm_a53_cg", "arm_a53_src", base + 0x8000, 28);
+	clks[IMX8MM_CLK_M4_CG] = imx_clk_hw_gate3("arm_m4_cg", "arm_m4_src", base + 0x8080, 28);
+	clks[IMX8MM_CLK_VPU_CG] = imx_clk_hw_gate3("vpu_cg", "vpu_src", base + 0x8100, 28);
+	clks[IMX8MM_CLK_GPU3D_CG] = imx_clk_hw_gate3("gpu3d_cg", "gpu3d_src", base + 0x8180, 28);
+	clks[IMX8MM_CLK_GPU2D_CG] = imx_clk_hw_gate3("gpu2d_cg", "gpu2d_src", base + 0x8200, 28);
+	clks[IMX8MM_CLK_A53_DIV] = imx_clk_hw_divider2("arm_a53_div", "arm_a53_cg", base + 0x8000, 0, 3);
+	clks[IMX8MM_CLK_M4_DIV] = imx_clk_hw_divider2("arm_m4_div", "arm_m4_cg", base + 0x8080, 0, 3);
+	clks[IMX8MM_CLK_VPU_DIV] = imx_clk_hw_divider2("vpu_div", "vpu_cg", base + 0x8100, 0, 3);
+	clks[IMX8MM_CLK_GPU3D_DIV] = imx_clk_hw_divider2("gpu3d_div", "gpu3d_cg", base + 0x8180, 0, 3);
+	clks[IMX8MM_CLK_GPU2D_DIV] = imx_clk_hw_divider2("gpu2d_div", "gpu2d_cg", base + 0x8200, 0, 3);
 
 	/* BUS */
-	clks[IMX8MM_CLK_MAIN_AXI] = imx8m_clk_composite_critical("main_axi",  imx8mm_main_axi_sels, base + 0x8800);
-	clks[IMX8MM_CLK_ENET_AXI] = imx8m_clk_composite("enet_axi", imx8mm_enet_axi_sels, base + 0x8880);
-	clks[IMX8MM_CLK_NAND_USDHC_BUS] = imx8m_clk_composite_critical("nand_usdhc_bus", imx8mm_nand_usdhc_sels, base + 0x8900);
-	clks[IMX8MM_CLK_VPU_BUS] = imx8m_clk_composite("vpu_bus", imx8mm_vpu_bus_sels, base + 0x8980);
-	clks[IMX8MM_CLK_DISP_AXI] = imx8m_clk_composite("disp_axi", imx8mm_disp_axi_sels, base + 0x8a00);
-	clks[IMX8MM_CLK_DISP_APB] = imx8m_clk_composite("disp_apb", imx8mm_disp_apb_sels, base + 0x8a80);
-	clks[IMX8MM_CLK_DISP_RTRM] = imx8m_clk_composite("disp_rtrm", imx8mm_disp_rtrm_sels, base + 0x8b00);
-	clks[IMX8MM_CLK_USB_BUS] = imx8m_clk_composite("usb_bus", imx8mm_usb_bus_sels, base + 0x8b80);
-	clks[IMX8MM_CLK_GPU_AXI] = imx8m_clk_composite("gpu_axi", imx8mm_gpu_axi_sels, base + 0x8c00);
-	clks[IMX8MM_CLK_GPU_AHB] = imx8m_clk_composite("gpu_ahb", imx8mm_gpu_ahb_sels, base + 0x8c80);
-	clks[IMX8MM_CLK_NOC] = imx8m_clk_composite_critical("noc", imx8mm_noc_sels, base + 0x8d00);
-	clks[IMX8MM_CLK_NOC_APB] = imx8m_clk_composite_critical("noc_apb", imx8mm_noc_apb_sels, base + 0x8d80);
+	clks[IMX8MM_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi",  imx8mm_main_axi_sels, base + 0x8800);
+	clks[IMX8MM_CLK_ENET_AXI] = imx8m_clk_hw_composite("enet_axi", imx8mm_enet_axi_sels, base + 0x8880);
+	clks[IMX8MM_CLK_NAND_USDHC_BUS] = imx8m_clk_hw_composite_critical("nand_usdhc_bus", imx8mm_nand_usdhc_sels, base + 0x8900);
+	clks[IMX8MM_CLK_VPU_BUS] = imx8m_clk_hw_composite("vpu_bus", imx8mm_vpu_bus_sels, base + 0x8980);
+	clks[IMX8MM_CLK_DISP_AXI] = imx8m_clk_hw_composite("disp_axi", imx8mm_disp_axi_sels, base + 0x8a00);
+	clks[IMX8MM_CLK_DISP_APB] = imx8m_clk_hw_composite("disp_apb", imx8mm_disp_apb_sels, base + 0x8a80);
+	clks[IMX8MM_CLK_DISP_RTRM] = imx8m_clk_hw_composite("disp_rtrm", imx8mm_disp_rtrm_sels, base + 0x8b00);
+	clks[IMX8MM_CLK_USB_BUS] = imx8m_clk_hw_composite("usb_bus", imx8mm_usb_bus_sels, base + 0x8b80);
+	clks[IMX8MM_CLK_GPU_AXI] = imx8m_clk_hw_composite("gpu_axi", imx8mm_gpu_axi_sels, base + 0x8c00);
+	clks[IMX8MM_CLK_GPU_AHB] = imx8m_clk_hw_composite("gpu_ahb", imx8mm_gpu_ahb_sels, base + 0x8c80);
+	clks[IMX8MM_CLK_NOC] = imx8m_clk_hw_composite_critical("noc", imx8mm_noc_sels, base + 0x8d00);
+	clks[IMX8MM_CLK_NOC_APB] = imx8m_clk_hw_composite_critical("noc_apb", imx8mm_noc_apb_sels, base + 0x8d80);
 
 	/* AHB */
-	clks[IMX8MM_CLK_AHB] = imx8m_clk_composite_critical("ahb", imx8mm_ahb_sels, base + 0x9000);
-	clks[IMX8MM_CLK_AUDIO_AHB] = imx8m_clk_composite("audio_ahb", imx8mm_audio_ahb_sels, base + 0x9100);
+	clks[IMX8MM_CLK_AHB] = imx8m_clk_hw_composite_critical("ahb", imx8mm_ahb_sels, base + 0x9000);
+	clks[IMX8MM_CLK_AUDIO_AHB] = imx8m_clk_hw_composite("audio_ahb", imx8mm_audio_ahb_sels, base + 0x9100);
 
 	/* IPG */
-	clks[IMX8MM_CLK_IPG_ROOT] = imx_clk_divider2("ipg_root", "ahb", base + 0x9080, 0, 1);
-	clks[IMX8MM_CLK_IPG_AUDIO_ROOT] = imx_clk_divider2("ipg_audio_root", "audio_ahb", base + 0x9180, 0, 1);
+	clks[IMX8MM_CLK_IPG_ROOT] = imx_clk_hw_divider2("ipg_root", "ahb", base + 0x9080, 0, 1);
+	clks[IMX8MM_CLK_IPG_AUDIO_ROOT] = imx_clk_hw_divider2("ipg_audio_root", "audio_ahb", base + 0x9180, 0, 1);
 
 	/* IP */
-	clks[IMX8MM_CLK_DRAM_ALT] = imx8m_clk_composite("dram_alt", imx8mm_dram_alt_sels, base + 0xa000);
-	clks[IMX8MM_CLK_DRAM_APB] = imx8m_clk_composite_critical("dram_apb", imx8mm_dram_apb_sels, base + 0xa080);
-	clks[IMX8MM_CLK_VPU_G1] = imx8m_clk_composite("vpu_g1", imx8mm_vpu_g1_sels, base + 0xa100);
-	clks[IMX8MM_CLK_VPU_G2] = imx8m_clk_composite("vpu_g2", imx8mm_vpu_g2_sels, base + 0xa180);
-	clks[IMX8MM_CLK_DISP_DTRC] = imx8m_clk_composite("disp_dtrc", imx8mm_disp_dtrc_sels, base + 0xa200);
-	clks[IMX8MM_CLK_DISP_DC8000] = imx8m_clk_composite("disp_dc8000", imx8mm_disp_dc8000_sels, base + 0xa280);
-	clks[IMX8MM_CLK_PCIE1_CTRL] = imx8m_clk_composite("pcie1_ctrl", imx8mm_pcie1_ctrl_sels, base + 0xa300);
-	clks[IMX8MM_CLK_PCIE1_PHY] = imx8m_clk_composite("pcie1_phy", imx8mm_pcie1_phy_sels, base + 0xa380);
-	clks[IMX8MM_CLK_PCIE1_AUX] = imx8m_clk_composite("pcie1_aux", imx8mm_pcie1_aux_sels, base + 0xa400);
-	clks[IMX8MM_CLK_DC_PIXEL] = imx8m_clk_composite("dc_pixel", imx8mm_dc_pixel_sels, base + 0xa480);
-	clks[IMX8MM_CLK_LCDIF_PIXEL] = imx8m_clk_composite("lcdif_pixel", imx8mm_lcdif_pixel_sels, base + 0xa500);
-	clks[IMX8MM_CLK_SAI1] = imx8m_clk_composite("sai1", imx8mm_sai1_sels, base + 0xa580);
-	clks[IMX8MM_CLK_SAI2] = imx8m_clk_composite("sai2", imx8mm_sai2_sels, base + 0xa600);
-	clks[IMX8MM_CLK_SAI3] = imx8m_clk_composite("sai3", imx8mm_sai3_sels, base + 0xa680);
-	clks[IMX8MM_CLK_SAI4] = imx8m_clk_composite("sai4", imx8mm_sai4_sels, base + 0xa700);
-	clks[IMX8MM_CLK_SAI5] = imx8m_clk_composite("sai5", imx8mm_sai5_sels, base + 0xa780);
-	clks[IMX8MM_CLK_SAI6] = imx8m_clk_composite("sai6", imx8mm_sai6_sels, base + 0xa800);
-	clks[IMX8MM_CLK_SPDIF1] = imx8m_clk_composite("spdif1", imx8mm_spdif1_sels, base + 0xa880);
-	clks[IMX8MM_CLK_SPDIF2] = imx8m_clk_composite("spdif2", imx8mm_spdif2_sels, base + 0xa900);
-	clks[IMX8MM_CLK_ENET_REF] = imx8m_clk_composite("enet_ref", imx8mm_enet_ref_sels, base + 0xa980);
-	clks[IMX8MM_CLK_ENET_TIMER] = imx8m_clk_composite("enet_timer", imx8mm_enet_timer_sels, base + 0xaa00);
-	clks[IMX8MM_CLK_ENET_PHY_REF] = imx8m_clk_composite("enet_phy", imx8mm_enet_phy_sels, base + 0xaa80);
-	clks[IMX8MM_CLK_NAND] = imx8m_clk_composite("nand", imx8mm_nand_sels, base + 0xab00);
-	clks[IMX8MM_CLK_QSPI] = imx8m_clk_composite("qspi", imx8mm_qspi_sels, base + 0xab80);
-	clks[IMX8MM_CLK_USDHC1] = imx8m_clk_composite("usdhc1", imx8mm_usdhc1_sels, base + 0xac00);
-	clks[IMX8MM_CLK_USDHC2] = imx8m_clk_composite("usdhc2", imx8mm_usdhc2_sels, base + 0xac80);
-	clks[IMX8MM_CLK_I2C1] = imx8m_clk_composite("i2c1", imx8mm_i2c1_sels, base + 0xad00);
-	clks[IMX8MM_CLK_I2C2] = imx8m_clk_composite("i2c2", imx8mm_i2c2_sels, base + 0xad80);
-	clks[IMX8MM_CLK_I2C3] = imx8m_clk_composite("i2c3", imx8mm_i2c3_sels, base + 0xae00);
-	clks[IMX8MM_CLK_I2C4] = imx8m_clk_composite("i2c4", imx8mm_i2c4_sels, base + 0xae80);
-	clks[IMX8MM_CLK_UART1] = imx8m_clk_composite("uart1", imx8mm_uart1_sels, base + 0xaf00);
-	clks[IMX8MM_CLK_UART2] = imx8m_clk_composite("uart2", imx8mm_uart2_sels, base + 0xaf80);
-	clks[IMX8MM_CLK_UART3] = imx8m_clk_composite("uart3", imx8mm_uart3_sels, base + 0xb000);
-	clks[IMX8MM_CLK_UART4] = imx8m_clk_composite("uart4", imx8mm_uart4_sels, base + 0xb080);
-	clks[IMX8MM_CLK_USB_CORE_REF] = imx8m_clk_composite("usb_core_ref", imx8mm_usb_core_sels, base + 0xb100);
-	clks[IMX8MM_CLK_USB_PHY_REF] = imx8m_clk_composite("usb_phy_ref", imx8mm_usb_phy_sels, base + 0xb180);
-	clks[IMX8MM_CLK_GIC] = imx8m_clk_composite_critical("gic", imx8mm_gic_sels, base + 0xb200);
-	clks[IMX8MM_CLK_ECSPI1] = imx8m_clk_composite("ecspi1", imx8mm_ecspi1_sels, base + 0xb280);
-	clks[IMX8MM_CLK_ECSPI2] = imx8m_clk_composite("ecspi2", imx8mm_ecspi2_sels, base + 0xb300);
-	clks[IMX8MM_CLK_PWM1] = imx8m_clk_composite("pwm1", imx8mm_pwm1_sels, base + 0xb380);
-	clks[IMX8MM_CLK_PWM2] = imx8m_clk_composite("pwm2", imx8mm_pwm2_sels, base + 0xb400);
-	clks[IMX8MM_CLK_PWM3] = imx8m_clk_composite("pwm3", imx8mm_pwm3_sels, base + 0xb480);
-	clks[IMX8MM_CLK_PWM4] = imx8m_clk_composite("pwm4", imx8mm_pwm4_sels, base + 0xb500);
-	clks[IMX8MM_CLK_GPT1] = imx8m_clk_composite("gpt1", imx8mm_gpt1_sels, base + 0xb580);
-	clks[IMX8MM_CLK_WDOG] = imx8m_clk_composite("wdog", imx8mm_wdog_sels, base + 0xb900);
-	clks[IMX8MM_CLK_WRCLK] = imx8m_clk_composite("wrclk", imx8mm_wrclk_sels, base + 0xb980);
-	clks[IMX8MM_CLK_CLKO1] = imx8m_clk_composite("clko1", imx8mm_clko1_sels, base + 0xba00);
-	clks[IMX8MM_CLK_DSI_CORE] = imx8m_clk_composite("dsi_core", imx8mm_dsi_core_sels, base + 0xbb00);
-	clks[IMX8MM_CLK_DSI_PHY_REF] = imx8m_clk_composite("dsi_phy_ref", imx8mm_dsi_phy_sels, base + 0xbb80);
-	clks[IMX8MM_CLK_DSI_DBI] = imx8m_clk_composite("dsi_dbi", imx8mm_dsi_dbi_sels, base + 0xbc00);
-	clks[IMX8MM_CLK_USDHC3] = imx8m_clk_composite("usdhc3", imx8mm_usdhc3_sels, base + 0xbc80);
-	clks[IMX8MM_CLK_CSI1_CORE] = imx8m_clk_composite("csi1_core", imx8mm_csi1_core_sels, base + 0xbd00);
-	clks[IMX8MM_CLK_CSI1_PHY_REF] = imx8m_clk_composite("csi1_phy_ref", imx8mm_csi1_phy_sels, base + 0xbd80);
-	clks[IMX8MM_CLK_CSI1_ESC] = imx8m_clk_composite("csi1_esc", imx8mm_csi1_esc_sels, base + 0xbe00);
-	clks[IMX8MM_CLK_CSI2_CORE] = imx8m_clk_composite("csi2_core", imx8mm_csi2_core_sels, base + 0xbe80);
-	clks[IMX8MM_CLK_CSI2_PHY_REF] = imx8m_clk_composite("csi2_phy_ref", imx8mm_csi2_phy_sels, base + 0xbf00);
-	clks[IMX8MM_CLK_CSI2_ESC] = imx8m_clk_composite("csi2_esc", imx8mm_csi2_esc_sels, base + 0xbf80);
-	clks[IMX8MM_CLK_PCIE2_CTRL] = imx8m_clk_composite("pcie2_ctrl", imx8mm_pcie2_ctrl_sels, base + 0xc000);
-	clks[IMX8MM_CLK_PCIE2_PHY] = imx8m_clk_composite("pcie2_phy", imx8mm_pcie2_phy_sels, base + 0xc080);
-	clks[IMX8MM_CLK_PCIE2_AUX] = imx8m_clk_composite("pcie2_aux", imx8mm_pcie2_aux_sels, base + 0xc100);
-	clks[IMX8MM_CLK_ECSPI3] = imx8m_clk_composite("ecspi3", imx8mm_ecspi3_sels, base + 0xc180);
-	clks[IMX8MM_CLK_PDM] = imx8m_clk_composite("pdm", imx8mm_pdm_sels, base + 0xc200);
-	clks[IMX8MM_CLK_VPU_H1] = imx8m_clk_composite("vpu_h1", imx8mm_vpu_h1_sels, base + 0xc280);
+	clks[IMX8MM_CLK_DRAM_ALT] = imx8m_clk_hw_composite("dram_alt", imx8mm_dram_alt_sels, base + 0xa000);
+	clks[IMX8MM_CLK_DRAM_APB] = imx8m_clk_hw_composite_critical("dram_apb", imx8mm_dram_apb_sels, base + 0xa080);
+	clks[IMX8MM_CLK_VPU_G1] = imx8m_clk_hw_composite("vpu_g1", imx8mm_vpu_g1_sels, base + 0xa100);
+	clks[IMX8MM_CLK_VPU_G2] = imx8m_clk_hw_composite("vpu_g2", imx8mm_vpu_g2_sels, base + 0xa180);
+	clks[IMX8MM_CLK_DISP_DTRC] = imx8m_clk_hw_composite("disp_dtrc", imx8mm_disp_dtrc_sels, base + 0xa200);
+	clks[IMX8MM_CLK_DISP_DC8000] = imx8m_clk_hw_composite("disp_dc8000", imx8mm_disp_dc8000_sels, base + 0xa280);
+	clks[IMX8MM_CLK_PCIE1_CTRL] = imx8m_clk_hw_composite("pcie1_ctrl", imx8mm_pcie1_ctrl_sels, base + 0xa300);
+	clks[IMX8MM_CLK_PCIE1_PHY] = imx8m_clk_hw_composite("pcie1_phy", imx8mm_pcie1_phy_sels, base + 0xa380);
+	clks[IMX8MM_CLK_PCIE1_AUX] = imx8m_clk_hw_composite("pcie1_aux", imx8mm_pcie1_aux_sels, base + 0xa400);
+	clks[IMX8MM_CLK_DC_PIXEL] = imx8m_clk_hw_composite("dc_pixel", imx8mm_dc_pixel_sels, base + 0xa480);
+	clks[IMX8MM_CLK_LCDIF_PIXEL] = imx8m_clk_hw_composite("lcdif_pixel", imx8mm_lcdif_pixel_sels, base + 0xa500);
+	clks[IMX8MM_CLK_SAI1] = imx8m_clk_hw_composite("sai1", imx8mm_sai1_sels, base + 0xa580);
+	clks[IMX8MM_CLK_SAI2] = imx8m_clk_hw_composite("sai2", imx8mm_sai2_sels, base + 0xa600);
+	clks[IMX8MM_CLK_SAI3] = imx8m_clk_hw_composite("sai3", imx8mm_sai3_sels, base + 0xa680);
+	clks[IMX8MM_CLK_SAI4] = imx8m_clk_hw_composite("sai4", imx8mm_sai4_sels, base + 0xa700);
+	clks[IMX8MM_CLK_SAI5] = imx8m_clk_hw_composite("sai5", imx8mm_sai5_sels, base + 0xa780);
+	clks[IMX8MM_CLK_SAI6] = imx8m_clk_hw_composite("sai6", imx8mm_sai6_sels, base + 0xa800);
+	clks[IMX8MM_CLK_SPDIF1] = imx8m_clk_hw_composite("spdif1", imx8mm_spdif1_sels, base + 0xa880);
+	clks[IMX8MM_CLK_SPDIF2] = imx8m_clk_hw_composite("spdif2", imx8mm_spdif2_sels, base + 0xa900);
+	clks[IMX8MM_CLK_ENET_REF] = imx8m_clk_hw_composite("enet_ref", imx8mm_enet_ref_sels, base + 0xa980);
+	clks[IMX8MM_CLK_ENET_TIMER] = imx8m_clk_hw_composite("enet_timer", imx8mm_enet_timer_sels, base + 0xaa00);
+	clks[IMX8MM_CLK_ENET_PHY_REF] = imx8m_clk_hw_composite("enet_phy", imx8mm_enet_phy_sels, base + 0xaa80);
+	clks[IMX8MM_CLK_NAND] = imx8m_clk_hw_composite("nand", imx8mm_nand_sels, base + 0xab00);
+	clks[IMX8MM_CLK_QSPI] = imx8m_clk_hw_composite("qspi", imx8mm_qspi_sels, base + 0xab80);
+	clks[IMX8MM_CLK_USDHC1] = imx8m_clk_hw_composite("usdhc1", imx8mm_usdhc1_sels, base + 0xac00);
+	clks[IMX8MM_CLK_USDHC2] = imx8m_clk_hw_composite("usdhc2", imx8mm_usdhc2_sels, base + 0xac80);
+	clks[IMX8MM_CLK_I2C1] = imx8m_clk_hw_composite("i2c1", imx8mm_i2c1_sels, base + 0xad00);
+	clks[IMX8MM_CLK_I2C2] = imx8m_clk_hw_composite("i2c2", imx8mm_i2c2_sels, base + 0xad80);
+	clks[IMX8MM_CLK_I2C3] = imx8m_clk_hw_composite("i2c3", imx8mm_i2c3_sels, base + 0xae00);
+	clks[IMX8MM_CLK_I2C4] = imx8m_clk_hw_composite("i2c4", imx8mm_i2c4_sels, base + 0xae80);
+	clks[IMX8MM_CLK_UART1] = imx8m_clk_hw_composite("uart1", imx8mm_uart1_sels, base + 0xaf00);
+	clks[IMX8MM_CLK_UART2] = imx8m_clk_hw_composite("uart2", imx8mm_uart2_sels, base + 0xaf80);
+	clks[IMX8MM_CLK_UART3] = imx8m_clk_hw_composite("uart3", imx8mm_uart3_sels, base + 0xb000);
+	clks[IMX8MM_CLK_UART4] = imx8m_clk_hw_composite("uart4", imx8mm_uart4_sels, base + 0xb080);
+	clks[IMX8MM_CLK_USB_CORE_REF] = imx8m_clk_hw_composite("usb_core_ref", imx8mm_usb_core_sels, base + 0xb100);
+	clks[IMX8MM_CLK_USB_PHY_REF] = imx8m_clk_hw_composite("usb_phy_ref", imx8mm_usb_phy_sels, base + 0xb180);
+	clks[IMX8MM_CLK_GIC] = imx8m_clk_hw_composite_critical("gic", imx8mm_gic_sels, base + 0xb200);
+	clks[IMX8MM_CLK_ECSPI1] = imx8m_clk_hw_composite("ecspi1", imx8mm_ecspi1_sels, base + 0xb280);
+	clks[IMX8MM_CLK_ECSPI2] = imx8m_clk_hw_composite("ecspi2", imx8mm_ecspi2_sels, base + 0xb300);
+	clks[IMX8MM_CLK_PWM1] = imx8m_clk_hw_composite("pwm1", imx8mm_pwm1_sels, base + 0xb380);
+	clks[IMX8MM_CLK_PWM2] = imx8m_clk_hw_composite("pwm2", imx8mm_pwm2_sels, base + 0xb400);
+	clks[IMX8MM_CLK_PWM3] = imx8m_clk_hw_composite("pwm3", imx8mm_pwm3_sels, base + 0xb480);
+	clks[IMX8MM_CLK_PWM4] = imx8m_clk_hw_composite("pwm4", imx8mm_pwm4_sels, base + 0xb500);
+	clks[IMX8MM_CLK_GPT1] = imx8m_clk_hw_composite("gpt1", imx8mm_gpt1_sels, base + 0xb580);
+	clks[IMX8MM_CLK_WDOG] = imx8m_clk_hw_composite("wdog", imx8mm_wdog_sels, base + 0xb900);
+	clks[IMX8MM_CLK_WRCLK] = imx8m_clk_hw_composite("wrclk", imx8mm_wrclk_sels, base + 0xb980);
+	clks[IMX8MM_CLK_CLKO1] = imx8m_clk_hw_composite("clko1", imx8mm_clko1_sels, base + 0xba00);
+	clks[IMX8MM_CLK_DSI_CORE] = imx8m_clk_hw_composite("dsi_core", imx8mm_dsi_core_sels, base + 0xbb00);
+	clks[IMX8MM_CLK_DSI_PHY_REF] = imx8m_clk_hw_composite("dsi_phy_ref", imx8mm_dsi_phy_sels, base + 0xbb80);
+	clks[IMX8MM_CLK_DSI_DBI] = imx8m_clk_hw_composite("dsi_dbi", imx8mm_dsi_dbi_sels, base + 0xbc00);
+	clks[IMX8MM_CLK_USDHC3] = imx8m_clk_hw_composite("usdhc3", imx8mm_usdhc3_sels, base + 0xbc80);
+	clks[IMX8MM_CLK_CSI1_CORE] = imx8m_clk_hw_composite("csi1_core", imx8mm_csi1_core_sels, base + 0xbd00);
+	clks[IMX8MM_CLK_CSI1_PHY_REF] = imx8m_clk_hw_composite("csi1_phy_ref", imx8mm_csi1_phy_sels, base + 0xbd80);
+	clks[IMX8MM_CLK_CSI1_ESC] = imx8m_clk_hw_composite("csi1_esc", imx8mm_csi1_esc_sels, base + 0xbe00);
+	clks[IMX8MM_CLK_CSI2_CORE] = imx8m_clk_hw_composite("csi2_core", imx8mm_csi2_core_sels, base + 0xbe80);
+	clks[IMX8MM_CLK_CSI2_PHY_REF] = imx8m_clk_hw_composite("csi2_phy_ref", imx8mm_csi2_phy_sels, base + 0xbf00);
+	clks[IMX8MM_CLK_CSI2_ESC] = imx8m_clk_hw_composite("csi2_esc", imx8mm_csi2_esc_sels, base + 0xbf80);
+	clks[IMX8MM_CLK_PCIE2_CTRL] = imx8m_clk_hw_composite("pcie2_ctrl", imx8mm_pcie2_ctrl_sels, base + 0xc000);
+	clks[IMX8MM_CLK_PCIE2_PHY] = imx8m_clk_hw_composite("pcie2_phy", imx8mm_pcie2_phy_sels, base + 0xc080);
+	clks[IMX8MM_CLK_PCIE2_AUX] = imx8m_clk_hw_composite("pcie2_aux", imx8mm_pcie2_aux_sels, base + 0xc100);
+	clks[IMX8MM_CLK_ECSPI3] = imx8m_clk_hw_composite("ecspi3", imx8mm_ecspi3_sels, base + 0xc180);
+	clks[IMX8MM_CLK_PDM] = imx8m_clk_hw_composite("pdm", imx8mm_pdm_sels, base + 0xc200);
+	clks[IMX8MM_CLK_VPU_H1] = imx8m_clk_hw_composite("vpu_h1", imx8mm_vpu_h1_sels, base + 0xc280);
 
 	/* CCGR */
-	clks[IMX8MM_CLK_ECSPI1_ROOT] = imx_clk_gate4("ecspi1_root_clk", "ecspi1", base + 0x4070, 0);
-	clks[IMX8MM_CLK_ECSPI2_ROOT] = imx_clk_gate4("ecspi2_root_clk", "ecspi2", base + 0x4080, 0);
-	clks[IMX8MM_CLK_ECSPI3_ROOT] = imx_clk_gate4("ecspi3_root_clk", "ecspi3", base + 0x4090, 0);
-	clks[IMX8MM_CLK_ENET1_ROOT] = imx_clk_gate4("enet1_root_clk", "enet_axi", base + 0x40a0, 0);
-	clks[IMX8MM_CLK_GPIO1_ROOT] = imx_clk_gate4("gpio1_root_clk", "ipg_root", base + 0x40b0, 0);
-	clks[IMX8MM_CLK_GPIO2_ROOT] = imx_clk_gate4("gpio2_root_clk", "ipg_root", base + 0x40c0, 0);
-	clks[IMX8MM_CLK_GPIO3_ROOT] = imx_clk_gate4("gpio3_root_clk", "ipg_root", base + 0x40d0, 0);
-	clks[IMX8MM_CLK_GPIO4_ROOT] = imx_clk_gate4("gpio4_root_clk", "ipg_root", base + 0x40e0, 0);
-	clks[IMX8MM_CLK_GPIO5_ROOT] = imx_clk_gate4("gpio5_root_clk", "ipg_root", base + 0x40f0, 0);
-	clks[IMX8MM_CLK_GPT1_ROOT] = imx_clk_gate4("gpt1_root_clk", "gpt1", base + 0x4100, 0);
-	clks[IMX8MM_CLK_I2C1_ROOT] = imx_clk_gate4("i2c1_root_clk", "i2c1", base + 0x4170, 0);
-	clks[IMX8MM_CLK_I2C2_ROOT] = imx_clk_gate4("i2c2_root_clk", "i2c2", base + 0x4180, 0);
-	clks[IMX8MM_CLK_I2C3_ROOT] = imx_clk_gate4("i2c3_root_clk", "i2c3", base + 0x4190, 0);
-	clks[IMX8MM_CLK_I2C4_ROOT] = imx_clk_gate4("i2c4_root_clk", "i2c4", base + 0x41a0, 0);
-	clks[IMX8MM_CLK_MU_ROOT] = imx_clk_gate4("mu_root_clk", "ipg_root", base + 0x4210, 0);
-	clks[IMX8MM_CLK_OCOTP_ROOT] = imx_clk_gate4("ocotp_root_clk", "ipg_root", base + 0x4220, 0);
-	clks[IMX8MM_CLK_PCIE1_ROOT] = imx_clk_gate4("pcie1_root_clk", "pcie1_ctrl", base + 0x4250, 0);
-	clks[IMX8MM_CLK_PWM1_ROOT] = imx_clk_gate4("pwm1_root_clk", "pwm1", base + 0x4280, 0);
-	clks[IMX8MM_CLK_PWM2_ROOT] = imx_clk_gate4("pwm2_root_clk", "pwm2", base + 0x4290, 0);
-	clks[IMX8MM_CLK_PWM3_ROOT] = imx_clk_gate4("pwm3_root_clk", "pwm3", base + 0x42a0, 0);
-	clks[IMX8MM_CLK_PWM4_ROOT] = imx_clk_gate4("pwm4_root_clk", "pwm4", base + 0x42b0, 0);
-	clks[IMX8MM_CLK_QSPI_ROOT] = imx_clk_gate4("qspi_root_clk", "qspi", base + 0x42f0, 0);
-	clks[IMX8MM_CLK_NAND_ROOT] = imx_clk_gate2_shared2("nand_root_clk", "nand", base + 0x4300, 0, &share_count_nand);
-	clks[IMX8MM_CLK_NAND_USDHC_BUS_RAWNAND_CLK] = imx_clk_gate2_shared2("nand_usdhc_rawnand_clk", "nand_usdhc_bus", base + 0x4300, 0, &share_count_nand);
-	clks[IMX8MM_CLK_SAI1_ROOT] = imx_clk_gate2_shared2("sai1_root_clk", "sai1", base + 0x4330, 0, &share_count_sai1);
-	clks[IMX8MM_CLK_SAI1_IPG] = imx_clk_gate2_shared2("sai1_ipg_clk", "ipg_audio_root", base + 0x4330, 0, &share_count_sai1);
-	clks[IMX8MM_CLK_SAI2_ROOT] = imx_clk_gate2_shared2("sai2_root_clk", "sai2", base + 0x4340, 0, &share_count_sai2);
-	clks[IMX8MM_CLK_SAI2_IPG] = imx_clk_gate2_shared2("sai2_ipg_clk", "ipg_audio_root", base + 0x4340, 0, &share_count_sai2);
-	clks[IMX8MM_CLK_SAI3_ROOT] = imx_clk_gate2_shared2("sai3_root_clk", "sai3", base + 0x4350, 0, &share_count_sai3);
-	clks[IMX8MM_CLK_SAI3_IPG] = imx_clk_gate2_shared2("sai3_ipg_clk", "ipg_audio_root", base + 0x4350, 0, &share_count_sai3);
-	clks[IMX8MM_CLK_SAI4_ROOT] = imx_clk_gate2_shared2("sai4_root_clk", "sai4", base + 0x4360, 0, &share_count_sai4);
-	clks[IMX8MM_CLK_SAI4_IPG] = imx_clk_gate2_shared2("sai4_ipg_clk", "ipg_audio_root", base + 0x4360, 0, &share_count_sai4);
-	clks[IMX8MM_CLK_SAI5_ROOT] = imx_clk_gate2_shared2("sai5_root_clk", "sai5", base + 0x4370, 0, &share_count_sai5);
-	clks[IMX8MM_CLK_SAI5_IPG] = imx_clk_gate2_shared2("sai5_ipg_clk", "ipg_audio_root", base + 0x4370, 0, &share_count_sai5);
-	clks[IMX8MM_CLK_SAI6_ROOT] = imx_clk_gate2_shared2("sai6_root_clk", "sai6", base + 0x4380, 0, &share_count_sai6);
-	clks[IMX8MM_CLK_SAI6_IPG] = imx_clk_gate2_shared2("sai6_ipg_clk", "ipg_audio_root", base + 0x4380, 0, &share_count_sai6);
-	clks[IMX8MM_CLK_SNVS_ROOT] = imx_clk_gate4("snvs_root_clk", "ipg_root", base + 0x4470, 0);
-	clks[IMX8MM_CLK_UART1_ROOT] = imx_clk_gate4("uart1_root_clk", "uart1", base + 0x4490, 0);
-	clks[IMX8MM_CLK_UART2_ROOT] = imx_clk_gate4("uart2_root_clk", "uart2", base + 0x44a0, 0);
-	clks[IMX8MM_CLK_UART3_ROOT] = imx_clk_gate4("uart3_root_clk", "uart3", base + 0x44b0, 0);
-	clks[IMX8MM_CLK_UART4_ROOT] = imx_clk_gate4("uart4_root_clk", "uart4", base + 0x44c0, 0);
-	clks[IMX8MM_CLK_USB1_CTRL_ROOT] = imx_clk_gate4("usb1_ctrl_root_clk", "usb_bus", base + 0x44d0, 0);
-	clks[IMX8MM_CLK_GPU3D_ROOT] = imx_clk_gate4("gpu3d_root_clk", "gpu3d_div", base + 0x44f0, 0);
-	clks[IMX8MM_CLK_USDHC1_ROOT] = imx_clk_gate4("usdhc1_root_clk", "usdhc1", base + 0x4510, 0);
-	clks[IMX8MM_CLK_USDHC2_ROOT] = imx_clk_gate4("usdhc2_root_clk", "usdhc2", base + 0x4520, 0);
-	clks[IMX8MM_CLK_WDOG1_ROOT] = imx_clk_gate4("wdog1_root_clk", "wdog", base + 0x4530, 0);
-	clks[IMX8MM_CLK_WDOG2_ROOT] = imx_clk_gate4("wdog2_root_clk", "wdog", base + 0x4540, 0);
-	clks[IMX8MM_CLK_WDOG3_ROOT] = imx_clk_gate4("wdog3_root_clk", "wdog", base + 0x4550, 0);
-	clks[IMX8MM_CLK_VPU_G1_ROOT] = imx_clk_gate4("vpu_g1_root_clk", "vpu_g1", base + 0x4560, 0);
-	clks[IMX8MM_CLK_GPU_BUS_ROOT] = imx_clk_gate4("gpu_root_clk", "gpu_axi", base + 0x4570, 0);
-	clks[IMX8MM_CLK_VPU_H1_ROOT] = imx_clk_gate4("vpu_h1_root_clk", "vpu_h1", base + 0x4590, 0);
-	clks[IMX8MM_CLK_VPU_G2_ROOT] = imx_clk_gate4("vpu_g2_root_clk", "vpu_g2", base + 0x45a0, 0);
-	clks[IMX8MM_CLK_PDM_ROOT] = imx_clk_gate2_shared2("pdm_root_clk", "pdm", base + 0x45b0, 0, &share_count_pdm);
-	clks[IMX8MM_CLK_PDM_IPG]  = imx_clk_gate2_shared2("pdm_ipg_clk", "ipg_audio_root", base + 0x45b0, 0, &share_count_pdm);
-	clks[IMX8MM_CLK_DISP_ROOT] = imx_clk_gate2_shared2("disp_root_clk", "disp_dc8000", base + 0x45d0, 0, &share_count_disp);
-	clks[IMX8MM_CLK_DISP_AXI_ROOT]  = imx_clk_gate2_shared2("disp_axi_root_clk", "disp_axi", base + 0x45d0, 0, &share_count_disp);
-	clks[IMX8MM_CLK_DISP_APB_ROOT]  = imx_clk_gate2_shared2("disp_apb_root_clk", "disp_apb", base + 0x45d0, 0, &share_count_disp);
-	clks[IMX8MM_CLK_DISP_RTRM_ROOT] = imx_clk_gate2_shared2("disp_rtrm_root_clk", "disp_rtrm", base + 0x45d0, 0, &share_count_disp);
-	clks[IMX8MM_CLK_USDHC3_ROOT] = imx_clk_gate4("usdhc3_root_clk", "usdhc3", base + 0x45e0, 0);
-	clks[IMX8MM_CLK_TMU_ROOT] = imx_clk_gate4("tmu_root_clk", "ipg_root", base + 0x4620, 0);
-	clks[IMX8MM_CLK_VPU_DEC_ROOT] = imx_clk_gate4("vpu_dec_root_clk", "vpu_bus", base + 0x4630, 0);
-	clks[IMX8MM_CLK_SDMA1_ROOT] = imx_clk_gate4("sdma1_clk", "ipg_root", base + 0x43a0, 0);
-	clks[IMX8MM_CLK_SDMA2_ROOT] = imx_clk_gate4("sdma2_clk", "ipg_audio_root", base + 0x43b0, 0);
-	clks[IMX8MM_CLK_SDMA3_ROOT] = imx_clk_gate4("sdma3_clk", "ipg_audio_root", base + 0x45f0, 0);
-	clks[IMX8MM_CLK_GPU2D_ROOT] = imx_clk_gate4("gpu2d_root_clk", "gpu2d_div", base + 0x4660, 0);
-	clks[IMX8MM_CLK_CSI1_ROOT] = imx_clk_gate4("csi1_root_clk", "csi1_core", base + 0x4650, 0);
-
-	clks[IMX8MM_CLK_GPT_3M] = imx_clk_fixed_factor("gpt_3m", "osc_24m", 1, 8);
-
-	clks[IMX8MM_CLK_DRAM_ALT_ROOT] = imx_clk_fixed_factor("dram_alt_root", "dram_alt", 1, 4);
-	clks[IMX8MM_CLK_DRAM_CORE] = imx_clk_mux2_flags("dram_core_clk", base + 0x9800, 24, 1, imx8mm_dram_core_sels, ARRAY_SIZE(imx8mm_dram_core_sels), CLK_IS_CRITICAL);
-
-	clks[IMX8MM_CLK_ARM] = imx_clk_cpu("arm", "arm_a53_div",
-					   clks[IMX8MM_CLK_A53_DIV],
-					   clks[IMX8MM_CLK_A53_SRC],
-					   clks[IMX8MM_ARM_PLL_OUT],
-					   clks[IMX8MM_CLK_24M]);
-
-	imx_check_clocks(clks, ARRAY_SIZE(clks));
-
-	clk_data.clks = clks;
-	clk_data.clk_num = ARRAY_SIZE(clks);
-	ret = of_clk_add_provider(np, of_clk_src_onecell_get, &clk_data);
+	clks[IMX8MM_CLK_ECSPI1_ROOT] = imx_clk_hw_gate4("ecspi1_root_clk", "ecspi1", base + 0x4070, 0);
+	clks[IMX8MM_CLK_ECSPI2_ROOT] = imx_clk_hw_gate4("ecspi2_root_clk", "ecspi2", base + 0x4080, 0);
+	clks[IMX8MM_CLK_ECSPI3_ROOT] = imx_clk_hw_gate4("ecspi3_root_clk", "ecspi3", base + 0x4090, 0);
+	clks[IMX8MM_CLK_ENET1_ROOT] = imx_clk_hw_gate4("enet1_root_clk", "enet_axi", base + 0x40a0, 0);
+	clks[IMX8MM_CLK_GPIO1_ROOT] = imx_clk_hw_gate4("gpio1_root_clk", "ipg_root", base + 0x40b0, 0);
+	clks[IMX8MM_CLK_GPIO2_ROOT] = imx_clk_hw_gate4("gpio2_root_clk", "ipg_root", base + 0x40c0, 0);
+	clks[IMX8MM_CLK_GPIO3_ROOT] = imx_clk_hw_gate4("gpio3_root_clk", "ipg_root", base + 0x40d0, 0);
+	clks[IMX8MM_CLK_GPIO4_ROOT] = imx_clk_hw_gate4("gpio4_root_clk", "ipg_root", base + 0x40e0, 0);
+	clks[IMX8MM_CLK_GPIO5_ROOT] = imx_clk_hw_gate4("gpio5_root_clk", "ipg_root", base + 0x40f0, 0);
+	clks[IMX8MM_CLK_GPT1_ROOT] = imx_clk_hw_gate4("gpt1_root_clk", "gpt1", base + 0x4100, 0);
+	clks[IMX8MM_CLK_I2C1_ROOT] = imx_clk_hw_gate4("i2c1_root_clk", "i2c1", base + 0x4170, 0);
+	clks[IMX8MM_CLK_I2C2_ROOT] = imx_clk_hw_gate4("i2c2_root_clk", "i2c2", base + 0x4180, 0);
+	clks[IMX8MM_CLK_I2C3_ROOT] = imx_clk_hw_gate4("i2c3_root_clk", "i2c3", base + 0x4190, 0);
+	clks[IMX8MM_CLK_I2C4_ROOT] = imx_clk_hw_gate4("i2c4_root_clk", "i2c4", base + 0x41a0, 0);
+	clks[IMX8MM_CLK_MU_ROOT] = imx_clk_hw_gate4("mu_root_clk", "ipg_root", base + 0x4210, 0);
+	clks[IMX8MM_CLK_OCOTP_ROOT] = imx_clk_hw_gate4("ocotp_root_clk", "ipg_root", base + 0x4220, 0);
+	clks[IMX8MM_CLK_PCIE1_ROOT] = imx_clk_hw_gate4("pcie1_root_clk", "pcie1_ctrl", base + 0x4250, 0);
+	clks[IMX8MM_CLK_PWM1_ROOT] = imx_clk_hw_gate4("pwm1_root_clk", "pwm1", base + 0x4280, 0);
+	clks[IMX8MM_CLK_PWM2_ROOT] = imx_clk_hw_gate4("pwm2_root_clk", "pwm2", base + 0x4290, 0);
+	clks[IMX8MM_CLK_PWM3_ROOT] = imx_clk_hw_gate4("pwm3_root_clk", "pwm3", base + 0x42a0, 0);
+	clks[IMX8MM_CLK_PWM4_ROOT] = imx_clk_hw_gate4("pwm4_root_clk", "pwm4", base + 0x42b0, 0);
+	clks[IMX8MM_CLK_QSPI_ROOT] = imx_clk_hw_gate4("qspi_root_clk", "qspi", base + 0x42f0, 0);
+	clks[IMX8MM_CLK_NAND_ROOT] = imx_clk_hw_gate2_shared2("nand_root_clk", "nand", base + 0x4300, 0, &share_count_nand);
+	clks[IMX8MM_CLK_NAND_USDHC_BUS_RAWNAND_CLK] = imx_clk_hw_gate2_shared2("nand_usdhc_rawnand_clk", "nand_usdhc_bus", base + 0x4300, 0, &share_count_nand);
+	clks[IMX8MM_CLK_SAI1_ROOT] = imx_clk_hw_gate2_shared2("sai1_root_clk", "sai1", base + 0x4330, 0, &share_count_sai1);
+	clks[IMX8MM_CLK_SAI1_IPG] = imx_clk_hw_gate2_shared2("sai1_ipg_clk", "ipg_audio_root", base + 0x4330, 0, &share_count_sai1);
+	clks[IMX8MM_CLK_SAI2_ROOT] = imx_clk_hw_gate2_shared2("sai2_root_clk", "sai2", base + 0x4340, 0, &share_count_sai2);
+	clks[IMX8MM_CLK_SAI2_IPG] = imx_clk_hw_gate2_shared2("sai2_ipg_clk", "ipg_audio_root", base + 0x4340, 0, &share_count_sai2);
+	clks[IMX8MM_CLK_SAI3_ROOT] = imx_clk_hw_gate2_shared2("sai3_root_clk", "sai3", base + 0x4350, 0, &share_count_sai3);
+	clks[IMX8MM_CLK_SAI3_IPG] = imx_clk_hw_gate2_shared2("sai3_ipg_clk", "ipg_audio_root", base + 0x4350, 0, &share_count_sai3);
+	clks[IMX8MM_CLK_SAI4_ROOT] = imx_clk_hw_gate2_shared2("sai4_root_clk", "sai4", base + 0x4360, 0, &share_count_sai4);
+	clks[IMX8MM_CLK_SAI4_IPG] = imx_clk_hw_gate2_shared2("sai4_ipg_clk", "ipg_audio_root", base + 0x4360, 0, &share_count_sai4);
+	clks[IMX8MM_CLK_SAI5_ROOT] = imx_clk_hw_gate2_shared2("sai5_root_clk", "sai5", base + 0x4370, 0, &share_count_sai5);
+	clks[IMX8MM_CLK_SAI5_IPG] = imx_clk_hw_gate2_shared2("sai5_ipg_clk", "ipg_audio_root", base + 0x4370, 0, &share_count_sai5);
+	clks[IMX8MM_CLK_SAI6_ROOT] = imx_clk_hw_gate2_shared2("sai6_root_clk", "sai6", base + 0x4380, 0, &share_count_sai6);
+	clks[IMX8MM_CLK_SAI6_IPG] = imx_clk_hw_gate2_shared2("sai6_ipg_clk", "ipg_audio_root", base + 0x4380, 0, &share_count_sai6);
+	clks[IMX8MM_CLK_SNVS_ROOT] = imx_clk_hw_gate4("snvs_root_clk", "ipg_root", base + 0x4470, 0);
+	clks[IMX8MM_CLK_UART1_ROOT] = imx_clk_hw_gate4("uart1_root_clk", "uart1", base + 0x4490, 0);
+	clks[IMX8MM_CLK_UART2_ROOT] = imx_clk_hw_gate4("uart2_root_clk", "uart2", base + 0x44a0, 0);
+	clks[IMX8MM_CLK_UART3_ROOT] = imx_clk_hw_gate4("uart3_root_clk", "uart3", base + 0x44b0, 0);
+	clks[IMX8MM_CLK_UART4_ROOT] = imx_clk_hw_gate4("uart4_root_clk", "uart4", base + 0x44c0, 0);
+	clks[IMX8MM_CLK_USB1_CTRL_ROOT] = imx_clk_hw_gate4("usb1_ctrl_root_clk", "usb_bus", base + 0x44d0, 0);
+	clks[IMX8MM_CLK_GPU3D_ROOT] = imx_clk_hw_gate4("gpu3d_root_clk", "gpu3d_div", base + 0x44f0, 0);
+	clks[IMX8MM_CLK_USDHC1_ROOT] = imx_clk_hw_gate4("usdhc1_root_clk", "usdhc1", base + 0x4510, 0);
+	clks[IMX8MM_CLK_USDHC2_ROOT] = imx_clk_hw_gate4("usdhc2_root_clk", "usdhc2", base + 0x4520, 0);
+	clks[IMX8MM_CLK_WDOG1_ROOT] = imx_clk_hw_gate4("wdog1_root_clk", "wdog", base + 0x4530, 0);
+	clks[IMX8MM_CLK_WDOG2_ROOT] = imx_clk_hw_gate4("wdog2_root_clk", "wdog", base + 0x4540, 0);
+	clks[IMX8MM_CLK_WDOG3_ROOT] = imx_clk_hw_gate4("wdog3_root_clk", "wdog", base + 0x4550, 0);
+	clks[IMX8MM_CLK_VPU_G1_ROOT] = imx_clk_hw_gate4("vpu_g1_root_clk", "vpu_g1", base + 0x4560, 0);
+	clks[IMX8MM_CLK_GPU_BUS_ROOT] = imx_clk_hw_gate4("gpu_root_clk", "gpu_axi", base + 0x4570, 0);
+	clks[IMX8MM_CLK_VPU_H1_ROOT] = imx_clk_hw_gate4("vpu_h1_root_clk", "vpu_h1", base + 0x4590, 0);
+	clks[IMX8MM_CLK_VPU_G2_ROOT] = imx_clk_hw_gate4("vpu_g2_root_clk", "vpu_g2", base + 0x45a0, 0);
+	clks[IMX8MM_CLK_PDM_ROOT] = imx_clk_hw_gate2_shared2("pdm_root_clk", "pdm", base + 0x45b0, 0, &share_count_pdm);
+	clks[IMX8MM_CLK_PDM_IPG]  = imx_clk_hw_gate2_shared2("pdm_ipg_clk", "ipg_audio_root", base + 0x45b0, 0, &share_count_pdm);
+	clks[IMX8MM_CLK_DISP_ROOT] = imx_clk_hw_gate2_shared2("disp_root_clk", "disp_dc8000", base + 0x45d0, 0, &share_count_disp);
+	clks[IMX8MM_CLK_DISP_AXI_ROOT]  = imx_clk_hw_gate2_shared2("disp_axi_root_clk", "disp_axi", base + 0x45d0, 0, &share_count_disp);
+	clks[IMX8MM_CLK_DISP_APB_ROOT]  = imx_clk_hw_gate2_shared2("disp_apb_root_clk", "disp_apb", base + 0x45d0, 0, &share_count_disp);
+	clks[IMX8MM_CLK_DISP_RTRM_ROOT] = imx_clk_hw_gate2_shared2("disp_rtrm_root_clk", "disp_rtrm", base + 0x45d0, 0, &share_count_disp);
+	clks[IMX8MM_CLK_USDHC3_ROOT] = imx_clk_hw_gate4("usdhc3_root_clk", "usdhc3", base + 0x45e0, 0);
+	clks[IMX8MM_CLK_TMU_ROOT] = imx_clk_hw_gate4("tmu_root_clk", "ipg_root", base + 0x4620, 0);
+	clks[IMX8MM_CLK_VPU_DEC_ROOT] = imx_clk_hw_gate4("vpu_dec_root_clk", "vpu_bus", base + 0x4630, 0);
+	clks[IMX8MM_CLK_SDMA1_ROOT] = imx_clk_hw_gate4("sdma1_clk", "ipg_root", base + 0x43a0, 0);
+	clks[IMX8MM_CLK_SDMA2_ROOT] = imx_clk_hw_gate4("sdma2_clk", "ipg_audio_root", base + 0x43b0, 0);
+	clks[IMX8MM_CLK_SDMA3_ROOT] = imx_clk_hw_gate4("sdma3_clk", "ipg_audio_root", base + 0x45f0, 0);
+	clks[IMX8MM_CLK_GPU2D_ROOT] = imx_clk_hw_gate4("gpu2d_root_clk", "gpu2d_div", base + 0x4660, 0);
+	clks[IMX8MM_CLK_CSI1_ROOT] = imx_clk_hw_gate4("csi1_root_clk", "csi1_core", base + 0x4650, 0);
+
+	clks[IMX8MM_CLK_GPT_3M] = imx_clk_hw_fixed_factor("gpt_3m", "osc_24m", 1, 8);
+
+	clks[IMX8MM_CLK_DRAM_ALT_ROOT] = imx_clk_hw_fixed_factor("dram_alt_root", "dram_alt", 1, 4);
+	clks[IMX8MM_CLK_DRAM_CORE] = imx_clk_hw_mux2_flags("dram_core_clk", base + 0x9800, 24, 1, imx8mm_dram_core_sels, ARRAY_SIZE(imx8mm_dram_core_sels), CLK_IS_CRITICAL);
+
+	clks[IMX8MM_CLK_ARM] = imx_clk_hw_cpu("arm", "arm_a53_div",
+					      clks[IMX8MM_CLK_A53_DIV]->clk,
+					      clks[IMX8MM_CLK_A53_SRC]->clk,
+					      clks[IMX8MM_ARM_PLL_OUT]->clk,
+					      clks[IMX8MM_CLK_24M]->clk);
+
+	imx_check_clk_hws(clks, IMX8MM_CLK_END);
+
+	ret = of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_hw_data);
 	if (ret < 0) {
-		pr_err("failed to register clks for i.MX8MM\n");
+		dev_err(dev, "failed to register clks for i.MX8MM\n");
 		goto unregister_clks;
 	}
 
+	for (i = 0; i < ARRAY_SIZE(uart_clk_ids); i++) {
+		int index = uart_clk_ids[i];
+
+		uart_clks[i] = &clks[index]->clk;
+	}
+
 	imx_register_uart_clocks(uart_clks);
 
 	return 0;
 
 unregister_clks:
-	imx_unregister_clocks(clks, ARRAY_SIZE(clks));
+	imx_unregister_hw_clocks(clks, IMX8MM_CLK_END);
 
 	return ret;
 }
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
