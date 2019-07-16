Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 425436A3C1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 10:24:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oJBdM5smA8k9nn+DYiRUQRcCvKIe+T0hynXKRlF87tM=; b=PohVwQiSF/eCTU
	uL6Xrx4pDICskcrJGFARcKwr79PeQjcn7KJLwtzllOdbuxRtgNJb5xbefmrmkMY0krHWLSZ45Et6F
	w5VXAUvy8Pi9nAYbdtp1ozIlrgZ5LMaKndXSX+5y+D9YtTaVQ3cO0BtQIC/IpOCzMakXTVgIMf2Q9
	yMV6rkiU9YOTylBRpDqkLS04CIzqKtKb67mUL1fyKy78J7au8WglL/E/p+BOpq2DqfJ+xrN8V1omA
	PrWUpiObNCzVzhM57ox48zHQAlSGQ+JM+vWxCPja7DwHjijubw5NtObVl+fr0qtKwI3MKb249pqU8
	vug93uLCN2sguFekF/oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnIlY-0005eZ-I1; Tue, 16 Jul 2019 08:24:52 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnIkv-0005P4-1K
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 08:24:14 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6G8O6Ui119083;
 Tue, 16 Jul 2019 03:24:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563265446;
 bh=4Fiov9ICVTKsuEOGfYBQ72laYt1CMD60PYz6s4obMvc=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=TGve+00YhWHhMTLWOv8Rn0qCsWrh2RsEz7k9h4P2Y+ajHZ9EWFOcgiREgbDClNcxs
 2QWT0t62vX7RZIIU0O7lSROmsVIWkqz3FKQDmfN7CVCKN3xI0R9cmVWY/OV5sLcNLl
 wYi/jln10NfJcKg0vDJZayAwkscRIzAouStUpEjo=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6G8O6vX051628
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 16 Jul 2019 03:24:06 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 16
 Jul 2019 03:24:05 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 16 Jul 2019 03:24:05 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6G8O0lh033709;
 Tue, 16 Jul 2019 03:24:04 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>
Subject: [PATCH v2 2/2] dmaengine: ti: omap-dma: Improved memcpy polling
 support
Date: Tue, 16 Jul 2019 11:24:59 +0300
Message-ID: <20190716082459.1222-3-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190716082459.1222-1-peter.ujfalusi@ti.com>
References: <20190716082459.1222-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_012413_158632_5D555E76 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When a DMA client driver does not set the DMA_PREP_INTERRUPT because it
does not want to use interrupts for DMA completion or because it can not
rely on DMA interrupts due to executing the memcpy when interrupts are
disabled it will poll the status of the transfer.

If the interrupts are enabled then the cookie will be set completed in the
interrupt handler so only check in HW completion when the polling is really
needed.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/dma/ti/omap-dma.c | 44 +++++++++++++++++++++++++--------------
 1 file changed, 28 insertions(+), 16 deletions(-)

diff --git a/drivers/dma/ti/omap-dma.c b/drivers/dma/ti/omap-dma.c
index 029c0bd550d5..966d8f0323b5 100644
--- a/drivers/dma/ti/omap-dma.c
+++ b/drivers/dma/ti/omap-dma.c
@@ -91,6 +91,7 @@ struct omap_desc {
 	bool using_ll;
 	enum dma_transfer_direction dir;
 	dma_addr_t dev_addr;
+	bool polled;
 
 	int32_t fi;		/* for OMAP_DMA_SYNC_PACKET / double indexing */
 	int16_t ei;		/* for double indexing */
@@ -815,26 +816,20 @@ static enum dma_status omap_dma_tx_status(struct dma_chan *chan,
 	struct virt_dma_desc *vd;
 	enum dma_status ret;
 	unsigned long flags;
+	struct omap_desc *d = NULL;
 
 	ret = dma_cookie_status(chan, cookie, txstate);
-
-	if (!c->paused && c->running) {
-		uint32_t ccr = omap_dma_chan_read(c, CCR);
-		/*
-		 * The channel is no longer active, set the return value
-		 * accordingly
-		 */
-		if (!(ccr & CCR_ENABLE))
-			ret = DMA_COMPLETE;
-	}
-
-	if (ret == DMA_COMPLETE || !txstate)
+	if (ret == DMA_COMPLETE)
 		return ret;
 
 	spin_lock_irqsave(&c->vc.lock, flags);
+	if (c->desc && c->desc->vd.tx.cookie == cookie)
+		d = c->desc;
+
+	if (!txstate)
+		goto out;
 
-	if (c->desc && c->desc->vd.tx.cookie == cookie) {
-		struct omap_desc *d = c->desc;
+	if (d) {
 		dma_addr_t pos;
 
 		if (d->dir == DMA_MEM_TO_DEV)
@@ -851,8 +846,22 @@ static enum dma_status omap_dma_tx_status(struct dma_chan *chan,
 		txstate->residue = 0;
 	}
 
-	if (ret == DMA_IN_PROGRESS && c->paused)
+out:
+	if (ret == DMA_IN_PROGRESS && c->paused) {
 		ret = DMA_PAUSED;
+	} else if (d && d->polled && c->running) {
+		uint32_t ccr = omap_dma_chan_read(c, CCR);
+		/*
+		 * The channel is no longer active, set the return value
+		 * accordingly and mark it as completed
+		 */
+		if (!(ccr & CCR_ENABLE)) {
+			struct omap_desc *d = c->desc;
+			ret = DMA_COMPLETE;
+			omap_dma_start_desc(c);
+			vchan_cookie_complete(&d->vd);
+		}
+	}
 
 	spin_unlock_irqrestore(&c->vc.lock, flags);
 
@@ -1180,7 +1189,10 @@ static struct dma_async_tx_descriptor *omap_dma_prep_dma_memcpy(
 	d->ccr = c->ccr;
 	d->ccr |= CCR_DST_AMODE_POSTINC | CCR_SRC_AMODE_POSTINC;
 
-	d->cicr = CICR_DROP_IE | CICR_FRAME_IE;
+	if (tx_flags & DMA_PREP_INTERRUPT)
+		d->cicr |= CICR_FRAME_IE;
+	else
+		d->polled = true;
 
 	d->csdp = data_type;
 
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
