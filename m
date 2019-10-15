Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 103BFD74C0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 13:17:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=CtjbLAoOTd74+lUhSOeyLUY2ttvp5FUo3TX5pu3HUmw=; b=gcx
	z07YlRqY7xap8sTSpYmb1lv/3VySFGE71BByHU7YymLY+LYaRdCfEDCbTvCRIz//VEnULuRlt91ce
	suXTVO5sPjkeGho7JRAhb/4G6fqyQ9+kqw4DRFvnVqhqpZTLj/u+d9F61okat1PWkS5OpVEuFj6li
	UQzyE2xrriWIdt+rhC379HJ9tzckYH+VJTr/g/85SyNkJhuEaJF01aDOZInsBBjcQJYSIrZMFiLbK
	JiU7rKD0zutcs8cdsDUcm9CVjrYaauPmNwM08lgUj+zyoOAYKpisRcEUxq89KLFuTMkkKCnMQTvAh
	6zn75Smk/GjEd1OZdrP0MjQhquuqRsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKKpn-0004WP-9j; Tue, 15 Oct 2019 11:17:47 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKKki-0007Dz-Bk
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 11:12:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=AWIbhsUruWClV4Qy9gSJ6HfD9RoU6LHfITwF1J+WuQs=; b=kq41q2/r7m0M
 Xc7qXh1h6VN4AQZ6C5uB/Esmh7mQu7E5ad47VYNFXMOaHvzlfhTFQXACdN5IHlGXvXpZcnSw08g2b
 jos6YDy9zsVAt6+1A2X1Agt7kw9R4ya5i/Af34IKHlUIajd35h26CUa32pe6MH5/AA15VCuqtobEt
 wCWw0=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iKKke-00022g-GM; Tue, 15 Oct 2019 11:12:28 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id F296127419E4; Tue, 15 Oct 2019 12:12:27 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
Subject: Applied "spi: sprd: convert transfer word delay to spi_delay struct"
 to the spi tree
In-Reply-To: <20190926105147.7839-5-alexandru.ardelean@analog.com>
X-Patchwork-Hint: ignore
Message-Id: <20191015111227.F296127419E4@ypsilon.sirena.org.uk>
Date: Tue, 15 Oct 2019 12:12:27 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_041232_615744_A7AE1781 
X-CRM114-Status: GOOD (  17.40  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: f.fainelli@gmail.com, baolin.wang@linaro.org, linux-iio@vger.kernel.org,
 zhang.lyra@gmail.com, linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 linux-tegra@vger.kernel.org, orsonzhai@gmail.com, jic23@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: sprd: convert transfer word delay to spi_delay struct

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git 

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 84593a131c3af21d686d05c4b4432290a415d399 Mon Sep 17 00:00:00 2001
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
Date: Thu, 26 Sep 2019 13:51:32 +0300
Subject: [PATCH] spi: sprd: convert transfer word delay to spi_delay struct

The Spreadtrum SPI driver is the only user of the `word_delay` field in
the `spi_transfer` struct.

This change converts the field to use the `spi_delay` struct. This also
enforces the users to specify the delay unit to be `SPI_DELAY_UNIT_SCK`.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
Link: https://lore.kernel.org/r/20190926105147.7839-5-alexandru.ardelean@analog.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-sprd.c  | 15 ++++++++++++---
 include/linux/spi/spi.h |  4 ++--
 2 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/spi/spi-sprd.c b/drivers/spi/spi-sprd.c
index 8c9021b7f7a9..2ee1feb41681 100644
--- a/drivers/spi/spi-sprd.c
+++ b/drivers/spi/spi-sprd.c
@@ -669,11 +669,15 @@ static void sprd_spi_set_speed(struct sprd_spi *ss, u32 speed_hz)
 	writel_relaxed(clk_div, ss->base + SPRD_SPI_CLKD);
 }
 
-static void sprd_spi_init_hw(struct sprd_spi *ss, struct spi_transfer *t)
+static int sprd_spi_init_hw(struct sprd_spi *ss, struct spi_transfer *t)
 {
+	struct spi_delay *d = &t->word_delay;
 	u16 word_delay, interval;
 	u32 val;
 
+	if (d->unit != SPI_DELAY_UNIT_SCK)
+		return -EINVAL;
+
 	val = readl_relaxed(ss->base + SPRD_SPI_CTL7);
 	val &= ~(SPRD_SPI_SCK_REV | SPRD_SPI_NG_TX | SPRD_SPI_NG_RX);
 	/* Set default chip selection, clock phase and clock polarity */
@@ -686,7 +690,7 @@ static void sprd_spi_init_hw(struct sprd_spi *ss, struct spi_transfer *t)
 	 * formula as below per datasheet:
 	 * interval time (source clock cycles) = interval * 4 + 10.
 	 */
-	word_delay = clamp_t(u16, t->word_delay, SPRD_SPI_MIN_DELAY_CYCLE,
+	word_delay = clamp_t(u16, d->value, SPRD_SPI_MIN_DELAY_CYCLE,
 			     SPRD_SPI_MAX_DELAY_CYCLE);
 	interval = DIV_ROUND_UP(word_delay - 10, 4);
 	ss->word_delay = interval * 4 + 10;
@@ -711,6 +715,8 @@ static void sprd_spi_init_hw(struct sprd_spi *ss, struct spi_transfer *t)
 		val &= ~SPRD_SPI_DATA_LINE2_EN;
 
 	writel_relaxed(val, ss->base + SPRD_SPI_CTL7);
+
+	return 0;
 }
 
 static int sprd_spi_setup_transfer(struct spi_device *sdev,
@@ -719,13 +725,16 @@ static int sprd_spi_setup_transfer(struct spi_device *sdev,
 	struct sprd_spi *ss = spi_controller_get_devdata(sdev->controller);
 	u8 bits_per_word = t->bits_per_word;
 	u32 val, mode = 0;
+	int ret;
 
 	ss->len = t->len;
 	ss->tx_buf = t->tx_buf;
 	ss->rx_buf = t->rx_buf;
 
 	ss->hw_mode = sdev->mode;
-	sprd_spi_init_hw(ss, t);
+	ret = sprd_spi_init_hw(ss, t);
+	if (ret)
+		return ret;
 
 	/* Set tansfer speed and valid bits */
 	sprd_spi_set_speed(ss, t->speed_hz);
diff --git a/include/linux/spi/spi.h b/include/linux/spi/spi.h
index 7670be934643..6cb67ad53ffa 100644
--- a/include/linux/spi/spi.h
+++ b/include/linux/spi/spi.h
@@ -783,7 +783,7 @@ extern void spi_res_release(struct spi_controller *ctlr,
  *	the next transfer or completing this @spi_message.
  * @word_delay_usecs: microseconds to inter word delay after each word size
  *	(set by bits_per_word) transmission.
- * @word_delay: clock cycles to inter word delay after each word size
+ * @word_delay: inter word delay to be introduced after each word size
  *	(set by bits_per_word) transmission.
  * @effective_speed_hz: the effective SCK-speed that was used to
  *      transfer this transfer. Set to 0 if the spi bus driver does
@@ -900,8 +900,8 @@ struct spi_transfer {
 	u8		word_delay_usecs;
 	u16		delay_usecs;
 	struct spi_delay	cs_change_delay;
+	struct spi_delay	word_delay;
 	u32		speed_hz;
-	u16		word_delay;
 
 	u32		effective_speed_hz;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
