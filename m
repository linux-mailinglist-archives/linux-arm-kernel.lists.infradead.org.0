Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD851177DAA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 18:43:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dwvo3d4UDZapk45gJC1o58LdfQeKWvAV4oYXNOk8MS8=; b=X9AAZGSHGF8I/Y
	RI1eaCCJF8+0GN5EYwVrXhiggUUspxmCA2T89KoVoBNlfdz1NWT8UveWureCUaITsM4Z2yoaez2Sl
	QuRxYGSSdRDaF/TcuxkrVaIUOg8M1QNf2iEsYtzGg2SjXW4wvY+VN2HC51yJPSSu9ZNXm0UUAQjzc
	VhN8Xnb0oOfk9SHhQjqF1u3ygv6qcFyf26WCfZrEBz5EOpoaMGEAsXWQkCaDZlKh/VBpx+mPzEq/5
	8ofOvTwmi0/h+EsXjHl93Z8kcMhn76AVLKK7+zYuV9aw8CllWiACNJSqa4MILEKp7truFDhbFX7wm
	c+4/MKyLGoVB0V+SKbTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9BZy-0006lm-Nb; Tue, 03 Mar 2020 17:43:38 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9BZn-0006jD-9E
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 17:43:29 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id AFD1A23E48;
 Tue,  3 Mar 2020 18:43:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1583257402;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mA4DIJEOOKx5ud7WDVuzopCFuAjrmiR1O7hsLd3spDg=;
 b=o6uiTzW56vxrao9D8LKOmL3mktXiXR1rYNLwg5ODf+NBskyLs7eD7m5jjHJEfOq6NJlTnK
 yxLcy23vOCyCk38SwmEzznsRrhfmV4UbPfGw/NXytYh+I4/oqmpL+EhZwyoIdxDi5opE0E
 7H6tKtV6ehYjEJq4mDXIe4XFJOk7264=
From: Michael Walle <michael@walle.cc>
To: linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 4/9] tty: serial: fsl_lpuart: fix DMA mapping
Date: Tue,  3 Mar 2020 18:43:01 +0100
Message-Id: <20200303174306.6015-5-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303174306.6015-1-michael@walle.cc>
References: <20200303174306.6015-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: AFD1A23E48
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 NEURAL_SPAM(0.00)[0.501]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[14]; MID_CONTAINS_FROM(1.00)[];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c:8000::/33, country:DE];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_094327_653848_8E9DCF9E 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peng Fan <peng.fan@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Li Yang <leoyang.li@nxp.com>,
 Michael Walle <michael@walle.cc>, Rob Herring <robh+dt@kernel.org>,
 Yuan Yao <yao.yuan@nxp.com>, Vabhav Sharma <vabhav.sharma@nxp.com>,
 Jiri Slaby <jslaby@suse.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the correct device to request the DMA mapping. Otherwise the IOMMU
doesn't get the mapping and it will generate a page fault.

The error messages look like:
[   19.012140] arm-smmu 5000000.iommu: Unhandled context fault: fsr=0x402, iova=0xbbfff800, fsynr=0x3e0021, cbfrsynra=0x828, cb=9
[   19.023593] arm-smmu 5000000.iommu: Unhandled context fault: fsr=0x402, iova=0xbbfff800, fsynr=0x3e0021, cbfrsynra=0x828, cb=9

This was tested on a custom board with a LS1028A SoC.

Signed-off-by: Michael Walle <michael@walle.cc>
---
 drivers/tty/serial/fsl_lpuart.c | 48 +++++++++++++++++++--------------
 1 file changed, 28 insertions(+), 20 deletions(-)

diff --git a/drivers/tty/serial/fsl_lpuart.c b/drivers/tty/serial/fsl_lpuart.c
index 0b8c477b32a3..ada7fb1fa075 100644
--- a/drivers/tty/serial/fsl_lpuart.c
+++ b/drivers/tty/serial/fsl_lpuart.c
@@ -409,6 +409,7 @@ static void lpuart_dma_tx(struct lpuart_port *sport)
 	struct circ_buf *xmit = &sport->port.state->xmit;
 	struct scatterlist *sgl = sport->tx_sgl;
 	struct device *dev = sport->port.dev;
+	struct dma_chan *chan = sport->dma_tx_chan;
 	int ret;
 
 	if (sport->dma_tx_in_progress)
@@ -427,17 +428,19 @@ static void lpuart_dma_tx(struct lpuart_port *sport)
 		sg_set_buf(sgl + 1, xmit->buf, xmit->head);
 	}
 
