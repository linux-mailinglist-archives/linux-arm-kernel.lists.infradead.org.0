Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB78E1C8E57
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 16:28:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RbTOa1nnAzgJtnJjvrSFjHgaLen1QiiOmFFK9N77VoM=; b=DMHWu1yNoIOJMQ
	wM6RmUHjKOhZ0q4jkPnE9sI3WIo8kMHnSg8EXXq1PsVaCNzPad5swcXAKRfLHZb0XUfhjJ2n7e018
	sDBXtN8QmX9Fdy1eNwUIrMM0l88pQ7NGBpYLKK68ktrFfU+8bS1UUYaYSD4rZR/lyZ+lrdxhCDGIA
	TTqawAD+gb9ASqmEVpA+gsXb4lEbx4cRdx4DdyLaLMo/N3jyrU2YOlZWgPEnGgOODYFPtJexLsAIH
	UFlgZ3XvMKZMA9Xi7wlOUc5Bej+uCbqX1Nqq1eMiOlwCqdYiciiCGnWj26hwBRQNgu4QlXir8Xs6l
	gpOEKket6i77dPQ2jK1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWhVE-0001F2-IC; Thu, 07 May 2020 14:27:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWhUs-00012O-1L
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 14:27:39 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 798162083B;
 Thu,  7 May 2020 14:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588861653;
 bh=nldiJ+MHYYN+kjgAX5mo6jUIk7pC/Xc/j4g2G7Uco6Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=e0s4o+5EI+KKTv1EgVraZSnAfNcypP9onwpJf01GmePNVCzCRa9kHDOdp2JmKvYAR
 QtzvVzwnfVW3XUo6M556Gizb5EI8oMj9cvYjDBNL59gnAAmOwQK3XM/R7wVj+WZJUZ
 eA8cU4ZevAU/7OzP0/EfaWKkx4XzjRT8pJYN7l+g=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 05/50] dmaengine: xilinx_dma: Add missing check
 for empty list
Date: Thu,  7 May 2020 10:26:41 -0400
Message-Id: <20200507142726.25751-5-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200507142726.25751-1-sashal@kernel.org>
References: <20200507142726.25751-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_072734_112078_8425851C 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 Vinod Koul <vkoul@kernel.org>, Sebastian von Ohr <vonohr@smaract.com>,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sebastian von Ohr <vonohr@smaract.com>

[ Upstream commit b269426011bcfd97b7c3101abfe1a99147b6f40b ]

The DMA transfer might finish just after checking the state with
dma_cookie_status, but before the lock is acquired. Not checking
for an empty list in xilinx_dma_tx_status may result in reading
random data or data corruption when desc is written to. This can
be reliably triggered by using dma_sync_wait to wait for DMA
completion.

Signed-off-by: Sebastian von Ohr <vonohr@smaract.com>
Tested-by: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Link: https://lore.kernel.org/r/20200303130518.333-1-vonohr@smaract.com
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/dma/xilinx/xilinx_dma.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/dma/xilinx/xilinx_dma.c b/drivers/dma/xilinx/xilinx_dma.c
index a9c5d5cc9f2bd..5d5f1d0ce16cb 100644
--- a/drivers/dma/xilinx/xilinx_dma.c
+++ b/drivers/dma/xilinx/xilinx_dma.c
@@ -1229,16 +1229,16 @@ static enum dma_status xilinx_dma_tx_status(struct dma_chan *dchan,
 		return ret;
 
 	spin_lock_irqsave(&chan->lock, flags);
-
-	desc = list_last_entry(&chan->active_list,
-			       struct xilinx_dma_tx_descriptor, node);
-	/*
-	 * VDMA and simple mode do not support residue reporting, so the
-	 * residue field will always be 0.
-	 */
-	if (chan->has_sg && chan->xdev->dma_config->dmatype != XDMA_TYPE_VDMA)
-		residue = xilinx_dma_get_residue(chan, desc);
-
+	if (!list_empty(&chan->active_list)) {
+		desc = list_last_entry(&chan->active_list,
+				       struct xilinx_dma_tx_descriptor, node);
+		/*
+		 * VDMA and simple mode do not support residue reporting, so the
+		 * residue field will always be 0.
+		 */
+		if (chan->has_sg && chan->xdev->dma_config->dmatype != XDMA_TYPE_VDMA)
+			residue = xilinx_dma_get_residue(chan, desc);
+	}
 	spin_unlock_irqrestore(&chan->lock, flags);
 
 	dma_set_residue(txstate, residue);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
