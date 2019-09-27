Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB984BFD6C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 05:02:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SR55/esv4TRDUEBzWUEe4LtvNoxqsojHRPRrVIyMstw=; b=C/EnlW0rLpAMx4A4jkUlkzZDM+
	Ps1jfc5Tc18dBkoH6itZ6P6ZROkjADE/QZXUYH8VYiItakcRbbNfgZjydp40XR0B8F5hkmtijV3Tw
	xq4VfAizBl43lXCrZ57NnGbqtdeuB3o7YLC5FG5IEmpnQOJaN+2GpPAFdnTv0aNbKoTTr98bwtstv
	8nt8TXsff+yo9q7BBwPx20a5bH0HFC/HpW/tI34TdXx1xKTIJCr4PXhQljf7PEVHZyIAXqGtNtwBG
	IjGfKYm07qD4YCuPuVMgAne7rh9c78mBeh814xS4aQ/ciGk2t6k6QMcXNJS5Ve35kwKV+2RVKGLId
	JLOIFCJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDgWi-0000Zf-0V; Fri, 27 Sep 2019 03:02:36 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDgVU-00082g-02; Fri, 27 Sep 2019 03:01:22 +0000
Received: from localhost (unknown [192.168.167.138])
 by lucky1.263xmail.com (Postfix) with ESMTP id 876FA5CF59;
 Fri, 27 Sep 2019 11:01:17 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P20920T140646948005632S1569553274502940_; 
 Fri, 27 Sep 2019 11:01:16 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <b623b4ff587c8a9c03bc708a4945eab9>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Elaine Zhang <zhangqing@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v3 5/5] clk: rockchip: support pll setting by auto
Date: Fri, 27 Sep 2019 11:01:24 +0800
Message-Id: <1569553284-3232-1-git-send-email-zhangqing@rock-chips.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1569553244-3165-1-git-send-email-zhangqing@rock-chips.com>
References: <1569553244-3165-1-git-send-email-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_200120_390507_37A6BF36 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.132 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.132 listed in wl.mailspike.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: huangtao@rock-chips.com, xxx@rock-chips.com, xf@rock-chips.com,
 sboyd@kernel.org, mturquette@baylibre.com,
 Elaine Zhang <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If setting freq is not support in rockchip_pll_rate_table,
It can calculate and set pll params by auto.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 drivers/clk/rockchip/clk-pll.c | 215 ++++++++++++++++++++++++++++++++++++++---
 1 file changed, 200 insertions(+), 15 deletions(-)

diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index 390e9473807a..ac8c62c531f0 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -14,6 +14,7 @@
 #include <linux/clk-provider.h>
 #include <linux/regmap.h>
 #include <linux/clk.h>
+#include <linux/gcd.h>
 #include "clk.h"
 
 #define PLL_MODE_MASK		0x3
