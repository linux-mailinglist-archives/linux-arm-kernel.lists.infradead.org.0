Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69FE62007D3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 13:31:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1LP9X6rrIlYIDFiPE7x/Tz4DkgawjgaDRNgTx1cJMY4=; b=UvKgCNsO9uSzUN
	+aGBplgq6VmVB2xXXfev5If1QahzwMPsJSf8f7JwF5VpLb0hp68tPs8NdRo8qr+LoZ1ZgTDnseTaU
	3575OJX9Czaap6AxuOeJLsLGXXSpTwoCSYs7m3SBRzdJs+fsmBhn3ylgysFj3k/u7C1tZsrflFD6X
	lNJ80VuS0Ofy6bFru3iE7BYOWbPgPOp3pvKMH+CcxzT54judiARLDC6L4CEuZemTJIimh68E1ivM+
	xWltipwbzBr0qk7SFCkSgl7aY6VdMyPncfZ6bOClyarM+dIv+uprh0SZVpRj0nlw2lwrsZigNeCjS
	4B9YRlCYzznv8KHuMInw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmFFQ-0000NQ-Qg; Fri, 19 Jun 2020 11:31:52 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmFFE-0000My-AP
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 11:31:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592566300; x=1624102300;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Vr7IJg82w/CxJvBCjz5G7ZncKTloNcb8/f99H0MqnqE=;
 b=isDeX7WAyEjMFHEJqjJwe/P8XdS6vSQAGT4pQxmTNenPhivVgdd7QVVJ
 2KV2qQgc7THwtSncRihBsVZVPpE1Eo3BNw28eyajKXx4pIfXVCRnHxiRQ
 UpGpFTiAptfC0Z9v12cb6jvDlfHWzAPpYjuwkVySJu0hlMGcBY8uH0ho+
 qqiSeq7+NPFAnT0vM3HXUHGStkljXBIZVUFQdtjc4rIQsoUy83CYfTbaI
 o8nJ5HLTO5pNAxvNj5tv1x4J+RVQWd9BUp/FWtLKD4EnpM9O/y4+vfGIX
 pdIWFIzdnaAeOx7UusUx+abZEaaaHcPVUxKL+mUd+fqvHgOuKYPAFde+C Q==;
IronPort-SDR: ovZN+q40DWbaLSrFs6pWzRK3NpqROuHV46otC456nLKeagstpAR5XWzA4d/KafQBZd58wwYIb1
 yr5qJ8PLB8cI/n17tVOMIJcGxC2Lp8qT1TgX8CQip2HNUp187R+r3e8S44kbM5M7A2zZTkqrsS
 n39MTY/jCbSYn107W0tcNIsXPcdzhEaME9CamDaZaVM2arNHGQQGC3zbOfhzeuSDZH4J4PWsGi
 Sgd3JLErv0N23lSzjwVDDmR69t21WlpYpf0xTaUzQNMBO+PaBM95g5H9m+qrKgNltpP+xeYim5
 cpo=
X-IronPort-AV: E=Sophos;i="5.75,255,1589266800"; d="scan'208";a="16373015"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Jun 2020 04:31:35 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Fri, 19 Jun 2020 04:31:28 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Fri, 19 Jun 2020 04:31:26 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Mark Brown <broonie@kernel.org>, SoC Team <soc@kernel.org>
Subject: [PATCH v2 1/6] spi: dw: Add support for RX sample delay register
Date: Fri, 19 Jun 2020 13:31:16 +0200
Message-ID: <20200619113121.9984-2-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200619113121.9984-1-lars.povlsen@microchip.com>
References: <20200619113121.9984-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_043140_446231_07E33592 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.71.154.253 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>, linux-spi@vger.kernel.org,
 Serge Semin <Sergey.Semin@baikalelectronics.ru>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This add support for the RX_SAMPLE_DLY register. If enabled in the
Designware IP, it allows tuning of the rx data signal by means of an
internal rx sample fifo.

The register is controlled by the snps,rx-sample-delay-ns DT
property, which is defined per SPI slave.

The register is located at offset 0xf0, and if the option is not
enabled in the IP, changing the register will have no effect. The
register will only be written if any slave defines a nonzero value
(after scaling by the clock period).

Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 drivers/spi/spi-dw-core.c | 20 ++++++++++++++++++++
 drivers/spi/spi-dw.h      |  2 ++
 2 files changed, 22 insertions(+)

