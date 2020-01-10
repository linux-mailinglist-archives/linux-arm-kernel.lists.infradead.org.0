Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8771F1365A1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 04:01:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BAl+dxR8klgXAAy335y368PCraph53x3kyx877YMuZk=; b=eWxgHF0u09QVZI
	8KzUXQkbnfUu9FHIqDLOBV7s5oJcXcGGf9JoSP5QWOlzWezRZG/uubVJ/u4csFwkgHSMRwzwy/2hm
	6Ex9Bk5DLiP6LD+pLpCOiPOSd5ySa6tbBkFmvNrg0/5UHX9Q8FlXzpECN2xshC0qvCOYHuFloOWCk
	M86ERuZGGrFHMwNpK7r+5025Fpr2y721twvrGL+uNwuF9YGKnKaz62utwasByCpWoRoWa+JHCuB96
	t0a/xFzsr8z3yV47fGRUrdJ1w3oJSFl1sXecLJSE/TX3k0F0xDIH4dRIco/BrSyNxlhxlWdq8/5C2
	aqBvPHxe2VE0qTHkK4kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipkYD-0007Gx-E8; Fri, 10 Jan 2020 03:01:29 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipkY5-0007GG-6t
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 03:01:22 +0000
Received: by mail-pl1-x649.google.com with SMTP id t17so437935plr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 19:01:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=DnJt6kh0aGUVWb0xLd06fVCxkcizC6ZskKYdvVAtBnY=;
 b=Gh/Tzuzj0IXUAC+PeJ5gpwwjiQEWvlG05ugX1k3UhhcPz+XW1JMgH4prOJQdAs2KaM
 HcCZRLNIUISbv5kMSxR7/Qb5v9DAhnMtgZ87s6qfnek8ayNXvEWfHDTY5ea8oYAd7ukv
 LrORKZUIZVMeeE/IT1I1hAZVOpnTfKCbwTl5I+n1Iq/s0NsNL7+/6qxm05JnzpsT1fUo
 cKWx/AC9e2iulmA2L/B9pmVpm5i4ARMGbEVOHsLV9so0/T5pWdAY5ym2fEO/YO4q6a7z
 rIBYjT2mkC4MUxnEcpy+eI99jDxop/5TFDHR0rnxhv/hqXFy4vYPKDnE0qJKJUaa0a6o
 gQnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=DnJt6kh0aGUVWb0xLd06fVCxkcizC6ZskKYdvVAtBnY=;
 b=XHENeRa7Q71O6bnTSHci1+Cb0waC+IVK1GpYxbm9y+YeP/d1BjzzNkxPZWch7azfcr
 SgvA3fJLyctgNfCqqm9uIARg/fJhNszjHUntbrnO9NWLOTGl4VpPR5KegUkZdnohP0+f
 dKYjTfYndfZtL7vbXg7BmxqUue0qbWEzHU7+NYyGhAZxjV3qD2RFsiln6DTOq3iE5wVO
 /10VSNb0nes8YELjRgx45SDykeWXrzCUn2zlYw/19e+j/yOPRd18rE9zb/fyZ4BtThhK
 PqNmCu3LNFInq5qX/SZ+S9pS8/l14DTCDIPM0AjZmcpVsauhjfzzUayDx8K/55cbhddf
 Q3vA==
X-Gm-Message-State: APjAAAW/nGhQ3Dgl8uVR16acwmsmGm+1WJ9D4elwvSxTlkUEILTL0+oq
 APWVD8VYMC1HNwtq/akBiT9tcsmhlhLaWJo=
X-Google-Smtp-Source: APXvYqxAvSV90QbeIs2iZP+87eCL6XZYgyziMKCDAkncP7bUErJToa1qCy5JmINPe0ow59xylckCqSmvIsWEVWE=
X-Received: by 2002:a63:1210:: with SMTP id h16mr1450210pgl.171.1578625276730; 
 Thu, 09 Jan 2020 19:01:16 -0800 (PST)
