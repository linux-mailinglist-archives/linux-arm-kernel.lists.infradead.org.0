Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 869DE164482
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 13:41:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f+Q0608vEIs3xzcvufn97i1qcMNPTYYhUPz5sHHDKKE=; b=hHZfgffPqD/PNe
	VDNn402SGly26461Jwv/nl4pImKM/X3W9bsVVeA+e0tsnwuAx+DGhw8R59icGgBHCBhDZW+MIzrB9
	msWpR8LnvKX240+DqEBqouR7L5thAMPZjc2ExiqSABhf2/Y8JQeQZdTzY/n+9Q+Xc5V54Xf91sj4x
	/dat7XetBERHN2yG/dMHLkQzM8NrpPQOo9panpKM3kS7yvUc74p5KtG8J1z3QUXkHCZvA6OXNTvfz
	nit0rGLzjRFYqhx6Ig6njWWgqHjuPVLICJjc7IN1LmDGUNrvlSk4sIKRjeR6G4dNXKyhTNGA4fYgA
	Z86mNQZF4fJEDU5/y5zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Oey-0001Bu-Gi; Wed, 19 Feb 2020 12:41:00 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Odl-0007Pv-OW; Wed, 19 Feb 2020 12:39:49 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 6ED95B4D0;
 Wed, 19 Feb 2020 12:39:43 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: linux-kernel@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH v2 2/4] firmware: raspberrypi: Introduce vl805 init routine
Date: Wed, 19 Feb 2020 13:39:31 +0100
Message-Id: <20200219123933.2792-3-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200219123933.2792-1-nsaenzjulienne@suse.de>
References: <20200219123933.2792-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_043946_142619_A26F3640 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: tim.gover@raspberrypi.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 wahrenst@gmx.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On the Raspberry Pi 4, after a PCI reset, VL805's firmware may either be
loaded directly from an EEPROM or, if not present, by the SoC's
VideCore. The function informs VideCore that VL805 was just reset, or
requests for a probe defer.

Based on Tim Gover's downstream implementation.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---

Changes since v1:
 - Moved into own commit and firmware/raspberrypi.c

 drivers/firmware/raspberrypi.c             | 37 ++++++++++++++++++++++
 include/soc/bcm2835/raspberrypi-firmware.h |  7 ++++
 2 files changed, 44 insertions(+)

diff --git a/drivers/firmware/raspberrypi.c b/drivers/firmware/raspberrypi.c
index da26a584dca0..cc0563029805 100644
--- a/drivers/firmware/raspberrypi.c
+++ b/drivers/firmware/raspberrypi.c
@@ -286,6 +286,43 @@ struct rpi_firmware *rpi_firmware_get(struct device_node *firmware_node)
 }
 EXPORT_SYMBOL_GPL(rpi_firmware_get);
 
+/*
+ * On the Raspberry Pi 4, after a PCI reset, VL805's firmware may either be
+ * loaded directly from an EEPROM or, if not present, by the SoC's VideCore.
+ * Inform VideCore that VL805 was just reset, or defer xhci's probe if not yet
+ * joinable trough the mailbox interface.
+ */
+int rpi_firmware_init_vl805(struct pci_dev *pdev)
+{
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
+	return 0;
+}
+EXPORT_SYMBOL_GPL(rpi_firmware_init_vl805);
+
 static const struct of_device_id rpi_firmware_of_match[] = {
 	{ .compatible = "raspberrypi,bcm2835-firmware", },
 	{},
diff --git a/include/soc/bcm2835/raspberrypi-firmware.h b/include/soc/bcm2835/raspberrypi-firmware.h
index cc9cdbc66403..a37c3a461d2a 100644
--- a/include/soc/bcm2835/raspberrypi-firmware.h
+++ b/include/soc/bcm2835/raspberrypi-firmware.h
@@ -8,6 +8,7 @@
 
 #include <linux/types.h>
 #include <linux/of_device.h>
+#include <linux/pci.h>
 
 struct rpi_firmware;
 
@@ -141,6 +142,7 @@ int rpi_firmware_property(struct rpi_firmware *fw,
 int rpi_firmware_property_list(struct rpi_firmware *fw,
 			       void *data, size_t tag_size);
 struct rpi_firmware *rpi_firmware_get(struct device_node *firmware_node);
+int rpi_firmware_init_vl805(struct pci_dev *pdev);
 #else
 static inline int rpi_firmware_property(struct rpi_firmware *fw, u32 tag,
 					void *data, size_t len)
@@ -158,6 +160,11 @@ static inline struct rpi_firmware *rpi_firmware_get(struct device_node *firmware
 {
 	return NULL;
 }
+
+static int rpi_firmware_init_vl805(struct pci_dev *pdev)
+{
+	return 0;
+}
 #endif
 
 #endif /* __SOC_RASPBERRY_FIRMWARE_H__ */
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
