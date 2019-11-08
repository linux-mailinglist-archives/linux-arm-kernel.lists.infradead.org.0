Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 675B8F4DD2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:09:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yb4rE9Sx62kWRVe+HbEubJKx8sl6axLZKX6CvffFLiA=; b=F11Pd1RrWhLqiE
	OITmL/YTrcxAuYSBxEUVKBZTDCCnqDW4XR2ye/eIa9gcvek83Hx6Abvg3UPDMH3/Rsijn3qHeyaZg
	B29DKLQYWdFdcJRYqxSPZj29wB59I4L28vu6R//wCfcyNGY17I08Cr8kRsEJ1zBJkpturJIiVpm1o
	kb7xArN+EyD49ivC8pdRWrcgTR4vuVZTvt6nePeqBwO4DcGX22WymVx3avFqPSDxDTJxk97wcWCoV
	lnWhDUjJeG8p885RxtTFAg+sE67y602SKDfyNJ2IyGEQ3A7gvCZ90UbRAP12Oi2uus4DGqxBNN+CA
	V3C6fNjFPIoiSKikFQMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT4xU-00009r-MC; Fri, 08 Nov 2019 14:09:52 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT4w7-0006nX-Dn
 for linux-arm-kernel@bombadil.infradead.org; Fri, 08 Nov 2019 14:08:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xk3se43om84ptuWlWmBii0abODQ1lTVGKLCJNIYf3Pg=; b=f4J9oTqvlSYh5xxukMws1mHs47
 rxXxgHMQgV6N6PiYm5oeJZx+i27Ly7FmR7E/CvXNZi//08mOa32LzBjtAOZV6VaXVQ7li1QaQJpWj
 vDcLqmg1dNGLDjftdmkRYLo8WaUl3exV4PcgayQjTOzS+LSX207o1EK8aZEuCk6PmWvkYaDOtqSRj
 Nt21ZR4hp/OnD5j4hB3h1z/xK1NyUYEmPKg6OUWTtHEnJIE5ulEBFxgNkELhDYB0FjJsOsIyfqxvs
 G29HFImzqHJciPkZONtWee9j8vJyb8udGUh+wekm3xqb9zgIEkok8QsYtSyYfNSDNcDExuMrvPHZb
 ZMH2H8Vw==;
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT4w4-00044z-Al
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 14:08:25 +0000
X-Originating-IP: 86.206.246.123
Received: from localhost.localdomain
 (lfbn-tou-1-421-123.w86-206.abo.wanadoo.fr [86.206.246.123])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 8DE3920016;
 Fri,  8 Nov 2019 14:07:52 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Mark Brown <broonie@kernel.org>, Michal Simek <michal.simek@xilinx.com>,
 Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>
Subject: [PATCH v2 7/7] spi: zynq-qspi: Support two chip selects
Date: Fri,  8 Nov 2019 15:07:44 +0100
Message-Id: <20191108140744.1734-8-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108140744.1734-1-miquel.raynal@bootlin.com>
References: <20191108140744.1734-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 linux-arm-kernel@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Zynq QSPI controller features 2 CS. When the num-cs DT property
is set to 2, the hardware will be initialized to support having two
devices connected over each CS.

In this case, both CS lines are driven by the state of the U_PAGE
(upper page) bit. When unset, the lower page (CS0) is selected,
otherwise it is the upper page (CS1).

Change tested on a custom design featuring two SPI-NORs with different
CS on the Zynq-7000 QSPI bus.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/spi/spi-zynq-qspi.c | 33 +++++++++++++++++++++++++--------
 1 file changed, 25 insertions(+), 8 deletions(-)

diff --git a/drivers/spi/spi-zynq-qspi.c b/drivers/spi/spi-zynq-qspi.c
index 07d361501aa0..a041ac774331 100644
--- a/drivers/spi/spi-zynq-qspi.c
+++ b/drivers/spi/spi-zynq-qspi.c
@@ -115,8 +115,8 @@
  */
 #define ZYNQ_QSPI_MODEBITS			(SPI_CPOL | SPI_CPHA)
 
