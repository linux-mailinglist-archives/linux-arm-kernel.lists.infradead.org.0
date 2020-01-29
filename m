Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AC914CE8B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 17:39:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OhJ7nmCQtCx/CarZ3OQbk4gBX/bnOoodkaiOMjf/qn4=; b=PtSozYvuwv6Lh5
	nrf2n8H0BHmubadO6QJbktIUe3zW1s+qhgDRJ+A3M7UtHEqVqkDZOCKSS5PvHyXuNhlFU66c6yUs/
	bpR9Fw2LlspV7+1OMA4AFC3lt0QRkvwYutfIYZBROIEQ8Ln0rIIQhrvnv94ZK8j+ki1+rH5xUKGF7
	rYUZBmLMLzViqodsDhGH+V7GuP4kuyfj1BUAndaT9/Nzp/e8q9pdEXD3Hk6M4pDpoU+14OcmfvikU
	4R/+1QRXetAc6MEYa25/j4YAtZHwsVJ90KSqDqVN7alwNS5e1lYkXvzm6c+fRL6uEIyLLu/ZXjFYd
	pJA0h+Pt57qvtXvgcWJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwqNK-00063O-QU; Wed, 29 Jan 2020 16:39:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwqMW-0004yH-LX; Wed, 29 Jan 2020 16:38:47 +0000
Received: from p508fd499.dip0.t-ipconnect.de ([80.143.212.153]
 helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iwqMO-0006rE-5x; Wed, 29 Jan 2020 17:38:36 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-clk@vger.kernel.org
Subject: [PATCH v3 1/3] clk: rockchip: convert rk3399 pll type to use
 readl_poll_timeout
Date: Wed, 29 Jan 2020 17:38:19 +0100
Message-Id: <20200129163821.1547295-1-heiko@sntech.de>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_083844_847481_3F4B6438 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: heiko@sntech.de, sboyd@kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, mturquette@baylibre.com,
 zhangqing@rock-chips.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Instead of open coding the polling of the lock status, use the
handy readl_poll_timeout for this. As the pll locking is normally
blazingly fast and we don't want to incur additional delays, we're
not doing any sleeps similar to for example the imx clk-pllv4
and define a very safe but still short timeout of 1ms.

Suggested-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
changes in v3:
- switch to readl_relaxed_poll_timeout to keep original behaviour
changes in v2:
- add patch to keep rk3399 wait_lock similar to the rest

 drivers/clk/rockchip/clk-pll.c | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index 198417d56300..6fd52895e7b6 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -585,19 +585,20 @@ static const struct clk_ops rockchip_rk3066_pll_clk_ops = {
 static int rockchip_rk3399_pll_wait_lock(struct rockchip_clk_pll *pll)
 {
 	u32 pllcon;
-	int delay = 24000000;
+	int ret;
 
-	/* poll check the lock status in rk3399 xPLLCON2 */
-	while (delay > 0) {
-		pllcon = readl_relaxed(pll->reg_base + RK3399_PLLCON(2));
-		if (pllcon & RK3399_PLLCON2_LOCK_STATUS)
-			return 0;
+	/*
+	 * Lock time typical 250, max 500 input clock cycles @24MHz
+	 * So define a very safe maximum of 1000us, meaning 24000 cycles.
+	 */
+	ret = readl_relaxed_poll_timeout(pll->reg_base + RK3399_PLLCON(2),
+					 pllcon,
+					 pllcon & RK3399_PLLCON2_LOCK_STATUS,
+					 0, 1000);
+	if (ret)
+		pr_err("%s: timeout waiting for pll to lock\n", __func__);
 
-		delay--;
-	}
-
-	pr_err("%s: timeout waiting for pll to lock\n", __func__);
-	return -ETIMEDOUT;
+	return ret;
 }
 
 static void rockchip_rk3399_pll_get_params(struct rockchip_clk_pll *pll,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
