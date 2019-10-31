Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D7DEAE3A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 12:02:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LXk1aT8nTT5Uz768tmVAm3NDFLvCsMBcRfOXbvWbC0E=; b=ocKTU89T1lYgZ7s+ozrBN+EGy0
	pmHmTvn6OasGhztmnpSmIhdVpxDkMAsZL9nR8Vkass4nYMkLmZrr5KlCKVNwF13ddkjycdT5WS3r+
	CVVDhw/VHhQQ/VizXAmiMCEBguP/JbKHaDcftoN6umiX6NrajdhiZpxx6vLWQGkv0Dg+P9VT3rxhk
	DGy0/1kHmhTlLxls3eMFs+wrz7iuGVkC1R4kpulb/HXt816y3IFD3qth2cqUK2oR91Qj+ruwzFVD1
	xBCzu/b+2LkBNimNe3jarJTZqWMHqq6ksm82MrgCRsl325+7F4t4XlZcRWKABvBHb2YMtOEcftvZw
	5YtJF1HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ8DZ-0004iH-1R; Thu, 31 Oct 2019 11:02:17 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ8CQ-0003yV-Sc
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 11:01:11 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id A3C9FC08B2;
 Thu, 31 Oct 2019 11:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1572519662; bh=ntn5h+EtiIr26cxuzm1ZrBPes0SSBYvLTZygjleUGzc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=DKM3PU3osEKlPg/G6gOJfS+aTyS2/t/N8kW6/jCSb1PquRB22I5cHaY8TgiaGjLOU
 tn1Ge6ZgjB3oUMJlWeV97ZOOSAnBjJa5J1+MbtFkDnbf1RD/yoFuc/mm1Go8flCqj2
 IxGQ7VnhG9MlaY3XyNjCDSpQOK38MZEX2ZQeb2krvD3gpUYS3WQ0WNfQRukNV0umdk
 z7aHziG0TqsLa6wwcc07wYmPDRs/7k+46f42+6CDy8B+uEJNnrU+4SLEtvRpeWTc8P
 eAez1tH7mCcZGz0++rIXYjIEdQzNKUHsEiUCYowE0bzn9KGRmy7gWkHvDzkN6DiVx8
 gy8EvXR3VQ4Lg==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 65F90A0083;
 Thu, 31 Oct 2019 11:01:00 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net v2 09/10] net: stmmac: xgmac: Disable MMC interrupts by
 default
Date: Thu, 31 Oct 2019 12:00:47 +0100
Message-Id: <a2d61459a7818d16a7b2d04dc2cee1913fcab7c5.1572519070.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1572519070.git.Jose.Abreu@synopsys.com>
References: <cover.1572519070.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1572519070.git.Jose.Abreu@synopsys.com>
References: <cover.1572519070.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_040107_051754_33C7AD86 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MMC interrupts were being enabled, which is not what we want because it
will lead to a storm of interrupts that are not handled at all. Fix it
by disabling all MMC interrupts for XGMAC.

Fixes: b6cdf09f51c2 ("net: stmmac: xgmac: Implement MMC counters")
Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/net/ethernet/stmicro/stmmac/mmc_core.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/mmc_core.c b/drivers/net/ethernet/stmicro/stmmac/mmc_core.c
index a223584f5f9a..252cf48c5816 100644
--- a/drivers/net/ethernet/stmicro/stmmac/mmc_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/mmc_core.c
@@ -176,6 +176,7 @@
 #define MMC_XGMAC_RX_PKT_SMD_ERR	0x22c
 #define MMC_XGMAC_RX_PKT_ASSEMBLY_OK	0x230
 #define MMC_XGMAC_RX_FPE_FRAG		0x234
+#define MMC_XGMAC_RX_IPC_INTR_MASK	0x25c
 
 static void dwmac_mmc_ctrl(void __iomem *mmcaddr, unsigned int mode)
 {
@@ -333,8 +334,9 @@ static void dwxgmac_mmc_ctrl(void __iomem *mmcaddr, unsigned int mode)
 
 static void dwxgmac_mmc_intr_all_mask(void __iomem *mmcaddr)
 {
-	writel(MMC_DEFAULT_MASK, mmcaddr + MMC_RX_INTR_MASK);
-	writel(MMC_DEFAULT_MASK, mmcaddr + MMC_TX_INTR_MASK);
+	writel(0x0, mmcaddr + MMC_RX_INTR_MASK);
+	writel(0x0, mmcaddr + MMC_TX_INTR_MASK);
+	writel(MMC_DEFAULT_MASK, mmcaddr + MMC_XGMAC_RX_IPC_INTR_MASK);
 }
 
 static void dwxgmac_read_mmc_reg(void __iomem *addr, u32 reg, u32 *dest)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
