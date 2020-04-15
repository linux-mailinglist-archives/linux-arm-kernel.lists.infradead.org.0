Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0EA1A9D59
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 13:46:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GKxhzdVGgjrJaSPfGVCXZA9oN2pHtO5BPqxzQOhGBrM=; b=Dnf1eIY0VhAImC
	2ESyhFE126HhZEDkpd7JxgnEwAkIefYKJrAvrQD0+QkkvKEbbbAbXqMgk32D9EF2iPB92OZekLIIo
	vJdctivrAjUA8vmDk5W+ZLUD8lIpus2WxV4S6STXiX7uZ+Xg6Qq+727a5TjpnRtXTunbF4wjYdf91
	SN509dymk54iwXQmRmuBWwu2DyzvCIGchWaqEmF7AsEtPd4fjxB50Uv0JCxJUv0WhxwkwPysH7ldv
	el4h2kALiUUs9GfiOSSd2ZTLlN24XqqN6azQOzbAY0axD8bc6D0DMMCaBLs/1iMRtuBAwuAWXTAYK
	W8YKeyVDW770jyjolmvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOgUL-0004DU-SD; Wed, 15 Apr 2020 11:45:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOgRT-00088S-Sb
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 11:42:58 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 41964206A2;
 Wed, 15 Apr 2020 11:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586950974;
 bh=cV2r83eP8e/jucUSXYvFnWLjmbcZKhtPCDO2eIQor/o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Cpy9uLAE2pqP90ZVVtwIBnLWp1Ge/X59UKgazrYPINV9qf2aF6JH4GhrLu6fjxRO4
 GbWfMx0OU76VqbllZBy934fLDe6fKxI7sIAFsjTTon4IomwZf5y+Oa9EcUIJaQwLzd
 R+Vk5eFR5NajFqdG2941HdQss/AHTEvVilSqvwb4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 023/106] soc: imx: gpc: fix power up sequencing
Date: Wed, 15 Apr 2020 07:41:03 -0400
Message-Id: <20200415114226.13103-23-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415114226.13103-1-sashal@kernel.org>
References: <20200415114226.13103-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_044256_034524_0127BED6 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lucas Stach <l.stach@pengutronix.de>

[ Upstream commit e0ea2d11f8a08ba7066ff897e16c5217215d1e68 ]

Currently we wait only until the PGC inverts the isolation setting
before disabling the peripheral clocks. This doesn't ensure that the
reset is properly propagated through the peripheral devices in the
power domain.

Wait until the PGC signals that the power up request is done and
wait a bit for resets to propagate before disabling the clocks.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/soc/imx/gpc.c | 24 +++++++++++++-----------
 1 file changed, 13 insertions(+), 11 deletions(-)

diff --git a/drivers/soc/imx/gpc.c b/drivers/soc/imx/gpc.c
index 98b9d9a902ae3..90a8b2c0676ff 100644
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
