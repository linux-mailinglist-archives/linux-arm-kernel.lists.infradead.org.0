Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 535CC1831A0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 14:34:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+B7tKl/isMTwazzjdkzL4ulNGzpUgDEkxMx1dxqcFE=; b=Ql3GR8ekIZh5mK
	PllcvplIS3XTxXuldH6e/O/2VVlZllnnnqzdYQ383KaEUGCvu/GibI91FcdK2pE7o/bpM+jadeea1
	fybbHShV/23XWheAuXbtLxx9gisdsxi3YuJoyUQ8okoaaRBWBUWZOPMQy9coz0l7m7ICX1mtOVKrE
	sPv2QnnDPx/RufIQ9GQlvZgomIVsdZ1joZmrak2DuTgdalgAAPxwjbrATg6kWPHXzCxVeBfPkDZbx
	zvDEpEHBSCGzIwNHkw31sS9XdVsca+KVCWThKTiHTeQnR0m9mEApLBq+043gS37XCrAKyaZph88W4
	wxt1X4D7DAGlaS9V77UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCNyX-0005yw-JK; Thu, 12 Mar 2020 13:34:13 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCNw7-0003Wt-4c
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 13:31:48 +0000
Received: by mail-wm1-x343.google.com with SMTP id a5so6118554wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 06:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tdUB5s+Mgt8nPOXH1fk62M6gPs/HBhr92WS0vOvoB1Y=;
 b=fDpw7L+gW+Pj56qUlrLoOupqymKfPWSYbHcqXeYo8PK0Q12Q7VmFHJkS7UauyOeKGd
 nT5vfpMk5dlesnPeCwZSkDZ9H/ORR7AToqivIwtAXa+KdpSfH2HiXzS36+47BPVCMF58
 +fFY5aMsmeyRMTHN++OW+He5L+/UYDfEbIR4FG8nGT+uWQ0uV9y6/aJyF1hO46rnxqqK
 31oeFdQ8Of844HYuiIuGda7zr5DjjRn/YdKcn8Fyx4hBnixE+3Uzsw9U1R6u3fxyygsY
 wMEA3qkA78Z3IRRWfY42RYTiQys+fiScAXWCK0vVjlkcXua3i3rtj78hKw9FZtq3dGfZ
 L7eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tdUB5s+Mgt8nPOXH1fk62M6gPs/HBhr92WS0vOvoB1Y=;
 b=Me8CJazELSGvEw/FNAJaeZPhAMwZKVJoQ6yEDZ0R+pLRt4j4h7h5B2spSZZZ7+DKBH
 AvCyTtFZD6e+DO8nikH7nW7j+FjwXe0hMrBlYRgmdKeFgjhoZWpVo+Ythw8jTU/2PysJ
 IvxF/ZaEsYxg70rUGxn6+Ipl7q93aA9820B4JxFxGv1FDnqu5glMvan6TlUv3uXR//oa
 JIOR9tWctq9eJ4Qg735Ji/uXZMduc4Te5xxtuL5/lhtNu5h1LGZHLYbnI+o6FO2uojmS
 Ya8vWHEimHzZlOpmzumDiuDcZ6DGA5hXibyfvPd4l9adjLLTACGLchpvYRbQy42cL76i
 nqzQ==
X-Gm-Message-State: ANhLgQ2CKjDR+2EZSzCI7QDzxIrRXHDpkrgU/gr+j7XMArO+V94ZpE0C
 mPjDvSunbEnqWSVg0eVmA67lHw==
X-Google-Smtp-Source: ADFU+vv/ptKYufG50eCMBenezZRiuwhxHUdOT4gS3Eid//FvxWcjmAm/EFdpPj9NJL4rydwgYyOYQg==
X-Received: by 2002:a1c:e257:: with SMTP id z84mr5153684wmg.91.1584019901376; 
 Thu, 12 Mar 2020 06:31:41 -0700 (PDT)
