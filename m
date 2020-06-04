Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D66D61EDBEE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 05:47:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=s0iRbahAfOJ99tzkCDbidhSHIXSimd8il09JriZitrA=; b=rgU/kfs52UTSXNs8ngJGi3/baE
	m1chA5a2t+jFZfY0XJ57Mly1SAV6Iv/Q6rl1zEOv9/4BEML9GEqM0nmowsrJ+zZE81SHcv71CxoVA
	SNYJF/fyqyVJ/QlxD3zFmBepS/+fLVRgQlSBUcdHfssBf7jvhNz0suF84MT0awlfpXwkC3OnLQAvZ
	DebvCfq/Hz7RpX2GMCHEiUoJE5vG1KuyVxQsVsQbGeuKaPoDS63AIfBn+x0jl18c4Xzf7V3U8Hdbn
	cEkNO1kriS1xEA51k9eF0f2IITAw3cxMpqMgn3aUKBMkR/TogdYxzHM71x7DMfovllxo7iqp+uizE
	n12lUa7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jggr6-0006F1-Jb; Thu, 04 Jun 2020 03:47:48 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jggqP-0005c5-37; Thu, 04 Jun 2020 03:47:06 +0000
Received: by mail-pf1-x442.google.com with SMTP id x207so2743382pfc.5;
 Wed, 03 Jun 2020 20:47:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=QQ6Hyh/m2EhPIKuAygxezflBAl58W/VBXN+x76AFtqs=;
 b=B0/8qGwjkJ+zdXPjuEpW0NvP34Qn50UqLSD1UlkyU+uP+WAYx3+tL4pgemaok2OEzk
 CiHrVQVPFAhZTIbUm30Wz7K2a1Tm5uzc0CnG70c9RBzjCyJjTLUInaZBkVFAADTCdxEg
 wuSSJWKjxXHtlRxb7F3qDu81yDJCiVqbW/B5+CZom5dIBmCSQw6nCa6YindB3CDzleh7
 ufysFY89IT01nWs9e2loDh8njH2quflbkFG0ZwEH/v2Wh2ac0HK4/MM0zsigo7M/uryW
 wKVsoP4wsgjoIbs9n+45JNd8AyQaSqgmDd+ekrkcydGCguZbDPLW3GVY5ARUYWD+NQyv
 M3tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=QQ6Hyh/m2EhPIKuAygxezflBAl58W/VBXN+x76AFtqs=;
 b=GtBeRtwLFS6DSlc4MdeDU39GhRhiPDTgMr0kZRbu1D/LjraLP2vr83PiFP9bIK4zHv
 Pks3xijBMgaA6uUPXS1gMTrDg+YhYAhYPAWz9WDIuK9g7K+ymDfLkSJdZQODA7C+KxZK
 GLvmTRDQM9W0mbF/UTrTmD0yZvTRKdGIF4A5Em9INzcBVK6I8zThVPm3BwBHz8KEyajj
 Pwo6a3BnRrEqGOc+r+2maHFTgEWHGQrYStBbpklO7tTzX2wis11C6T5iZ6oc7ZtCxxSg
 bdfjQ+0hns8PdmnQbeKHsztbPh9V0q4q8pPEpEKgmNHE35pCXcSV9qZTJG/siiNN3XpJ
 rTEg==
X-Gm-Message-State: AOAM532rK16mtCNN3vQfMYcB61x7Cxgt6qciDmxCwmr0tD1jYEBQnaYb
 kKA0G+YFUozZnNPBU1qghl8=
X-Google-Smtp-Source: ABdhPJwbqlo5gRwaKOl0uPy+5X9nNBxzaPZErf6Kvavs7jP4lLEx9XgMSZvc12iLCbVBqhcgwHO+vQ==
X-Received: by 2002:a62:1885:: with SMTP id 127mr2292423pfy.258.1591242424241; 
 Wed, 03 Jun 2020 20:47:04 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id p19sm3083367pff.116.2020.06.03.20.47.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 20:47:03 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] spi: bcm2835: Enable shared interrupt support
Date: Wed,  3 Jun 2020 20:46:55 -0700
Message-Id: <20200604034655.15930-4-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200604034655.15930-1-f.fainelli@gmail.com>
References: <20200604034655.15930-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_204705_160135_90976A67 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, lukas@wunner.de,
 Ray Jui <rjui@broadcom.com>, Rob Herring <robh+dt@kernel.org>,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Martin Sperl <kernel@martin.sperl.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SPI controller found in the BCM2711 and BCM7211 SoCs is instantiated
5 times, with all instances sharing the same interrupt line. We
specifically match the two compatible strings here to determine whether
it is necessary to request the interrupt with the IRQF_SHARED flag and
to use an appropriate interrupt handler capable of returning IRQ_NONE.

For the BCM2835 case which is deemed performance critical, there is no
overhead since a dedicated handler that does not assume sharing is used.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/spi/spi-bcm2835.c | 48 +++++++++++++++++++++++++++++++--------
 1 file changed, 38 insertions(+), 10 deletions(-)

