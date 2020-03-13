Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53931184471
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 11:09:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=74WBDkH3LJL3u0nqaxdCuo7lScETxUiFXAkY/Eqb+9Y=; b=uC4JoAbzgKEZs3
	Ml/yI/WYttzsXEjWUIJWKdPaY8JNVoKFy4s1FzH9iLV1Snit+FNWZn8pO9yUXB3MAhqR5dn1PO99f
	RTpszbcq/OwRiwSbCRHd4oGurOD5vB8ttHUpiB5FSqgkFY+w3fzI+HcUuXlNyuud8EoSrzxmg0azk
	oaOjFTDomWTclqljDY8B/qQ6+z1LXHaXoJt3V63kOVu0o9V+bn/Gzb6PWaYMyoio5yceKQgxek3GC
	p9UZyjyfCg1eId1FzfDJmxxa5CL2YKMYG4Syc3aMRfUZu+wBCOF21bKR2bz52s4ie8C7HxmoxJTcZ
	jHB/5ekVPl9mgLSnrFPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jChFr-0008Te-SV; Fri, 13 Mar 2020 10:09:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jChFk-0008T9-84
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 10:09:17 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1jChFh-0004VN-0q; Fri, 13 Mar 2020 11:09:13 +0100
From: Lucas Stach <l.stach@pengutronix.de>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] soc: imx: gpc: fix power up sequencing
Date: Fri, 13 Mar 2020 11:09:12 +0100
Message-Id: <20200313100912.24699-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_030916_288653_7F7DD048 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org,
 patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently we wait only until the PGC inverts the isolation setting
before disabling the peripheral clocks. This doesn't ensure that the
reset is properly propagated through the peripheral devices in the
power domain.

Wait until the PGC signals that the power up request is done and
wait a bit for resets to propagate before disabling the clocks.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/soc/imx/gpc.c | 24 +++++++++++++-----------
 1 file changed, 13 insertions(+), 11 deletions(-)

diff --git a/drivers/soc/imx/gpc.c b/drivers/soc/imx/gpc.c
index 98b9d9a902ae..90a8b2c0676f 100644
--- a/drivers/soc/imx/gpc.c
+++ b/drivers/soc/imx/gpc.c
@@ -87,8 +87,8 @@ static int imx6_pm_domain_power_off(struct generic_pm_domain *genpd)
 static int imx6_pm_domain_power_on(struct generic_pm_domain *genpd)
 {
 	struct imx_pm_domain *pd = to_imx_pm_domain(genpd);
-	int i, ret, sw, sw2iso;
-	u32 val;
+	int i, ret;
+	u32 val, req;
 
 	if (pd->supply) {
 		ret = regulator_enable(pd->supply);
@@ -107,17 +107,18 @@ static int imx6_pm_domain_power_on(struct generic_pm_domain *genpd)
 	regmap_update_bits(pd->regmap, pd->reg_offs + GPC_PGC_CTRL_OFFS,
 			   0x1, 0x1);
 
-	/* Read ISO and ISO2SW power up delays */
-	regmap_read(pd->regmap, pd->reg_offs + GPC_PGC_PUPSCR_OFFS, &val);
-	sw = val & 0x3f;
-	sw2iso = (val >> 8) & 0x3f;
-
 	/* Request GPC to power up domain */
-	val = BIT(pd->cntr_pdn_bit + 1);
-	regmap_update_bits(pd->regmap, GPC_CNTR, val, val);
+	req = BIT(pd->cntr_pdn_bit + 1);
+	regmap_update_bits(pd->regmap, GPC_CNTR, req, req);
 
-	/* Wait ISO + ISO2SW IPG clock cycles */
-	udelay(DIV_ROUND_UP(sw + sw2iso, pd->ipg_rate_mhz));
+	/* Wait for the PGC to handle the request */
+	ret = regmap_read_poll_timeout(pd->regmap, GPC_CNTR, val, !(val & req),
+				       1, 50);
+	if (ret)
+		pr_err("powerup request on domain %s timed out\n", genpd->name);
+
+	/* Wait for reset to propagate through peripherals */
+	usleep_range(5, 10);
 
 	/* Disable reset clocks for all devices in the domain */
 	for (i = 0; i < pd->num_clks; i++)
@@ -343,6 +344,7 @@ static const struct regmap_config imx_gpc_regmap_config = {
 	.rd_table = &access_table,
 	.wr_table = &access_table,
 	.max_register = 0x2ac,
+	.fast_io = true,
 };
 
 static struct generic_pm_domain *imx_gpc_onecell_domains[] = {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
