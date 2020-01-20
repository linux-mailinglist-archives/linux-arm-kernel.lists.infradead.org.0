Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC380142AEE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 13:34:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=C/N5u0hf+On2/DJeQhcB8I/f7cH3BkXVklbXsbOnHyE=; b=E2pchVw9z57yM5bvcKmsaqrUNZ
	bWzBgowji8S1Q34bXdT2DMREH1cxJyiqAt+poRdMZ970agZrJe1R07wvDPP7fXT74b9BF+jwW4/RF
	C8XYazcqmDhCEZFD8Ol9syfeGjWr8Zp92jbOojoqcSc4E6OK/B3U6621cul78yq/UfQhunYwvGues
	dGWWtCJaBBxT4dGK8sW97FMS71F6Q/F6Ul3/m/PtIr2bC5SZdYQ4Izwya93D2iscJaWixL3o6bTxm
	OoQe++8oS1L8j+aBvPrZaoM8GLLuqUJGrCFuIwX9hgU1m1fvjCmb1KeHcHzntXTgkbVqMEhmHfdTb
	yn09o2Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itWFm-0008D5-2u; Mon, 20 Jan 2020 12:34:02 +0000
Received: from olimex.com ([2001:470:0:1f2::b869:4820])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itWFa-0008Bl-0n
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 12:33:54 +0000
Received: from localhost.localdomain ([94.155.250.134])
 by olimex.com with ESMTPSA
 (ECDHE-RSA-AES128-GCM-SHA256:TLSv1.2:Kx=ECDH:Au=RSA:Enc=AESGCM(128):Mac=AEAD)
 (SMTP-AUTH username stefan@olimex.com, mechanism PLAIN)
 for <linux-arm-kernel@lists.infradead.org>; Mon, 20 Jan 2020 04:33:42 -0800
From: Stefan Mavrodiev <stefan@olimex.com>
To: Dan Williams <dan.j.williams@intel.com>, Vinod Koul <vkoul@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 linux-kernel@vger.kernel.org (open list),
 dmaengine@vger.kernel.org (open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM),
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Allwinner sunXi SoC
 support), 
 dri-devel@lists.freedesktop.org (open list:DRM DRIVERS FOR ALLWINNER A10)
Subject: [PATCH v2 1/2] dmaengine: sun4i: Add support for cyclic requests with
 dedicated DMA
Date: Mon, 20 Jan 2020 14:33:25 +0200
Message-Id: <20200120123326.30743-2-stefan@olimex.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200120123326.30743-1-stefan@olimex.com>
References: <20200120123326.30743-1-stefan@olimex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_043350_064497_391855E8 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Changes for v2:
 - None

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