diff --git a/drivers/spi/spi-bcm2835.c b/drivers/spi/spi-bcm2835.c
index 237bd306c268..2e73ec70ee80 100644
--- a/drivers/spi/spi-bcm2835.c
+++ b/drivers/spi/spi-bcm2835.c
@@ -361,11 +361,10 @@ static void bcm2835_spi_reset_hw(struct spi_controller *ctlr)
 	bcm2835_wr(bs, BCM2835_SPI_DLEN, 0);
 }
 
-static irqreturn_t bcm2835_spi_interrupt(int irq, void *dev_id)
+static inline irqreturn_t bcm2835_spi_interrupt_common(struct spi_controller *ctlr,
+						       u32 cs)
 {
-	struct spi_controller *ctlr = dev_id;
 	struct bcm2835_spi *bs = spi_controller_get_devdata(ctlr);
-	u32 cs = bcm2835_rd(bs, BCM2835_SPI_CS);
 
 	/*
 	 * An interrupt is signaled either if DONE is set (TX FIFO empty)
@@ -394,6 +393,27 @@ static irqreturn_t bcm2835_spi_interrupt(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
+static irqreturn_t bcm2835_spi_interrupt(int irq, void *dev_id)
+{
+	struct spi_controller *ctlr = dev_id;
+	struct bcm2835_spi *bs = spi_controller_get_devdata(ctlr);
+	u32 cs = bcm2835_rd(bs, BCM2835_SPI_CS);
+
+	return bcm2835_spi_interrupt_common(ctlr, cs);
+}
+
+static irqreturn_t bcm2835_spi_sh_interrupt(int irq, void *dev_id)
+{
+	struct spi_controller *ctlr = dev_id;
+	struct bcm2835_spi *bs = spi_controller_get_devdata(ctlr);
+	u32 cs = bcm2835_rd(bs, BCM2835_SPI_CS);
+
+	if (!(cs & BCM2835_SPI_CS_INTR))
+		return IRQ_NONE;
+
+	return bcm2835_spi_interrupt_common(ctlr, cs);
+}
+
 static int bcm2835_spi_transfer_one_irq(struct spi_controller *ctlr,
 					struct spi_device *spi,
 					struct spi_transfer *tfr,
@@ -1287,12 +1307,26 @@ static int bcm2835_spi_setup(struct spi_device *spi)
 	return 0;
 }
 
+static const struct of_device_id bcm2835_spi_match[] = {
+	{ .compatible = "brcm,bcm2835-spi", .data = &bcm2835_spi_interrupt },
+	{ .compatible = "brcm,bcm2711-spi", .data = &bcm2835_spi_sh_interrupt },
+	{ .compatible = "brcm,bcm7211-spi", .data = &bcm2835_spi_sh_interrupt },
+	{}
+};
+MODULE_DEVICE_TABLE(of, bcm2835_spi_match);
+
 static int bcm2835_spi_probe(struct platform_device *pdev)
 {
+	irqreturn_t (*bcm2835_spi_isr_func)(int, void *);
 	struct spi_controller *ctlr;
+	unsigned long flags = 0;
 	struct bcm2835_spi *bs;
 	int err;
 
+	bcm2835_spi_isr_func = of_device_get_match_data(&pdev->dev);
+	if (bcm2835_spi_isr_func == &bcm2835_spi_sh_interrupt)
+		flags = IRQF_SHARED;
+
 	ctlr = spi_alloc_master(&pdev->dev, ALIGN(sizeof(*bs),
 						  dma_get_cache_alignment()));
 	if (!ctlr)
@@ -1344,7 +1378,7 @@ static int bcm2835_spi_probe(struct platform_device *pdev)
 	bcm2835_wr(bs, BCM2835_SPI_CS,
 		   BCM2835_SPI_CS_CLEAR_RX | BCM2835_SPI_CS_CLEAR_TX);
 
-	err = devm_request_irq(&pdev->dev, bs->irq, bcm2835_spi_interrupt, 0,
+	err = devm_request_irq(&pdev->dev, bs->irq, bcm2835_spi_isr_func, flags,
 			       dev_name(&pdev->dev), ctlr);
 	if (err) {
 		dev_err(&pdev->dev, "could not request IRQ: %d\n", err);
@@ -1400,12 +1434,6 @@ static void bcm2835_spi_shutdown(struct platform_device *pdev)
 		dev_err(&pdev->dev, "failed to shutdown\n");
 }
 
-static const struct of_device_id bcm2835_spi_match[] = {
-	{ .compatible = "brcm,bcm2835-spi", },
-	{}
-};
-MODULE_DEVICE_TABLE(of, bcm2835_spi_match);
-
 static struct platform_driver bcm2835_spi_driver = {
 	.driver		= {
 		.name		= DRV_NAME,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