Received: from bender.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id m21sm12242885wmi.27.2020.03.12.06.31.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 06:31:40 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: broonie@kernel.org
Subject: [PATCH 7/9] spi: meson-spicc: adapt burst handling for G12A support
Date: Thu, 12 Mar 2020 14:31:29 +0100
Message-Id: <20200312133131.26430-8-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200312133131.26430-1-narmstrong@baylibre.com>
References: <20200312133131.26430-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_063143_211326_6DC45473 
X-CRM114-Status: GOOD (  17.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The G12A SPICC controller variant has a different FIFO size and doesn't
handle the RX Half interrupt the same way as GXL & AXG variants.

Thus simplify the burst management and take in account a variable FIFO
size.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/spi/spi-meson-spicc.c | 129 +++++++++++++---------------------
 1 file changed, 50 insertions(+), 79 deletions(-)

diff --git a/drivers/spi/spi-meson-spicc.c b/drivers/spi/spi-meson-spicc.c
index 4494a791f4a7..351ccd8dd2c2 100644
--- a/drivers/spi/spi-meson-spicc.c
+++ b/drivers/spi/spi-meson-spicc.c
@@ -141,12 +141,10 @@
 #define writel_bits_relaxed(mask, val, addr) \
 	writel_relaxed((readl_relaxed(addr) & ~(mask)) | (val), addr)
 
-#define SPICC_BURST_MAX	16
-#define SPICC_FIFO_HALF 10
-
 struct meson_spicc_data {
 	unsigned int			max_speed_hz;
 	unsigned int			min_speed_hz;
+	unsigned int			fifo_size;
 	bool				has_oen;
 	bool				has_enhance_clk_div;
 };
@@ -166,8 +164,6 @@ struct meson_spicc_device {
 	unsigned long			tx_remain;
 	unsigned long			rx_remain;
 	unsigned long			xfer_remain;
-	bool				is_burst_end;
-	bool				is_last_burst;
 };
 
 static void meson_spicc_oen_enable(struct meson_spicc_device *spicc)
@@ -191,7 +187,7 @@ static inline bool meson_spicc_txfull(struct meson_spicc_device *spicc)
 
 static inline bool meson_spicc_rxready(struct meson_spicc_device *spicc)
 {
-	return FIELD_GET(SPICC_RH | SPICC_RR | SPICC_RF_EN,
+	return FIELD_GET(SPICC_RH | SPICC_RR | SPICC_RF,
 			 readl_relaxed(spicc->base + SPICC_STATREG));
 }
 
@@ -246,34 +242,22 @@ static inline void meson_spicc_tx(struct meson_spicc_device *spicc)
 			       spicc->base + SPICC_TXDATA);
 }
 
-static inline u32 meson_spicc_setup_rx_irq(struct meson_spicc_device *spicc,
-					   u32 irq_ctrl)
+static inline void meson_spicc_setup_burst(struct meson_spicc_device *spicc)
 {
-	if (spicc->rx_remain > SPICC_FIFO_HALF)
-		irq_ctrl |= SPICC_RH_EN;
-	else
-		irq_ctrl |= SPICC_RR_EN;
-
-	return irq_ctrl;
-}
 
-static inline void meson_spicc_setup_burst(struct meson_spicc_device *spicc,
-					   unsigned int burst_len)
-{
+	unsigned int burst_len = min_t(unsigned int,
+				       spicc->xfer_remain /
+				       spicc->bytes_per_word,
+				       spicc->data->fifo_size);
 	/* Setup Xfer variables */
 	spicc->tx_remain = burst_len;
 	spicc->rx_remain = burst_len;
 	spicc->xfer_remain -= burst_len * spicc->bytes_per_word;
-	spicc->is_burst_end = false;
-	if (burst_len < SPICC_BURST_MAX || !spicc->xfer_remain)
-		spicc->is_last_burst = true;
-	else
-		spicc->is_last_burst = false;
 
 	/* Setup burst length */
 	writel_bits_relaxed(SPICC_BURSTLENGTH_MASK,
 			FIELD_PREP(SPICC_BURSTLENGTH_MASK,
-				burst_len),
+				burst_len - 1),
 			spicc->base + SPICC_CONREG);
 
 	/* Fill TX FIFO */
