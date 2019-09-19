Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95615B7CD4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 16:30:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MhlyWcJKJySTDMrpuy3vyTpk/fgKy3eJnU+j7n8XT8s=; b=mf16TaSIRPnbWR
	g2JEHAbbltGmDqgjkyIz0fzf9YBZBexxWT0oG5oPO3zrOP0U4XjbaODtMVurt8VqPs2LoNFqpz16u
	dZGkvruZvmzFWkdS4vvVFwtiohVKQA8PY9H8fr6pelML+E5aDJD0j2C3PCLb2ue/cbSuYzmYClN5D
	iFp2LFoL3QVFgERS+MwS1XO94UJ3MxBGsfmpL2y17OohfBT/2TeomAZMs5aRo1dmsiOErRofur2qw
	3xkkubh06oimKuJRciau02L1v2HdruqN3id+T54flLxYHNRqcIeNuG6MaohBmmSNQdqzddxUunyJz
	LQdjftvyEG3R+AW/3OHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAxSI-0003jb-4h; Thu, 19 Sep 2019 14:30:46 +0000
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAxRL-0001y0-P4
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 14:29:50 +0000
Received: from mailer.emlix.com (unknown [81.20.119.6])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.emlix.com (Postfix) with ESMTPS id 8F0D66036C;
 Thu, 19 Sep 2019 16:29:46 +0200 (CEST)
From: Philipp Puschmann <philipp.puschmann@emlix.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/3] dmaengine: imx-sdma: fix dma freezes
Date: Thu, 19 Sep 2019 16:29:40 +0200
Message-Id: <20190919142942.12469-3-philipp.puschmann@emlix.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190919142942.12469-1-philipp.puschmann@emlix.com>
References: <20190919142942.12469-1-philipp.puschmann@emlix.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_072947_966205_32A90959 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: fugang.duan@nxp.com, Philipp Puschmann <philipp.puschmann@emlix.com>,
 festevam@gmail.com, s.hauer@pengutronix.de, vkoul@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, dan.j.williams@intel.com,
 yibin.gong@nxp.com, shawnguo@kernel.org, dmaengine@vger.kernel.or,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For some years and since many kernel versions there are reports that the
RX UART SDMA channel stops working at some point. The workaround was to
disable DMA for RX. This commit tries to fix the problem itself.

Due to its license i wasn't able to debug the sdma script itself but it
somehow leads to blocking the scheduling of the channel script when a
running sdma script does not find any free descriptor in the ring to put
its data into.

If we detect such a potential case we manually restart the channel.

As sdmac->desc is constant we can move desc out of the loop.

Fixes: 1ec1e82f2510 ("dmaengine: Add Freescale i.MX SDMA support")
Signed-off-by: Philipp Puschmann <philipp.puschmann@emlix.com>
Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
---

Changelog v4:
 - fixed the fixes tag
 
Changelog v3:
 - use correct dma_wmb() instead of dma_wb()
 - add fixes tag
 
Changelog v2:
 - clarify comment and commit description

 drivers/dma/imx-sdma.c | 21 +++++++++++++++++----
 1 file changed, 17 insertions(+), 4 deletions(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index e029a2443cfc..a32b5962630e 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -775,21 +775,23 @@ static void sdma_start_desc(struct sdma_channel *sdmac)
 static void sdma_update_channel_loop(struct sdma_channel *sdmac)
 {
 	struct sdma_buffer_descriptor *bd;
-	int error = 0;
-	enum dma_status	old_status = sdmac->status;
+	struct sdma_desc *desc = sdmac->desc;
+	int error = 0, cnt = 0;
+	enum dma_status old_status = sdmac->status;
 
 	/*
 	 * loop mode. Iterate over descriptors, re-setup them and
 	 * call callback function.
 	 */
-	while (sdmac->desc) {
-		struct sdma_desc *desc = sdmac->desc;
+	while (desc) {
 
 		bd = &desc->bd[desc->buf_tail];
 
 		if (bd->mode.status & BD_DONE)
 			break;
 
+		cnt++;
+
 		if (bd->mode.status & BD_RROR) {
 			bd->mode.status &= ~BD_RROR;
 			sdmac->status = DMA_ERROR;
@@ -822,6 +824,17 @@ static void sdma_update_channel_loop(struct sdma_channel *sdmac)
 		if (error)
 			sdmac->status = old_status;
 	}
+
+	/* In some situations it may happen that the sdma does not found any
+	 * usable descriptor in the ring to put data into. The channel is
+	 * stopped then. While there is no specific error condition we can
+	 * check for, a necessary condition is that all available buffers for
+	 * the current channel have been written to by the sdma script. In
+	 * this case and after we have made the buffers available again,
+	 * we restart the channel.
+	 */
+	if (cnt >= desc->num_bd)
+		sdma_enable_channel(sdmac->sdma, sdmac->channel);
 }
 
 static void mxc_sdma_handle_channel_normal(struct sdma_channel *data)
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