-	ret = dma_map_sg(dev, sgl, sport->dma_tx_nents, DMA_TO_DEVICE);
+	ret = dma_map_sg(chan->device->dev, sgl, sport->dma_tx_nents,
+			 DMA_TO_DEVICE);
 	if (!ret) {
 		dev_err(dev, "DMA mapping error for TX.\n");
 		return;
 	}
 
-	sport->dma_tx_desc = dmaengine_prep_slave_sg(sport->dma_tx_chan, sgl,
+	sport->dma_tx_desc = dmaengine_prep_slave_sg(chan, sgl,
 					ret, DMA_MEM_TO_DEV,
 					DMA_PREP_INTERRUPT);
 	if (!sport->dma_tx_desc) {
-		dma_unmap_sg(dev, sgl, sport->dma_tx_nents, DMA_TO_DEVICE);
+		dma_unmap_sg(chan->device->dev, sgl, sport->dma_tx_nents,
+			      DMA_TO_DEVICE);
 		dev_err(dev, "Cannot prepare TX slave DMA!\n");
 		return;
 	}
@@ -446,7 +449,7 @@ static void lpuart_dma_tx(struct lpuart_port *sport)
 	sport->dma_tx_desc->callback_param = sport;
 	sport->dma_tx_in_progress = true;
 	sport->dma_tx_cookie = dmaengine_submit(sport->dma_tx_desc);
-	dma_async_issue_pending(sport->dma_tx_chan);
+	dma_async_issue_pending(chan);
 }
 
 static bool lpuart_stopped_or_empty(struct uart_port *port)
@@ -459,11 +462,13 @@ static void lpuart_dma_tx_complete(void *arg)
 	struct lpuart_port *sport = arg;
 	struct scatterlist *sgl = &sport->tx_sgl[0];
 	struct circ_buf *xmit = &sport->port.state->xmit;
+	struct dma_chan *chan = sport->dma_tx_chan;
 	unsigned long flags;
 
 	spin_lock_irqsave(&sport->port.lock, flags);
 
-	dma_unmap_sg(sport->port.dev, sgl, sport->dma_tx_nents, DMA_TO_DEVICE);
+	dma_unmap_sg(chan->device->dev, sgl, sport->dma_tx_nents,
+		     DMA_TO_DEVICE);
 
 	xmit->tail = (xmit->tail + sport->dma_tx_bytes) & (UART_XMIT_SIZE - 1);
 
