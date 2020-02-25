Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5F116BCC6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 09:55:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vM/p7JcZP4oDBSs/Gf8F/H/3h98i0UOhUTGRLtjN0+4=; b=Qbo
	Y1jaX94DpJpfmexxEd4JEUilnCCBT+rH55wih5tHN0S/NaG6UosQTuzO9BIrNxn+kcs3sKXYJGYXN
	pQgl7AfsWXy9TA0DNCmdeMvsn2eyxQuW++QO/YzUF1jLt6b1GhJj9RbmNDwNRRnvFBbVU67Utewf5
	t2E9EOXw3iG3y5CJackmGDvpw7a4zdLIrb3wTFy2yVGr3pus/ZmsvjD2KsrJZ6emDCUr0bSrnS2YQ
	yyMtO2Fdl/XjJFrWyiTFwFbbljtf445kwesH4F9EEPzgBJWet9cPtIiUAhj75Ie+bNavrhcowEhp3
	KUM4jP5hdLXmk4/K79xMoxSbVFMHQrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6W0H-0003px-89; Tue, 25 Feb 2020 08:55:45 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6W03-0003oL-TF
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 08:55:33 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 68C081B35C6;
 Tue, 25 Feb 2020 09:55:28 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D294D1B35AE;
 Tue, 25 Feb 2020 09:55:20 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 1FCDF402B3;
 Tue, 25 Feb 2020 16:55:12 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 leonard.crestez@nxp.com, abel.vesa@nxp.com, peng.fan@nxp.com,
 ping.bai@nxp.com, fugang.duan@nxp.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] clk: imx8mn: A53 core clock no need to be critical
Date: Tue, 25 Feb 2020 16:49:11 +0800
Message-Id: <1582620554-32689-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_005532_098058_E18F072A 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

'A53_CORE' is just a mux and no need to be critical, being critical
will cause its parent clock always ON which does NOT make sense,
to make sure CPU's hardware clock source NOT being disabled during
clock tree setup, need to move the 'A53_SRC'/'A53_CORE' reparent
operations to after critical clock 'ARM_CLK' setup finished.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/clk/imx/clk-imx8mn.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
index 83618af..0bc7070 100644
--- a/drivers/clk/imx/clk-imx8mn.c
+++ b/drivers/clk/imx/clk-imx8mn.c
@@ -428,7 +428,7 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MN_CLK_GPU_SHADER_DIV] = hws[IMX8MN_CLK_GPU_SHADER];
 
 	/* CORE SEL */
-	hws[IMX8MN_CLK_A53_CORE] = imx_clk_hw_mux2_flags("arm_a53_core", base + 0x9880, 24, 1, imx8mn_a53_core_sels, ARRAY_SIZE(imx8mn_a53_core_sels), CLK_IS_CRITICAL);
+	hws[IMX8MN_CLK_A53_CORE] = imx_clk_hw_mux2("arm_a53_core", base + 0x9880, 24, 1, imx8mn_a53_core_sels, ARRAY_SIZE(imx8mn_a53_core_sels));
 
 	/* BUS */
 	hws[IMX8MN_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi", imx8mn_main_axi_sels, base + 0x8800);
@@ -559,15 +559,15 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
 
 	hws[IMX8MN_CLK_DRAM_ALT_ROOT] = imx_clk_hw_fixed_factor("dram_alt_root", "dram_alt", 1, 4);
 
-	clk_hw_set_parent(hws[IMX8MN_CLK_A53_SRC], hws[IMX8MN_SYS_PLL1_800M]);
-	clk_hw_set_parent(hws[IMX8MN_CLK_A53_CORE], hws[IMX8MN_ARM_PLL_OUT]);
-
 	hws[IMX8MN_CLK_ARM] = imx_clk_hw_cpu("arm", "arm_a53_core",
 					   hws[IMX8MN_CLK_A53_CORE]->clk,
 					   hws[IMX8MN_CLK_A53_CORE]->clk,
 					   hws[IMX8MN_ARM_PLL_OUT]->clk,
 					   hws[IMX8MN_CLK_A53_DIV]->clk);
 
+	clk_hw_set_parent(hws[IMX8MN_CLK_A53_SRC], hws[IMX8MN_SYS_PLL1_800M]);
+	clk_hw_set_parent(hws[IMX8MN_CLK_A53_CORE], hws[IMX8MN_ARM_PLL_OUT]);
+
 	imx_check_clk_hws(hws, IMX8MN_CLK_END);
 
 	ret = of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_hw_data);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
