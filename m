Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDD41EED4F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 23:28:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2g0zkGOzTKdfMuwknYK1oFTXPeCjn8ap05opyL06HTE=; b=Aun
	MRX6m9Sl0QfgFWIGtu4VmJqRdB9wwJ6U82V1qweM0Ngw1oo9ZiD3Itk86udp5NZSP2SsCTS2UfAW/
	jeoAh1dvz6KxwoqnCtehIe9HBUVr2nfK+oNig8b7eNeAC+emb2EjlDPMcZUvAm+9aGQiq0bqlVStm
	FbhJWDfVx6asUIVWE46wFLmK6cQYi6U42XdSMc+XFeifmN9svG+UVNUpCGPUnxCmwH3Kc0mLMlGUz
	0uNFiPVd6ejheiE9PZ5RUWiXMuKd2pMmsa1wdvMurTP5mAtP5VYFo+Xf52S7rv4pdPZ2TlhWGKbwT
	sXWGlvOS30fCViwzJ9ptSldTjhboanw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgxPh-00043x-5E; Thu, 04 Jun 2020 21:28:37 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgxPX-000439-VZ; Thu, 04 Jun 2020 21:28:29 +0000
Received: by mail-pg1-x542.google.com with SMTP id p21so4057140pgm.13;
 Thu, 04 Jun 2020 14:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=iU5iJUMELFSmlK8SfH+sUjldtPgarSfrCWNEy+Lwh4g=;
 b=QE+bsATF+II22srCA4SunF483vWK3hPQloPGHtKJMsAqxkrApCeA2q8IjOX5YK0e+5
 ZXlp/g3KsxcDttj5VwjRGOkBRkSoj6YJ9tJrPQmm+y9dyDkxD7ttGagUEmU3+VMFhNGf
 LxNHi3ZQe+gI8lyUPJlVLuU+W+X2N40RrRWQOit7emXK3AqqURP8kqdcFzZgfQGckmsQ
 7o/gTtnw/zxdiRHRCi2u5Wt2xFxLHncLUE0fhjAkT/toViE/gGlDH8XXhekp0+BpsbdO
 MTiuIbNDLDlC/l+yvIh0PYPi1OP70l7N7bqlXB7vr+W5XC+Zc8A17OpZo7AwivgH3M2h
 ytNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=iU5iJUMELFSmlK8SfH+sUjldtPgarSfrCWNEy+Lwh4g=;
 b=IrK+2P6Erikc8qAQIeunaSXjYGjcYdne9K8nQ3stpaJMv/e96BP7e+QuU5OR8GsytK
 4wFeJ+WkBkVBM/YDQ61RMMsep/Ly6v1F1jSyAbXxfdkR7XXPxyJACl1v7clbQBaCDmzj
 at7VgGNDzd2qYjOH0JmqMYZvEtgWYjxpuMQMgG//AY0JaWMjOC1Pui3W32t6BJm+liIf
 AbgpJLUUYygmRGf0hPtTFK38G2FuI/wDvjQdOaieGqkB10l0miqcfmYJvaJQpMv7QwDd
 FC/9XS9ExOnr2Ggn3L7Ez9Vs2BKbJb+684pB+HhMfe6O+Tt0V4PsaZJO+hQQSKxZoygs
 PQvQ==
X-Gm-Message-State: AOAM532bY/E8NYvSOY9fEECFslp3ddWwdgf0iMyU4aEUCQP9amk3H3Rn
 qGW/NfaTAmlAM23RVtq9uEw=
X-Google-Smtp-Source: ABdhPJxBusojGAIYyVfGCb3/XjJGxG2X3jcM+yG/UzlvGT5gG9FuSfqFsFQdcDZ+EowRT+0Iv8WYpg==
X-Received: by 2002:a62:e916:: with SMTP id j22mr6017327pfh.85.1591306106783; 
 Thu, 04 Jun 2020 14:28:26 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id v129sm5317416pfv.18.2020.06.04.14.28.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 14:28:25 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2] spi: bcm2835: Enable shared interrupt support
