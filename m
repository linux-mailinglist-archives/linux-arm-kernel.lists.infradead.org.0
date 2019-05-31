Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5CD309B7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 09:55:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CZ0c2o8yqFupY7wjjYzqh5/W50jDWlifMe6GRdRvEt4=; b=oVZ
	Fz6lUO8RC8vvyAAb1jSbeQpaWs3OZmcieEYOeYu517Qqgkbb/ClT7XVLl1I2jvDrhYj02Mb0KictS
	ytTrdmONmIRREEY3I9ckn0U7QrJNotZREkLTKdW+fYBLvGjXkxO7OYVOwNx9YJKSgRsdHhadiJejU
	Gg1Eg7onNbyqzM5CDag5fWHBwF/3lCNFteeniAxKKPF3SBby5Xekr6HFWEQ5lFud4o1OELA0AvtvC
	Pd8iTEyOPLMZahDX65Kl5wnDcRIxxD69Kv5VcQrILvQ0hRURb73dKtbvwJ5HlxlG24p9S2t4VhHVq
	h6A5tVjPPPPySHL73MEIgUtECaOJdnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWcNU-0002mw-JG; Fri, 31 May 2019 07:55:04 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWcNN-0002mU-1x
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 07:54:58 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3E67A200797;
 Fri, 31 May 2019 09:54:55 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id ECBCC2007A8;
 Fri, 31 May 2019 09:54:49 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 310E040307;
 Fri, 31 May 2019 15:54:43 +0800 (SGT)
From: peng.fan@nxp.com
To: mturquette@baylibre.com, sboyd@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de
Subject: [PATCH RESEND] clk: imx: imx8mm: correct audio_pll2_clk to
 audio_pll2_out
Date: Fri, 31 May 2019 15:56:38 +0800
Message-Id: <20190531075638.7892-1-peng.fan@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_005457_236652_942B93F6 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Peng Fan <peng.fan@nxp.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

There is no audio_pll2_clk registered, it should be audio_pll2_out.

Cc: <stable@vger.kernel.org>
Fixes: ba5625c3e27 ("clk: imx: Add clock driver support for imx8mm")
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mm.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 1ef8438e3d6d..3a889846a05c 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -325,7 +325,7 @@ static const char *imx8mm_dsi_dbi_sels[] = {"osc_24m", "sys_pll1_266m", "sys_pll
 					    "sys_pll2_1000m", "sys_pll3_out", "audio_pll2_out", "video_pll1_out", };
 
 static const char *imx8mm_usdhc3_sels[] = {"osc_24m", "sys_pll1_400m", "sys_pll1_800m", "sys_pll2_500m",
-					   "sys_pll3_out", "sys_pll1_266m", "audio_pll2_clk", "sys_pll1_100m", };
+					   "sys_pll3_out", "sys_pll1_266m", "audio_pll2_out", "sys_pll1_100m", };
 
 static const char *imx8mm_csi1_core_sels[] = {"osc_24m", "sys_pll1_266m", "sys_pll2_250m", "sys_pll1_800m",
 					      "sys_pll2_1000m", "sys_pll3_out", "audio_pll2_out", "video_pll1_out", };
@@ -361,11 +361,11 @@ static const char *imx8mm_pdm_sels[] = {"osc_24m", "sys_pll2_100m", "audio_pll1_
 					"sys_pll2_1000m", "sys_pll3_out", "clk_ext3", "audio_pll2_out", };
 
 static const char *imx8mm_vpu_h1_sels[] = {"osc_24m", "vpu_pll_out", "sys_pll1_800m", "sys_pll2_1000m",
-					   "audio_pll2_clk", "sys_pll2_125m", "sys_pll3_clk", "audio_pll1_out", };
+					   "audio_pll2_out", "sys_pll2_125m", "sys_pll3_clk", "audio_pll1_out", };
 
 static const char *imx8mm_dram_core_sels[] = {"dram_pll_out", "dram_alt_root", };
 
-static const char *imx8mm_clko1_sels[] = {"osc_24m", "sys_pll1_800m", "osc_27m", "sys_pll1_200m", "audio_pll2_clk",
+static const char *imx8mm_clko1_sels[] = {"osc_24m", "sys_pll1_800m", "osc_27m", "sys_pll1_200m", "audio_pll2_out",
 					 "vpu_pll", "sys_pll1_80m", };
 
 static struct clk *clks[IMX8MM_CLK_END];
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
