Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2831BE44F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 18:49:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z4fxfnFInCwEbH7O2Vh1MomluIubmLUD2/+rY74z9Rg=; b=pUBEWeGutsdTVP
	NLzM6X9OuI5ibEZbFLiZQ66k6tUfx64EmURbruTKUomCzCnccIl+hl0VN1yk+nSobSPFdziKrzzRK
	YQv1ZuNUInfzvx2jSH5OyI7pl+7E0cLL/t7ZKfW1gN1Asxxiap02bFxUThjDjqDiXV8guCHolPDZt
	FgXm8GtHFg+Ow6RYxqcbK9IxWPmofLBlLV3oVdNWiVEUjBV0G/vw5NJIYJ9zbqNdCwnJ2RJ7z7Anq
	F4toeceSOLmzzdV20+MB2SXLVUxLeRPTKvp3yzMrOaQed0M6RHVDtIi2db99wdhSwhMeMjUpIyawM
	8bfZ4RBY64VeD5wezgYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTptU-0008Ns-Qy; Wed, 29 Apr 2020 16:49:08 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTpsI-0007QV-NT; Wed, 29 Apr 2020 16:47:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 4B358AD80;
 Wed, 29 Apr 2020 16:47:52 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: f.fainelli@gmail.com, gregkh@linuxfoundation.org, helgaas@kernel.org,
 linux-kernel@vger.kernel.org, Mathias Nyman <mathias.nyman@intel.com>
Subject: [PATCH v7 4/4] USB: pci-quirks: Add Raspberry Pi 4 quirk
Date: Wed, 29 Apr 2020 18:47:34 +0200
Message-Id: <20200429164734.21506-5-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200429164734.21506-1-nsaenzjulienne@suse.de>
References: <20200429164734.21506-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_094754_906257_4034AF57 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: tim.gover@raspberrypi.org, linux-pci@vger.kernel.org,
 linux-usb@vger.kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, wahrenst@gmx.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On the Raspberry Pi 4, after a PCI reset, VL805's firmware may either be
loaded directly from an EEPROM or, if not present, by the SoC's
VideoCore. Inform VideoCore that VL805 was just reset.

Also, as this creates a dependency between USB_PCI and VideoCore's
firmware interface, and since USB_PCI can't be set as a module neither
this can. Reflect that on the firmware interface Kconfg.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---

Changes since v5:
 - Fix Kconfig issue with allmodconfig

Changes since v4:
 - Do not split up error message

Changes since v3:
 - Add more complete error message

Changes since v1:
 - Make RASPBERRYPI_FIRMWARE dependent on this quirk to make sure it
   gets compiled when needed.

 drivers/firmware/Kconfig      |  3 ++-
 drivers/usb/host/pci-quirks.c | 16 ++++++++++++++++
 2 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
index 8007d4aa76dc..b42140cff8ac 100644
--- a/drivers/firmware/Kconfig
+++ b/drivers/firmware/Kconfig
@@ -178,8 +178,9 @@ config ISCSI_IBFT
 	  Otherwise, say N.
 
 config RASPBERRYPI_FIRMWARE
-	tristate "Raspberry Pi Firmware Driver"
+	bool "Raspberry Pi Firmware Driver"
 	depends on BCM2835_MBOX
+	default USB_PCI
 	help
 	  This option enables support for communicating with the firmware on the
 	  Raspberry Pi.
diff --git a/drivers/usb/host/pci-quirks.c b/drivers/usb/host/pci-quirks.c
index beb2efa71341..0dc34668bb2a 100644
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
+			dev_warn(&pdev->dev,
+				 "Failed to load VL805's firmware: %d. Will continue to attempt to work, but bad things might happen. You should fix this...\n",
+				 ret);
+		}
+	}
+
 	if (pdev->class != PCI_CLASS_SERIAL_USB_UHCI &&
 			pdev->class != PCI_CLASS_SERIAL_USB_OHCI &&
 			pdev->class != PCI_CLASS_SERIAL_USB_EHCI &&
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
