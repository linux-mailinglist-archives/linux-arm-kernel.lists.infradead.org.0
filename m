Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5429CAFF24
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 16:50:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xgezKvfR23lcZU3HxNCkjqwelDMcFrRsVzEBUwjyg9I=; b=rPuvib4b+MJ9Bo
	xeEl7UjJ5cLMEY/xbIn3gVs10n4ocADr3NHmthcPPWwLKD4HPDtigY8+ZEekRtPRG5BqJFlG9YQxx
	bp9rA1wrJTjGJveN6W+cPJS1mkY90ckAurEjUa1MhaHEQ+hcTjSdcz/uInSTRXaCEdM70ctO7xLU2
	WGS8RKFvjyZ3eMEnOtRgXW0USbSECCyhkfOUBsQB8bjxQCBHkud0s6x0dzGruye852Ib92fTYkwif
	Tc5wu1Y9xMd2rtT2IsgojhAFiGApx2YT05oUHrqgPVCiNAwRVAqW5kvWvz/CuZbNQTMjCZBkfEWCf
	kubSCKbtLpTJ2U/eAzWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i83x4-0006nY-LO; Wed, 11 Sep 2019 14:50:34 +0000
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i83wa-0005QE-PA
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 14:50:06 +0000
Received: from mailer.emlix.com (unknown [81.20.119.6])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.emlix.com (Postfix) with ESMTPS id BEE3C5FCE8;
 Wed, 11 Sep 2019 16:50:00 +0200 (CEST)
From: Philipp Puschmann <philipp.puschmann@emlix.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] dmaengine: imx-sdma: fix dma freezes
Date: Wed, 11 Sep 2019 16:49:41 +0200
Message-Id: <20190911144943.21554-3-philipp.puschmann@emlix.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190911144943.21554-1-philipp.puschmann@emlix.com>
References: <20190911144943.21554-1-philipp.puschmann@emlix.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_075004_967766_3800B493 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-serial@vger.kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 jslaby@suse.com, vkoul@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 gregkh@linuxfoundation.org, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, festevam@gmail.com,
 Philipp Puschmann <philipp.puschmann@emlix.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For some years and since many kernel versions there are reports that the
RX UART SDMA channel stops working at some point. The workaround was to
disable DMA for RX. This commit tries to fix the problem itself.

Due to its license i wasn't able to debug the sdma script itself but it
somehow leads to blocking the scheduling of the channel script when a
running sdma script does not find any usable destination buffer to put its
data into.

If we detect such a potential case we manually retrigger the sdma script
for this channel and by this reenable the scipt being run by scheduler.

As sdmac->desc is constant we can move desc out of the loop.

Signed-off-by: Philipp Puschmann <philipp.puschmann@emlix.com>
---
 drivers/dma/imx-sdma.c | 22 ++++++++++++++++++----
 1 file changed, 18 insertions(+), 4 deletions(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 1abb14ff394d..6a5a84504858 100644
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
@@ -821,6 +823,18 @@ static void sdma_update_channel_loop(struct sdma_channel *sdmac)
 		if (error)
 			sdmac->status = old_status;
 	}
+
+	/* In some situations it happens that the sdma stops serving
+	 * dma interrupt requests. It happens when running dma script
+	 * does not find any usable destination buffer to put its data into.
+	 *
+	 * While there is no specific error condition we can check for, a
+	 * necessary condition is that all available buffers for the current
+	 * channel have been written to by the sdma script. In such a case we
+	 * will trigger the sdma script manually.
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
