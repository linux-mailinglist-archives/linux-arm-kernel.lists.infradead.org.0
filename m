Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 706CC19192D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 19:29:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kAIknZ2RVw6gB9CaOcG4KQjgkdNyrtcLcfH5XAGtITo=; b=Z5B/3JRWWCVYHI
	AsxnYFEFit0NnrRvZDbi0ktp8wUbVrztmKRPQWvfaWSlelJEKdEpJhHItnpicKfR5JhfHFsPt3V3X
	i29DtdYSOr/cjW/qeoakzXY0b1ApjrrK3MWjX/k0k9SVqGwkq6KT3T3qok969KInPAe0ERZ9bYkP1
	P2Jj1QT0QtCfcd0PsSjn4riMP09KNZVuviLm2bcg3Cr78qfIq6gDHHoS1nqPzdEt4gG+i/s66lTFY
	Dd3vPgItuRBvzgAjWdT4Bvx41u82KONuYDshYftzUZX7pxh76o4PwtPoPt/A4hJT0pZZe9MB6pQlM
	JwbBVC2fhM1afv00diOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGoIy-00032a-Jv; Tue, 24 Mar 2020 18:29:36 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGoHq-00024W-PL; Tue, 24 Mar 2020 18:28:29 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 3F0CFABE7;
 Tue, 24 Mar 2020 18:28:23 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: linux-kernel@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH v6 2/4] firmware: raspberrypi: Introduce vl805 init routine
Date: Tue, 24 Mar 2020 19:28:10 +0100
Message-Id: <20200324182812.20420-3-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200324182812.20420-1-nsaenzjulienne@suse.de>
References: <20200324182812.20420-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_112827_110873_06144E1C 
X-CRM114-Status: GOOD (  15.67  )
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
Cc: tim.gover@raspberrypi.org, sergei.shtylyov@cogentembedded.com,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, wahrenst@gmx.net
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
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>

---
Changes since v4:
 - Inline function definition when RASPBERRYPI_FIRMWARE is not defined

Changes since v1:
 - Move include into .c file and add forward declaration to .h

 drivers/firmware/raspberrypi.c             | 38 ++++++++++++++++++++++
 include/soc/bcm2835/raspberrypi-firmware.h |  7 ++++
 2 files changed, 45 insertions(+)

diff --git a/drivers/firmware/raspberrypi.c b/drivers/firmware/raspberrypi.c
index da26a584dca0..cbb495aff6a0 100644
--- a/drivers/firmware/raspberrypi.c
+++ b/drivers/firmware/raspberrypi.c
@@ -12,6 +12,7 @@
 #include <linux/of_platform.h>
 #include <linux/platform_device.h>
 #include <linux/slab.h>
+#include <linux/pci.h>
 #include <soc/bcm2835/raspberrypi-firmware.h>
 
 #define MBOX_MSG(chan, data28)		(((data28) & ~0xf) | ((chan) & 0xf))
@@ -286,6 +287,43 @@ struct rpi_firmware *rpi_firmware_get(struct device_node *firmware_node)
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
index cc9cdbc66403..3025aca3c358 100644
--- a/include/soc/bcm2835/raspberrypi-firmware.h
+++ b/include/soc/bcm2835/raspberrypi-firmware.h
@@ -10,6 +10,7 @@
 #include <linux/of_device.h>
 
 struct rpi_firmware;
+struct pci_dev;
 
 enum rpi_firmware_property_status {
 	RPI_FIRMWARE_STATUS_REQUEST = 0,
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
+static inline int rpi_firmware_init_vl805(struct pci_dev *pdev)
+{
+	return 0;
+}
 #endif
 
 #endif /* __SOC_RASPBERRY_FIRMWARE_H__ */
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
