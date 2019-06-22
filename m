Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 502DC4F7DD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 20:56:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gg/HgONcoexy7Fpw1EGkrTF7vlL0BI0O82gGiszLycA=; b=P6n6/sMY5iJ3E2
	QuXgt4vrIk7XOvubq7XQtnbed5YAwRHzwy3R+rMChXj6rKI+imbR9kZnx3FrWAN6W10/J+Ybbxx++
	KeAuhPIvLIL9c+N+6p7NESLmGTUHL9oTyBvIvGM9G9rkdpTg6lq0O/3WkjqyVDPiI3twVOusO3T9q
	yupFc3dL7ICsSPVTCrSGVvAK+98PpNA576twTYemVd4vecJWG2aZhV4a5s+qk6pgclFbSNEwyQh2u
	DghXvrcaFqTQP+aWbVK4CraD5OWA+psFzEokTumWTemnl+GAKITnxQEnQ+huJYreA8fm/RyIP/okm
	ePlCwDUsuUuD4w2F//Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1helBO-0002Et-1J; Sat, 22 Jun 2019 18:56:14 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1helBF-0002EE-L9
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Jun 2019 18:56:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9L4EdajO6Xbwxdr23bMsOgh5jRoyTsPUINWDgSc18DQ=; b=ODoS1pCbMNS2pbN3tuZXPP2DpU
 btyD2EpGAffay9u7xn0lhGx7Z5QM76wHruQiLRF3PTGbMNaP/RlTXLxo/t3eATwQFo7vA/QSqM7zm
 nSp1btztbTwNTGKJXsS+bigdDUzJc52IGi2S57gF3QAWnNIgNHHeiwxPPSyhQuIN3ny7tqCN58cuZ
 y3KG8IN1SBmNVyBq2cjPWY4NxRXLz1J25I9Mz9dZkqzGLIs5ZhzJvi4Qn0bPmukjVRHaeuAozUNFT
 qJPgI/kQbQUR3nQhz4eZQGT2v7MwdjbjWF8vEvevzWTX6Qh8CT09nQ48BbpkWMWNCyGW03Qkao/kU
 bZDa33+Q==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:54250 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1helB3-0005N2-Ql; Sat, 22 Jun 2019 19:55:53 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1helB3-0005d6-7m; Sat, 22 Jun 2019 19:55:53 +0100
In-Reply-To: <20190622165318.bgyun52hssqmdv4n@shell.armlinux.org.uk>
References: <20190622165318.bgyun52hssqmdv4n@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Michael Olbrich <m.olbrich@pengutronix.de>,
 Lucas Stach <l.stach@pengutronix.de>, Vinod Koul <vkoul@kernel.org>
Subject: [PATCH v2] dmaengine: imx-sdma: fix incorrect conversion to
 readl_relaxed_poll_timeout_atomic()
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1helB3-0005d6-7m@rmk-PC.armlinux.org.uk>
Date: Sat, 22 Jun 2019 19:55:53 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_115605_706225_5DB8B3B2 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When imx-sdma was converted to use readl_relaxed_poll_timeout_atomic(),
the termination condition was inverted.  Fix this.

Fixes: 1d069bfa3c78 ("dmaengine: imx-sdma: ack channel 0 IRQ in the interrupt handler")
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 drivers/dma/imx-sdma.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 5f3c1378b90e..c45cbdb09714 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -655,15 +655,21 @@ static void sdma_enable_channel(struct sdma_engine *sdma, int channel)
 static int sdma_run_channel0(struct sdma_engine *sdma)
 {
 	int ret;
-	u32 reg;
+	u32 reg, mask;
+
+	// Disable channel 0 interrupt
+	mask = readl_relaxed(sdma->regs + SDMA_H_INTRMSK);
+	writel_relaxed(mask & ~1, sdma->regs + SDMA_H_INTRMSK);
 
 	sdma_enable_channel(sdma, 0);
 
-	ret = readl_relaxed_poll_timeout_atomic(sdma->regs + SDMA_H_STATSTOP,
-						reg, !(reg & 1), 1, 500);
+	ret = readl_relaxed_poll_timeout_atomic(sdma->regs + SDMA_H_INTR,
+						reg, reg & 1, 1, 500);
 	if (ret)
 		dev_err(sdma->dev, "Timeout waiting for CH0 ready\n");
 
+	writel_relaxed(mask, sdma->regs + SDMA_H_INTRMSK);
+
 	/* Set bits of CONFIG register with dynamic context switching */
 	reg = readl(sdma->regs + SDMA_H_CONFIG);
 	if ((reg & SDMA_H_CONFIG_CSM) == 0) {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