@@ -283,61 +267,26 @@ static inline void meson_spicc_setup_burst(struct meson_spicc_device *spicc,
 static irqreturn_t meson_spicc_irq(int irq, void *data)
 {
 	struct meson_spicc_device *spicc = (void *) data;
-	u32 ctrl = readl_relaxed(spicc->base + SPICC_INTREG);
-	u32 stat = readl_relaxed(spicc->base + SPICC_STATREG) & ctrl;
 
-	ctrl &= ~(SPICC_RH_EN | SPICC_RR_EN);
+	writel_bits_relaxed(SPICC_TC, SPICC_TC, spicc->base + SPICC_STATREG);
 
 	/* Empty RX FIFO */
 	meson_spicc_rx(spicc);
 
-	/* Enable TC interrupt since we transferred everything */
-	if (!spicc->tx_remain && !spicc->rx_remain) {
-		spicc->is_burst_end = true;
-
-		/* Enable TC interrupt */
-		ctrl |= SPICC_TC_EN;
-
-		/* Reload IRQ status */
-		stat = readl_relaxed(spicc->base + SPICC_STATREG) & ctrl;
-	}
-
-	/* Check transfer complete */
-	if ((stat & SPICC_TC) && spicc->is_burst_end) {
-		unsigned int burst_len;
-
-		/* Clear TC bit */
-		writel_relaxed(SPICC_TC, spicc->base + SPICC_STATREG);
-
-		/* Disable TC interrupt */
-		ctrl &= ~SPICC_TC_EN;
-
-		if (spicc->is_last_burst) {
-			/* Disable all IRQs */
-			writel(0, spicc->base + SPICC_INTREG);
-
-			spi_finalize_current_transfer(spicc->master);
+	if (!spicc->xfer_remain) {
+		/* Disable all IRQs */
+		writel(0, spicc->base + SPICC_INTREG);
 
-			return IRQ_HANDLED;
-		}
+		spi_finalize_current_transfer(spicc->master);
 
-		burst_len = min_t(unsigned int,
-				  spicc->xfer_remain / spicc->bytes_per_word,
-				  SPICC_BURST_MAX);
-
-		/* Setup burst */
-		meson_spicc_setup_burst(spicc, burst_len);
-
-		/* Restart burst */
-		writel_bits_relaxed(SPICC_XCH, SPICC_XCH,
-				    spicc->base + SPICC_CONREG);
+		return IRQ_HANDLED;
 	}
 
-	/* Setup RX interrupt trigger */
-	ctrl = meson_spicc_setup_rx_irq(spicc, ctrl);
+	/* Setup burst */
+	meson_spicc_setup_burst(spicc);
 
-	/* Reconfigure interrupts */
-	writel(ctrl, spicc->base + SPICC_INTREG);
+	/* Start burst */
+	writel_bits_relaxed(SPICC_XCH, SPICC_XCH, spicc->base + SPICC_CONREG);
 
 	return IRQ_HANDLED;
 }
@@ -405,6 +354,28 @@ static void meson_spicc_setup_xfer(struct meson_spicc_device *spicc,
 	clk_set_rate(spicc->clk, xfer->speed_hz);
 
 	meson_spicc_auto_io_delay(spicc);
+
+	writel_relaxed(0, spicc->base + SPICC_DMAREG);
+}
+
+static void meson_spicc_reset_fifo(struct meson_spicc_device *spicc)
+{
+	u32 data;
+
+	if (spicc->data->has_oen)
+		writel_bits_relaxed(SPICC_ENH_MAIN_CLK_AO,
+				    SPICC_ENH_MAIN_CLK_AO,
+				    spicc->base + SPICC_ENH_CTL0);
+
+	writel_bits_relaxed(SPICC_FIFORST_W1_MASK, SPICC_FIFORST_W1_MASK,
+			    spicc->base + SPICC_TESTREG);
+
+	while (meson_spicc_rxready(spicc))
+		data = readl_relaxed(spicc->base + SPICC_RXDATA);
+
+	if (spicc->data->has_oen)
+		writel_bits_relaxed(SPICC_ENH_MAIN_CLK_AO, 0,
+				    spicc->base + SPICC_ENH_CTL0);
 }
 
 static int meson_spicc_transfer_one(struct spi_master *master,
@@ -412,8 +383,6 @@ static int meson_spicc_transfer_one(struct spi_master *master,
 				    struct spi_transfer *xfer)
 {
 	struct meson_spicc_device *spicc = spi_master_get_devdata(master);
-	unsigned int burst_len;
-	u32 irq = 0;
 
 	/* Store current transfer */
 	spicc->xfer = xfer;
@@ -427,22 +396,22 @@ static int meson_spicc_transfer_one(struct spi_master *master,
 	spicc->bytes_per_word =
 	   DIV_ROUND_UP(spicc->xfer->bits_per_word, 8);
 
+	if (xfer->len % spicc->bytes_per_word)
+		return -EINVAL;
+
 	/* Setup transfer parameters */
 	meson_spicc_setup_xfer(spicc, xfer);
 
-	burst_len = min_t(unsigned int,
-			  spicc->xfer_remain / spicc->bytes_per_word,
-			  SPICC_BURST_MAX);
-
-	meson_spicc_setup_burst(spicc, burst_len);
+	meson_spicc_reset_fifo(spicc);
 
-	irq = meson_spicc_setup_rx_irq(spicc, irq);
+	/* Setup burst */
+	meson_spicc_setup_burst(spicc);
 
 	/* Start burst */
 	writel_bits_relaxed(SPICC_XCH, SPICC_XCH, spicc->base + SPICC_CONREG);
 
 	/* Enable interrupts */
-	writel_relaxed(irq, spicc->base + SPICC_INTREG);
+	writel_relaxed(SPICC_TC_EN, spicc->base + SPICC_INTREG);
 
 	return 1;
 }
@@ -499,7 +468,7 @@ static int meson_spicc_prepare_message(struct spi_master *master,
 	/* Setup no wait cycles by default */
 	writel_relaxed(0, spicc->base + SPICC_PERIODREG);
 
-	writel_bits_relaxed(BIT(24), BIT(24), spicc->base + SPICC_TESTREG);
+	writel_bits_relaxed(SPICC_LBC_W1, 0, spicc->base + SPICC_TESTREG);
 
 	return 0;
 }
@@ -797,11 +766,13 @@ static int meson_spicc_remove(struct platform_device *pdev)
 static const struct meson_spicc_data meson_spicc_gx_data = {
 	.max_speed_hz		= 30000000,
 	.min_speed_hz		= 325000,
+	.fifo_size		= 16,
 };
 
 static const struct meson_spicc_data meson_spicc_axg_data = {
 	.max_speed_hz		= 80000000,
 	.min_speed_hz		= 325000,
+	.fifo_size		= 16,
 	.has_oen		= true,
 	.has_enhance_clk_div	= true,
 };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
