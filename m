Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 038191641F8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 11:24:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5F3FZZ/IfZqUc2yKzn9lDpEHxK871xf4kOUalEvLDKQ=; b=oR1aZo5t88DEq5
	uQ+57a6sKglJpxeFDYcoWdl2CpXfkGEsWnqnN/bnvsrf6TcjVjfkdJIjzEtBp9ZXv6wjv8eToFIxF
	r+fdYGBOjf0hff6ZDBpcYjy4XCehHGXWahaAkE+gboLvdQXL0mOCl9ptkItlr5F604cmoUrDrY6Up
	p9oZkNtQvs14z540vSAcEOBGbVFVifwD4lkYy4codEzGedZRbeqNXac877X968m1Pak6GazRxLvqB
	FAoS85javvk0dywl7oe1mmzJ1at751OPkohWTeEi5x3n7kOC7hIRISznTLNzAcb/ZxP0u5oP09SDr
	O/DKY+MEpmtNVEM1BQFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4MWR-0005tP-Tj; Wed, 19 Feb 2020 10:24:03 +0000
Received: from mail-eopbgr150042.outbound.protection.outlook.com
 ([40.107.15.42] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4MVk-0005Nx-Qo
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 10:23:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fXvua4OwqV9RoRHy2vZNkOUvMfNLJWIvoYlohfigTU4CrItxetr2rH3uG4YO67frMtjwJD5z3CdUqU9vk1OvWfB+RQJcBIZMCG6Bw9sMWB6zxEilyqP9AcwMF9kt44dupcO7D2bI8JdVWYejh5AupLCAtUPA+7V/WXLBxIwOr3Gm1xE+P9/GMxAeTFA4otTETgDnIfYcmepqG9c3CniAx9CFp6izamS2agf2y9i7A94IDy6gZTSf/AkqBofQHymk1NTqWJUOnUn0t3UZFf2t8+AMuwT2YR0SGAl/acrxRLnbrIOIGHxFrPhI6WVaoruO52Wq7bs4Q4LF+yXDFQ8mbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f43JoIc+8YLyGY0c4NvlXlO4/YEjkBxXnXJBlMKE35E=;
 b=GtyS2VR7pVXLNQKSDnsf5H2OxL4tj07M5eQl9wj7/aqtORApdpNM9EK/8xhiQTtsj9ZMjeC2kscvasF5PrevAVfeFiEvIC+xRfnqd9s1T5sokJRfE6YuzfvzVw82CNqXPvSrmkpg2k6wrDp6vQyX5alaIJnskIPOave5PnnGlRyMEjqGEHIpJ4XmIxaetJuw4O5DW+rsTICwOu89vcO2GpGemMxgksKujmHPb9LGZDzwQOfFstdIFoFkq+zOM9Vw39Yy6EgPAAfz9hBlBy0xWdxzOLeGZr4Y1JGDJfxXBCdswCAbY/J9O/zlekVqHtOrPp6fOoeiqM90un58VyvsaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f43JoIc+8YLyGY0c4NvlXlO4/YEjkBxXnXJBlMKE35E=;
 b=bWOPgk1m+VU3w0rv4iK9uicUAsdZUAVsy7K/3dlh4VvdtmWmN7pfEB91sCgDuF+q/NONC6FGYZVrJK6iIDZkyBQ6TaAax3n0DlpTATEbkFrdcSQqGPq55GSxeUeWD21SalHEr8rKlD3NbEqKbmLnze/VJHkr74z1U/f6donEUZw=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4099.eurprd04.prod.outlook.com (52.134.93.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22; Wed, 19 Feb 2020 10:23:18 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 10:23:18 +0000
From: peng.fan@nxp.com
To: sboyd@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, abel.vesa@nxp.com, leonard.crestez@nxp.com
Subject: [PATCH RESEND v3 2/4] clk: imx: imx8mm: fix a53 cpu clock
Date: Wed, 19 Feb 2020 18:17:07 +0800
Message-Id: <1582107429-21123-3-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582107429-21123-1-git-send-email-peng.fan@nxp.com>
References: <1582107429-21123-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HKAPR04CA0014.apcprd04.prod.outlook.com
 (2603:1096:203:d0::24) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HKAPR04CA0014.apcprd04.prod.outlook.com (2603:1096:203:d0::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2729.23 via Frontend Transport; Wed, 19 Feb 2020 10:23:13 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 06a79a44-f7d2-42ae-02f3-08d7b525bc89
X-MS-TrafficTypeDiagnostic: AM0PR04MB4099:|AM0PR04MB4099:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB40994C52B6049A551764741088100@AM0PR04MB4099.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(376002)(396003)(136003)(39860400002)(199004)(189003)(5660300002)(2616005)(956004)(66946007)(6666004)(52116002)(26005)(6506007)(16526019)(186003)(66556008)(66476007)(69590400006)(316002)(6512007)(8936002)(81166006)(81156014)(2906002)(8676002)(4326008)(6486002)(36756003)(86362001)(9686003)(478600001)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4099;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UCMUAEG3OLb7AsJiD0EQoXyEnAaKXvpFlrriXqANFt30mHLdz1R2HAdlrjqYKmjKCx2ZxIcC0XLmZchOV2whhrng60inn5pJrI0O//Du8pBRQnr+h4AuPQ4RfoVWidF9z1ZOrp8GCSCUmscCtsoBmiXzB+GTMdfEk5As3K5o8ttyggIXKEbu0H0XzSXaIYuYn2vhl82CcRRZK22N73xbXIoYSjmiZX4FKe3bOsWFHaLaYTq6d2NIDgarB01OvRINIEftdpgUzpPpE6TDo1OwXuN9BhyTKfqTSZNUGoZF7V2EScPy8DoeNTYQhQ5JHpszmeOIEWL/pEaNwjLzG9/RZ8VilSOIAP+U0CcdTVgupWBjEnGD4NJYpeGPglchxk1Qz+LSTAUXQmwriGAVw2fcSfje2VVbUNGLEbiJNHyQ7YNP6nqHNPQW1fn3d0HNpThZewN1LileRsJRipjo1iTWrYQhLgXgo//Gc2/XlpVwOecbTf2MN/p6bLLntSs6kjdsdrrw0n67L+puzPMU8GSgYZlmpp04d6RedJmCvb0nJ5TCdzw5qK+1TsLa8XsnXVWp
X-MS-Exchange-AntiSpam-MessageData: u9XZIs+C0WTodMDgzVdKq3y3iHgrv7G+I3anBcN6RJb+XfRXNGTyTn5yWk77b+0fHa+o61tIRUE+3lVlW67EPRzIpw3EBnamyo1/63Yox/kWMp3MVMjF6K85pXLDaKReGGhqhQTl9fNJB4S3Z8bh0Q==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06a79a44-f7d2-42ae-02f3-08d7b525bc89
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 10:23:17.9306 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FpU95WZz34RnGuf2QeFqCFYDJnhDlyuc9jy/xBht1Fsf/Tn3nPDffdybyDbDbnEE7Q+sHUZxI0JpCGzWv7B9jg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4099
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_022320_940519_6D89B664 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.42 listed in list.dnswl.org]
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
