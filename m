Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 545584F7BA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 20:05:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RFm0c/2fwSYDGVVnV1oHyQA6itPc5zxdwQwECpJeYMA=; b=RXqqsExe2A2HVw
	JgvE1sZJfk4fVzbJwZZI+MnFJDW+SGK+5e17Uj8usct5lrZTRU69f1nR+4C67U5USTCwGD8aUeWod
	U/UxzwekTfiGYNy12v9sOsRlaVrX39+sAhGPtD2fxzzt61JdPs8lzIcJ/1KhlSpt8Fb/iz8iVz8CH
	7953UZrg07KQkgXxU9VfKZR/dqgdGVPmFYH7+DRW9z+h07KaKafKzJNx9v3PJDDZj+yn6MgWM9nB/
	Wi9prqqgZKYE581lznPEl+z5lvZNcXObA1omDF8hsezfgZyUO8+2ksUAQeG1YUhXtaIRFRYwa6Ykl
	DkwNXp+bsTHuBwIlVEOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hekO4-0002gO-GC; Sat, 22 Jun 2019 18:05:16 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hekNx-0001OL-DE
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Jun 2019 18:05:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YLLngcfYF+Lf6PbqhusKwH4dyS0jGxhgKdh6Y63Svz4=; b=pxYWUfYEHUZyrsHMzmYZCmeH6u
 vA66hUZenIzw17pXvXv6f93SdcQ0X7FTSnQNjotf0jmcFxwFXASe0XPpIm8aUUd127H12zRGe9rmC
 F+fh57NshmgsjRLwizN7eCwpiMTFg47U1lP20vT2lX5Rzfh+G6gXN731oR/ejxbMeF0HnZQUVXinS
 YdAr1e3Y1xVbZd1IEGCFmDsqmrDX59NKEETzvNJ9WtyAOnQFfGu1cBFQQw3XIkZ43haAXoNcgXDFX
 Vw5y0RolO9d4Syk+Q6yp9/bdu0+BVWs57oRuJaRungfh3ycXmN0X1eodZGBvG5IX9c+1zYoeAERZk
 l0sE8niQ==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:44126 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hekLh-00056r-Bz; Sat, 22 Jun 2019 19:02:49 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hekLg-0002hJ-Jg; Sat, 22 Jun 2019 19:02:48 +0100
In-Reply-To: <20190622165318.bgyun52hssqmdv4n@shell.armlinux.org.uk>
References: <20190622165318.bgyun52hssqmdv4n@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Michael Olbrich <m.olbrich@pengutronix.de>,
 Lucas Stach <l.stach@pengutronix.de>, Vinod Koul <vkoul@kernel.org>
Subject: [PATCH] dmaengine: imx-sdma: fix incorrect conversion to
 readl_relaxed_poll_timeout_atomic()
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hekLg-0002hJ-Jg@rmk-PC.armlinux.org.uk>
Date: Sat, 22 Jun 2019 19:02:48 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_110509_453523_802CEE43 
X-CRM114-Status: GOOD (  10.49  )
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
 drivers/dma/imx-sdma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 5f3c1378b90e..ba84c0444f35 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -660,7 +660,7 @@ static int sdma_run_channel0(struct sdma_engine *sdma)
 	sdma_enable_channel(sdma, 0);
 
 	ret = readl_relaxed_poll_timeout_atomic(sdma->regs + SDMA_H_STATSTOP,
-						reg, !(reg & 1), 1, 500);
+						reg, reg & 1, 1, 500);
 	if (ret)
 		dev_err(sdma->dev, "Timeout waiting for CH0 ready\n");
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
