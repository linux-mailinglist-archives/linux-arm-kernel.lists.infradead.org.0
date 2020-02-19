Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA20164127
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 11:02:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=48W8JVMa8o/BKxvqglNnnYDU39LLfco3DGx/qbU+t3k=; b=JUDD89bfvpFfjT
	g7q7PpO09CDIwRHC9Hxwzhgo9/O2CVCUohV97QLwBKTNr8YQogpqno6HZfguJ6E7W5Vcm/ATZ6++/
	bX/MPAVguSXiLg4kO444QOkPJlqCOsnUwo+oeorn07DPgXU7lKnRNP+5fKT01rRLOXg5z8zu4a2CF
	ig80hCvQ4MjBhPVYprIDBjZtVdja8yoLlB+YdWKKqsHdOsT715lrev1j+G2dmLLcOASRnLVtQXuqW
	goz9GEc4i7FL3e9RS8fPHs8Rd4W/aNbUsUvjnvvpIEFqJHQ69ltQxTVbWE8miRcuTXCakT8creKi2
	s9H6zC08DhyDvCWRm1UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4MBj-0005LR-7C; Wed, 19 Feb 2020 10:02:39 +0000
Received: from mail-eopbgr60084.outbound.protection.outlook.com ([40.107.6.84]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4M9V-0003RI-CN
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 10:00:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gtlFd/FcrFOm+R75J4krxxW6kHY4bCj+Ekw7JTOPoRJB2HUjWQRtnPidhN6DTXZWNMqXXg0iXe5moMU5Vo6KIi22V55ozfBpvhS6RhNVWmYoqWQ8pDjyBO2LH5FLh2H3mSLhBiIVkWC5l8EYFuAqOqrcKuxQ9GHrQNBIJPTuVDEqPCFUpGAvZ+pj/rfHiY+XR5X0OzMpWaIB8YafM3tr0NZA6T6Cwde1yNeCCQEbl20ZDeSkgLcA7VRKi4tLjB5iKqpe2N1ngQgf/jE17HsjFN1RznsNe6PXVEeEj4w8tS9xRvabaRBb1sd6SR2+SNKJak8e/X0Jqjn1PXxKAUHmtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X3Oy1dR0aG8YGDdnOFrIOVj6WElHxZlH/iIKD9NQQQI=;
 b=hsJxz0Py/6bFc+mf/pU5CguHmpiqQdvV7/2g469fkyfqmfmPnMH3ZttJf4oxsxmkvVmdusmi9Pav7fAkV84aydw3Gpf9rCLZ0ty7YjmWaVl53wTzZM05ifKyf24397G86RW0X3RnS3Mm9EFoOw65MC9otEaqfYSeMb+0+uUEeWIfa68CUXRpKkzKIdIjJF5yLQRFzsVCHtVYjMzEs138L5521gkwSbjc6re+jVa4+6fNn8xTZh8Ho2ytCK8iC/pEnvuR7Kzli+O4Q2a8gC/XuISKCtxLrdKLTWwpfrNqv0DyhrAdU8ta3sa01pVPiFR3WtPbc8pDXoipHyrudETtIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X3Oy1dR0aG8YGDdnOFrIOVj6WElHxZlH/iIKD9NQQQI=;
 b=gn2oQ9cJGP19prF0B5sXhGtoO+inScnQyrGtVlU99Kgj+UYglOg36GhIme/BbQ8Vg0W8EIciOjcuokr0VBPMcFO1YoZu+ALrARPlBnsvf3PFfWfTPImnDY178g2yuZtbxHv2pGkoA9Ec6xuphZ+GHuJD3Tykbce65bbp98dIm/U=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6770.eurprd04.prod.outlook.com (52.132.214.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.31; Wed, 19 Feb 2020 10:00:17 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 10:00:17 +0000
From: peng.fan@nxp.com
To: sboyd@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, abel.vesa@nxp.com, leonard.crestez@nxp.com
Subject: [PATCH v3 4/4] clk: imx: imx8mp: fix a53 cpu clock
Date: Wed, 19 Feb 2020 17:53:42 +0800
Message-Id: <1582106022-20926-9-git-send-email-peng.fan@nxp.com>
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
 15.20.2750.8 via Frontend Transport; Wed, 19 Feb 2020 10:00:13 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: f308db0a-d74f-490b-3b62-08d7b52285ea
X-MS-TrafficTypeDiagnostic: AM0PR04MB6770:|AM0PR04MB6770:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB6770815FD086C1B433A0028C88100@AM0PR04MB6770.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3173;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(366004)(396003)(376002)(136003)(189003)(199004)(66476007)(66946007)(4326008)(66556008)(6666004)(5660300002)(86362001)(69590400006)(16526019)(8936002)(2906002)(316002)(956004)(6486002)(36756003)(52116002)(26005)(6506007)(186003)(478600001)(81166006)(8676002)(9686003)(2616005)(6512007)(81156014)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6770;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5WnmOIZbeQ+hG3haYvRxAlTZZKJHYJVP3i3AFEom+yBzBkoA7gGztxopA/apTQjJaAkg001ZaecYnrs3kiBERYzgyhuxzSggT90pHCXXbQa4DwZY3Jsdsri7b/KzTFDidEIamf9b2LRHNolWr5xEsasPoS40RnLjLRAW0msPsoK4yhRbq+BQsFj6U4GKC9KlkF1qCVzVCJjILYcNFgN/WVdcnLJgiN+/b4MKqo2Aed+JrfPRY3VPiKcMihBSLyCk3hOrCDn6HEvLzYcFUcR7zuz3A3ojJQfswA8diNgAo66ar+Kk2lvyucnnkNCOA58ry2vF+RSpwo4Sixo5dZO8YSt6gQUbWrhBUzkRM7T4/Ig6IK1BN5CEuEk2cAlbGZcOrGxNbDgRLmgAectcDVMftD1KGxYS0scuipawgk9qkfXJ6FYiBYAxZrDnygNO8Kq7cUlfGKeWwxT7H+sVxqW9+abpNPtP+1eEsm/0v8jBg0TF9mXq8imtLvSaCTg+gWKRUBt6fkesz58M6wV9FeOMQdUVrOReiD8Ddy+VkTFKxugAbfovdNSOb84JySJXFmCr
X-MS-Exchange-AntiSpam-MessageData: BYrnBWBoAo169dcoJH7e0i8szaYkKrlxk+MiQBpo7H9PY5AeC4HoVPUwyHuUa/1RpnTDpv0xTQIjpctB5cfA2E+G1HWwlX0MGTeyk8slpTkNkE4xhqgSAYJiCJPybBI9mfiEIraEbiRYfpAUWI8fKA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f308db0a-d74f-490b-3b62-08d7b52285ea
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 10:00:17.8629 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EP9Nntow6ExhkMXPb4tWSGU38SwmbOFPd2dOwgJ3imgEj6x5aNcKPC1naxQbqLCPgqqx+3x6MwD2G9YtQ9Ra6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6770
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_020021_455229_D61D3D8D 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.84 listed in list.dnswl.org]
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
Mark arm_a53_core as critical clk

Reviewed-by: Jacky Bai <ping.bai@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mp.c             | 16 ++++++++++++----
 include/dt-bindings/clock/imx8mp-clock.h |  3 ++-
 2 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c
index a16af4fce044..d67ee36b84de 100644
--- a/drivers/clk/imx/clk-imx8mp.c
+++ b/drivers/clk/imx/clk-imx8mp.c
@@ -34,6 +34,8 @@ static const char * const imx8mp_a53_sels[] = {"osc_24m", "arm_pll_out", "sys_pl
 					       "sys_pll2_1000m", "sys_pll1_800m", "sys_pll1_400m",
 					       "audio_pll1_out", "sys_pll3_out", };
 
+static const char * const imx8mp_a53_core_sels[] = {"arm_a53_div", "arm_pll_out", };
+
 static const char * const imx8mp_m7_sels[] = {"osc_24m", "sys_pll2_200m", "sys_pll2_250m",
 					      "vpu_pll_out", "sys_pll1_800m", "audio_pll1_out",
 					      "video_pll1_out", "sys_pll3_out", };
@@ -554,6 +556,9 @@ static int imx8mp_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MP_CLK_HSIO_AXI_DIV] = imx_clk_hw_divider2("hsio_axi_div", "hsio_axi_cg", ccm_base + 0x8380, 0, 3);
 	hws[IMX8MP_CLK_MEDIA_ISP_DIV] = imx_clk_hw_divider2("media_isp_div", "media_isp_cg", ccm_base + 0x8400, 0, 3);
 
