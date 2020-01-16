Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C59FB13E0E5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 17:46:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ew5wEeu3zzmKzRo72HItHgcO/Cl6Vwnz4uQRGZ1Sd/w=; b=qhLj/GXsLCdo4z
	ieTIZ80J8XX8LdY9O7nG6KMKGMHqaO1bKepBTiqYvg0pCRVZ98DiwQe4BZleVI4HZc5Xj32Jg8U2u
	lRenV9vl9QC1d38II4xDNNveBDxOGuqGTao2q9B3G42cGze8FD6ThfQ5qnZIjUBQR32aVeJIg27V1
	pm9/ix++05hMrfZfnSt3OrP1IZy8s0vHo+fcctC+9TSx5LvkPDGw9kLc8hZBLa9KhRyRLViLhhYTC
	LJ7ozMWsBfUxqi9egroTGqw0QWBH6abz6Ms5PTM7bQ/aLQ9QBPNAnZhJTVugbBBUHZT5JvcF3mRGl
	6YWUWaoaURz1KXifRPgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8Hf-0000rs-MM; Thu, 16 Jan 2020 16:46:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8Gp-0000QR-Tn
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 16:45:36 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3C2E3214AF;
 Thu, 16 Jan 2020 16:45:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579193123;
 bh=DiQHE5REgQamHOQjDKS+KWLMX0tIKuXjs1EZJ4ndLqM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qTnVAGqO06gMlbaovWi08KGkdGygqtQxDrl6Dgtjbj8OSKEluRS12BCzHlTANHTzZ
 qcZeMI4DdRWHk4s9SxTXv5/Gm6G0qZ+EcbKl5OomrgrlYz74BXf9YtPPXozLQ/VUJJ
 XWEKR0/FQ15DuiH2f9X7J+z1d/MoineNSJvQB0MQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 029/205] clk: imx: pll14xx: Fix quick switch of
 S/K parameter
Date: Thu, 16 Jan 2020 11:40:04 -0500
Message-Id: <20200116164300.6705-29-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116164300.6705-1-sashal@kernel.org>
References: <20200116164300.6705-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_084527_321652_246ABD00 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leonard Crestez <leonard.crestez@nxp.com>

[ Upstream commit 094234fcf46146339caaac8282aa15d225a5911a ]

The PLL14xx on imx8m can change the S and K parameter without requiring
a reset and relock of the whole PLL.

Fix clk_pll144xx_mp_change register reading and use it for pll1443 as
well since no reset+relock is required on K changes either.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
Fixes: 8646d4dcc7fb ("clk: imx: Add PLLs driver for imx8mm soc")
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/clk/imx/clk-pll14xx.c | 40 +++++++----------------------------
 1 file changed, 8 insertions(+), 32 deletions(-)

diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index d43b4a3c0de8..047f1d8fe323 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -112,43 +112,17 @@ static unsigned long clk_pll1443x_recalc_rate(struct clk_hw *hw,
 	return fvco;
 }
 
-static inline bool clk_pll1416x_mp_change(const struct imx_pll14xx_rate_table *rate,
+static inline bool clk_pll14xx_mp_change(const struct imx_pll14xx_rate_table *rate,
 					  u32 pll_div)
 {
 	u32 old_mdiv, old_pdiv;
 
-	old_mdiv = (pll_div >> MDIV_SHIFT) & MDIV_MASK;
-	old_pdiv = (pll_div >> PDIV_SHIFT) & PDIV_MASK;
+	old_mdiv = (pll_div & MDIV_MASK) >> MDIV_SHIFT;
+	old_pdiv = (pll_div & PDIV_MASK) >> PDIV_SHIFT;
 
 	return rate->mdiv != old_mdiv || rate->pdiv != old_pdiv;
 }
 
-static inline bool clk_pll1443x_mpk_change(const struct imx_pll14xx_rate_table *rate,
-					  u32 pll_div_ctl0, u32 pll_div_ctl1)
-{
-	u32 old_mdiv, old_pdiv, old_kdiv;
-
-	old_mdiv = (pll_div_ctl0 >> MDIV_SHIFT) & MDIV_MASK;
-	old_pdiv = (pll_div_ctl0 >> PDIV_SHIFT) & PDIV_MASK;
-	old_kdiv = (pll_div_ctl1 >> KDIV_SHIFT) & KDIV_MASK;
-
-	return rate->mdiv != old_mdiv || rate->pdiv != old_pdiv ||
-		rate->kdiv != old_kdiv;
-}
-
-static inline bool clk_pll1443x_mp_change(const struct imx_pll14xx_rate_table *rate,
-					  u32 pll_div_ctl0, u32 pll_div_ctl1)
-{
-	u32 old_mdiv, old_pdiv, old_kdiv;
-
-	old_mdiv = (pll_div_ctl0 >> MDIV_SHIFT) & MDIV_MASK;
-	old_pdiv = (pll_div_ctl0 >> PDIV_SHIFT) & PDIV_MASK;
-	old_kdiv = (pll_div_ctl1 >> KDIV_SHIFT) & KDIV_MASK;
-
-	return rate->mdiv != old_mdiv || rate->pdiv != old_pdiv ||
-		rate->kdiv != old_kdiv;
-}
-
 static int clk_pll14xx_wait_lock(struct clk_pll14xx *pll)
 {
 	u32 val;
@@ -174,7 +148,7 @@ static int clk_pll1416x_set_rate(struct clk_hw *hw, unsigned long drate,
 
 	tmp = readl_relaxed(pll->base + 4);
 
-	if (!clk_pll1416x_mp_change(rate, tmp)) {
+	if (!clk_pll14xx_mp_change(rate, tmp)) {
 		tmp &= ~(SDIV_MASK) << SDIV_SHIFT;
 		tmp |= rate->sdiv << SDIV_SHIFT;
 		writel_relaxed(tmp, pll->base + 4);
@@ -239,13 +213,15 @@ static int clk_pll1443x_set_rate(struct clk_hw *hw, unsigned long drate,
 	}
 
 	tmp = readl_relaxed(pll->base + 4);
-	div_val = readl_relaxed(pll->base + 8);
 
-	if (!clk_pll1443x_mpk_change(rate, tmp, div_val)) {
+	if (!clk_pll14xx_mp_change(rate, tmp)) {
 		tmp &= ~(SDIV_MASK) << SDIV_SHIFT;
 		tmp |= rate->sdiv << SDIV_SHIFT;
 		writel_relaxed(tmp, pll->base + 4);
 
+		tmp = rate->kdiv << KDIV_SHIFT;
+		writel_relaxed(tmp, pll->base + 8);
+
 		return 0;
 	}
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