@@ -46,6 +47,198 @@ struct rockchip_clk_pll {
 #define to_rockchip_clk_pll_nb(nb) \
 			container_of(nb, struct rockchip_clk_pll, clk_nb)
 
+#define MHZ			(1000UL * 1000UL)
+#define KHZ			(1000UL)
+
+/* CLK_PLL_TYPE_RK3066_AUTO type ops */
+#define PLL_FREF_MIN		(269 * KHZ)
+#define PLL_FREF_MAX		(2200 * MHZ)
+
+#define PLL_FVCO_MIN		(440 * MHZ)
+#define PLL_FVCO_MAX		(2200 * MHZ)
+
+#define PLL_FOUT_MIN		(27500 * KHZ)
+#define PLL_FOUT_MAX		(2200 * MHZ)
+
+#define PLL_NF_MAX		(4096)
+#define PLL_NR_MAX		(64)
+#define PLL_NO_MAX		(16)
+
+/* CLK_PLL_TYPE_RK3036/3366/3399_AUTO type ops */
+#define MIN_FOUTVCO_FREQ	(800 * MHZ)
+#define MAX_FOUTVCO_FREQ	(2000 * MHZ)
+
+static struct rockchip_pll_rate_table auto_table;
+
+static struct rockchip_pll_rate_table *rk_pll_rate_table_get(void)
+{
+	return &auto_table;
+}
+
+static int rockchip_pll_clk_set_postdiv(unsigned long fout_hz,
+					u32 *postdiv1,
+					u32 *postdiv2,
+					u32 *foutvco)
+{
+	unsigned long freq;
+
+	if (fout_hz < MIN_FOUTVCO_FREQ) {
+		for (*postdiv1 = 1; *postdiv1 <= 7; (*postdiv1)++) {
+			for (*postdiv2 = 1; *postdiv2 <= 7; (*postdiv2)++) {
+				freq = fout_hz * (*postdiv1) * (*postdiv2);
+				if (freq >= MIN_FOUTVCO_FREQ &&
+				    freq <= MAX_FOUTVCO_FREQ) {
+					*foutvco = freq;
+					return 0;
+				}
+			}
+		}
+		pr_err("CANNOT FIND postdiv1/2 to make fout in range from 800M to 2000M,fout = %lu\n",
+		       fout_hz);
+	} else {
+		*postdiv1 = 1;
+		*postdiv2 = 1;
+	}
+	return 0;
+}
+
+static struct rockchip_pll_rate_table *
+rockchip_pll_clk_set_by_auto(struct rockchip_clk_pll *pll,
+			     unsigned long fin_hz,
+			     unsigned long fout_hz)
+{
+	struct rockchip_pll_rate_table *rate_table = rk_pll_rate_table_get();
+	/* FIXME set postdiv1/2 always 1*/
+	u32 foutvco = fout_hz;
+	u64 fin_64, frac_64;
+	u32 f_frac, postdiv1, postdiv2;
+	unsigned long clk_gcd = 0;
+
+	if (fin_hz == 0 || fout_hz == 0 || fout_hz == fin_hz)
+		return NULL;
+
+	rockchip_pll_clk_set_postdiv(fout_hz, &postdiv1, &postdiv2, &foutvco);
+	rate_table->postdiv1 = postdiv1;
+	rate_table->postdiv2 = postdiv2;
+	rate_table->dsmpd = 1;
+
+	if (fin_hz / MHZ * MHZ == fin_hz && fout_hz / MHZ * MHZ == fout_hz) {
+		fin_hz /= MHZ;
+		foutvco /= MHZ;
+		clk_gcd = gcd(fin_hz, foutvco);
+		rate_table->refdiv = fin_hz / clk_gcd;
+		rate_table->fbdiv = foutvco / clk_gcd;
+
+		rate_table->frac = 0;
+
+		pr_debug("fin = %lu, fout = %lu, clk_gcd = %lu, refdiv = %u, fbdiv = %u, postdiv1 = %u, postdiv2 = %u, frac = %u\n",
+			 fin_hz, fout_hz, clk_gcd, rate_table->refdiv,
+			 rate_table->fbdiv, rate_table->postdiv1,
+			 rate_table->postdiv2, rate_table->frac);
+	} else {
+		pr_debug("frac div running, fin_hz = %lu, fout_hz = %lu, fin_INT_mhz = %lu, fout_INT_mhz = %lu\n",
+			 fin_hz, fout_hz,
+			 fin_hz / MHZ * MHZ,
+			 fout_hz / MHZ * MHZ);
+		pr_debug("frac get postdiv1 = %u,  postdiv2 = %u, foutvco = %u\n",
+			 rate_table->postdiv1, rate_table->postdiv2, foutvco);
+		clk_gcd = gcd(fin_hz / MHZ, foutvco / MHZ);
+		rate_table->refdiv = fin_hz / MHZ / clk_gcd;
+		rate_table->fbdiv = foutvco / MHZ / clk_gcd;
+		pr_debug("frac get refdiv = %u,  fbdiv = %u\n",
+			 rate_table->refdiv, rate_table->fbdiv);
+
+		rate_table->frac = 0;
+
+		f_frac = (foutvco % MHZ);
+		fin_64 = fin_hz;
+		do_div(fin_64, (u64)rate_table->refdiv);
+		frac_64 = (u64)f_frac << 24;
+		do_div(frac_64, fin_64);
+		rate_table->frac = (u32)frac_64;
+		if (rate_table->frac > 0)
+			rate_table->dsmpd = 0;
+		pr_debug("frac = %x\n", rate_table->frac);
+	}
+	return rate_table;
+}
+
+static struct rockchip_pll_rate_table *
+rockchip_rk3066_pll_clk_set_by_auto(struct rockchip_clk_pll *pll,
+				    unsigned long fin_hz,
+				    unsigned long fout_hz)
+{
+	struct rockchip_pll_rate_table *rate_table = rk_pll_rate_table_get();
+	u32 nr, nf, no, nonr;
+	u32 nr_out, nf_out, no_out;
+	u32 n;
+	u32 numerator, denominator;
+	u64 fref, fvco, fout;
+	unsigned long clk_gcd = 0;
+
+	nr_out = PLL_NR_MAX + 1;
+	no_out = 0;
+	nf_out = 0;
+
+	if (fin_hz == 0 || fout_hz == 0 || fout_hz == fin_hz)
+		return NULL;
+
+	clk_gcd = gcd(fin_hz, fout_hz);
+
+	numerator = fout_hz / clk_gcd;
+	denominator = fin_hz / clk_gcd;
+
+	for (n = 1;; n++) {
+		nf = numerator * n;
+		nonr = denominator * n;
+		if (nf > PLL_NF_MAX || nonr > (PLL_NO_MAX * PLL_NR_MAX))
+			break;
+
+		for (no = 1; no <= PLL_NO_MAX; no++) {
+			if (!(no == 1 || !(no % 2)))
+				continue;
+
+			if (nonr % no)
+				continue;
+			nr = nonr / no;
+
+			if (nr > PLL_NR_MAX)
+				continue;
+
+			fref = fin_hz / nr;
+			if (fref < PLL_FREF_MIN || fref > PLL_FREF_MAX)
+				continue;
+
+			fvco = fref * nf;
+			if (fvco < PLL_FVCO_MIN || fvco > PLL_FVCO_MAX)
+				continue;
+
+			fout = fvco / no;
+			if (fout < PLL_FOUT_MIN || fout > PLL_FOUT_MAX)
+				continue;
+
+			/* select the best from all available PLL settings */
+			if ((no > no_out) ||
+			    ((no == no_out) && (nr < nr_out))) {
+				nr_out = nr;
+				nf_out = nf;
+				no_out = no;
+			}
+		}
+	}
+
+	/* output the best PLL setting */
+	if ((nr_out <= PLL_NR_MAX) && (no_out > 0)) {
+		rate_table->nr = nr_out;
+		rate_table->nf = nf_out;
+		rate_table->no = no_out;
+	} else {
+		return NULL;
+	}
+
+	return rate_table;
+}
+
 static const struct rockchip_pll_rate_table *rockchip_get_pll_settings(
 			    struct rockchip_clk_pll *pll, unsigned long rate)
 {
@@ -57,24 +250,16 @@ static const struct rockchip_pll_rate_table *rockchip_get_pll_settings(
 			return &rate_table[i];
 	}
 
-	return NULL;
+	if (pll->type == pll_rk3066)
+		return rockchip_rk3066_pll_clk_set_by_auto(pll, 24 * MHZ, rate);
+	else
+		return rockchip_pll_clk_set_by_auto(pll, 24 * MHZ, rate);
 }
 
 static long rockchip_pll_round_rate(struct clk_hw *hw,
 			    unsigned long drate, unsigned long *prate)
 {
-	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
-	const struct rockchip_pll_rate_table *rate_table = pll->rate_table;
-	int i;
-
-	/* Assumming rate_table is in descending order */
-	for (i = 0; i < pll->rate_count; i++) {
-		if (drate >= rate_table[i].rate)
-			return rate_table[i].rate;
-	}
-
-	/* return minimum supported value */
-	return rate_table[i - 1].rate;
+	return drate;
 }
 
 /*
@@ -154,7 +339,7 @@ static unsigned long rockchip_rk3036_pll_recalc_rate(struct clk_hw *hw,
 {
 	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
 	struct rockchip_pll_rate_table cur;
-	u64 rate64 = prate;
+	u64 rate64 = prate, frac_rate64 = prate;
 
 	rockchip_rk3036_pll_get_params(pll, &cur);
 
@@ -163,7 +348,7 @@ static unsigned long rockchip_rk3036_pll_recalc_rate(struct clk_hw *hw,
 
 	if (cur.dsmpd == 0) {
 		/* fractional mode */
-		u64 frac_rate64 = prate * cur.frac;
+		frac_rate64 *= cur.frac;
 
 		do_div(frac_rate64, cur.refdiv);
 		rate64 += frac_rate64 >> 24;
-- 
1.9.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
