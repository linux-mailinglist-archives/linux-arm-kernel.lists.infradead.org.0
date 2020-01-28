Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5417914B237
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 11:03:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c9LnzxsWFPvFq7yauO6v7dCgmyFN6k5VMWpP2TbAL+s=; b=LAy67uR2CZ8Q1f
	VNj9fgDQRlKQujyvGZKIi0yNauw7z8SQPitzmamZG4IsvK9cXViI0D6WVJPkCQF+0MMabaM7FB5tx
	roJBAedR2PEHsfDrTNqUZtHgcjAngqmc1SraAw5a4gnkjEoomdDfnYenc1MuKuZ/UNx5LQP7reP4q
	B0Cxi9a6QVlvyVt8ChhDRPIiaB/0PMcR1mNdg3AgDYg6A4vPxHVSD509jtBnoicioFXQ0Fjxq0+BH
	MK5N79wTroGTa7rl+TXlcBlYei2K+aEd63LkG3D+foTLwaR24bKMzvaebO1a3O0OSx8SzoDkV8Xi0
	zZjHIDksyxB8gfg4OLeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwNi5-0007lH-LD; Tue, 28 Jan 2020 10:03:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwNhK-0007E1-U6; Tue, 28 Jan 2020 10:02:21 +0000
Received: from p57b77a13.dip0.t-ipconnect.de ([87.183.122.19]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iwNhE-0008Lk-1T; Tue, 28 Jan 2020 11:02:12 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-clk@vger.kernel.org
Subject: [PATCH 1/3] clk: rockchip: convert rk3399 pll type to use
 readl_poll_timeout
Date: Tue, 28 Jan 2020 11:02:01 +0100
Message-Id: <20200128100204.1318450-1-heiko@sntech.de>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_020219_114284_6AD0D781 
X-CRM114-Status: GOOD (  13.88  )
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
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
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
 drivers/clk/rockchip/clk-pll.c | 21 ++++++++++-----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index 198417d56300..43c9fd0086a2 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -585,19 +585,18 @@ static const struct clk_ops rockchip_rk3066_pll_clk_ops = {
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
+	ret = readl_poll_timeout(pll->reg_base + RK3399_PLLCON(2), pllcon,
+				 pllcon & RK3399_PLLCON2_LOCK_STATUS, 0, 1000);
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
