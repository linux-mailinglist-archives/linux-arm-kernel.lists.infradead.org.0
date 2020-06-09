Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5095E1F43BB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 19:57:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jnWwqvIOWq/FIRWh+Lm7Qna0RxfQ/Mc7dBw+pV+dwKA=; b=LaF3uBLcAJ9u22
	Be2f8OXN1iWh7KGOr9lhH0SDPx5LRut1SJZV2EBTCdKhKtsuqlItp9dWnf2eXpnsnD1r2/OJtPOrA
	WtyA6YsBwW+jK3vwnXunHZhdSUeBqL3I+P3wAWJ+pLg7qDI2aFW4kQ8+e3VEsy3EbEiChFR11QF+S
	ZMQlMDONbeMhOmM93hhqBJZ28Hq5s2+HBXS/KJ/M4Ka5zJ0vXfOVdw1DaT5lx3VzdmL/ve6MCJ9Ob
	b5juoxkYtSBu4IB1BZJC0cz4k1RlPtqr7MgxpmTNEtuc1VnFK2cR5avlwhcIlAJlqb2JXBZ9rBs5D
	q8XD4R8Q7XMTyf7UG7Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiiUk-0000vo-16; Tue, 09 Jun 2020 17:57:06 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiiOL-0001nE-5c; Tue, 09 Jun 2020 17:50:40 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D6EEFB1AD;
 Tue,  9 Jun 2020 17:50:30 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: f.fainelli@gmail.com, gregkh@linuxfoundation.org, wahrenst@gmx.net,
 p.zabel@pengutronix.de, linux-kernel@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH v2 9/9] Revert "PCI: brcmstb: Wait for Raspberry Pi's firmware
 when present"
Date: Tue,  9 Jun 2020 19:50:02 +0200
Message-Id: <20200609175003.19793-10-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200609175003.19793-1-nsaenzjulienne@suse.de>
References: <20200609175003.19793-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_105039_170626_0C069802 
X-CRM114-Status: GOOD (  10.84  )
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
 andy.shevchenko@gmail.com, helgaas@kernel.org,
 linux-rpi-kernel@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit 44331189f9082c7e659697bbac1747db3def73e7.

Now that the VL805 init routine is run through a reset controller driver
the device dependencies are being taken care of by the device core. No
need to do it manually here.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/pci/controller/pcie-brcmstb.c | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
index 7730ea845ff2..752f5b331579 100644
--- a/drivers/pci/controller/pcie-brcmstb.c
+++ b/drivers/pci/controller/pcie-brcmstb.c
@@ -28,8 +28,6 @@
 #include <linux/string.h>
 #include <linux/types.h>
 
-#include <soc/bcm2835/raspberrypi-firmware.h>
-
 #include "../pci.h"
 
 /* BRCM_PCIE_CAP_REGS - Offset for the mandatory capability config regs */
@@ -931,26 +929,11 @@ static int brcm_pcie_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node, *msi_np;
 	struct pci_host_bridge *bridge;
-	struct device_node *fw_np;
 	struct brcm_pcie *pcie;
 	struct pci_bus *child;
 	struct resource *res;
 	int ret;
 
-	/*
-	 * We have to wait for Raspberry Pi's firmware interface to be up as a
-	 * PCI fixup, rpi_firmware_init_vl805(), depends on it. This driver's
-	 * probe can race with the firmware interface's (see
-	 * drivers/firmware/raspberrypi.c) and potentially break the PCI fixup.
-	 */
-	fw_np = of_find_compatible_node(NULL, NULL,
-					"raspberrypi,bcm2835-firmware");
-	if (fw_np && !rpi_firmware_get(fw_np)) {
-		of_node_put(fw_np);
-		return -EPROBE_DEFER;
-	}
-	of_node_put(fw_np);
-
 	bridge = devm_pci_alloc_host_bridge(&pdev->dev, sizeof(*pcie));
 	if (!bridge)
 		return -ENOMEM;
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
