Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E9A2166FF4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 08:05:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2n/BZy6YxOGRvhSwb5mzty1eqTCli9SMzFKWBrfLy6U=; b=Wn0
	FfkrVl+gniBnYB36zasK2d64fMW9QhoeNeb9orEhLBGgZgpt0MEradugQcCPxBzRPaBkcvihuRUHE
	mOfXZvbOmNHbMUIlBdJJ37ZPvDWTl6hOyoRfmk/7F5WJZUHxJ1mF2zWTVHh/kSEQB/V+1MS/vooOj
	jo1FVis0qtYQw0QsIFgK6PdKGV7H+xF0VGXnTeh0osJGyi/LEnFeRI0sL4CUU8/5kxuO6F4ZYweCK
	4hCZTlrAcve7ENpho1mjnKpMb3+hkZRzcyJyMNOM4oCAhrB61ykvR32PPZms+g3LuJrHdWX/5rz0a
	cl/KfYO3lwU4Pvf3HQHrkDvFdt0u5vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j52Nf-0000vf-9p; Fri, 21 Feb 2020 07:05:47 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j52NW-0000vF-Uj
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 07:05:40 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 78435206BD2;
 Fri, 21 Feb 2020 08:05:37 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 68574206BCF;
 Fri, 21 Feb 2020 08:05:30 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id CD73A40246;
 Fri, 21 Feb 2020 15:05:21 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 abel.vesa@nxp.com, john@phrozen.org, heiko@sntech.de,
 jonas.gorski@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] clk: imx: clk-sscg-pll: Drop unnecessary initialization
Date: Fri, 21 Feb 2020 14:59:36 +0800
Message-Id: <1582268376-1672-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_230539_133181_45673B7C 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

No need to initialize 'ret' in many functions, as it will get
the return value from function call, so remove the initializtion
of 'ret'.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/clk/imx/clk-sscg-pll.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/imx/clk-sscg-pll.c b/drivers/clk/imx/clk-sscg-pll.c
index acd1b90..d4a2be1 100644
--- a/drivers/clk/imx/clk-sscg-pll.c
+++ b/drivers/clk/imx/clk-sscg-pll.c
@@ -195,10 +195,10 @@ static int clk_sscg_pll2_find_setup(struct clk_sscg_pll_setup *setup,
 					uint64_t ref)
 {
 
-	int ret = -EINVAL;
+	int ret;
 
 	if (ref < PLL_STAGE1_MIN_FREQ || ref > PLL_STAGE1_MAX_FREQ)
-		return ret;
+		return -EINVAL;
 
 	temp_setup->vco1 = ref;
 
@@ -254,10 +254,10 @@ static int clk_sscg_pll1_find_setup(struct clk_sscg_pll_setup *setup,
 					uint64_t ref)
 {
 
-	int ret = -EINVAL;
+	int ret;
 
 	if (ref < PLL_REF_MIN_FREQ || ref > PLL_REF_MAX_FREQ)
-		return ret;
+		return -EINVAL;
 
 	temp_setup->ref = ref;
 
@@ -428,7 +428,7 @@ static int __clk_sscg_pll_determine_rate(struct clk_hw *hw,
 	struct clk_sscg_pll_setup *setup = &pll->setup;
 	struct clk_hw *parent_hw = NULL;
 	int bypass_parent_index;
-	int ret = -EINVAL;
+	int ret;
 
 	req->max_rate = max;
 	req->min_rate = min;
@@ -467,10 +467,10 @@ static int clk_sscg_pll_determine_rate(struct clk_hw *hw,
 	uint64_t rate = req->rate;
 	uint64_t min = req->min_rate;
 	uint64_t max = req->max_rate;
-	int ret = -EINVAL;
+	int ret;
 
 	if (rate < PLL_OUT_MIN_FREQ || rate > PLL_OUT_MAX_FREQ)
-		return ret;
+		return -EINVAL;
 
 	ret = __clk_sscg_pll_determine_rate(hw, req, req->rate, req->rate,
 						rate, PLL_BYPASS2);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
