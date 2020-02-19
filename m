Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D611616411D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 11:01:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5F3FZZ/IfZqUc2yKzn9lDpEHxK871xf4kOUalEvLDKQ=; b=QgUOMEH8uoXpwj
	DlyLGfh/4wo1AUbZ/Po5Px2lGZWhctkFxVouz1VFm4uKX8TO1Gqh7wjLKYfQS2pyb1bmGAGqp/2kz
	LbE9RUXFF2CpsdqDZN7WaufCxwp1hO3Wk3w0k2j1xu5MO632rmioEBF9p0c6pQh/sr9IkMdmUrGG0
	josAkhlZCfn+j3OVhI4ZOGDTkB2cfGB0qubg0s5vw8ePMCnvfJ4JxO+0DXuZRve5bILN8GQLvsbbw
	9hiCsxj7py1AlP1SN3EZSdElheqFvbyAxC+YcHa5AEKULEhtYsnV0wEj2ZpVgq5BkyxuTepeABSS5
	GXELqTCVVG7Iyk3agJ+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4MAT-0004B4-DJ; Wed, 19 Feb 2020 10:01:21 +0000
Received: from mail-am6eur05on2059.outbound.protection.outlook.com
 ([40.107.22.59] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4M96-0001ui-Ge
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 10:00:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kPekRm3xZdm+gTN/rz4A676qVKcNkOqzBpuFmxLG2oVK7fvY+tPIrmc+8iDMspPG6Ja6xGi7xRTLY/O8FIHTIJQJeF58k37k1Xm9GA7g52O5RcgirSiVXaJt5JUEtYGYg4VIAtBGOxp6+2nAYOdtKNOOpbc7VBFFd3Q7E0MBg+AaLa/yYPQqhZ7Sg00v8wqb5d1Stqs4uFAGWkkeOWtVsY0RQ33gH7HnIVkkvswNiTP1UZ+KWaJLjgHPI0PiqclCkpCkN4XhcpXUPSpvdhtvyWODj4gcrJHxD8/0n8dzLqiHq+MGwvFJeHCLhiOwGEau33Fiu1egQ1mDvLJGFr3UqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f43JoIc+8YLyGY0c4NvlXlO4/YEjkBxXnXJBlMKE35E=;
 b=bX2r3dZSbZglxwUuO0qn96EQkDjNdyYVfeD+xNx0dnrRoH/XodL/Qhly5ZxHlQGj6Sy+4WB72czgfodAKKjzOkAnKROE/KDthGNEpJFiYg1mcdvinLC2KApaLsbJjzpDlx03Dx8FNuHyHfdIDeayXyh42AuF357S2O60f3OB4MSw9OoHM/88uWtrUpBSUQInXSYeCZp4qhBhkjBvWfbDGWuXvnspQv36zSk+BM34Sywj4+rWrHrdDJbDqym9iqIO7xmp+osEDuussxQXF5GqHDZ7GoG+Sr6dx7NE7+emmfHbbpBOGRxF6DyiiZKHlTk04k4KxuDsERbAGBlOBuZN/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f43JoIc+8YLyGY0c4NvlXlO4/YEjkBxXnXJBlMKE35E=;
 b=EFYNF/pufcVfmeo3+cFEq09zRJLsoY5aFS8wnpZAAMcAjr2GFClG4C7Fw1YyMreVI+ggo/gjeysr0ZI3xLUysTRSB8rmh8fFctGKgwkqCSDsISr22W+b02V+g0sJ0vC1y6lO8umt/vbYCHKctF3RFiV1JQyugk5V62Pq7yscSeU=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6514.eurprd04.prod.outlook.com (20.179.254.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.17; Wed, 19 Feb 2020 09:59:53 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 09:59:53 +0000
From: peng.fan@nxp.com
To: sboyd@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, abel.vesa@nxp.com, leonard.crestez@nxp.com
Subject: [PATCH v3 2/4] clk: imx: imx8mm: fix a53 cpu clock
Date: Wed, 19 Feb 2020 17:53:37 +0800
Message-Id: <1582106022-20926-4-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582106022-20926-1-git-send-email-peng.fan@nxp.com>
References: <1582106022-20926-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HK2PR0302CA0008.apcprd03.prod.outlook.com
 (2603:1096:202::18) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR0302CA0008.apcprd03.prod.outlook.com (2603:1096:202::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2750.8 via Frontend Transport; Wed, 19 Feb 2020 09:59:49 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 00c3f69e-8468-4de5-158c-08d7b522777c
X-MS-TrafficTypeDiagnostic: AM0PR04MB6514:|AM0PR04MB6514:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB6514833AD537CB7E1CD16DAE88100@AM0PR04MB6514.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(396003)(136003)(39860400002)(189003)(199004)(4326008)(2616005)(956004)(6512007)(5660300002)(8936002)(9686003)(16526019)(186003)(478600001)(81166006)(81156014)(8676002)(36756003)(2906002)(6486002)(6506007)(86362001)(66946007)(52116002)(69590400006)(66556008)(66476007)(316002)(6666004)(26005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6514;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jVY5W2jvxC4zbnN+w6H96bRWPgpDsJcPuZB2uuMW2WrkKCuuubaojfN5cMUThkINkNw4ZuFiblwSnogwQpZ2D8gALzLs+utn3k+Q97zKQtRpSZN+AHAUSOKTrcfKIAjIQi/RKcz8TCCKPmrg16uCnGik580c8TpWivwz2pnrDBSISM6DWv4q0LVdHxx+ClIO975DAwwV4twE7q05zqThJQGUQOWeuTWKv/9LBi/Bh4ISU+jrm7yiw8IHE8zifaVZ87BA5TVfEWMsx5xEWwostcRu3lKOTClO+PkUUc3rQXjYvycZok7cuE890ktpHpPsOHMKIvB6J67EhZFB1+MXSTMhh0Ii+AtlGBq8377xOoleDnoeIyu47m+sNq3KENEyM/EGDZGmN+oFCossRq+QEvZiX/RIeAYiBhGy8ph+o26zPloM60K9St4TgYsCWX1vGxaKofc6zc2nxLIMn+FdQJzYWCcyPgPxl48LeHuNATAt1CfxYVHJ5P0AGDOdHaPjtbvOsYqXoHmEdsHoIgdrhda/E/YJRDmQ8gBpdauh+zuKlas6rV0R0alcdlgX1SLI
X-MS-Exchange-AntiSpam-MessageData: KRupF1gGLG8OuehhS0SluxDO9iNNltN9GVCGe0AFj5fSTfFJzD/k5H5uIDttW5civ4UPvKGlOywuzUQeXJ1S6DZh3YKAY8gbUGhbLWM5OVZt34mslSiVTHYKnzyKiaUSchFXTwZAl4zElHPrAN0AKg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00c3f69e-8468-4de5-158c-08d7b522777c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 09:59:53.6459 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XWX7tlkltt6sk4X2Tq/ohvswtJhmx92vfy6m7t6ERN29hzZb21PrzAxMmnI0BsMb0nfvDwjKN/OAbWzST59jYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6514
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_015956_579340_036F4025 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.59 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: aisheng.dong@nxp.com, Peng Fan <peng.fan@nxp.com>, ping.bai@nxp.com,
 anson.huang@nxp.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

The A53 CCM clk root only accepts input up to 1GHz, CCM A53 root
signoff timing is 1Ghz, however the A53 core which sources from CCM
root could run above 1GHz which voilates the CCM.

There is a CORE_SEL slice before A53 core, we need configure the
CORE_SEL slice source from ARM PLL, not A53 CCM clk root.

The A53 CCM clk root should only be used when need to change ARM PLL
frequency.

Add arm_a53_core clk that could source from arm_a53_div and arm_pll_out.
Configure a53 ccm root sources from 800MHz sys pll
Configure a53 core sources from arm_pll_out
Mark arm_a53_core as critical clock

Fixes: ba5625c3e272 ("clk: imx: Add clock driver support for imx8mm")
Reviewed-by: Jacky Bai <ping.bai@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mm.c             | 16 ++++++++++++----
 include/dt-bindings/clock/imx8mm-clock.h |  4 +++-
 2 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 2f2c240a86e2..f851cd447e7c 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -41,6 +41,8 @@ static const char *sys_pll3_bypass_sels[] = {"sys_pll3", "sys_pll3_ref_sel", };
 static const char *imx8mm_a53_sels[] = {"osc_24m", "arm_pll_out", "sys_pll2_500m", "sys_pll2_1000m",
 					"sys_pll1_800m", "sys_pll1_400m", "audio_pll1_out", "sys_pll3_out", };
 
+static const char * const imx8mm_a53_core_sels[] = {"arm_a53_div", "arm_pll_out", };
+
 static const char *imx8mm_m4_sels[] = {"osc_24m", "sys_pll2_200m", "sys_pll2_250m", "sys_pll1_266m",
 				       "sys_pll1_800m", "audio_pll1_out", "video_pll1_out", "sys_pll3_out", };
 
@@ -439,6 +441,9 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MM_CLK_GPU2D_CG] = hws[IMX8MM_CLK_GPU2D_CORE];
 	hws[IMX8MM_CLK_GPU2D_DIV] = hws[IMX8MM_CLK_GPU2D_CORE];
 
+	/* CORE SEL */
+	hws[IMX8MM_CLK_A53_CORE] = imx_clk_hw_mux2_flags("arm_a53_core", base + 0x9880, 24, 1, imx8mm_a53_core_sels, ARRAY_SIZE(imx8mm_a53_core_sels), CLK_IS_CRITICAL);
+
 	/* BUS */
 	hws[IMX8MM_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi",  imx8mm_main_axi_sels, base + 0x8800);
 	hws[IMX8MM_CLK_ENET_AXI] = imx8m_clk_hw_composite("enet_axi", imx8mm_enet_axi_sels, base + 0x8880);
@@ -605,11 +610,14 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MM_CLK_DRAM_ALT_ROOT] = imx_clk_hw_fixed_factor("dram_alt_root", "dram_alt", 1, 4);
 	hws[IMX8MM_CLK_DRAM_CORE] = imx_clk_hw_mux2_flags("dram_core_clk", base + 0x9800, 24, 1, imx8mm_dram_core_sels, ARRAY_SIZE(imx8mm_dram_core_sels), CLK_IS_CRITICAL);
 
-	hws[IMX8MM_CLK_ARM] = imx_clk_hw_cpu("arm", "arm_a53_div",
-					   hws[IMX8MM_CLK_A53_DIV]->clk,
-					   hws[IMX8MM_CLK_A53_SRC]->clk,
+	clk_hw_set_parent(hws[IMX8MM_CLK_A53_SRC], hws[IMX8MM_SYS_PLL1_800M]);
+	clk_hw_set_parent(hws[IMX8MM_CLK_A53_CORE], hws[IMX8MM_ARM_PLL_OUT]);
+
+	hws[IMX8MM_CLK_ARM] = imx_clk_hw_cpu("arm", "arm_a53_core",
+					   hws[IMX8MM_CLK_A53_CORE]->clk,
+					   hws[IMX8MM_CLK_A53_CORE]->clk,
 					   hws[IMX8MM_ARM_PLL_OUT]->clk,
-					   hws[IMX8MM_SYS_PLL1_800M]->clk);
+					   hws[IMX8MM_CLK_A53_DIV]->clk);
 
 	imx_check_clk_hws(hws, IMX8MM_CLK_END);
 
diff --git a/include/dt-bindings/clock/imx8mm-clock.h b/include/dt-bindings/clock/imx8mm-clock.h
index dbfee6579d6c..e63a5530aed7 100644
--- a/include/dt-bindings/clock/imx8mm-clock.h
+++ b/include/dt-bindings/clock/imx8mm-clock.h
@@ -272,6 +272,8 @@
 
 #define IMX8MM_CLK_CLKO2			250
 
-#define IMX8MM_CLK_END				251
+#define IMX8MM_CLK_A53_CORE			251
+
+#define IMX8MM_CLK_END				252
 
 #endif
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
