Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E751D16D1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:01:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GV6lQJH+eTodosOWoHDpKhPVNLDv6KA73hyEkqe81+M=; b=Zv8hR0pnSd9R2k
	nxxUnRwaG30VngYDytc90TW9ueWe+AJllc5o86++HaHGiOjBzLfbqicdIzFgQBX2SQtd5LEnwvfFy
	fhj5/F83u2ma668FSZwXJpVDBi+9tXuGks8Qs4gunrV3DzAIquoKmc1RJzHxM9vwYSnfY969NV6k1
	x6QyMby2p8FfmyuKPdK8FSqcWxMAiyLsWOBemlZYlj93zHZVTlPEwCkHGb0/UKazmPm4uYI4ddfsO
	E6wxTpcjYvLDvR2POmwAC89I7NWIIs1UdEhpRDehWRZmgooQr5Sav7ws5NNyGywrni7gQqVU75wbp
	QQXALBwQICFfDcR5ZH+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrx7-000740-Tg; Wed, 13 May 2020 14:01:41 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrwE-0006Xs-Ex
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:00:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589378446; x=1620914446;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E2LeTrXG5USlLqv6CmJsbBQmCdfRXDqsQ0KDLdpn/wA=;
 b=Sj/KyTJ1tZJFLIrL0dGqlXBz7KLxG0jWH1KQ0n7uoZdQrArVjQ9F6rJc
 JsT0GRv14bWkCHL/VOgvwOn4qgLh7WIVThm4G4EhRV75hxQplCluKNM0w
 YsQH+ik4NGGF4LGphO7LXMWGFBx+mu+q0klH2+clHrd4WkRM1HVvnXb2N
 ix6Cv0j+ut+BivhBmB3jhLkQJMnYHouaTc1f9VWOTdA1ueLrDJMluzyAR
 bmeS78RJWsXlaLQOINB2l48HAp/ULfZzlxU/h4/tlA7ttB9zi/F1Vk6LE
 45tEixja8DeQvDDuiLf7eFaKAANem8vWt8++9L6v6QeGjKCm3Inyd7sgl w==;
IronPort-SDR: fnwxvPcGQmcXFxqzx53KJMTcVAUAw6CucJ/tFsnpig2jxsTO5+7WvUQWlnhFHUS/c2LTWCinxk
 Ccy0u6/nP64oHUmfXqSWqSqMeCVJGnUEo1dEh0BbjPWAtZeAXcEivImlBrGMGRS/HnEqtji1Jp
 yPRZuRc3ai+OFB6qQ7jEW7rwfSKDZpSS2eP7pbq72WEPmGcU4YTAc/cfO3pRaYbNvpzVW5uX9N
 /zCcOHOQr0mcR2Y26nPKaysX8AVwbrTX04V0gKn4mWzdreHR4Qs9EI9W+0R7kOtzeOo4Bo2Zzd
 PXg=
X-IronPort-AV: E=Sophos;i="5.73,388,1583218800"; d="scan'208";a="79447442"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 07:00:43 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 07:00:46 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 07:00:41 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Mark Brown <broonie@kernel.org>, SoC Team <soc@kernel.org>
Subject: [PATCH 01/10] spi: dw: Add support for polled operation via no IRQ
 specified in DT
Date: Wed, 13 May 2020 16:00:22 +0200
Message-ID: <20200513140031.25633-2-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513140031.25633-1-lars.povlsen@microchip.com>
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_070046_522015_581CEC6A 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Lars Povlsen <lars.povlsen@microchip.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With this change a SPI controller can be added without having a IRQ
associated, and causing all transfers to be polled. For SPI controllers
without DMA, this can significantly improve performance by less
interrupt handling overhead.

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 drivers/spi/spi-dw.c | 21 +++++++++++++--------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/spi/spi-dw.c b/drivers/spi/spi-dw.c
index 31e3f866d11a7..e572eb34a3c1a 100644
--- a/drivers/spi/spi-dw.c
+++ b/drivers/spi/spi-dw.c
@@ -19,6 +19,8 @@
 #include <linux/debugfs.h>
 #endif

+#define VALID_IRQ(i) (i >= 0)
+
 /* Slave spi_dev related */
 struct chip_data {
 	u8 tmode;		/* TR/TO/RO/EEPROM */
@@ -359,7 +361,7 @@ static int dw_spi_transfer_one(struct spi_controller *master,
 			spi_enable_chip(dws, 1);
 			return ret;
 		}
-	} else if (!chip->poll_mode) {
+	} else if (!chip->poll_mode && VALID_IRQ(dws->irq)) {
 		txlevel = min_t(u16, dws->fifo_len / 2, dws->len / dws->n_bytes);
 		dw_writel(dws, DW_SPI_TXFLTR, txlevel);

@@ -379,7 +381,7 @@ static int dw_spi_transfer_one(struct spi_controller *master,
 			return ret;
 	}

-	if (chip->poll_mode)
+	if (chip->poll_mode || !VALID_IRQ(dws->irq))
 		return poll_transfer(dws);

 	return 1;
@@ -487,11 +489,13 @@ int dw_spi_add_host(struct device *dev, struct dw_spi *dws)

 	spi_controller_set_devdata(master, dws);

-	ret = request_irq(dws->irq, dw_spi_irq, IRQF_SHARED, dev_name(dev),
-			  master);
-	if (ret < 0) {
-		dev_err(dev, "can not get IRQ\n");
-		goto err_free_master;
+	if (VALID_IRQ(dws->irq)) {
+		ret = request_irq(dws->irq, dw_spi_irq, IRQF_SHARED,
+				  dev_name(dev), master);
+		if (ret < 0) {
+			dev_err(dev, "can not get IRQ\n");
+			goto err_free_master;
+		}
 	}

 	master->use_gpio_descriptors = true;
@@ -539,7 +543,8 @@ int dw_spi_add_host(struct device *dev, struct dw_spi *dws)
 	if (dws->dma_ops && dws->dma_ops->dma_exit)
 		dws->dma_ops->dma_exit(dws);
 	spi_enable_chip(dws, 0);
-	free_irq(dws->irq, master);
+	if (VALID_IRQ(dws->irq))
+		free_irq(dws->irq, master);
 err_free_master:
 	spi_controller_put(master);
 	return ret;
--
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
