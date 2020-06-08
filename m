Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5135B1F1FEA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 21:29:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kMPhVrjyZ8PMlRtVord31JT9ywGohTzFQGC8rZMzLzc=; b=gINKSl0vuNTqgT
	LfURsv5l7gfPnrxJ0UhUERmbFK5fanvcwtwo7ahTz7lToW6UdOp8qVLTSShV0EjMFgSAkiP55QRbZ
	So/FrBJ1kPUAQSZD6AtCOB9vTZ/lP59SdrIvbFskaDKjI1i6udal34yQVaWoisjebw1YgLMGGDChQ
	IkIQ9KkkJ7rqvj6HsQ23FEN90n4Uh/SjbtLNqmUapvUkzeK0SbYql9DWTU/47d9e3GXSy2xZmij52
	1vyccRVK9vY1VjBaZsvX966/PbtJJLl4OyBwCOu/TdkcRyDbWupA5t/+4gu26cG9nZAc3HiR8aGpr
	xLvjrDZPjPDQ/R3I2AQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiNSS-0003jK-Fh; Mon, 08 Jun 2020 19:29:20 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiNQn-0002Gy-NK; Mon, 08 Jun 2020 19:27:39 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 5A9A2AE41;
 Mon,  8 Jun 2020 19:27:39 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: f.fainelli@gmail.com, gregkh@linuxfoundation.org, wahrenst@gmx.net,
 robh@kernel.org, mathias.nyman@linux.intel.com,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-usb@vger.kernel.org, Mathias Nyman <mathias.nyman@intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH 5/9] usb: xhci-pci: Add support for reset controllers
Date: Mon,  8 Jun 2020 21:26:57 +0200
Message-Id: <20200608192701.18355-6-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200608192701.18355-1-nsaenzjulienne@suse.de>
References: <20200608192701.18355-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_122737_930747_C85385BF 
X-CRM114-Status: GOOD (  12.99  )
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
Cc: lorenzo.pieralisi@arm.com, tim.gover@raspberrypi.org, helgaas@kernel.org,
 linux-kernel@vger.kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some atypical users of xhci-pci might need to manually reset their xHCI
controller before starting the HCD setup. Check if a reset controller
device is available to the PCI bus and trigger a reset.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/usb/host/xhci-pci.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/usb/host/xhci-pci.c b/drivers/usb/host/xhci-pci.c
index ef513c2fb843..45f70facdfcd 100644
--- a/drivers/usb/host/xhci-pci.c
+++ b/drivers/usb/host/xhci-pci.c
@@ -12,6 +12,7 @@
 #include <linux/slab.h>
 #include <linux/module.h>
 #include <linux/acpi.h>
+#include <linux/reset.h>
 
 #include "xhci.h"
 #include "xhci-trace.h"
@@ -339,6 +340,7 @@ static int xhci_pci_probe(struct pci_dev *dev, const struct pci_device_id *id)
 	struct xhci_hcd *xhci;
 	struct usb_hcd *hcd;
 	struct xhci_driver_data *driver_data;
+	struct reset_control *reset;
 
 	driver_data = (struct xhci_driver_data *)id->driver_data;
 	if (driver_data && driver_data->quirks & XHCI_RENESAS_FW_QUIRK) {
@@ -347,6 +349,13 @@ static int xhci_pci_probe(struct pci_dev *dev, const struct pci_device_id *id)
 			return retval;
 	}
 
+	reset = devm_reset_control_get(&dev->bus->dev, NULL);
+	if (IS_ERR(reset)) {
+		retval = PTR_ERR(reset);
+		return retval;
+	}
+	reset_control_reset(reset);
+
 	/* Prevent runtime suspending between USB-2 and USB-3 initialization */
 	pm_runtime_get_noresume(&dev->dev);
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