-/* Default number of chip selects */
-#define ZYNQ_QSPI_DEFAULT_NUM_CS	1
+/* Maximum number of chip selects */
+#define ZYNQ_QSPI_MAX_NUM_CS		2
 
 /**
  * struct zynq_qspi - Defines qspi driver instance
@@ -160,6 +160,7 @@ static inline void zynq_qspi_write(struct zynq_qspi *xqspi, u32 offset,
 /**
  * zynq_qspi_init_hw - Initialize the hardware
  * @xqspi:	Pointer to the zynq_qspi structure
+ * @num_cs:	Number of connected CS (to enable dual memories if needed)
  *
  * The default settings of the QSPI controller's configurable parameters on
  * reset are
@@ -177,7 +178,7 @@ static inline void zynq_qspi_write(struct zynq_qspi *xqspi, u32 offset,
  *	- Set the little endian mode of TX FIFO and
  *	- Enable the QSPI controller
  */
-static void zynq_qspi_init_hw(struct zynq_qspi *xqspi)
+static void zynq_qspi_init_hw(struct zynq_qspi *xqspi, unsigned int num_cs)
 {
 	u32 config_reg;
 
@@ -185,7 +186,12 @@ static void zynq_qspi_init_hw(struct zynq_qspi *xqspi)
 	zynq_qspi_write(xqspi, ZYNQ_QSPI_IDIS_OFFSET, ZYNQ_QSPI_IXR_ALL_MASK);
 
 	/* Disable linear mode as the boot loader may have used it */
-	zynq_qspi_write(xqspi, ZYNQ_QSPI_LINEAR_CFG_OFFSET, 0);
+	config_reg = 0;
+	/* At the same time, enable dual mode if more than 1 CS is available */
+	if (num_cs > 1)
+		config_reg |= ZYNQ_QSPI_LCFG_TWO_MEM;
+
+	zynq_qspi_write(xqspi, ZYNQ_QSPI_LINEAR_CFG_OFFSET, config_reg);
 
 	/* Clear the RX FIFO */
 	while (zynq_qspi_read(xqspi, ZYNQ_QSPI_STATUS_OFFSET) &
@@ -287,6 +293,17 @@ static void zynq_qspi_chipselect(struct spi_device *spi, bool assert)
 	struct zynq_qspi *xqspi = spi_controller_get_devdata(ctlr);
 	u32 config_reg;
 
+	/* Select the lower (CS0) or upper (CS1) memory */
+	if (ctlr->num_chipselect > 1) {
+		config_reg = zynq_qspi_read(xqspi, ZYNQ_QSPI_LINEAR_CFG_OFFSET);
+		if (!spi->chip_select)
+			config_reg &= ~ZYNQ_QSPI_LCFG_U_PAGE;
+		else
+			config_reg |= ZYNQ_QSPI_LCFG_U_PAGE;
+
+		zynq_qspi_write(xqspi, ZYNQ_QSPI_LINEAR_CFG_OFFSET, config_reg);
+	}
+
 	/* Ground the line to assert the CS */
 	config_reg = zynq_qspi_read(xqspi, ZYNQ_QSPI_CONFIG_OFFSET);
 	if (assert)
@@ -674,9 +691,9 @@ static int zynq_qspi_probe(struct platform_device *pdev)
 	ret = of_property_read_u32(np, "num-cs",
 				   &num_cs);
 	if (ret < 0) {
-		ctlr->num_chipselect = ZYNQ_QSPI_DEFAULT_NUM_CS;
-	} else if (num_cs > ZYNQ_QSPI_DEFAULT_NUM_CS) {
-		dev_err(&pdev->dev, "anything but CS0 is not yet supported\n");
+		ctlr->num_chipselect = 1;
+	} else if (num_cs > ZYNQ_QSPI_MAX_NUM_CS) {
+		dev_err(&pdev->dev, "only 2 chip selects are available\n");
 		goto remove_master;
 	} else {
 		ctlr->num_chipselect = num_cs;
@@ -690,7 +707,7 @@ static int zynq_qspi_probe(struct platform_device *pdev)
 	ctlr->dev.of_node = np;
 
 	/* QSPI controller initializations */
-	zynq_qspi_init_hw(xqspi);
+	zynq_qspi_init_hw(xqspi, ctlr->num_chipselect);
 
 	ret = devm_spi_register_controller(&pdev->dev, ctlr);
 	if (ret) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
