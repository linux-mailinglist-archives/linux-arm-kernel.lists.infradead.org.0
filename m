Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FB61394C5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 16:27:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2H8KzGDGClG/0xsH9OWEDPwHjaGbcEm5F5yinFAxTSA=; b=Iah+z6asln21fn
	5ZkRMhv3X0VIs8b8eDQJSCAc7In2XPXlQLhU5/qg9RQumR/Se1+ak5QLHw9zUDvp9cYRtOsj/PlYd
	lAYAv2w70sZePE7VFTID6FHFwXyiKnaUwZuvsJ82KsKQEnZfbsL6DxDpmHJzBlKzFOPRk6nnzR0xi
	ueQIrixZc6BhP58athvEV7muyChGz87ou+qrDGz7B9n1eqBkuhA3j0z5M0qrFYn4SaHHvDS2+S6P4
	NbG6t4MMvL8L9q8VhIFd9c10y7Mf/DS3d9WcpzQ8Wjs0hixsbxde0OomoLrV05ntI3vei7u/1uqzV
	PQys2Vj8NEA7IK0sy1aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir1cc-0002XK-RO; Mon, 13 Jan 2020 15:27:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir1cU-0002Wj-OO; Mon, 13 Jan 2020 15:27:12 +0000
Received: from wf0253.dip.tu-dresden.de ([141.76.180.253] helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ir1cQ-0003Zh-SO; Mon, 13 Jan 2020 16:27:06 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-clk@vger.kernel.org
Subject: [PATCH] clk: rockchip: convert rk3036 pll type to use internal lock
 status
Date: Mon, 13 Jan 2020 16:26:56 +0100
Message-Id: <20200113152656.2313846-1-heiko@sntech.de>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_072710_963680_093DA0E4 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

The rk3036 pll type exposes its lock status in both its pllcon registers
as well as the General Register Files. To remove one dependency convert
it to the "internal" lock status, similar to how rk3399 handles it.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 drivers/clk/rockchip/clk-pll.c | 24 +++++++++++++++++++++---
 1 file changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index 198417d56300..37378ded0993 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -118,12 +118,30 @@ static int rockchip_pll_wait_lock(struct rockchip_clk_pll *pll)
 #define RK3036_PLLCON1_REFDIV_SHIFT		0
 #define RK3036_PLLCON1_POSTDIV2_MASK		0x7
 #define RK3036_PLLCON1_POSTDIV2_SHIFT		6
+#define RK3036_PLLCON1_LOCK_STATUS		BIT(10)
 #define RK3036_PLLCON1_DSMPD_MASK		0x1
 #define RK3036_PLLCON1_DSMPD_SHIFT		12
+#define RK3036_PLLCON1_PWRDOWN			BIT(13)
 #define RK3036_PLLCON2_FRAC_MASK		0xffffff
 #define RK3036_PLLCON2_FRAC_SHIFT		0
 
-#define RK3036_PLLCON1_PWRDOWN			(1 << 13)
+static int rockchip_rk3036_pll_wait_lock(struct rockchip_clk_pll *pll)
+{
+	u32 pllcon;
+	int delay = 24000000;
+
+	/* poll check the lock status in rk3399 xPLLCON2 */
+	while (delay > 0) {
+		pllcon = readl_relaxed(pll->reg_base + RK3036_PLLCON(1));
+		if (pllcon & RK3036_PLLCON1_LOCK_STATUS)
+			return 0;
+
+		delay--;
+	}
+
+	pr_err("%s: timeout waiting for pll to lock\n", __func__);
+	return -ETIMEDOUT;
+}
 
 static void rockchip_rk3036_pll_get_params(struct rockchip_clk_pll *pll,
 					struct rockchip_pll_rate_table *rate)
@@ -221,7 +239,7 @@ static int rockchip_rk3036_pll_set_params(struct rockchip_clk_pll *pll,
 	writel_relaxed(pllcon, pll->reg_base + RK3036_PLLCON(2));
 
 	/* wait for the pll to lock */
-	ret = rockchip_pll_wait_lock(pll);
+	ret = rockchip_rk3036_pll_wait_lock(pll);
 	if (ret) {
 		pr_warn("%s: pll update unsuccessful, trying to restore old params\n",
 			__func__);
@@ -260,7 +278,7 @@ static int rockchip_rk3036_pll_enable(struct clk_hw *hw)
 
 	writel(HIWORD_UPDATE(0, RK3036_PLLCON1_PWRDOWN, 0),
 	       pll->reg_base + RK3036_PLLCON(1));
-	rockchip_pll_wait_lock(pll);
+	rockchip_rk3036_pll_wait_lock(pll);
 
 	return 0;
 }
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
