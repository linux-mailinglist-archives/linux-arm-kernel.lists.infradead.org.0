Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BDDC136F10
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 15:12:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tucQxrpy2hDrcbb5GRBUq7o+smWSqwUvc/o4yphZCgs=; b=BxYZNNoMeNhEXAvlMWWkaOqEYr
	JYZRSRCvs2LSGkKxSIOzan5cJhnxwALJXUCePKOg+doELiE9DkckbRPJGG9uu9Mi6+AfU1+L0XGdZ
	XIxcxjWNu9QrtdhtC2tlDOgWBMvjJEHZBqawK9AoG+5KtTxZep00ZFBvBwoaMkoqQP38J0U+gjzTl
	Z2mpFiJlJ7V7oTwdG2ASzU5YehhBxuui6vn7ABCYJOugYfty5XO4HoqylOAc7b124jbqWeLJWFCNG
	XRO6pR3VnVmO9PM3my998K49041XOSaXkbG5o7jDXBTCZnVfsHydQxCa2vjVUjjVNinvTH/YGlX+t
	kFhPnX7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipv1v-0000Rr-By; Fri, 10 Jan 2020 14:12:51 +0000
Received: from olimex.com ([184.105.72.32])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipv1Q-00008H-Qa
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 14:12:23 +0000
Received: from localhost.localdomain ([94.155.250.134])
 by olimex.com with ESMTPSA
 (ECDHE-RSA-AES128-GCM-SHA256:TLSv1.2:Kx=ECDH:Au=RSA:Enc=AESGCM(128):Mac=AEAD)
 (SMTP-AUTH username stefan@olimex.com, mechanism PLAIN)
 for <linux-arm-kernel@lists.infradead.org>; Fri, 10 Jan 2020 06:12:01 -0800
From: Stefan Mavrodiev <stefan@olimex.com>
To: Dan Williams <dan.j.williams@intel.com>, Vinod Koul <vkoul@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 linux-kernel@vger.kernel.org (open list),
 dmaengine@vger.kernel.org (open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM),
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Allwinner sunXi SoC
 support), 
 dri-devel@lists.freedesktop.org (open list:DRM DRIVERS FOR ALLWINNER A10)
Subject: [PATCH 1/2] dmaengine: sun4i: Add support for cyclic requests with
 dedicated DMA
Date: Fri, 10 Jan 2020 16:11:39 +0200
Message-Id: <20200110141140.28527-2-stefan@olimex.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200110141140.28527-1-stefan@olimex.com>
References: <20200110141140.28527-1-stefan@olimex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_061220_892964_AA72A085 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-sunxi@googlegroups.com, Stefan Mavrodiev <stefan@olimex.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently the cyclic transfers can be used only with normal DMAs. They
can be used by pcm_dmaengine module, which is required for implementing
sound with sun4i-hdmi encoder. This is so because the controller can
accept audio only from a dedicated DMA.

This patch enables them, following the existing style for the
scatter/gather type transfers.

Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>
---
 drivers/dma/sun4i-dma.c | 45 ++++++++++++++++++++++-------------------
 1 file changed, 24 insertions(+), 21 deletions(-)

diff --git a/drivers/dma/sun4i-dma.c b/drivers/dma/sun4i-dma.c
index e397a50058c8..7b41815d86fb 100644
--- a/drivers/dma/sun4i-dma.c
+++ b/drivers/dma/sun4i-dma.c
@@ -669,43 +669,41 @@ sun4i_dma_prep_dma_cyclic(struct dma_chan *chan, dma_addr_t buf, size_t len,
 	dma_addr_t src, dest;
 	u32 endpoints;
 	int nr_periods, offset, plength, i;
+	u8 ram_type, io_mode, linear_mode;
 
 	if (!is_slave_direction(dir)) {
 		dev_err(chan2dev(chan), "Invalid DMA direction\n");
 		return NULL;
 	}
 
-	if (vchan->is_dedicated) {
-		/*
-		 * As we are using this just for audio data, we need to use
-		 * normal DMA. There is nothing stopping us from supporting
-		 * dedicated DMA here as well, so if a client comes up and
-		 * requires it, it will be simple to implement it.
-		 */
-		dev_err(chan2dev(chan),
-			"Cyclic transfers are only supported on Normal DMA\n");
-		return NULL;
-	}
-
 	contract = generate_dma_contract();
 	if (!contract)
 		return NULL;
 
 	contract->is_cyclic = 1;
 
-	/* Figure out the endpoints and the address we need */
+	if (vchan->is_dedicated) {
+		io_mode = SUN4I_DDMA_ADDR_MODE_IO;
+		linear_mode = SUN4I_DDMA_ADDR_MODE_LINEAR;
+		ram_type = SUN4I_DDMA_DRQ_TYPE_SDRAM;
+	} else {
+		io_mode = SUN4I_NDMA_ADDR_MODE_IO;
+		linear_mode = SUN4I_NDMA_ADDR_MODE_LINEAR;
+		ram_type = SUN4I_NDMA_DRQ_TYPE_SDRAM;
+	}
+
 	if (dir == DMA_MEM_TO_DEV) {
 		src = buf;
 		dest = sconfig->dst_addr;
-		endpoints = SUN4I_DMA_CFG_SRC_DRQ_TYPE(SUN4I_NDMA_DRQ_TYPE_SDRAM) |
-			    SUN4I_DMA_CFG_DST_DRQ_TYPE(vchan->endpoint) |
-			    SUN4I_DMA_CFG_DST_ADDR_MODE(SUN4I_NDMA_ADDR_MODE_IO);
+		endpoints = SUN4I_DMA_CFG_DST_DRQ_TYPE(vchan->endpoint) |
+			    SUN4I_DMA_CFG_DST_ADDR_MODE(io_mode) |
+			    SUN4I_DMA_CFG_SRC_DRQ_TYPE(ram_type);
 	} else {
 		src = sconfig->src_addr;
 		dest = buf;
-		endpoints = SUN4I_DMA_CFG_SRC_DRQ_TYPE(vchan->endpoint) |
-			    SUN4I_DMA_CFG_SRC_ADDR_MODE(SUN4I_NDMA_ADDR_MODE_IO) |
-			    SUN4I_DMA_CFG_DST_DRQ_TYPE(SUN4I_NDMA_DRQ_TYPE_SDRAM);
+		endpoints = SUN4I_DMA_CFG_DST_DRQ_TYPE(ram_type) |
+			    SUN4I_DMA_CFG_SRC_DRQ_TYPE(vchan->endpoint) |
+			    SUN4I_DMA_CFG_SRC_ADDR_MODE(io_mode);
 	}
 
 	/*
@@ -747,8 +745,13 @@ sun4i_dma_prep_dma_cyclic(struct dma_chan *chan, dma_addr_t buf, size_t len,
 			dest = buf + offset;
 
 		/* Make the promise */
-		promise = generate_ndma_promise(chan, src, dest,
-						plength, sconfig, dir);
+		if (vchan->is_dedicated)
+			promise = generate_ddma_promise(chan, src, dest,
+							plength, sconfig);
+		else
+			promise = generate_ndma_promise(chan, src, dest,
+							plength, sconfig, dir);
+
 		if (!promise) {
 			/* TODO: should we free everything? */
 			return NULL;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
