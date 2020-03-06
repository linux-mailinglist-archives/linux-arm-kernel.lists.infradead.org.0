Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC66C17BBFD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 12:45:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RSrjVuoil+7Cud9POGvsAcP8PYRf4QKzZ03MsRUZFO4=; b=MgZdlxvbm99qLd
	l3Hb/jk4OC0RFy13iStY4bzUK9vCP+6Vot5m5wzUVCtDKdxS4kdMx5eQDu3ZidH3fcWhQgbkujlwO
	TxZisATN94E5Xhi9zD+YUkb8+PGNRY8a0dQ3Ggloj2/GcEIkR2dDFe1Zhf4zIVnA7iEAfBcmFHdz3
	GP7Ab6fR6jGjs98nJ/vRx+vT6RNArA7Lzg+QthfGGIL//I6DtSigSOYxlnGfKGLU+cEgodxmpLPzf
	qXxV5iRqCQ6tFmpueyjF2J/OL91jR8MAt5TnWiCSx83x3Ao0lsTd7htOh38t7RDefC86yce98OJdx
	ku00uNE2FVPvudJC9ScQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jABPs-0007AB-Qg; Fri, 06 Mar 2020 11:45:20 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jABOa-00052y-EU; Fri, 06 Mar 2020 11:44:02 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id F3588AF77;
 Fri,  6 Mar 2020 11:43:58 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: linux-kernel@vger.kernel.org,
	Mathias Nyman <mathias.nyman@intel.com>
Subject: [PATCH v4 4/4] USB: pci-quirks: Add Raspberry Pi 4 quirk
Date: Fri,  6 Mar 2020 12:43:48 +0100
Message-Id: <20200306114348.5172-5-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306114348.5172-1-nsaenzjulienne@suse.de>
References: <20200306114348.5172-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_034400_661945_E65B756F 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: f.fainelli@gmail.com, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, tim.gover@raspberrypi.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 wahrenst@gmx.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On the Raspberry Pi 4, after a PCI reset, VL805's firmware may either be
loaded directly from an EEPROM or, if not present, by the SoC's
VideCore. Inform VideCore that VL805 was just reset.

Also, as this creates a dependency between XHCI_PCI and VideoCore's
firmware interface, reflect that on the firmware interface Kconfg.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---

Changes since v3:
 - Add more complete error message.
 - Add braces around if statement

Changes since v1:
 - Make RASPBERRYPI_FIRMWARE dependent on this quirk to make sure it
   gets compiled when needed.

 drivers/firmware/Kconfig      |  1 +
 drivers/usb/host/pci-quirks.c | 16 ++++++++++++++++
 2 files changed, 17 insertions(+)

diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
index ea869addc89b..40a468d712a5 100644
--- a/drivers/firmware/Kconfig
+++ b/drivers/firmware/Kconfig
@@ -180,6 +180,7 @@ config ISCSI_IBFT
 config RASPBERRYPI_FIRMWARE
 	tristate "Raspberry Pi Firmware Driver"
 	depends on BCM2835_MBOX
+	default XHCI_PCI
 	help
 	  This option enables support for communicating with the firmware on the
 	  Raspberry Pi.
diff --git a/drivers/usb/host/pci-quirks.c b/drivers/usb/host/pci-quirks.c
index beb2efa71341..452f5f12b042 100644
--- a/drivers/usb/host/pci-quirks.c
+++ b/drivers/usb/host/pci-quirks.c
@@ -16,6 +16,9 @@
 #include <linux/export.h>
 #include <linux/acpi.h>
 #include <linux/dmi.h>
+
+#include <soc/bcm2835/raspberrypi-firmware.h>
+
 #include "pci-quirks.h"
 #include "xhci-ext-caps.h"
 
@@ -1243,11 +1246,24 @@ static void quirk_usb_handoff_xhci(struct pci_dev *pdev)
 
 static void quirk_usb_early_handoff(struct pci_dev *pdev)
 {
+	int ret;
+
 	/* Skip Netlogic mips SoC's internal PCI USB controller.
 	 * This device does not need/support EHCI/OHCI handoff
 	 */
 	if (pdev->vendor == 0x184e)	/* vendor Netlogic */
 		return;
+
+	if (pdev->vendor == PCI_VENDOR_ID_VIA && pdev->device == 0x3483) {
+		ret = rpi_firmware_init_vl805(pdev);
+		if (ret) {
+			/* Firmware might be outdated, or something failed */
+			dev_warn(&pdev->dev, "Failed to load VL805's firmware: %d\n", ret);
+			dev_warn(&pdev->dev, "Will continue to attempt to work, "
+				 "but bad things might happen. You should fix this...\n");
+		}
+	}
+
 	if (pdev->class != PCI_CLASS_SERIAL_USB_UHCI &&
 			pdev->class != PCI_CLASS_SERIAL_USB_OHCI &&
 			pdev->class != PCI_CLASS_SERIAL_USB_EHCI &&
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
