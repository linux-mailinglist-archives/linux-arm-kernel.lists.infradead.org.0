Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 270D81F43A7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 19:56:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BjAFyukRdL2g9k+O48aqhnn7mY8IjIez33NzEmK9oNY=; b=RgFj0HJg2Q2KjL
	sFSokAVwYoa85VVaXx2UhtI6zMpEgFLVOpr4oA2EE5smOxzToHeJT7D7OYdG8SLQ5q84RbXZIQERu
	2U7g4mOUL4bavgw2CkG9eb3xcrFzOM3yZFC6NQVlh0F28KPhKQtNQ0cbr9MjZDmm2y9Mx3tYi549n
	AkdV78qy8ybNfnsvi6GzC2/Tg8CR6thIRN7uqxXiJmSJKO59QUv18NsbgyEYqYSg7SQGa0aW/PDI0
	dZddrMnKFhAlwgmLRDcWrmoyNSB4Hu+LzXHi+raDwgTAg8rW/AJRDmpuaPNgpVKPt5gntwl1iC3z4
	bRFQq/t/R4Q759qkpMhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiiUD-0000PN-Ue; Tue, 09 Jun 2020 17:56:33 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiiOI-0001kL-TI; Tue, 09 Jun 2020 17:50:29 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id A1E7FB14B;
 Tue,  9 Jun 2020 17:50:28 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: f.fainelli@gmail.com, gregkh@linuxfoundation.org, wahrenst@gmx.net,
 p.zabel@pengutronix.de, linux-kernel@vger.kernel.org,
 Mathias Nyman <mathias.nyman@intel.com>
Subject: [PATCH v2 7/9] usb: host: pci-quirks: Bypass xHCI quirks for
 Raspberry Pi 4
Date: Tue,  9 Jun 2020 19:50:00 +0200
Message-Id: <20200609175003.19793-8-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200609175003.19793-1-nsaenzjulienne@suse.de>
References: <20200609175003.19793-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_105027_382111_2AEAFBC0 
X-CRM114-Status: GOOD (  10.67  )
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
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, andy.shevchenko@gmail.com,
 lorenzo.pieralisi@arm.com, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, helgaas@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The board doesn't need the quirks to be run, and takes care of its own
initialization trough a reset controller device. So let's bypass them.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>

---

Changes since v1:
 - Correct typos

 drivers/usb/host/pci-quirks.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/usb/host/pci-quirks.c b/drivers/usb/host/pci-quirks.c
index 92150ecdb036..294412ebbd0b 100644
--- a/drivers/usb/host/pci-quirks.c
+++ b/drivers/usb/host/pci-quirks.c
@@ -16,6 +16,8 @@
 #include <linux/export.h>
 #include <linux/acpi.h>
 #include <linux/dmi.h>
+#include <linux/of.h>
+
 #include "pci-quirks.h"
 #include "xhci-ext-caps.h"
 
@@ -1248,6 +1250,16 @@ static void quirk_usb_early_handoff(struct pci_dev *pdev)
 	 */
 	if (pdev->vendor == 0x184e)	/* vendor Netlogic */
 		return;
+
+	/*
+	 * Bypass the Raspberry Pi 4 controller xHCI controller, things are
+	 * taken care of by the board's co-processor.
+	 */
+	if (pdev->vendor == PCI_VENDOR_ID_VIA && pdev->device == 0x3483 &&
+	    of_device_is_compatible(of_get_parent(pdev->bus->dev.of_node),
+				    "brcm,bcm2711-pcie"))
+		return;
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