Date: Thu,  9 Jan 2020 19:01:11 -0800
Message-Id: <20200110030112.188845-1-saravanak@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.rc1.283.g88dfdc4193-goog
Subject: [PATCH v3] efi: arm: defer probe of PCIe backed efifb on DT systems
From: Saravana Kannan <saravanak@google.com>
To: Ard Biesheuvel <ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_190121_252286_A737FAE8 
X-CRM114-Status: GOOD (  20.02  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-efi@vger.kernel.org, Saravana Kannan <saravanak@google.com>,
 will@kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, bhelgaas@google.com, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ard Biesheuvel <ardb@kernel.org>

The new of_devlink support breaks PCIe probing on ARM platforms booting
via UEFI if the firmware exposes a EFI framebuffer that is backed by a
PCI device. The reason is that the probing order gets reversed,
resulting in a resource conflict on the framebuffer memory window when
the PCIe probes last, causing it to give up entirely.

Given that we rely on PCI quirks to deal with EFI framebuffers that get
moved around in memory, we cannot simply drop the memory reservation, so
instead, let's use the device link infrastructure to register this
dependency, and force the probing to occur in the expected order.

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
Co-developed-by: Saravana Kannan <saravanak@google.com>
Signed-off-by: Saravana Kannan <saravanak@google.com>
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
---

v1 -> v2:
- Rewrote the device linking part to not depend on initcall ordering
v2 -> v3:
- Added const and check for CONFIG_PCI

 drivers/firmware/efi/arm-init.c | 107 ++++++++++++++++++++++++++++++--
 1 file changed, 103 insertions(+), 4 deletions(-)

diff --git a/drivers/firmware/efi/arm-init.c b/drivers/firmware/efi/arm-init.c
index 904fa09e6a6b..d99f5b0c8a09 100644
--- a/drivers/firmware/efi/arm-init.c
+++ b/drivers/firmware/efi/arm-init.c
@@ -10,10 +10,12 @@
 #define pr_fmt(fmt)	"efi: " fmt
 
 #include <linux/efi.h>
+#include <linux/fwnode.h>
 #include <linux/init.h>
 #include <linux/memblock.h>
 #include <linux/mm_types.h>
 #include <linux/of.h>
+#include <linux/of_address.h>
 #include <linux/of_fdt.h>
 #include <linux/platform_device.h>
 #include <linux/screen_info.h>
@@ -276,15 +278,112 @@ void __init efi_init(void)
 		efi_memmap_unmap();
 }
 
+static bool efifb_overlaps_pci_range(const struct of_pci_range *range)
+{
+	u64 fb_base = screen_info.lfb_base;
+
+	if (screen_info.capabilities & VIDEO_CAPABILITY_64BIT_BASE)
+		fb_base |= (u64)(unsigned long)screen_info.ext_lfb_base << 32;
+
+	return fb_base >= range->cpu_addr &&
+	       fb_base < (range->cpu_addr + range->size);
+}
+
+static struct device_node *find_pci_overlap_node(void)
+{
+	struct device_node *np;
+
+	for_each_node_by_type(np, "pci") {
+		struct of_pci_range_parser parser;
+		struct of_pci_range range;
+		int err;
+
+		err = of_pci_range_parser_init(&parser, np);
+		if (err) {
+			pr_warn("of_pci_range_parser_init() failed: %d\n", err);
+			continue;
+		}
+
+		for_each_of_pci_range(&parser, &range)
+			if (efifb_overlaps_pci_range(&range))
+				return np;
+	}
+	return NULL;
+}
+
+/*
+ * If the efifb framebuffer is backed by a PCI graphics controller, we have
+ * to ensure that this relation is expressed using a device link when
+ * running in DT mode, or the probe order may be reversed, resulting in a
+ * resource reservation conflict on the memory window that the efifb
+ * framebuffer steals from the PCIe host bridge.
+ */
+static int efifb_add_links(const struct fwnode_handle *fwnode,
+			   struct device *dev)
+{
+	struct device_node *sup_np;
+	struct device *sup_dev;
+
+	sup_np = find_pci_overlap_node();
+
+	/*
+	 * If there's no PCI graphics controller backing the efifb, we are
+	 * done here.
+	 */
+	if (!sup_np)
+		return 0;
+
+	sup_dev = get_dev_from_fwnode(&sup_np->fwnode);
+	of_node_put(sup_np);
+
+	/*
+	 * Return -ENODEV if the PCI graphics controller device hasn't been
+	 * registered yet.  This ensures that efifb isn't allowed to probe
+	 * and this function is retried again when new devices are
+	 * registered.
+	 */
+	if (!sup_dev)
+		return -ENODEV;
+
+	/*
+	 * If this fails, retrying this function at a later point won't
+	 * change anything. So, don't return an error after this.
+	 */
+	if (!device_link_add(dev, sup_dev, 0))
+		dev_warn(dev, "device_link_add() failed\n");
+
+	put_device(sup_dev);
+
+	return 0;
+}
+
+static const struct fwnode_operations efifb_fwnode_ops = {
+	.add_links = efifb_add_links,
+};
+
+static struct fwnode_handle efifb_fwnode = {
+	.ops = &efifb_fwnode_ops,
+};
+
 static int __init register_gop_device(void)
 {
-	void *pd;
+	struct platform_device *pd;
+	int err;
 
 	if (screen_info.orig_video_isVGA != VIDEO_TYPE_EFI)
 		return 0;
 
-	pd = platform_device_register_data(NULL, "efi-framebuffer", 0,
-					   &screen_info, sizeof(screen_info));
-	return PTR_ERR_OR_ZERO(pd);
+	pd = platform_device_alloc("efi-framebuffer", 0);
+	if (!pd)
+		return -ENOMEM;
+
+	if (IS_ENABLED(CONFIG_PCI))
+		pd->dev.fwnode = &efifb_fwnode;
+
+	err = platform_device_add_data(pd, &screen_info, sizeof(screen_info));
+	if (err)
+		return err;
+
+	return platform_device_add(pd);
 }
 subsys_initcall(register_gop_device);
-- 
2.25.0.rc1.283.g88dfdc4193-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
