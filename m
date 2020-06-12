Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 328D81F7C5C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 19:16:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F85UDALKdcgmb3OvxTXtrDI8xnjsoA9SeQ8s1wp6MVI=; b=mBPbN8LE10Ygdv
	2fzEC1q9964snb1z45gGwFFWG8Lou2qaL8vxv8UwrY96VSJ6WYJmNlhI7XwsRPyDtUE7rmdDR1/in
	8nBjPpe5onURWTmEkLLYgOwk7TUeZn3ad+3dqp3YsQn56JqNFH9pFbPZAcxpCIau760dqdNr1wrE+
	2By9w5KstnlZRHQTKHpe1iONcU9UA3HZrANfiJdrrHDWAsbedJmQdgUd3QruBNpOoH2X5Y9wc3n8+
	Rnyndh4l575aDk8qx55jp5WY5+mIvkS4XbSGJnsapjpN0fL5mXtJbXf5ey6KUmOG01DOPpty2ug4k
	fr7ygqSwFQc2ccKx2RKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjnHe-0005IZ-H3; Fri, 12 Jun 2020 17:16:02 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjnFY-0001IE-PE; Fri, 12 Jun 2020 17:13:54 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id B58D5AEF8;
 Fri, 12 Jun 2020 17:13:52 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: f.fainelli@gmail.com, gregkh@linuxfoundation.org, wahrenst@gmx.net,
 p.zabel@pengutronix.de, linux-kernel@vger.kernel.org,
 Mathias Nyman <mathias.nyman@intel.com>
Subject: [PATCH v3 5/9] usb: xhci-pci: Add support for reset controllers
Date: Fri, 12 Jun 2020 19:13:29 +0200
Message-Id: <20200612171334.26385-6-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200612171334.26385-1-nsaenzjulienne@suse.de>
References: <20200612171334.26385-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_101353_141813_FC668C1D 
X-CRM114-Status: GOOD (  13.57  )
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

Some atypical users of xhci-pci might need to manually reset their xHCI
controller before starting the HCD setup. Check if a reset controller
device is available to the PCI bus and trigger a reset.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

---

Changes since v2:
 - Also reset on resume

Changes since v1:
 - Use proper reset API
 - Make code simpler

 drivers/usb/host/xhci-pci.c | 10 ++++++++++
 drivers/usb/host/xhci.h     |  2 ++
 2 files changed, 12 insertions(+)

diff --git a/drivers/usb/host/xhci-pci.c b/drivers/usb/host/xhci-pci.c
index ef513c2fb843..e76b9283faa3 100644
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
@@ -347,6 +349,11 @@ static int xhci_pci_probe(struct pci_dev *dev, const struct pci_device_id *id)
 			return retval;
 	}
 
+	reset = devm_reset_control_get_optional_exclusive(&dev->bus->dev, NULL);
+	if (IS_ERR(reset))
+		return PTR_ERR(reset);
+	reset_control_reset(reset);
+
 	/* Prevent runtime suspending between USB-2 and USB-3 initialization */
 	pm_runtime_get_noresume(&dev->dev);
 
@@ -364,6 +371,7 @@ static int xhci_pci_probe(struct pci_dev *dev, const struct pci_device_id *id)
 	/* USB 2.0 roothub is stored in the PCI device now. */
 	hcd = dev_get_drvdata(&dev->dev);
 	xhci = hcd_to_xhci(hcd);
+	xhci->reset = reset;
 	xhci->shared_hcd = usb_create_shared_hcd(&xhci_pci_hc_driver, &dev->dev,
 						 pci_name(dev), hcd);
 	if (!xhci->shared_hcd) {
@@ -515,6 +523,8 @@ static int xhci_pci_resume(struct usb_hcd *hcd, bool hibernated)
 	struct pci_dev		*pdev = to_pci_dev(hcd->self.controller);
 	int			retval = 0;
 
+	reset_control_reset(xhci->reset);
+
 	/* The BIOS on systems with the Intel Panther Point chipset may or may
 	 * not support xHCI natively.  That means that during system resume, it
 	 * may switch the ports back to EHCI so that users can use their
diff --git a/drivers/usb/host/xhci.h b/drivers/usb/host/xhci.h
index 2c6c4f8d1ee1..379ffa24877d 100644
--- a/drivers/usb/host/xhci.h
+++ b/drivers/usb/host/xhci.h
@@ -1770,6 +1770,8 @@ struct xhci_hcd {
 	/* optional clocks */
 	struct clk		*clk;
 	struct clk		*reg_clk;
+	/* optional reset controller */
+	struct reset_control *reset;
 	/* data structures */
 	struct xhci_device_context_array *dcbaa;
 	struct xhci_ring	*cmd_ring;
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