@@ -529,15 +534,16 @@ static bool lpuart_is_32(struct lpuart_port *sport)
 static void lpuart_flush_buffer(struct uart_port *port)
 {
 	struct lpuart_port *sport = container_of(port, struct lpuart_port, port);
+	struct dma_chan *chan = sport->dma_tx_chan;
 	u32 val;
 
 	if (sport->lpuart_dma_tx_use) {
 		if (sport->dma_tx_in_progress) {
-			dma_unmap_sg(sport->port.dev, &sport->tx_sgl[0],
+			dma_unmap_sg(chan->device->dev, &sport->tx_sgl[0],
 				sport->dma_tx_nents, DMA_TO_DEVICE);
 			sport->dma_tx_in_progress = false;
 		}
-		dmaengine_terminate_all(sport->dma_tx_chan);
+		dmaengine_terminate_all(chan);
 	}
 
 	if (lpuart_is_32(sport)) {
@@ -993,6 +999,7 @@ static void lpuart_copy_rx_to_tty(struct lpuart_port *sport)
 	struct tty_port *port = &sport->port.state->port;
 	struct dma_tx_state state;
 	enum dma_status dmastat;
+	struct dma_chan *chan = sport->dma_rx_chan;
 	struct circ_buf *ring = &sport->rx_ring;
 	unsigned long flags;
 	int count = 0;
@@ -1053,10 +1060,7 @@ static void lpuart_copy_rx_to_tty(struct lpuart_port *sport)
 
 	spin_lock_irqsave(&sport->port.lock, flags);
 
-	dmastat = dmaengine_tx_status(sport->dma_rx_chan,
-				sport->dma_rx_cookie,
-				&state);
-
+	dmastat = dmaengine_tx_status(chan, sport->dma_rx_cookie, &state);
 	if (dmastat == DMA_ERROR) {
 		dev_err(sport->port.dev, "Rx DMA transfer failed!\n");
 		spin_unlock_irqrestore(&sport->port.lock, flags);
@@ -1064,7 +1068,8 @@ static void lpuart_copy_rx_to_tty(struct lpuart_port *sport)
 	}
 
 	/* CPU claims ownership of RX DMA buffer */
-	dma_sync_sg_for_cpu(sport->port.dev, &sport->rx_sgl, 1, DMA_FROM_DEVICE);
+	dma_sync_sg_for_cpu(chan->device->dev, &sport->rx_sgl, 1,
+			    DMA_FROM_DEVICE);
 
 	/*
 	 * ring->head points to the end of data already written by the DMA.
@@ -1106,7 +1111,7 @@ static void lpuart_copy_rx_to_tty(struct lpuart_port *sport)
 		sport->port.icount.rx += count;
 	}
 
-	dma_sync_sg_for_device(sport->port.dev, &sport->rx_sgl, 1,
+	dma_sync_sg_for_device(chan->device->dev, &sport->rx_sgl, 1,
 			       DMA_FROM_DEVICE);
 
 	spin_unlock_irqrestore(&sport->port.lock, flags);
@@ -1138,6 +1143,7 @@ static inline int lpuart_start_rx_dma(struct lpuart_port *sport)
 	struct tty_port *port = &sport->port.state->port;
 	struct tty_struct *tty = port->tty;
 	struct ktermios *termios = &tty->termios;
+	struct dma_chan *chan = sport->dma_rx_chan;
 
 	baud = tty_get_baud_rate(tty);
 
@@ -1159,7 +1165,8 @@ static inline int lpuart_start_rx_dma(struct lpuart_port *sport)
 		return -ENOMEM;
 
 	sg_init_one(&sport->rx_sgl, ring->buf, sport->rx_dma_rng_buf_len);
-	nent = dma_map_sg(sport->port.dev, &sport->rx_sgl, 1, DMA_FROM_DEVICE);
+	nent = dma_map_sg(chan->device->dev, &sport->rx_sgl, 1,
+			  DMA_FROM_DEVICE);
 
 	if (!nent) {
 		dev_err(sport->port.dev, "DMA Rx mapping error\n");
@@ -1170,7 +1177,7 @@ static inline int lpuart_start_rx_dma(struct lpuart_port *sport)
 	dma_rx_sconfig.src_addr_width = DMA_SLAVE_BUSWIDTH_1_BYTE;
 	dma_rx_sconfig.src_maxburst = 1;
 	dma_rx_sconfig.direction = DMA_DEV_TO_MEM;
-	ret = dmaengine_slave_config(sport->dma_rx_chan, &dma_rx_sconfig);
+	ret = dmaengine_slave_config(chan, &dma_rx_sconfig);
 
 	if (ret < 0) {
 		dev_err(sport->port.dev,
@@ -1178,7 +1185,7 @@ static inline int lpuart_start_rx_dma(struct lpuart_port *sport)
 		return ret;
 	}
 
-	sport->dma_rx_desc = dmaengine_prep_dma_cyclic(sport->dma_rx_chan,
+	sport->dma_rx_desc = dmaengine_prep_dma_cyclic(chan,
 				 sg_dma_address(&sport->rx_sgl),
 				 sport->rx_sgl.length,
 				 sport->rx_sgl.length / 2,
@@ -1192,7 +1199,7 @@ static inline int lpuart_start_rx_dma(struct lpuart_port *sport)
 	sport->dma_rx_desc->callback = lpuart_dma_rx_complete;
 	sport->dma_rx_desc->callback_param = sport;
 	sport->dma_rx_cookie = dmaengine_submit(sport->dma_rx_desc);
-	dma_async_issue_pending(sport->dma_rx_chan);
+	dma_async_issue_pending(chan);
 
 	if (lpuart_is_32(sport)) {
 		unsigned long temp = lpuart32_read(&sport->port, UARTBAUD);
@@ -1210,11 +1217,12 @@ static void lpuart_dma_rx_free(struct uart_port *port)
 {
 	struct lpuart_port *sport = container_of(port,
 					struct lpuart_port, port);
+	struct dma_chan *chan = sport->dma_rx_chan;
 
-	if (sport->dma_rx_chan)
-		dmaengine_terminate_all(sport->dma_rx_chan);
+	if (chan)
+		dmaengine_terminate_all(chan);
 
-	dma_unmap_sg(sport->port.dev, &sport->rx_sgl, 1, DMA_FROM_DEVICE);
+	dma_unmap_sg(chan->device->dev, &sport->rx_sgl, 1, DMA_FROM_DEVICE);
 	kfree(sport->rx_ring.buf);
 	sport->rx_ring.tail = 0;
 	sport->rx_ring.head = 0;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
