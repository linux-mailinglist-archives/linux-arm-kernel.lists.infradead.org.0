Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25CC74A240
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 15:33:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jaQ6CePF3sZWRgqCTBaQ79Bm/+2LGGD+fsXrYIygMsw=; b=NL546Tg8t0XaZq
	B+RRsVoFuz2OFOOa/eqZ97XwuleoOvlS3IsVHmn8rUoV8hxIz7piP1xRpJkc3DS/gL3lhB/ljAtdX
	SrDGSISdFVga39Fr0ETl4lHvuTM9lbMjJ5sYI209/bTX022mOskENfLKMeHHh/YLNxAh7Xr8mpwaj
	BvT7UFphfDGYvPAmnNX6izMvzkPsqif8GjKKnqdVO/b45hFq0pz6a62S3RMzmc7EDH1Y3GxP5gdkp
	t8PqtQzaL9OIpaLz0OZ4F7Gz9MLQ13Sr+n5FL3WqTSa4lLfmIoY+46hmYQ+eK3Me8cbQfd2vi2hdy
	nvbuuLbYE3lqOTNnIT1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdEEU-0006BB-6i; Tue, 18 Jun 2019 13:33:06 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdE6P-0007Dn-OS
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 13:24:48 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5IDOh9E096783;
 Tue, 18 Jun 2019 08:24:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560864283;
 bh=fEiVVUNxKUTV5pmE+DhrGRrNcaajXtj3g4DtOVkNe0M=;
 h=From:To:CC:Subject:Date;
 b=QlI1GmFLreu8eCjET3RN0CrEx0VSThOz75oIzfCTr1zBTqYix4JHb1h5GJL5Hzmmm
 K2xN9p2g+k0/rd9zSzGlT7N7Kk0jq9+s7NAJdT38K5Vz1DB+sq0xnPWrpaJPcro3Ux
 K/1Sqs+gqOhwD74eliSDF2Wlm5/7ssPnG9W/xnEU=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5IDOhbu024943
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 18 Jun 2019 08:24:43 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 18
 Jun 2019 08:23:42 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 18 Jun 2019 08:23:42 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5IDNeIC121888;
 Tue, 18 Jun 2019 08:23:40 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>
Subject: [PATCH] dmaengine: ti: omap-dma: Improved memcpy polling support
Date: Tue, 18 Jun 2019 16:24:16 +0300
Message-ID: <20190618132416.26874-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_062446_345232_0B126CF3 
X-CRM114-Status: GOOD (  17.13  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Hi,

This patch fine-tunes the omap-dma polled memcpy support to be inline with how
the EDMA driver is handling it.

The polled completion can be tested by applying:
https://patchwork.kernel.org/patch/10966499/

and run the dmatest with polled = 1 on boards where sDMA is used.

Or boot up any dra7 family device with display enabled. The workaround for DMM
errata i878 uses polled DMA memcpy.

Regards,
Peter

 drivers/dma/ti/omap-dma.c | 37 ++++++++++++++++++++++++-------------
 1 file changed, 24 insertions(+), 13 deletions(-)

diff --git a/drivers/dma/ti/omap-dma.c b/drivers/dma/ti/omap-dma.c
index 5ba7d8485026..75d8f7e13c8d 100644
--- a/drivers/dma/ti/omap-dma.c
+++ b/drivers/dma/ti/omap-dma.c
@@ -94,6 +94,7 @@ struct omap_desc {
 	bool using_ll;
 	enum dma_transfer_direction dir;
 	dma_addr_t dev_addr;
+	bool polled;
 
 	int32_t fi;		/* for OMAP_DMA_SYNC_PACKET / double indexing */
 	int16_t ei;		/* for double indexing */
@@ -834,20 +835,10 @@ static enum dma_status omap_dma_tx_status(struct dma_chan *chan,
 
 	ret = dma_cookie_status(chan, cookie, txstate);
 
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
+	spin_lock_irqsave(&c->vc.lock, flags);
 	if (ret == DMA_COMPLETE || !txstate)
-		return ret;
+		goto out;
 
-	spin_lock_irqsave(&c->vc.lock, flags);
 	vd = vchan_find_desc(&c->vc, cookie);
 	if (vd) {
 		txstate->residue = omap_dma_desc_size(to_omap_dma_desc(&vd->tx));
@@ -868,6 +859,23 @@ static enum dma_status omap_dma_tx_status(struct dma_chan *chan,
 	}
 	if (ret == DMA_IN_PROGRESS && c->paused)
 		ret = DMA_PAUSED;
+
+out:
+	if (ret == DMA_IN_PROGRESS && c->running && c->desc &&
+	    c->desc->polled && c->desc->vd.tx.cookie == cookie) {
+		uint32_t ccr = omap_dma_chan_read(c, CCR);
+		/*
+		 * The channel is no longer active, set the return value
+		 * accordingly
+		 */
+		if (!(ccr & CCR_ENABLE)) {
+			struct omap_desc *d = c->desc;
+			ret = DMA_COMPLETE;
+			omap_dma_start_desc(c);
+			vchan_cookie_complete(&d->vd);
+		}
+	}
+
 	spin_unlock_irqrestore(&c->vc.lock, flags);
 
 	return ret;
@@ -1233,7 +1241,10 @@ static struct dma_async_tx_descriptor *omap_dma_prep_dma_memcpy(
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
