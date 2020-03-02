Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6979E175EE1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 16:57:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ExZWVTw9LuCk0+3FVpp99SpZhZ8GLF00iI2upbbmVU=; b=eJBaT5iVLBC/B7
	Z9hGk1ujsHlWhzGrr0H2cBPQsBA3yrFzHYHNHOFb6P00Y9dkHe2anNzptfgwdZnd3zdIX4CjRP0IY
	AEVihLJnUJJ0qOl38UiYXIBaewyZ5gMiqnshYt+AwfudyP1OBksPaf/11t0t7INSA0J2yym7QtyLT
	LKiMu82WCFNB9cYJLWvN6n4w2CO9uctVIXgukW2974jxXVXR1aFMy7uTt7WeGhUR/9ZxhcduvAiyP
	7w7ZIBOQeW7ADq0+Y6QB34Je4jI8kXNuUvpafhpWlHTUjoZebXnPu0dueBTUz0mXpFsi0QOz/EESP
	ryDIRdhdPQ4qnejNiS6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8nR8-00046J-Hw; Mon, 02 Mar 2020 15:56:54 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8nQN-0003OU-GI; Mon, 02 Mar 2020 15:56:10 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 15151AEDE;
 Mon,  2 Mar 2020 15:56:06 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: linux-kernel@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Subject: [PATCH v3 3/4] PCI: brcmstb: Wait for Raspberry Pi's firmware when
 present
Date: Mon,  2 Mar 2020 16:55:27 +0100
Message-Id: <20200302155528.19505-4-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200302155528.19505-1-nsaenzjulienne@suse.de>
References: <20200302155528.19505-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_075607_697051_C2DB5E21 
X-CRM114-Status: GOOD (  12.24  )
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
 linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org, wahrenst@gmx.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

xHCI's PCI fixup, run at the end of pcie-brcmstb's probe, depends on
RPi4's VideoCore firmware interface to be up and running. It's possible
for both initializations to race, so make sure it's available prior
starting.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/pci/controller/pcie-brcmstb.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
index 3a10e678c7f4..a3d3070a5832 100644
--- a/drivers/pci/controller/pcie-brcmstb.c
+++ b/drivers/pci/controller/pcie-brcmstb.c
@@ -28,6 +28,8 @@
 #include <linux/string.h>
 #include <linux/types.h>
 
+#include <soc/bcm2835/raspberrypi-firmware.h>
+
 #include "../pci.h"
 
 /* BRCM_PCIE_CAP_REGS - Offset for the mandatory capability config regs */
@@ -917,11 +919,24 @@ static int brcm_pcie_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node, *msi_np;
 	struct pci_host_bridge *bridge;
+	struct device_node *fw_np;
 	struct brcm_pcie *pcie;
 	struct pci_bus *child;
 	struct resource *res;
 	int ret;
 
+	/*
+	 * We have to wait for the Raspberry Pi's firmware interface to be up
+	 * as some PCI fixups depend on it.
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
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
