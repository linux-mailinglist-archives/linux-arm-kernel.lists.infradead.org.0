Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 209E516BB5D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 08:56:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tLwSVJN9GOItZykIWtLdEElxeZ0keJ3gY4da8r+3n8M=; b=cH3RABFDOK4Zcl
	tjjt5PmpSyL4p7pom27OEGf5MAEFLViBtC9KXRDJcvPBgUflRuq1JK3m4wjJhAsgjoED5qFfbkhuJ
	UuxbaxXwdHqJDchwRkUYShcAh1m8wXdFRtmaT3gk2GErLKul+DVEuCvBFTRViilO4UyEyiwyNq1TD
	+SlUk3Nv/mLSejSZh69z3+QbbzadJY2BZl+lvSYD9ESRmmJKK5O9Nu9zfSa4HA3rzpSXL8hpoCxJW
	gQsHi3+puUT44wAMsCyiHc1JsLP0zc4wVDVT6dfHY8ceWdTs/wCxFnotRrDiNkXDrW9/1+iaOn6gV
	dOB3hYLyo4MKayJiEm0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6V4m-0000NK-0t; Tue, 25 Feb 2020 07:56:20 +0000
Received: from mail-eopbgr40082.outbound.protection.outlook.com ([40.107.4.82]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6V4Y-0000MW-PF
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 07:56:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cm93Q91+icCyw0wCoFeuM5VDeAuXfZFBIk4Go6VakfRvpB6UFDKF0l2B2L8LUVK1WZjjtEd2TO4O1Fusmltr+GEtq9FaGA4zTyh+4JS3qKvRMVAc36jInKEj5n/uYjMLTK7kYqALTQzHZ/ktZda1EaPS53fNZhNM0W/8fe6fqTPbt3rnkW2sBXYlWqk/OBFT6be3Cf7/crsZbQ4HjJQ/aDgtjtyu1j1QuuPQZo09joXAGN2wB/oamxMhdJBEWKaxrZpbmj5HB+Xsb1EjTR0DFZ0iso8KtM2OXuSgWu6T0HjVlZ6sUP0nJZMoydB/I++rVBCNlbNZqGHr8kVznlAUOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/E+jOEBhHp/WCddiDK0qDv0wzWFVbbaY7ZkBzk74XCM=;
 b=dm6SHIr994pIm79rWkbp/WcPvVP7oJziX0nV+tAIQbowK+Fcq6gn/VZeaR0R+Bh5BWsvgCb3CwYWFq6T8dGK6RIDtRXjf5hYRwk79KkfaKbqEM3kimZi+jrTTGBJ/a0SyE5N+33YWLUTRkS7M/o1uuYTVzZqtEUY2yYAyreuU2rv+iwlf2SwJ/+ci4YYntRx50pWP65tFpuUBo8WXFQdVJMGRTu8zh6ekZ+L4yXwJWWpw7WONgIt+5hcCkJ8LBO988xzntyVolzbIWbSbp3/eienyGoVGNX2UiSp7SzwvkLu6487rBCsijFrFjzWyDW2w3H4P/PsXP9U0yiFZrwWcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/E+jOEBhHp/WCddiDK0qDv0wzWFVbbaY7ZkBzk74XCM=;
 b=gT/0N5dyoDLL3M8OsJ6EDIUNzYuCoctRkdVfLbsZ3wT7/5stRefVWWlmRiUSDR3DqdeoeLGtKxdnIxJgSI9QqWLyxTraOQ3sYZew+RX6QfgDuBCAZqadVCENxUDXZy4UELEIFo/RlVGS2xYkDhW4OIgswe9HieQqoaKyQf1ld0s=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4562.eurprd04.prod.outlook.com (52.135.148.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Tue, 25 Feb 2020 07:56:02 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2750.021; Tue, 25 Feb 2020
 07:56:02 +0000
From: peng.fan@nxp.com
To: sboyd@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, abel.vesa@nxp.com
Subject: [PATCH 1/3] clk: imx: imx8mp: fix pll mux bit
Date: Tue, 25 Feb 2020 15:49:17 +0800
Message-Id: <1582616959-933-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: HK0PR01CA0056.apcprd01.prod.exchangelabs.com
 (2603:1096:203:a6::20) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 HK0PR01CA0056.apcprd01.prod.exchangelabs.com (2603:1096:203:a6::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2750.18 via Frontend
 Transport; Tue, 25 Feb 2020 07:55:58 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 2cb40bde-9043-4b61-a0e0-08d7b9c82874
X-MS-TrafficTypeDiagnostic: AM0PR04MB4562:|AM0PR04MB4562:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB4562F375A820B0896C4E464C88ED0@AM0PR04MB4562.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3631;
X-Forefront-PRVS: 0324C2C0E2
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(346002)(366004)(136003)(39860400002)(199004)(189003)(52116002)(2906002)(6666004)(86362001)(36756003)(478600001)(81156014)(5660300002)(8676002)(4326008)(8936002)(69590400006)(81166006)(9686003)(66556008)(316002)(66476007)(6486002)(186003)(2616005)(956004)(6506007)(16526019)(66946007)(6512007)(26005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4562;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BS+jdY5PG4qKoQwIyf8eoKVbMzteeVjs1Jdr/zXbZag4XgTgUN7d7Pmx3zcTUR2Bt1mWjOdf0zU7rHJYXZfuQRVlO2mUlCYFhQaaSFz5lSGhfa+OA2BoZDZS2zCw3scLcE2XisUB9QDD0tQHQONn4oL4xpK9PRKJpN9wyhTV90tHrmxPODyc68IKlPmoUfuHlREPlS0m6EC4ldpP81KGK2j4IFm+iM9sGa8fXknWZkR+PWhDnVYLdKGCtcQkHu4t/nae4TiZPyfXFuHQQvxIbQmjdECyE5pfXcnbkZVFCNXmmF92h8hUGlpr2VW+8dCttt7Ghv6cCuB7dCtDlHuUre2+BrORZe4XfLqdOxgei1xpoVsvSQGdnV3SYfrVs+gJMv3rnG4aOUgbVwMZXfVSPRE8EWR3daEQmcpbcB+wUuqmrr9A0vQeebucEYvJ6EHSp/uOCe2enJ49reN4SQeKcumRWrleta08BHNIB21Ug4MzOyXX8ac9W/NyI7ys8ekrhQCEATQy9D5aUnDJpYylKCkMuRLRlP1g8DGZ0MLj90v5D2Xh3mu5THx91ROPVktF
X-MS-Exchange-AntiSpam-MessageData: uoQEcAFgZoicAMOt0E0fJ8YpOkM8/HI3byH2zNYO8RygGaccHrw+fIu53bvNuA4nXiiCXrMJ0heRYAI0FeLkxliRapB3M8nIBwn6F576BJPR4Pg32iPTKH91rIIEgrpfWVrwjwCkvSLoQRydmrxt/A==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cb40bde-9043-4b61-a0e0-08d7b9c82874
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2020 07:56:02.0883 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J7TdrpcNaQKswMT7UE1WJaE9ppsv7AC/JqGVFMX0SfP5EJ3hWZSLpkyTYgE3pDc3z/hvQ2NB1CAtAhVV4YoVTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4562
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_235606_935587_C51119B4 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Anson.Huang@nxp.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, leonard.crestez@nxp.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Same to i.MX8MN/i.MX8MM, pll BYPASS bit should be kept inside pll
driver for glitchless freq setting following spec. If exposing the
bit, that means pll driver and clk driver has two paths to touch
this bit, which is wrong.

So use EXT_BYPASS bit here.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mp.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c
index 7d558d6334eb..a85039cfdbf1 100644
--- a/drivers/clk/imx/clk-imx8mp.c
+++ b/drivers/clk/imx/clk-imx8mp.c
@@ -486,16 +486,16 @@ static int imx8mp_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MP_SYS_PLL2] = imx_clk_hw_pll14xx("sys_pll2", "sys_pll2_ref_sel", anatop_base + 0x104, &imx_1416x_pll);
 	hws[IMX8MP_SYS_PLL3] = imx_clk_hw_pll14xx("sys_pll3", "sys_pll3_ref_sel", anatop_base + 0x114, &imx_1416x_pll);
 
-	hws[IMX8MP_AUDIO_PLL1_BYPASS] = imx_clk_hw_mux_flags("audio_pll1_bypass", anatop_base, 4, 1, audio_pll1_bypass_sels, ARRAY_SIZE(audio_pll1_bypass_sels), CLK_SET_RATE_PARENT);
-	hws[IMX8MP_AUDIO_PLL2_BYPASS] = imx_clk_hw_mux_flags("audio_pll2_bypass", anatop_base + 0x14, 4, 1, audio_pll2_bypass_sels, ARRAY_SIZE(audio_pll2_bypass_sels), CLK_SET_RATE_PARENT);
-	hws[IMX8MP_VIDEO_PLL1_BYPASS] = imx_clk_hw_mux_flags("video_pll1_bypass", anatop_base + 0x28, 4, 1, video_pll1_bypass_sels, ARRAY_SIZE(video_pll1_bypass_sels), CLK_SET_RATE_PARENT);
-	hws[IMX8MP_DRAM_PLL_BYPASS] = imx_clk_hw_mux_flags("dram_pll_bypass", anatop_base + 0x50, 4, 1, dram_pll_bypass_sels, ARRAY_SIZE(dram_pll_bypass_sels), CLK_SET_RATE_PARENT);
-	hws[IMX8MP_GPU_PLL_BYPASS] = imx_clk_hw_mux_flags("gpu_pll_bypass", anatop_base + 0x64, 4, 1, gpu_pll_bypass_sels, ARRAY_SIZE(gpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
-	hws[IMX8MP_VPU_PLL_BYPASS] = imx_clk_hw_mux_flags("vpu_pll_bypass", anatop_base + 0x74, 4, 1, vpu_pll_bypass_sels, ARRAY_SIZE(vpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
-	hws[IMX8MP_ARM_PLL_BYPASS] = imx_clk_hw_mux_flags("arm_pll_bypass", anatop_base + 0x84, 4, 1, arm_pll_bypass_sels, ARRAY_SIZE(arm_pll_bypass_sels), CLK_SET_RATE_PARENT);
-	hws[IMX8MP_SYS_PLL1_BYPASS] = imx_clk_hw_mux_flags("sys_pll1_bypass", anatop_base + 0x94, 4, 1, sys_pll1_bypass_sels, ARRAY_SIZE(sys_pll1_bypass_sels), CLK_SET_RATE_PARENT);
-	hws[IMX8MP_SYS_PLL2_BYPASS] = imx_clk_hw_mux_flags("sys_pll2_bypass", anatop_base + 0x104, 4, 1, sys_pll2_bypass_sels, ARRAY_SIZE(sys_pll2_bypass_sels), CLK_SET_RATE_PARENT);
-	hws[IMX8MP_SYS_PLL3_BYPASS] = imx_clk_hw_mux_flags("sys_pll3_bypass", anatop_base + 0x114, 4, 1, sys_pll3_bypass_sels, ARRAY_SIZE(sys_pll3_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX8MP_AUDIO_PLL1_BYPASS] = imx_clk_hw_mux_flags("audio_pll1_bypass", anatop_base, 16, 1, audio_pll1_bypass_sels, ARRAY_SIZE(audio_pll1_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX8MP_AUDIO_PLL2_BYPASS] = imx_clk_hw_mux_flags("audio_pll2_bypass", anatop_base + 0x14, 16, 1, audio_pll2_bypass_sels, ARRAY_SIZE(audio_pll2_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX8MP_VIDEO_PLL1_BYPASS] = imx_clk_hw_mux_flags("video_pll1_bypass", anatop_base + 0x28, 16, 1, video_pll1_bypass_sels, ARRAY_SIZE(video_pll1_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX8MP_DRAM_PLL_BYPASS] = imx_clk_hw_mux_flags("dram_pll_bypass", anatop_base + 0x50, 16, 1, dram_pll_bypass_sels, ARRAY_SIZE(dram_pll_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX8MP_GPU_PLL_BYPASS] = imx_clk_hw_mux_flags("gpu_pll_bypass", anatop_base + 0x64, 28, 1, gpu_pll_bypass_sels, ARRAY_SIZE(gpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX8MP_VPU_PLL_BYPASS] = imx_clk_hw_mux_flags("vpu_pll_bypass", anatop_base + 0x74, 28, 1, vpu_pll_bypass_sels, ARRAY_SIZE(vpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX8MP_ARM_PLL_BYPASS] = imx_clk_hw_mux_flags("arm_pll_bypass", anatop_base + 0x84, 28, 1, arm_pll_bypass_sels, ARRAY_SIZE(arm_pll_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX8MP_SYS_PLL1_BYPASS] = imx_clk_hw_mux_flags("sys_pll1_bypass", anatop_base + 0x94, 28, 1, sys_pll1_bypass_sels, ARRAY_SIZE(sys_pll1_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX8MP_SYS_PLL2_BYPASS] = imx_clk_hw_mux_flags("sys_pll2_bypass", anatop_base + 0x104, 28, 1, sys_pll2_bypass_sels, ARRAY_SIZE(sys_pll2_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX8MP_SYS_PLL3_BYPASS] = imx_clk_hw_mux_flags("sys_pll3_bypass", anatop_base + 0x114, 28, 1, sys_pll3_bypass_sels, ARRAY_SIZE(sys_pll3_bypass_sels), CLK_SET_RATE_PARENT);
 
 	hws[IMX8MP_AUDIO_PLL1_OUT] = imx_clk_hw_gate("audio_pll1_out", "audio_pll1_bypass", anatop_base, 13);
 	hws[IMX8MP_AUDIO_PLL2_OUT] = imx_clk_hw_gate("audio_pll2_out", "audio_pll2_bypass", anatop_base + 0x14, 13);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
