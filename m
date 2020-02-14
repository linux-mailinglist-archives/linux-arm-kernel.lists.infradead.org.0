Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B1215E887
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 18:00:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BmbSvHf3BKXAtfchYV69aU1+cJplfK5aG4Kb4OveQ1E=; b=EzQ8wxDl8t07BC
	5CYIrFrN4jMcopnYyN3LOHG/TBniJqYK5h6x/SYK8LZTzBRLnnY/l3c2fyDxv2/RCEMT3+Lbv1S0K
	x58G+62bqsBIgpeFN+Qp4/Zuze3Y0pUGrrYdCAMY6oLNvd0wV6X36MgcapSC7mrGmzI8dC+EYKjQa
	Zybuj7scAe8vpUTmjMax09X4KC9LjKzgNHlQLcB4mcfV1mgfAwOliyNN5KHZ3lhazxPjsUJLkxqH5
	5u1pZcyq3wYcvbw77iVOr/DW50sqrtDclWVi92TIscrv5XGZfZnp+jUrPyBYDbkTonoadmI2h0+zi
	bBAgksF2afmPPNt6RsHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2eKm-00025G-9M; Fri, 14 Feb 2020 17:00:56 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dwM-00058a-AL
 for linux-arm-kernel@bombadil.infradead.org; Fri, 14 Feb 2020 16:35:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=mk8CoyJcsq5YtzNh3tpYg5cWpF5ocUXCyqcr8a4ESlQ=; b=NGj8u3hvAQ6cjq5dnHl7wq53tI
 uVxHeHqfCMZtc1j8b9RSsp5Gq3RECQ3fdg01saXyDLD+rX9SCGC3lqBuGV1YRII06vmDKGuZoF5pX
 kTLRqIhsNbiypBmWwDhtc3UQD5CADmclMK47XlE2h4skZtfG5V9fRHVHm/pn9yIhbRCydWIPWSZtX
 4jto7JcMHBhtM+4ZXg38m24Gititgy9E6GJ2vhtahS+vkIZyU+XIGGBjJiZkEbi5cyE0vYpHQ0oNY
 uqOHa03rSIBTqnGazB5fHtOx4t+8tmj6E+YfUntbw9/EhUMkPWdzC936VPe8N48xT8PBEYV1AY9QI
 qRYc0r1w==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dbf-0002PQ-PC
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:14:22 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6CE04246D6;
 Fri, 14 Feb 2020 16:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581696858;
 bh=GRvpBHdwaRmGyhqFV9SutAkddtjGkMHJbBSngALE17A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BCk8NFs6s9+VnZ72u+Vf6H2Hg8btTRXSNUAc6xcZh/B2bsipvvAE748NTWqIoyV79
 E/dBYPUxAtDWCbBXHgPhbuYfjZW5MetjY1BdgFqcdyoowXVcX53reOvAoHYLjbI02b
 zM8LyS2/QzNlvmGgL3pbLsVC4tnAjH50js6nft2M=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 118/252] dmaengine: imx-sdma: Fix memory leak
Date: Fri, 14 Feb 2020 11:09:33 -0500
Message-Id: <20200214161147.15842-118-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161147.15842-1-sashal@kernel.org>
References: <20200214161147.15842-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_161420_075082_8282A463 
X-CRM114-Status: GOOD (  17.28  )
X-Spam-Score: -7.1 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-7.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Vinod Koul <vkoul@kernel.org>, dmaengine@vger.kernel.org,
 Robin Gong <yibin.gong@nxp.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

[ Upstream commit 02939cd167095f16328a1bd5cab5a90b550606df ]

The current descriptor is not on any list of the virtual DMA channel.
Once sdma_terminate_all() is called when a descriptor is currently
in flight then this one is forgotten to be freed. We have to call
vchan_terminate_vdesc() on this descriptor to re-add it to the lists.
Now that we also free the currently running descriptor we can (and
actually have to) remove the current descriptor from its list also
for the cyclic case.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reviewed-by: Robin Gong <yibin.gong@nxp.com>
Tested-by: Robin Gong <yibin.gong@nxp.com>
Link: https://lore.kernel.org/r/20191216105328.15198-10-s.hauer@pengutronix.de
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/dma/imx-sdma.c | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index ceb82e74f5b4e..d66a7fdff898e 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -738,12 +738,8 @@ static void sdma_start_desc(struct sdma_channel *sdmac)
 		return;
 	}
 	sdmac->desc = desc = to_sdma_desc(&vd->tx);
-	/*
-	 * Do not delete the node in desc_issued list in cyclic mode, otherwise
-	 * the desc allocated will never be freed in vchan_dma_desc_free_list
-	 */
-	if (!(sdmac->flags & IMX_DMA_SG_LOOP))
-		list_del(&vd->node);
+
+	list_del(&vd->node);
 
 	sdma->channel_control[channel].base_bd_ptr = desc->bd_phys;
 	sdma->channel_control[channel].current_bd_ptr = desc->bd_phys;
@@ -1044,7 +1040,6 @@ static void sdma_channel_terminate_work(struct work_struct *work)
 
 	spin_lock_irqsave(&sdmac->vc.lock, flags);
 	vchan_get_all_descriptors(&sdmac->vc, &head);
-	sdmac->desc = NULL;
 	spin_unlock_irqrestore(&sdmac->vc.lock, flags);
 	vchan_dma_desc_free_list(&sdmac->vc, &head);
 }
@@ -1052,11 +1047,19 @@ static void sdma_channel_terminate_work(struct work_struct *work)
 static int sdma_disable_channel_async(struct dma_chan *chan)
 {
 	struct sdma_channel *sdmac = to_sdma_chan(chan);
+	unsigned long flags;
+
+	spin_lock_irqsave(&sdmac->vc.lock, flags);
 
 	sdma_disable_channel(chan);
 
-	if (sdmac->desc)
+	if (sdmac->desc) {
+		vchan_terminate_vdesc(&sdmac->desc->vd);
+		sdmac->desc = NULL;
 		schedule_work(&sdmac->terminate_worker);
+	}
+
+	spin_unlock_irqrestore(&sdmac->vc.lock, flags);
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
