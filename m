Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8646160F8B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 11:07:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9LxnYG7+OTfNkU5zgRm0B5fIlRd3d1p9TdhddK1T5CM=; b=hgmxWH8LCuyVEl
	9xzns8JXPGYIkYnbYRKNyKyO7tbwDZiPO9uOZNnfrtlAH2AEpEBOF7UdagqdEcf0PSDGUhQ0CE9xu
	wNJdB+OcPnue6SdOQwYA5Rjx6Icwg1vj4WbweH997xXidDvhBDlp0TTmzWbw1AIBhdPALyZ2vRRgW
	Y04VAgXgj2zEidvHTb38P/s+b27eg29MnNvA4ARlonv3za7eyz5jFlcGVPbVS4y0fJg9DApbhqe6V
	TQ5JbWtTEjKQY4OkEfiy+8eOFYzHt2UQPA33uyO6uHLQ2kmIV1VG8Ma8I4yF8lUc80UddiyCIUif7
	Kn2bFRfTanxPPF/5vfBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3dJA-0007Yr-Pv; Mon, 17 Feb 2020 10:07:20 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3dJ2-0007Xu-Pe; Mon, 17 Feb 2020 10:07:14 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 76A7BAD5C;
 Mon, 17 Feb 2020 10:07:09 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Mathias Nyman <mathias.nyman@intel.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH] usb: xhci-pci: Raspberry Pi FW loader for VIA VL805
Date: Mon, 17 Feb 2020 11:07:00 +0100
Message-Id: <20200217100701.19949-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_020713_122133_6A743494 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: linux-usb@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 oneukum@suse.com, linux-kernel@vger.kernel.org, tim.gover@raspberrypi.org,
 linux-rpi-kernel@lists.infradead.org, phil@raspberrypi.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On the Raspberry Pi 4, after a PCI reset, VL805's firmware may either be
loaded directly from an EEPROM or, if not present, by the SoC's
VideCore.  Inform VideCore that VL805 was just reset, or defer xhci's
probe if not yet joinable trough the mailbox interface.

Based on Tim Gover's downstream implementation.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/usb/host/xhci-pci.c                | 50 ++++++++++++++++++++++
 include/soc/bcm2835/raspberrypi-firmware.h |  2 +-
 2 files changed, 51 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/host/xhci-pci.c b/drivers/usb/host/xhci-pci.c
index 4917c5b033fa..eadace4a9339 100644
--- a/drivers/usb/host/xhci-pci.c
+++ b/drivers/usb/host/xhci-pci.c
@@ -13,6 +13,8 @@
 #include <linux/module.h>
 #include <linux/acpi.h>
 
+#include <soc/bcm2835/raspberrypi-firmware.h>
+
 #include "xhci.h"
 #include "xhci-trace.h"
 
@@ -308,6 +310,44 @@ static int xhci_pci_setup(struct usb_hcd *hcd)
 	return xhci_pci_reinit(xhci, pdev);
 }
 
+/*
+ * On the Raspberry Pi 4, after a PCI reset, VL805's firmware may either be
+ * loaded directly from an EEPROM or, if not present, by the SoC's VideCore.
+ * Inform VideCore that VL805 was just reset, or defer xhci's probe if not yet
+ * joinable trough the mailbox interface.
+ */
+static int raspberrypi_load_vl805_fw(struct pci_dev *pdev)
+{
+#ifdef CONFIG_RASPBERRYPI_FIRMWARE
+	struct device_node *fw_np;
+	struct rpi_firmware *fw;
+	u32 dev_addr;
+	int ret;
+
+	fw_np = of_find_compatible_node(NULL, NULL,
+					"raspberrypi,bcm2835-firmware");
+	if (!fw_np)
+		return 0;
+
+	fw = rpi_firmware_get(fw_np);
+	of_node_put(fw_np);
+	if (!fw)
+		return -EPROBE_DEFER;
+
+	dev_addr = pdev->bus->number << 20 | PCI_SLOT(pdev->devfn) << 15 |
+		   PCI_FUNC(pdev->devfn) << 12;
+
+	ret = rpi_firmware_property(fw, RPI_FIRMWARE_NOTIFY_XHCI_RESET,
+				    &dev_addr, sizeof(dev_addr));
+	if (ret)
+		return ret;
+
+	dev_dbg(&pdev->dev, "loaded Raspberry Pi's VL805 firmware\n");
+
+#endif
+	return 0;
+}
+
 /*
  * We need to register our own PCI probe function (instead of the USB core's
  * function) in order to create a second roothub under xHCI.
@@ -321,6 +361,16 @@ static int xhci_pci_probe(struct pci_dev *dev, const struct pci_device_id *id)
 
 	driver = (struct hc_driver *)id->driver_data;
 
+	if (dev->vendor == PCI_VENDOR_ID_VIA && dev->device == 0x3483) {
+		retval = raspberrypi_load_vl805_fw(dev);
+		if (retval) {
+			if (retval != -EPROBE_DEFER)
+				dev_err(&dev->dev,
+					"Failed to load VL805's firmware");
+			return retval;
+		}
+	}
+
 	/* Prevent runtime suspending between USB-2 and USB-3 initialization */
 	pm_runtime_get_noresume(&dev->dev);
 
diff --git a/include/soc/bcm2835/raspberrypi-firmware.h b/include/soc/bcm2835/raspberrypi-firmware.h
index 7800e12ee042..cc9cdbc66403 100644
--- a/include/soc/bcm2835/raspberrypi-firmware.h
+++ b/include/soc/bcm2835/raspberrypi-firmware.h
@@ -90,7 +90,7 @@ enum rpi_firmware_property_tag {
 	RPI_FIRMWARE_SET_PERIPH_REG =                         0x00038045,
 	RPI_FIRMWARE_GET_POE_HAT_VAL =                        0x00030049,
 	RPI_FIRMWARE_SET_POE_HAT_VAL =                        0x00030050,
-
+	RPI_FIRMWARE_NOTIFY_XHCI_RESET =                      0x00030058,
 
 	/* Dispmanx TAGS */
 	RPI_FIRMWARE_FRAMEBUFFER_ALLOCATE =                   0x00040001,
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