+	/* CORE SEL */
+	hws[IMX8MP_CLK_A53_CORE] = imx_clk_hw_mux2_flags("arm_a53_core", ccm_base + 0x9880, 24, 1, imx8mp_a53_core_sels, ARRAY_SIZE(imx8mp_a53_core_sels), CLK_IS_CRITICAL);
+
 	hws[IMX8MP_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi", imx8mp_main_axi_sels, ccm_base + 0x8800);
 	hws[IMX8MP_CLK_ENET_AXI] = imx8m_clk_hw_composite("enet_axi", imx8mp_enet_axi_sels, ccm_base + 0x8880);
 	hws[IMX8MP_CLK_NAND_USDHC_BUS] = imx8m_clk_hw_composite_critical("nand_usdhc_bus", imx8mp_nand_usdhc_sels, ccm_base + 0x8900);
@@ -724,11 +729,14 @@ static int imx8mp_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MP_CLK_VPU_ROOT] = imx_clk_hw_gate4("vpu_root_clk", "vpu_bus", ccm_base + 0x4630, 0);
 	hws[IMX8MP_CLK_AUDIO_ROOT] = imx_clk_hw_gate4("audio_root_clk", "ipg_root", ccm_base + 0x4650, 0);
 
-	hws[IMX8MP_CLK_ARM] = imx_clk_hw_cpu("arm", "arm_a53_div",
-					     hws[IMX8MP_CLK_A53_DIV]->clk,
-					     hws[IMX8MP_CLK_A53_SRC]->clk,
+	clk_hw_set_parent(hws[IMX8MP_CLK_A53_SRC], hws[IMX8MP_SYS_PLL1_800M]);
+	clk_hw_set_parent(hws[IMX8MP_CLK_A53_CORE], hws[IMX8MP_ARM_PLL_OUT]);
+
+	hws[IMX8MP_CLK_ARM] = imx_clk_hw_cpu("arm", "arm_a53_core",
+					     hws[IMX8MP_CLK_A53_CORE]->clk,
+					     hws[IMX8MP_CLK_A53_CORE]->clk,
 					     hws[IMX8MP_ARM_PLL_OUT]->clk,
-					     hws[IMX8MP_SYS_PLL1_800M]->clk);
+					     hws[IMX8MP_CLK_A53_DIV]->clk);
 
 	imx_check_clk_hws(hws, IMX8MP_CLK_END);
 
diff --git a/include/dt-bindings/clock/imx8mp-clock.h b/include/dt-bindings/clock/imx8mp-clock.h
index 2fab63186bca..c92d1f4117eb 100644
--- a/include/dt-bindings/clock/imx8mp-clock.h
+++ b/include/dt-bindings/clock/imx8mp-clock.h
@@ -294,7 +294,8 @@
 #define IMX8MP_CLK_DRAM_ALT_ROOT		285
 #define IMX8MP_CLK_DRAM_CORE			286
 #define IMX8MP_CLK_ARM				287
+#define IMX8MP_CLK_A53_CORE			288
 
-#define IMX8MP_CLK_END				288
+#define IMX8MP_CLK_END				289
 
 #endif
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
