Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5D21C5D30
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 18:14:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zr8RX4pUFuT9LYq/WsMx8aWZosDB52n4Q59lcyexfbE=; b=SDl3WXtuTc/nTE
	liOc14IJBVmzylTRvqtl7RNlIur09j/+2VWz/L9i6UGqjG6N3L8XsQ0hQjdunHpod9jj3p3Az+4sq
	FgwzoSdghy8rfnfxhcqJSbvMvX34yzGnoQBS46jClcjky9iNoijO+nBo3SE9wC8vSKKIafCzmVqHw
	P7p44IgFrwgnBKbAgdUWCjUVQqolk2pLJr7jw/TG8pvfv0R6XJGmz3Lbl8gP14FyWfkkqsKqC+0g1
	Jq6JPtdl+W0AfEWVrFr6/74LhLTpnhsPqXGEPJjrLqtkbZ2c9pulOQ3f85qAed9slCbkVxe5fHetC
	bwaYOp++AlOj7kNN25Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW0Ct-0003KV-Ej; Tue, 05 May 2020 16:14:07 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW0CG-0002rw-Mm; Tue, 05 May 2020 16:13:30 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 4B6EDAF5D;
 Tue,  5 May 2020 16:13:29 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: f.fainelli@gmail.com, gregkh@linuxfoundation.org, wahrenst@gmx.net,
 helgaas@kernel.org, linux-kernel@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH v8 2/4] firmware: raspberrypi: Introduce vl805 init routine
Date: Tue,  5 May 2020 18:13:15 +0200
Message-Id: <20200505161318.26200-3-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200505161318.26200-1-nsaenzjulienne@suse.de>
References: <20200505161318.26200-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_091329_063893_301DE39B 
X-CRM114-Status: GOOD (  18.76  )
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
Cc: linux-pci@vger.kernel.org, tim.gover@raspberrypi.org,
 linux-usb@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Raspberry Pi 4 gets its USB functionality from VL805, a PCIe chip
that implements xHCI. After a PCI reset, VL805's firmware may either be
loaded directly from an EEPROM or, if not present, by the SoC's
co-processor, VideoCore. RPi4's VideoCore OS contains both the non public
firmware load logic and the VL805 firmware blob. The function this patch
introduces triggers the aforementioned process.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

---

Change since v7:
- Use usleep_delay()
- Add comment about PCI errors
- Don't wait on error
- Typos

Change since v6:
- Add test to avoid loading the firmware when not needed
- Since we have it around, print VL805's firmware version, it'll make
debugging easier in the future
- Correct typos
- Add a clearer view of HW topology in patch description

Changes since v4:
- Inline function definition when RASPBERRYPI_FIRMWARE is not defined

Changes since v1:
- Move include into .c file and add forward declaration to .h

 drivers/firmware/raspberrypi.c             | 61 ++++++++++++++++++++++
 include/soc/bcm2835/raspberrypi-firmware.h |  7 +++
 2 files changed, 68 insertions(+)

diff --git a/drivers/firmware/raspberrypi.c b/drivers/firmware/raspberrypi.c
index da26a584dca0..a166ad0cec2c 100644
--- a/drivers/firmware/raspberrypi.c
+++ b/drivers/firmware/raspberrypi.c
@@ -12,6 +12,8 @@
 #include <linux/of_platform.h>
 #include <linux/platform_device.h>
 #include <linux/slab.h>
+#include <linux/pci.h>
+#include <linux/delay.h>
 #include <soc/bcm2835/raspberrypi-firmware.h>
 
 #define MBOX_MSG(chan, data28)		(((data28) & ~0xf) | ((chan) & 0xf))
@@ -19,6 +21,8 @@
 #define MBOX_DATA28(msg)		((msg) & ~0xf)
 #define MBOX_CHAN_PROPERTY		8
 
+#define VL805_PCI_CONFIG_VERSION_OFFSET		0x50
+
 static struct platform_device *rpi_hwmon;
 static struct platform_device *rpi_clk;
 
@@ -286,6 +290,63 @@ struct rpi_firmware *rpi_firmware_get(struct device_node *firmware_node)
 }
 EXPORT_SYMBOL_GPL(rpi_firmware_get);
 
+/*
+ * The Raspberry Pi 4 gets its USB functionality from VL805, a PCIe chip that
+ * implements xHCI. After a PCI reset, VL805's firmware may either be loaded
+ * directly from an EEPROM or, if not present, by the SoC's co-processor,
+ * VideoCore. RPi4's VideoCore OS contains both the non public firmware load
+ * logic and the VL805 firmware blob. This function triggers the aforementioned
+ * process.
+ */
+int rpi_firmware_init_vl805(struct pci_dev *pdev)
+{
+	struct device_node *fw_np;
+	struct rpi_firmware *fw;
+	u32 dev_addr, version;
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
+		return -ENODEV;
+
+	/*
+	 * Make sure we don't trigger a firmware load unnecessarily.
+	 *
+	 * If something went wrong with PCI, this whole exercise would be
+	 * futile as VideoCore expects from us a configured PCI bus. Just take
+	 * the faulty version (likely ~0) and let xHCI's registration fail
+	 * further down the line.
+	 */
+	pci_read_config_dword(pdev, VL805_PCI_CONFIG_VERSION_OFFSET, &version);
+	if (version)
+		goto exit;
+
+	dev_addr = pdev->bus->number << 20 | PCI_SLOT(pdev->devfn) << 15 |
+		   PCI_FUNC(pdev->devfn) << 12;
+
+	ret = rpi_firmware_property(fw, RPI_FIRMWARE_NOTIFY_XHCI_RESET,
+				    &dev_addr, sizeof(dev_addr));
+	if (ret)
+		return ret;
+
+	/* Wait for vl805 to startup */
+	usleep_range(200, 1000);
+
+	pci_read_config_dword(pdev, VL805_PCI_CONFIG_VERSION_OFFSET,
+			      &version);
+exit:
+	pci_info(pdev, "VL805 firmware version %08x\n", version);
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
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
