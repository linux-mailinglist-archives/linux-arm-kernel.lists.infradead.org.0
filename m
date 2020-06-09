Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B6B1F43BC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 19:57:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4QEOhat6nDELFvAIV0A0ItzVqeQfOyRxGFnjMNrNNeY=; b=u72fx61zxDLSeD
	3VJatQ167FMplIxAZoF4wi6JN8+8rgyVDZcZ2QLqeurSMxQxfeLf2Lk2PT8S7UJxZj+3aOtjw/ZS2
	AfS8TDd7JUAsSqlUxltYSRA2FgoPOIbF7gmHN0YKGl24rBM83SBUI4R3Bhi2h/bTVjCGCINb36K64
	xDSUIKYldrLiZbHk5ra/VoswLqXcg2QJs8MgvHNRgXKNoQBMJISr1rd3jAu8Q9EdVZRiqtoJAF0oC
	I4WeA/EaGFgpTNLf1vmZHQTtvRYvN4vJMYLkhuHg7xg7zjB0XMGQ+U6/57tRLnjkJPnF0cF9JXLET
	u8xhIkQeecvcRQQ7wfNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiiUx-0001Ae-2s; Tue, 09 Jun 2020 17:57:19 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiiOK-0001ly-4r; Tue, 09 Jun 2020 17:50:41 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id C9705B183;
 Tue,  9 Jun 2020 17:50:29 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: f.fainelli@gmail.com, gregkh@linuxfoundation.org, wahrenst@gmx.net,
 p.zabel@pengutronix.de, linux-kernel@vger.kernel.org,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v2 8/9] Revert "firmware: raspberrypi: Introduce vl805 init
 routine"
Date: Tue,  9 Jun 2020 19:50:01 +0200
Message-Id: <20200609175003.19793-9-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200609175003.19793-1-nsaenzjulienne@suse.de>
References: <20200609175003.19793-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_105039_215296_7A1B8CA2 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: tim.gover@raspberrypi.org, mathias.nyman@linux.intel.com,
 linux-pci@vger.kernel.org, linux-usb@vger.kernel.org,
 andy.shevchenko@gmail.com, lorenzo.pieralisi@arm.com, helgaas@kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit fbbc5ff3f7f9f4cad562e530ae2cf5d8964fe6d3.

The vl805 init routine has moved into drivers/reset/reset-raspberrypi.c

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/firmware/raspberrypi.c             | 61 ----------------------
 include/soc/bcm2835/raspberrypi-firmware.h |  7 ---
 2 files changed, 68 deletions(-)

diff --git a/drivers/firmware/raspberrypi.c b/drivers/firmware/raspberrypi.c
index ef8098856a47..a3e85186f8e6 100644
--- a/drivers/firmware/raspberrypi.c
+++ b/drivers/firmware/raspberrypi.c
@@ -12,8 +12,6 @@
 #include <linux/of_platform.h>
 #include <linux/platform_device.h>
 #include <linux/slab.h>
-#include <linux/pci.h>
-#include <linux/delay.h>
 #include <soc/bcm2835/raspberrypi-firmware.h>
 
 #define MBOX_MSG(chan, data28)		(((data28) & ~0xf) | ((chan) & 0xf))
@@ -21,8 +19,6 @@
 #define MBOX_DATA28(msg)		((msg) & ~0xf)
 #define MBOX_CHAN_PROPERTY		8
 
-#define VL805_PCI_CONFIG_VERSION_OFFSET		0x50
-
 static struct platform_device *rpi_hwmon;
 static struct platform_device *rpi_clk;
 
@@ -284,63 +280,6 @@ struct rpi_firmware *rpi_firmware_get(struct device_node *firmware_node)
 }
 EXPORT_SYMBOL_GPL(rpi_firmware_get);
 
-/*
- * The Raspberry Pi 4 gets its USB functionality from VL805, a PCIe chip that
- * implements xHCI. After a PCI reset, VL805's firmware may either be loaded
- * directly from an EEPROM or, if not present, by the SoC's co-processor,
- * VideoCore. RPi4's VideoCore OS contains both the non public firmware load
- * logic and the VL805 firmware blob. This function triggers the aforementioned
- * process.
- */
-int rpi_firmware_init_vl805(struct pci_dev *pdev)
-{
-	struct device_node *fw_np;
-	struct rpi_firmware *fw;
-	u32 dev_addr, version;
-	int ret;
-
-	fw_np = of_find_compatible_node(NULL, NULL,
-					"raspberrypi,bcm2835-firmware");
-	if (!fw_np)
-		return 0;
-
-	fw = rpi_firmware_get(fw_np);
-	of_node_put(fw_np);
-	if (!fw)
-		return -ENODEV;
-
-	/*
-	 * Make sure we don't trigger a firmware load unnecessarily.
-	 *
-	 * If something went wrong with PCI, this whole exercise would be
-	 * futile as VideoCore expects from us a configured PCI bus. Just take
-	 * the faulty version (likely ~0) and let xHCI's registration fail
-	 * further down the line.
-	 */
-	pci_read_config_dword(pdev, VL805_PCI_CONFIG_VERSION_OFFSET, &version);
-	if (version)
-		goto exit;
-
-	dev_addr = pdev->bus->number << 20 | PCI_SLOT(pdev->devfn) << 15 |
-		   PCI_FUNC(pdev->devfn) << 12;
-
-	ret = rpi_firmware_property(fw, RPI_FIRMWARE_NOTIFY_XHCI_RESET,
-				    &dev_addr, sizeof(dev_addr));
-	if (ret)
-		return ret;
-
-	/* Wait for vl805 to startup */
-	usleep_range(200, 1000);
-
-	pci_read_config_dword(pdev, VL805_PCI_CONFIG_VERSION_OFFSET,
-			      &version);
-exit:
-	pci_info(pdev, "VL805 firmware version %08x\n", version);
-
-	return 0;
-}
-EXPORT_SYMBOL_GPL(rpi_firmware_init_vl805);
-
 static const struct of_device_id rpi_firmware_of_match[] = {
 	{ .compatible = "raspberrypi,bcm2835-firmware", },
 	{},
diff --git a/include/soc/bcm2835/raspberrypi-firmware.h b/include/soc/bcm2835/raspberrypi-firmware.h
index 3025aca3c358..cc9cdbc66403 100644
--- a/include/soc/bcm2835/raspberrypi-firmware.h
+++ b/include/soc/bcm2835/raspberrypi-firmware.h
@@ -10,7 +10,6 @@
 #include <linux/of_device.h>
 
 struct rpi_firmware;
-struct pci_dev;
 
 enum rpi_firmware_property_status {
 	RPI_FIRMWARE_STATUS_REQUEST = 0,
@@ -142,7 +141,6 @@ int rpi_firmware_property(struct rpi_firmware *fw,
 int rpi_firmware_property_list(struct rpi_firmware *fw,
 			       void *data, size_t tag_size);
 struct rpi_firmware *rpi_firmware_get(struct device_node *firmware_node);
-int rpi_firmware_init_vl805(struct pci_dev *pdev);
 #else
 static inline int rpi_firmware_property(struct rpi_firmware *fw, u32 tag,
 					void *data, size_t len)
@@ -160,11 +158,6 @@ static inline struct rpi_firmware *rpi_firmware_get(struct device_node *firmware
 {
 	return NULL;
 }
-
-static inline int rpi_firmware_init_vl805(struct pci_dev *pdev)
-{
-	return 0;
-}
 #endif
 
 #endif /* __SOC_RASPBERRY_FIRMWARE_H__ */
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
