Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D32591D16D6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:02:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5YIBiq2k740e+CMMlyBsSMPcZtBdIgQJY3/1ghfXzT0=; b=gqVwvG3/dc8QLT
	fD1mz+cHZDUe80o+9RBTkBpX1CmcOzbuGunMmKEhFb56+Dtm7jQ5B4EIFjSUNnIu7bFu5lBCEc0lP
	pBWIMRWxxtezpuNPQhohJ4EtzVLy4/1gfvkNGHUl4zQ8AxmzIupMZqmGVCYN//jfk3cSkHqfl7uqF
	b5Nc/SVJf210+yPWqo0h4sddA0jZhi6+7BpsR1FZ59JiAXVJB24ndNqPb+mqOXccetpSa5LedhHJn
	4M7taWf8wbrcbv1Jq40wWuVQp57f7bQ0UZ3vzEmIlY0Y6LcdelLjqFuJlk1Qru7dm6mvS/9DWIQZR
	Zsukn+amsH9pvW7w5Mzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrxM-0007J4-Pf; Wed, 13 May 2020 14:01:56 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrwH-0006Xs-41
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:00:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589378448; x=1620914448;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vowUNbP3S5lXJc8g2i7fvP/xMewlWoQteI1QXHomxRg=;
 b=xlY74zMNjd53GqQC45VVtFHOTNFJUlc5PPvfk2Q95zXK/OCWpQfHX6nA
 esjivWaf8ysEM0sMvxiVohrMR2shGbxJW+tW+a+3H2tLKprjuv6SXRLFt
 KG0ytwDhLXetXspukVdLrj9jlwSx7BS6Qp2bZSK1DKhONljZEJrbzPb+D
 sDFJiwtTYcsAOfvOy/Vw/AG3FwkGzKPcItfziK3tcGaK40f933PbZHWIT
 Hv1LPAljlByAM8Hcpt9VyEClc1pMliGNYRaJsFs+BodyDVfzi56j5CBMj
 Knr+yqGeISVgApC72HDUvA5E4MIN8etARXf4jaz4lqI2NEnlUf5tHE3It Q==;
IronPort-SDR: 4D+Er6POtXMlAwo49Pt9+FrHQxpT0FtL6XCAFrdjh8D85kr8b+ihfNzJkVyJV57ueigB/6nmES
 HZkzzmLvPZFbhOnNn5afasAvzj7rCLYCOzzftWzS3RXF1BTi5Ilg0QwQSm8tPZ2BZQEragPEjs
 lNomrfglmmjicbZ0fKgO8e8NiYrWAn2EHZw00uB81vfMrsGlogID8sGmmvO3oqyQK5nAQYNRcv
 6JnDeHwLAJduSg9hyvpSL+NntsrEMOarv8k6x0mbAfZBjtBve0O4aPFcINEIQptD03XfwmVBvC
 9T4=
X-IronPort-AV: E=Sophos;i="5.73,388,1583218800"; d="scan'208";a="79447467"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 07:00:48 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 07:00:50 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 07:00:46 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Mark Brown <broonie@kernel.org>, SoC Team <soc@kernel.org>
Subject: [PATCH 03/10] spi: dw: Add support for client driver memory operations
Date: Wed, 13 May 2020 16:00:24 +0200
Message-ID: <20200513140031.25633-4-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513140031.25633-1-lars.povlsen@microchip.com>
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_070049_193067_8AD757EB 
X-CRM114-Status: GOOD (  11.52  )
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

This minor change allow dw-spi drivers to register
spi_controller_mem_ops memory operations if the platform supports it.

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 drivers/spi/spi-dw.c | 3 +++
 drivers/spi/spi-dw.h | 2 ++
 2 files changed, 5 insertions(+)

diff --git a/drivers/spi/spi-dw.c b/drivers/spi/spi-dw.c
index 32997f28fa5bb..d0c611c42421e 100644
--- a/drivers/spi/spi-dw.c
+++ b/drivers/spi/spi-dw.c
@@ -527,6 +527,9 @@ int dw_spi_add_host(struct device *dev, struct dw_spi *dws)
 	/* Basic HW init */
 	spi_hw_init(dev, dws);

+	/* Memory ops? */
+	master->mem_ops = dws->mem_ops;
+
 	if (dws->dma_ops && dws->dma_ops->dma_init) {
 		ret = dws->dma_ops->dma_init(dws);
 		if (ret) {
diff --git a/drivers/spi/spi-dw.h b/drivers/spi/spi-dw.h
index ed6e47b3f50da..8ecccbde10a20 100644
--- a/drivers/spi/spi-dw.h
+++ b/drivers/spi/spi-dw.h
@@ -3,6 +3,7 @@
 #define DW_SPI_HEADER_H

 #include <linux/io.h>
+#include <linux/spi/spi-mem.h>
 #include <linux/scatterlist.h>

 /* Register offsets */
@@ -116,6 +117,7 @@ struct dw_spi {
 	u16			bus_num;
 	u16			num_cs;		/* supported slave numbers */
 	void (*set_cs)(struct spi_device *spi, bool enable);
+	const struct spi_controller_mem_ops *mem_ops;

 	/* Current message transfer state info */
 	size_t			len;
--
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