diff --git a/drivers/spi/spi-dw-core.c b/drivers/spi/spi-dw-core.c
index 323c66c5db506..d249f25cbff7f 100644
--- a/drivers/spi/spi-dw-core.c
+++ b/drivers/spi/spi-dw-core.c
@@ -12,6 +12,7 @@
 #include <linux/delay.h>
 #include <linux/slab.h>
 #include <linux/spi/spi.h>
+#include <linux/of.h>
 
 #include "spi-dw.h"
 
@@ -26,6 +27,8 @@ struct chip_data {
 
 	u16 clk_div;		/* baud rate divider */
 	u32 speed_hz;		/* baud rate */
+
+	u32 rx_sample_dly;	/* RX sample delay */
 };
 
 #ifdef CONFIG_DEBUG_FS
@@ -52,6 +55,7 @@ static const struct debugfs_reg32 dw_spi_dbgfs_regs[] = {
 	DW_SPI_DBGFS_REG("DMACR", DW_SPI_DMACR),
 	DW_SPI_DBGFS_REG("DMATDLR", DW_SPI_DMATDLR),
 	DW_SPI_DBGFS_REG("DMARDLR", DW_SPI_DMARDLR),
+	DW_SPI_DBGFS_REG("RX_SAMPLE_DLY", DW_SPI_RX_SAMPLE_DLY),
 };
 
 static int dw_spi_debugfs_init(struct dw_spi *dws)
@@ -328,6 +332,12 @@ static int dw_spi_transfer_one(struct spi_controller *master,
 	if (master->can_dma && master->can_dma(master, spi, transfer))
 		dws->dma_mapped = master->cur_msg_mapped;
 
+	/* Update RX sample delay if required */
+	if (dws->curr_rx_sample_dly != chip->rx_sample_dly) {
+		dw_writel(dws, DW_SPI_RX_SAMPLE_DLY, chip->rx_sample_dly);
+		dws->curr_rx_sample_dly = chip->rx_sample_dly;
+	}
+
 	/* For poll mode just disable all interrupts */
 	spi_mask_intr(dws, 0xff);
 
@@ -380,10 +390,20 @@ static int dw_spi_setup(struct spi_device *spi)
 	/* Only alloc on first setup */
 	chip = spi_get_ctldata(spi);
 	if (!chip) {
+		struct dw_spi *dws = spi_controller_get_devdata(spi->controller);
+		u32 rx_sample_dly;
+
 		chip = kzalloc(sizeof(struct chip_data), GFP_KERNEL);
 		if (!chip)
 			return -ENOMEM;
 		spi_set_ctldata(spi, chip);
+		/* Is rx_sample_dly defined for a slave? */
+		if (device_property_read_u32(&spi->dev,
+					     "snps,rx-sample-delay-ns",
+					     &rx_sample_dly) == 0)
+			chip->rx_sample_dly = DIV_ROUND_CLOSEST(rx_sample_dly,
+								NSEC_PER_SEC /
+								dws->max_freq);
 	}
 
 	chip->tmode = SPI_TMOD_TR;
diff --git a/drivers/spi/spi-dw.h b/drivers/spi/spi-dw.h
index 151ba316619e6..f9243bf2a662b 100644
--- a/drivers/spi/spi-dw.h
+++ b/drivers/spi/spi-dw.h
@@ -34,6 +34,7 @@
 #define DW_SPI_IDR			0x58
 #define DW_SPI_VERSION			0x5c
 #define DW_SPI_DR			0x60
+#define DW_SPI_RX_SAMPLE_DLY		0xf0
 #define DW_SPI_CS_OVERRIDE		0xf4
 
 /* Bit fields in CTRLR0 */
@@ -140,6 +141,7 @@ struct dw_spi {
 	u8			n_bytes;	/* current is a 1/2 bytes op */
 	irqreturn_t		(*transfer_handler)(struct dw_spi *dws);
 	u32			current_freq;	/* frequency in hz */
+	u32			curr_rx_sample_dly;
 
 	/* DMA info */
 	struct dma_chan		*txchan;
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
