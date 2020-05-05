Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1ED1C5D33
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 18:14:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KaAXr2YFGUN9aHABYMGoI6lDCplKLkueaLach3EcLIQ=; b=SAMPLJUWqAiuYn
	Ols6qNQTSsb2o1pxY1yuF4MaX8dUzqsSCkylXQf5SkLRki0hXDsY/eVzwcypdH60m5jdk31wU1MJD
	O88oZLgP0rvsSmG//a4xMHn/EpxntBmXZvNxlvZ9RuDATHjuA2w1+GKUOEvREG9jBi1M4+r5QZXrY
	nRQqxUi1CldsZHzGt3IJi1mXzlNIhZq+fi48xOWUdgCSXYfpJO4qsr3b3QhwJklPSO0c4jMAHKYTQ
	z3kKMMszvYgug/JraC4fZD2qDKGic3IxeOSxP2c8dLYBfxMxfBz7gya5rpBpjvFelYZMN2qXaQInv
	gND7kQ/fU/heR7N6g6Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW0D6-0003b2-5a; Tue, 05 May 2020 16:14:20 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW0CI-0002tA-MY; Tue, 05 May 2020 16:13:32 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 3372DAF7A;
 Tue,  5 May 2020 16:13:31 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: f.fainelli@gmail.com, gregkh@linuxfoundation.org, wahrenst@gmx.net,
 helgaas@kernel.org, linux-kernel@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH v8 3/4] PCI: brcmstb: Wait for Raspberry Pi's firmware when
 present
Date: Tue,  5 May 2020 18:13:16 +0200
Message-Id: <20200505161318.26200-4-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200505161318.26200-1-nsaenzjulienne@suse.de>
References: <20200505161318.26200-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_091330_993258_A3A56727 
X-CRM114-Status: GOOD (  11.90  )
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
Cc: tim.gover@raspberrypi.org, linux-pci@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

xHCI's PCI fixup, run at the end of pcie-brcmstb's probe, depends on
RPi4's VideoCore firmware interface to be up and running. It's possible
for both initializations to race, so make sure it's available prior to
starting.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>

---

Changes since v6:
- Add more complete comment

 drivers/pci/controller/pcie-brcmstb.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
index 6d79d14527a6..0b97b94c4a9a 100644
--- a/drivers/pci/controller/pcie-brcmstb.c
+++ b/drivers/pci/controller/pcie-brcmstb.c
@@ -28,6 +28,8 @@
 #include <linux/string.h>
 #include <linux/types.h>
 
+#include <soc/bcm2835/raspberrypi-firmware.h>
+
 #include "../pci.h"
 
 /* BRCM_PCIE_CAP_REGS - Offset for the mandatory capability config regs */
@@ -917,11 +919,26 @@ static int brcm_pcie_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node, *msi_np;
 	struct pci_host_bridge *bridge;
+	struct device_node *fw_np;
 	struct brcm_pcie *pcie;
 	struct pci_bus *child;
 	struct resource *res;
 	int ret;
 
+	/*
+	 * We have to wait for Raspberry Pi's firmware interface to be up as a
+	 * PCI fixup, rpi_firmware_init_vl805(), depends on it. This driver's
+	 * probe can race with the firmware interface's (see
+	 * drivers/firmware/raspberrypi.c) and potentially break the PCI fixup.
+	 */
+	fw_np = of_find_compatible_node(NULL, NULL,
+					"raspberrypi,bcm2835-firmware");
+	if (fw_np && !rpi_firmware_get(fw_np)) {
+		of_node_put(fw_np);
+		return -EPROBE_DEFER;
+	}
+	of_node_put(fw_np);
+
 	bridge = devm_pci_alloc_host_bridge(&pdev->dev, sizeof(*pcie));
 	if (!bridge)
 		return -ENOMEM;
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