Date: Thu,  4 Jun 2020 14:28:19 -0700
Message-Id: <20200604212819.715-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_142828_013714_C18158AC 
X-CRM114-Status: GOOD (  17.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

The 4 SPI controller instances added in BCM2711 and BCM7211 SoCs (SPI3,
SPI4, SPI5 and SPI6) share the same interrupt line with SPI0.

For the BCM2835 case which is deemed performance critical, we would like
to continue using an interrupt handler which does not have the extra
comparison on BCM2835_SPI_CS_INTR.

To support that requirement the common interrupt handling code between
the shared and non-shared interrupt paths is split into a
bcm2835_spi_interrupt_common() and both bcm2835_spi_interrupt() as well
as bcm2835_spi_shared_interrupt() make use of it.

During probe, we determine if there is at least another instance of this
SPI controller, and if there is, then we install a shared interrupt
handler.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
Changes in v2:

- identify other available SPI nodes to determine if we need to set-up
  interrupt sharing. This needs to happen for the very first instance
  since we cannot know for the first instance whether interrupt sharing
  is needed or not.

 drivers/spi/spi-bcm2835.c | 61 ++++++++++++++++++++++++++++++++-------
 1 file changed, 50 insertions(+), 11 deletions(-)

diff --git a/drivers/spi/spi-bcm2835.c b/drivers/spi/spi-bcm2835.c
index 237bd306c268..0288b5b3de1e 100644
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
+static irqreturn_t bcm2835_spi_shared_interrupt(int irq, void *dev_id)
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
@@ -1287,12 +1307,37 @@ static int bcm2835_spi_setup(struct spi_device *spi)
 	return 0;
 }
 
+static const struct of_device_id bcm2835_spi_match[] = {
+	{ .compatible = "brcm,bcm2835-spi", },
+	{}
+};
+MODULE_DEVICE_TABLE(of, bcm2835_spi_match);
+
 static int bcm2835_spi_probe(struct platform_device *pdev)
 {
+	irq_handler_t bcm2835_spi_isr_func = bcm2835_spi_interrupt;
 	struct spi_controller *ctlr;
+	unsigned long flags = 0;
+	struct device_node *dn;
 	struct bcm2835_spi *bs;
 	int err;
 
+	/* On BCM2711 there can be multiple SPI controllers enabled sharing the
+	 * same interrupt line, but we also want to minimize the overhead if
+	 * there is no need to support interrupt sharing. If we find at least
+	 * another available instane (not counting the one we are probed from),
+	 * then we assume that interrupt sharing is necessary.
+	 */
+	for_each_compatible_node(dn, NULL, bcm2835_spi_match[0].compatible) {
+		err = of_device_is_available(dn) && dn != pdev->dev.of_node;
+		of_node_put(dn);
+		if (err) {
+			flags = IRQF_SHARED;
+			bcm2835_spi_isr_func = bcm2835_spi_shared_interrupt;
+			break;
+		}
+	}
+
 	ctlr = spi_alloc_master(&pdev->dev, ALIGN(sizeof(*bs),
 						  dma_get_cache_alignment()));
 	if (!ctlr)
@@ -1344,8 +1389,8 @@ static int bcm2835_spi_probe(struct platform_device *pdev)
 	bcm2835_wr(bs, BCM2835_SPI_CS,
 		   BCM2835_SPI_CS_CLEAR_RX | BCM2835_SPI_CS_CLEAR_TX);
 
-	err = devm_request_irq(&pdev->dev, bs->irq, bcm2835_spi_interrupt, 0,
-			       dev_name(&pdev->dev), ctlr);
+	err = devm_request_irq(&pdev->dev, bs->irq, bcm2835_spi_isr_func,
+			       flags, dev_name(&pdev->dev), ctlr);
 	if (err) {
 		dev_err(&pdev->dev, "could not request IRQ: %d\n", err);
 		goto out_dma_release;
@@ -1400,12 +1445,6 @@ static void bcm2835_spi_shutdown(struct platform_device *pdev)
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
