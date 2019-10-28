Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08CEAE7BC2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 22:49:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Dd4qtjBmf6+s7tCVbulAM5pkEiNOG7bG7bSN8eEtF/k=; b=JBnA5A9ebOaLv7
	0JWIWfW4lwnovBvPbw5KfRfi8ftaZ9SZqv3nrBvMfh8EsEd/Cgr4Ue5A2sfjoLUi3MLewHBz2ruys
	pwb5lJipzX5e21/xVmIqX+PXhq1X69e6Zk3wqSlWpwFORm+NFyHAGP27KFmdInrk+xiIwZlIUmC85
	7nV9KVkyTAYMJw72bOU1jZEtG5Fv+F9mV7Hl2Rz7m8AWqMSdUrUyApml+uoiJGSnSwVnwWePAPpx3
	YHO3r7nALFV06psxT5JVckGjcVzN8YuZq/Ci4YJy2qgTJcXtMJcrmLHWPiHvJlcOpzEsAKzGNIb4x
	2T51jZo/a9ZObqF1VC0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPCtM-0000Kn-8J; Mon, 28 Oct 2019 21:49:36 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPCtB-0000KL-0k
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 21:49:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1572299363; bh=yfQ5bNur1qQsSwWai80uin5ZDClxDtOcYUot2/fijL0=;
 h=From:To:Cc:Subject:Date:From;
 b=RVD9lhOKFIWyR8uwdk2pCEi1JXI/uuyWgSwtBUN3we5JB1c5A5vVxcsn92C47QBc3
 nU/lzm4szLyF6lnP6vBtiKuiNZ/DtVMsFUIocfOEhl1LTdROS25HWBRU2SA2j2MLqT
 xjJKew//0G2ek76ewJ6TrFzTUjb3lW3lW3QYv408=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com
Subject: [PATCH] ARM: sunxi: Fix CPU powerdown on A83T
Date: Mon, 28 Oct 2019 22:49:14 +0100
Message-Id: <20191028214914.3465156-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_144925_230097_2BA02E27 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ondrej Jirman <megous@megous.com>, Russell King <linux@armlinux.org.uk>,
 Maxime Ripard <mripard@kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, stable@vger.kernel.org,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PRCM_PWROFF_GATING_REG has CPU0 at bit 4 on A83T. So without this
patch, instead of gating the CPU0, the whole cluster was power gated,
when shutting down first CPU in the cluster.

Fixes: 6961275e72a8c1 ("ARM: sun8i: smp: Add support for A83T")
Signed-off-by: Ondrej Jirman <megous@megous.com>
Cc: stable@vger.kernel.org
---
 arch/arm/mach-sunxi/mc_smp.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-sunxi/mc_smp.c b/arch/arm/mach-sunxi/mc_smp.c
index 239084cf8192..26cbce135338 100644
--- a/arch/arm/mach-sunxi/mc_smp.c
+++ b/arch/arm/mach-sunxi/mc_smp.c
@@ -481,14 +481,18 @@ static void sunxi_mc_smp_cpu_die(unsigned int l_cpu)
 static int sunxi_cpu_powerdown(unsigned int cpu, unsigned int cluster)
 {
 	u32 reg;
+	int gating_bit = cpu;
 
 	pr_debug("%s: cluster %u cpu %u\n", __func__, cluster, cpu);
 	if (cpu >= SUNXI_CPUS_PER_CLUSTER || cluster >= SUNXI_NR_CLUSTERS)
 		return -EINVAL;
 
+	if (is_a83t && cpu == 0)
+		gating_bit = 4;
+
 	/* gate processor power */
 	reg = readl(prcm_base + PRCM_PWROFF_GATING_REG(cluster));
-	reg |= PRCM_PWROFF_GATING_REG_CORE(cpu);
+	reg |= PRCM_PWROFF_GATING_REG_CORE(gating_bit);
 	writel(reg, prcm_base + PRCM_PWROFF_GATING_REG(cluster));
 	udelay(20);
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
