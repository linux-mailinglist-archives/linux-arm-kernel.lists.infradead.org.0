Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1BC8E5FA9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 22:49:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BuRh1ApQg8NMhWNfHVOCwxBVPt/aWCVyf4u9DMkCezk=; b=WZU20EzG9Obo64
	Xt1PQI3rHqdlohS9Fulax3IN+tK1AvDkt/LzYyZ+uyYJY3O1CN4XzV+yar8O7LH2hF7cvTlQcUDoO
	homYW4SOkKt3E6z3hKeaIOReKWH3jgZIEaOJpHEs9pqspeayaZroPbS6X8A61tPftjWdS+6A5HjJ/
	aXqLIk2S0VIFllWHFdrIHLGnAap70alb4gtKOfIysAqkefvhu+jn6jNVZm9ISSrSjn/dvsEsNttwC
	705BmeLGot83f+ql2SsNCUqnIJ2vAJ59ny6ugooeZa7YtpQDpivOv7uvTYQ6kXtK9vZwOBv61t2v0
	H6WbiCaqOaCfFT/b/bFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOT0W-0002Qs-LJ; Sat, 26 Oct 2019 20:49:56 +0000
Received: from vault.bonstra.fr.eu.org ([51.158.68.104])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOSzT-0001WI-RX
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 20:48:53 +0000
Received: from val.bonstra.fr.eu.org (unknown [192.168.128.2])
 by vault.bonstra.fr.eu.org (Postfix) with ESMTP id 05E74BFD2D;
 Sat, 26 Oct 2019 20:41:48 +0000 (UTC)
Received: from bonstra.fr.eu.org (vlad.gr1 [IPv6:fd7b:45cc:aa3d::3])
 by val.bonstra.fr.eu.org (Postfix) with ESMTPSA id B839060872;
 Sat, 26 Oct 2019 22:41:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=bonstra.fr.eu.org;
 s=dkim1; t=1572122506; x=1573332106;
 bh=FyQmJggoRLmgdI/q2dRsgf7Gx/W0s5so0ktocvI2jZg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=a69nCh1vudgKtmmY0lGVIH6/NKWuMS9Sizht2iFRbUvG0xc7nV5Ed+cyYd0En8gDA
 bJIahxWflCenEMQ67NaswXcR/JZxwaXE5aukNkMIhr2xoWAWWSo+fechRN4uwBZuaQ
 1GhMVcohCvnLJQ92/aK3cWPIpxdrJlD9jJcJijoSsXiJpVKI4eLfj1iWrR+zFQQpVz
 bmocZm0T5vJwQ0+28Cc35lAm3yee2xuKviI8yl45HeHznkN+JYZ+9hSuQe2N7QGpsf
 AFzzOwvao7797RhRyttKeMF1ORLPtUOlayUhxESceILv/xkJnuyeV9RImindMZnq8X
 aludlEdbdwAzA==
From: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
To: Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 2/3] Bluetooth: hci_h5: Add DT support for rtl8723bs
Date: Sat, 26 Oct 2019 22:41:15 +0200
Message-Id: <20191026204116.95119-3-bonstra@bonstra.fr.eu.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191026204116.95119-1-bonstra@bonstra.fr.eu.org>
References: <20191026204116.95119-1-bonstra@bonstra.fr.eu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_134852_159899_64518DC8 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>,
 linux-arm-kernel@lists.infradead.org, linux-bluetooth@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The hci_h5 already supports rtl8723bs devices discovered via ACPI. This
commit adds support for discovering via device tree for ACPI-less
platforms.

Signed-off-by: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
---
 drivers/bluetooth/hci_h5.c | 40 +++++++++++++++++++++++++++++++++-----
 1 file changed, 35 insertions(+), 5 deletions(-)

diff --git a/drivers/bluetooth/hci_h5.c b/drivers/bluetooth/hci_h5.c
index dacf297baf59..49ac03b1a7e3 100644
--- a/drivers/bluetooth/hci_h5.c
+++ b/drivers/bluetooth/hci_h5.c
@@ -11,6 +11,7 @@
 #include <linux/gpio/consumer.h>
 #include <linux/kernel.h>
 #include <linux/mod_devicetable.h>
+#include <linux/of_device.h>
 #include <linux/serdev.h>
 #include <linux/skbuff.h>
 
@@ -782,7 +783,9 @@ static const struct hci_uart_proto h5p = {
 
 static int h5_serdev_probe(struct serdev_device *serdev)
 {
-	const struct acpi_device_id *match;
+	const struct acpi_device_id *acpi_match;
+	const struct of_device_id *of_match;
+	const char *cfgname = NULL;
 	struct device *dev = &serdev->dev;
 	struct h5 *h5;
 
@@ -797,16 +800,27 @@ static int h5_serdev_probe(struct serdev_device *serdev)
 	serdev_device_set_drvdata(serdev, h5);
 
 	if (has_acpi_companion(dev)) {
-		match = acpi_match_device(dev->driver->acpi_match_table, dev);
-		if (!match)
+		acpi_match = acpi_match_device(
+				dev->driver->acpi_match_table, dev);
+		if (!acpi_match)
 			return -ENODEV;
 
-		h5->vnd = (const struct h5_vnd *)match->driver_data;
-		h5->id  = (char *)match->id;
+		h5->vnd = (const struct h5_vnd *)acpi_match->driver_data;
+		h5->id  = (char *)acpi_match->id;
 
 		if (h5->vnd->acpi_gpio_map)
 			devm_acpi_dev_add_driver_gpios(dev,
 						       h5->vnd->acpi_gpio_map);
+	} else if (dev->of_node) {
+		of_match = of_match_device(dev->driver->of_match_table, dev);
+		if (!of_match)
+			return -ENODEV;
+
+		of_property_read_string(dev->of_node,
+					"realtek,config-name", &cfgname);
+
+		h5->vnd = (const struct h5_vnd *)of_match->data;
+		h5->id = cfgname;
 	}
 
 	h5->enable_gpio = devm_gpiod_get_optional(dev, "enable", GPIOD_OUT_LOW);
@@ -996,6 +1010,19 @@ static const struct acpi_device_id h5_acpi_match[] = {
 MODULE_DEVICE_TABLE(acpi, h5_acpi_match);
 #endif
 
+#ifdef CONFIG_OF
+static const struct of_device_id h5_of_match[] = {
+#ifdef CONFIG_BT_HCIUART_RTL
+	{
+		.compatible = "realtek,rtl8723bs-bt",
+		.data = &rtl_vnd
+	},
+#endif
+	{ },
+};
+MODULE_DEVICE_TABLE(of, h5_of_match);
+#endif
+
 static const struct dev_pm_ops h5_serdev_pm_ops = {
 	SET_SYSTEM_SLEEP_PM_OPS(h5_serdev_suspend, h5_serdev_resume)
 };
@@ -1006,6 +1033,9 @@ static struct serdev_device_driver h5_serdev_driver = {
 	.driver = {
 		.name = "hci_uart_h5",
 		.acpi_match_table = ACPI_PTR(h5_acpi_match),
+#ifdef CONFIG_OF
+		.of_match_table = h5_of_match,
+#endif
 		.pm = &h5_serdev_pm_ops,
 	},
 };
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
