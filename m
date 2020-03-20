Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C6218D9EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 22:02:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=aiJhEixp2QuErkJmwwuue+rS0eWC42AqA+6ktxufvaI=; b=WCE
	5/CJQUFtvmv5CIG4i/FLsfH/Ey9+ZxG3MxKU7usT1y3lm7Hhq8JmR/+Mg8xLoBLJJLckNay8D+ZfS
	vXKFNOaZ11/J6nq8KruV13VKyZdXz3V2evppzdz/8RKST4nUp0yi0fMVnycl08jlJNVYLcXlzSLLU
	m3GKjda+rIVcJzIF+OzbSXpYeOJ4X1VtVh4PXbI7gAbnMgdp1Lt3RLTqWWVEkbc5JQeX2u5WSSkiq
	klDaJlFYFGb89HG+0EqMxPuihjXqekWfQ7M6EraYYrd7zuXDM83fWPlAKbM5SjzxnLp11tesmpCYI
	i6aptLPJYYvH8LB6maVo8Qzk8i3DFKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFOmF-0008QG-KC; Fri, 20 Mar 2020 21:01:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFOm7-0008PW-UV
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 21:01:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9EFF131B;
 Fri, 20 Mar 2020 14:01:49 -0700 (PDT)
Received: from localhost (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3534B3F792;
 Fri, 20 Mar 2020 14:01:49 -0700 (PDT)
Date: Fri, 20 Mar 2020 21:01:47 +0000
From: Mark Brown <broonie@kernel.org>
To: Alain Volmat <alain.volmat@st.com>
Subject: Applied "spi: stm32: Fix comments compilation warnings" to the spi
 tree
In-Reply-To: <1584711857-9162-1-git-send-email-alain.volmat@st.com>
Message-Id: <applied-1584711857-9162-1-git-send-email-alain.volmat@st.com>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_140152_075347_4BEB89F6 
X-CRM114-Status: GOOD (  18.98  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: amelie.delaunay@st.com, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, alain.volmat@st.com,
 Mark Brown <broonie@kernel.org>, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: stm32: Fix comments compilation warnings

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

From 1c52be8bed83e1a67b47295177b355d0f58c1372 Mon Sep 17 00:00:00 2001
From: Alain Volmat <alain.volmat@st.com>
Date: Fri, 20 Mar 2020 14:44:17 +0100
Subject: [PATCH] spi: stm32: Fix comments compilation warnings

Fix all functions and structure descriptions to have the driver
warning free when built with W=1.

Signed-off-by: Alain Volmat <alain.volmat@st.com>
Reviewed-by: Amelie Delaunay <amelie.delaunay@st.com>
Link: https://lore.kernel.org/r/1584711857-9162-1-git-send-email-alain.volmat@st.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-stm32.c | 62 ++++++++++++++++++++++++++++++-----------
 1 file changed, 45 insertions(+), 17 deletions(-)

diff --git a/drivers/spi/spi-stm32.c b/drivers/spi/spi-stm32.c
index e041f9c4ec47..44ac6eb3298d 100644
--- a/drivers/spi/spi-stm32.c
+++ b/drivers/spi/spi-stm32.c
@@ -175,7 +175,7 @@
 #define SPI_DMA_MIN_BYTES	16
 
 /**
- * stm32_spi_reg - stm32 SPI register & bitfield desc
+ * struct stm32_spi_reg - stm32 SPI register & bitfield desc
  * @reg:		register offset
  * @mask:		bitfield mask
  * @shift:		left shift
@@ -187,16 +187,16 @@ struct stm32_spi_reg {
 };
 
 /**
- * stm32_spi_regspec - stm32 registers definition, compatible dependent data
- * en: enable register and SPI enable bit
- * dma_rx_en: SPI DMA RX enable register end SPI DMA RX enable bit
- * dma_tx_en: SPI DMA TX enable register end SPI DMA TX enable bit
- * cpol: clock polarity register and polarity bit
- * cpha: clock phase register and phase bit
- * lsb_first: LSB transmitted first register and bit
- * br: baud rate register and bitfields
- * rx: SPI RX data register
- * tx: SPI TX data register
+ * struct stm32_spi_regspec - stm32 registers definition, compatible dependent data
+ * @en: enable register and SPI enable bit
+ * @dma_rx_en: SPI DMA RX enable register end SPI DMA RX enable bit
+ * @dma_tx_en: SPI DMA TX enable register end SPI DMA TX enable bit
+ * @cpol: clock polarity register and polarity bit
+ * @cpha: clock phase register and phase bit
+ * @lsb_first: LSB transmitted first register and bit
+ * @br: baud rate register and bitfields
+ * @rx: SPI RX data register
+ * @tx: SPI TX data register
  */
 struct stm32_spi_regspec {
 	const struct stm32_spi_reg en;
@@ -213,7 +213,7 @@ struct stm32_spi_regspec {
 struct stm32_spi;
 
 /**
- * stm32_spi_cfg - stm32 compatible configuration data
+ * struct stm32_spi_cfg - stm32 compatible configuration data
  * @regs: registers descriptions
  * @get_fifo_size: routine to get fifo size
  * @get_bpw_mask: routine to get bits per word mask
@@ -223,13 +223,13 @@ struct stm32_spi;
  * @set_mode: routine to configure registers to desired mode
  * @set_data_idleness: optional routine to configure registers to desired idle
  * time between frames (if driver has this functionality)
- * set_number_of_data: optional routine to configure registers to desired
+ * @set_number_of_data: optional routine to configure registers to desired
  * number of data (if driver has this functionality)
  * @can_dma: routine to determine if the transfer is eligible for DMA use
  * @transfer_one_dma_start: routine to start transfer a single spi_transfer
  * using DMA
- * @dma_rx cb: routine to call after DMA RX channel operation is complete
- * @dma_tx cb: routine to call after DMA TX channel operation is complete
+ * @dma_rx_cb: routine to call after DMA RX channel operation is complete
+ * @dma_tx_cb: routine to call after DMA TX channel operation is complete
  * @transfer_one_irq: routine to configure interrupts for driver
  * @irq_handler_event: Interrupt handler for SPI controller events
  * @irq_handler_thread: thread of interrupt handler for SPI controller
@@ -587,6 +587,7 @@ static void stm32f4_spi_read_rx(struct stm32_spi *spi)
 /**
  * stm32h7_spi_read_rxfifo - Read bytes in Receive Data Register
  * @spi: pointer to the spi controller data structure
+ * @flush: boolean indicating that FIFO should be flushed
  *
  * Write in rx_buf depends on remaining bytes to avoid to write beyond
  * rx_buf end.
@@ -756,6 +757,9 @@ static void stm32h7_spi_disable(struct stm32_spi *spi)
 
 /**
  * stm32_spi_can_dma - Determine if the transfer is eligible for DMA use
+ * @master: controller master interface
+ * @spi_dev: pointer to the spi device
+ * @transfer: pointer to spi transfer
  *
  * If driver has fifo and the current transfer size is greater than fifo size,
  * use DMA. Otherwise use DMA for transfer longer than defined DMA min bytes.
@@ -974,6 +978,8 @@ static irqreturn_t stm32h7_spi_irq_thread(int irq, void *dev_id)
 
 /**
  * stm32_spi_prepare_msg - set up the controller to transfer a single message
+ * @master: controller master interface
+ * @msg: pointer to spi message
  */
 static int stm32_spi_prepare_msg(struct spi_master *master,
 				 struct spi_message *msg)
@@ -1026,6 +1032,7 @@ static int stm32_spi_prepare_msg(struct spi_master *master,
 
 /**
  * stm32f4_spi_dma_tx_cb - dma callback
+ * @data: pointer to the spi controller data structure
  *
  * DMA callback is called when the transfer is complete for DMA TX channel.
  */
@@ -1041,6 +1048,7 @@ static void stm32f4_spi_dma_tx_cb(void *data)
 
 /**
  * stm32f4_spi_dma_rx_cb - dma callback
+ * @data: pointer to the spi controller data structure
  *
  * DMA callback is called when the transfer is complete for DMA RX channel.
  */
@@ -1054,6 +1062,7 @@ static void stm32f4_spi_dma_rx_cb(void *data)
 
 /**
  * stm32h7_spi_dma_cb - dma callback
+ * @data: pointer to the spi controller data structure
  *
  * DMA callback is called when the transfer is complete or when an error
  * occurs. If the transfer is complete, EOT flag is raised.
@@ -1079,6 +1088,9 @@ static void stm32h7_spi_dma_cb(void *data)
 /**
  * stm32_spi_dma_config - configure dma slave channel depending on current
  *			  transfer bits_per_word.
+ * @spi: pointer to the spi controller data structure
+ * @dma_conf: pointer to the dma_slave_config structure
+ * @dir: direction of the dma transfer
  */
 static void stm32_spi_dma_config(struct stm32_spi *spi,
 				 struct dma_slave_config *dma_conf,
@@ -1126,6 +1138,7 @@ static void stm32_spi_dma_config(struct stm32_spi *spi,
 /**
  * stm32f4_spi_transfer_one_irq - transfer a single spi_transfer using
  *				  interrupts
+ * @spi: pointer to the spi controller data structure
  *
  * It must returns 0 if the transfer is finished or 1 if the transfer is still
  * in progress.
@@ -1166,6 +1179,7 @@ static int stm32f4_spi_transfer_one_irq(struct stm32_spi *spi)
 /**
  * stm32h7_spi_transfer_one_irq - transfer a single spi_transfer using
  *				  interrupts
+ * @spi: pointer to the spi controller data structure
  *
  * It must returns 0 if the transfer is finished or 1 if the transfer is still
  * in progress.
@@ -1207,6 +1221,7 @@ static int stm32h7_spi_transfer_one_irq(struct stm32_spi *spi)
 /**
  * stm32f4_spi_transfer_one_dma_start - Set SPI driver registers to start
  *					transfer using DMA
+ * @spi: pointer to the spi controller data structure
  */
 static void stm32f4_spi_transfer_one_dma_start(struct stm32_spi *spi)
 {
@@ -1227,6 +1242,7 @@ static void stm32f4_spi_transfer_one_dma_start(struct stm32_spi *spi)
 /**
  * stm32h7_spi_transfer_one_dma_start - Set SPI driver registers to start
  *					transfer using DMA
+ * @spi: pointer to the spi controller data structure
  */
 static void stm32h7_spi_transfer_one_dma_start(struct stm32_spi *spi)
 {
@@ -1243,6 +1259,8 @@ static void stm32h7_spi_transfer_one_dma_start(struct stm32_spi *spi)
 
 /**
  * stm32_spi_transfer_one_dma - transfer a single spi_transfer using DMA
+ * @spi: pointer to the spi controller data structure
+ * @xfer: pointer to the spi_transfer structure
  *
  * It must returns 0 if the transfer is finished or 1 if the transfer is still
  * in progress.
@@ -1405,7 +1423,7 @@ static void stm32_spi_set_mbr(struct stm32_spi *spi, u32 mbrdiv)
 /**
  * stm32_spi_communication_type - return transfer communication type
  * @spi_dev: pointer to the spi device
- * transfer: pointer to spi transfer
+ * @transfer: pointer to spi transfer
  */
 static unsigned int stm32_spi_communication_type(struct spi_device *spi_dev,
 						 struct spi_transfer *transfer)
@@ -1522,7 +1540,7 @@ static void stm32h7_spi_data_idleness(struct stm32_spi *spi, u32 len)
 /**
  * stm32h7_spi_number_of_data - configure number of data at current transfer
  * @spi: pointer to the spi controller data structure
- * @len: transfer length
+ * @nb_words: transfer length (in words)
  */
 static int stm32h7_spi_number_of_data(struct stm32_spi *spi, u32 nb_words)
 {
@@ -1546,6 +1564,9 @@ static int stm32h7_spi_number_of_data(struct stm32_spi *spi, u32 nb_words)
  * stm32_spi_transfer_one_setup - common setup to transfer a single
  *				  spi_transfer either using DMA or
  *				  interrupts.
+ * @spi: pointer to the spi controller data structure
+ * @spi_dev: pointer to the spi device
+ * @transfer: pointer to spi transfer
  */
 static int stm32_spi_transfer_one_setup(struct stm32_spi *spi,
 					struct spi_device *spi_dev,
@@ -1625,6 +1646,9 @@ static int stm32_spi_transfer_one_setup(struct stm32_spi *spi,
 
 /**
  * stm32_spi_transfer_one - transfer a single spi_transfer
+ * @master: controller master interface
+ * @spi_dev: pointer to the spi device
+ * @transfer: pointer to spi transfer
  *
  * It must return 0 if the transfer is finished or 1 if the transfer is still
  * in progress.
@@ -1658,6 +1682,8 @@ static int stm32_spi_transfer_one(struct spi_master *master,
 
 /**
  * stm32_spi_unprepare_msg - relax the hardware
+ * @master: controller master interface
+ * @msg: pointer to the spi message
  */
 static int stm32_spi_unprepare_msg(struct spi_master *master,
 				   struct spi_message *msg)
@@ -1671,6 +1697,7 @@ static int stm32_spi_unprepare_msg(struct spi_master *master,
 
 /**
  * stm32f4_spi_config - Configure SPI controller as SPI master
+ * @spi: pointer to the spi controller data structure
  */
 static int stm32f4_spi_config(struct stm32_spi *spi)
 {
@@ -1701,6 +1728,7 @@ static int stm32f4_spi_config(struct stm32_spi *spi)
 
 /**
  * stm32h7_spi_config - Configure SPI controller as SPI master
+ * @spi: pointer to the spi controller data structure
  */
 static int stm32h7_spi_config(struct stm32_spi *spi)
 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
