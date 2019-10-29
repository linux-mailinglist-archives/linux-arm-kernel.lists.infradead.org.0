Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7E0E8A7E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 15:15:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LXk1aT8nTT5Uz768tmVAm3NDFLvCsMBcRfOXbvWbC0E=; b=tNwGkF6VWZQT/ErtSCXh0NXoSZ
	pBCp7TJx2Vwk49Y1P8gzhYQqtY1TawKq9Dh+kuUSUfDI8Rm3w7cYR2S80x9XCvbAzxz6fhg52r4tz
	ctT7RCLvOTy1H9G7bUlPJGE1PFDNtCzJRkPnJe7Djb11NjJ8KIUzfhjglDMwmCnIcOsU/ryQVPzBb
	zWYH6YTil9KJY99628a9uojiwqDZFeTDaz89AAO9mCLZGL+VJcCNbNMeMBcyCnpa+K0Tx9RlvBkzm
	T8gC8s6aTFsgJ1fA1ovI/EvkHDV8YeEAfhXsTa32e0tLSy0hc1aLMkd12fVYfhylTkSS3G2kFdYyu
	SGCy37/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPSHk-0002ku-AK; Tue, 29 Oct 2019 14:15:48 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPSHG-0001lV-GI
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 14:15:20 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 848F2C0C41;
 Tue, 29 Oct 2019 14:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1572358517; bh=ntn5h+EtiIr26cxuzm1ZrBPes0SSBYvLTZygjleUGzc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=gCIsjn8Ku5XeJLlLhtD2SPNIXN5ekmpgV5MLXScQWNw5wDoAXrpYULQWFFBbwztSU
 Ix8E+4shQdeqEqR4uFMH0I0kKW5YbVUBIHIdPhU+/dB0+liDtGQWoh2jiJ5TdofOH7
 pb0oJYWpmPS0smMcuShMfyrU1Y6/McdwmCwpqgXHtxBlqA7k0nuhJSDvLw1csBHZ4T
 +S1Ij/+5nE34GhEzuHZXvUetVDWTx/2SqQSIhpQtQJKFPteZsR0ydZmsJ28Y0yushQ
 yVVso3+RzmXVKzzVOFaVYdA5BQ/d/3Xq4DVONg0kQ1FToMu1rXAM4cvnGXeu4xfSv9
 I04ctY+eZfdgw==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 29016A0081;
 Tue, 29 Oct 2019 14:15:15 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net 9/9] net: stmmac: xgmac: Disable MMC interrupts by default
Date: Tue, 29 Oct 2019 15:14:53 +0100
Message-Id: <4c77b55e43cf7a3243086a465b50568eb352d534.1572355609.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1572355609.git.Jose.Abreu@synopsys.com>
References: <cover.1572355609.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1572355609.git.Jose.Abreu@synopsys.com>
References: <cover.1572355609.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_071518_569421_0D339B1A 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
